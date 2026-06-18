import math
import matplotlib.pyplot as plt


def gops(ops, seconds):
    return ops / seconds / 1e9


def intensity(ops, bytes_moved):
    return ops / bytes_moved


def roofline_perf(intensities, peak_gops, bandwidth_gbs):
    """
    intensities: ops/byte
    peak_gops: compute roof in GOPS
    bandwidth_gbs: memory bandwidth in GB/s
    returns performance in GOPS
    """
    return [min(peak_gops, i * bandwidth_gbs) for i in intensities]


# ============================================================
# USER PARAMETERS
# ============================================================

# Matrix dimensions for FC1: [M x K] * [K x N]
M = 64
K = 768
N = 3072

# Hardware parameters
freq_mhz = 99
PE = 4
SIMD = 4

# Measured sustainable DDR bandwidth (GB/s)
# Example: 18,874,368 bytes in 13 ms --> about 1.45 GB/s
n_bytes = 18_874_368
lat_bytes = 0.13
ddr_bandwidth_gbs = n_bytes / lat_bytes / 1e9

# Measured latencies
# FC1 example from your numbers
fc1_cycles = 13_429_600
fc1_time_s = fc1_cycles / (freq_mhz * 1e6)

# If FC2 is similar, reuse FC1 time as a first approximation
fc2_time_s = fc1_time_s

# Optional: measured full MLP time
# Replace with your real number if you have it
#mlp_time_s = 0.288  # 288 ms example
mlp_time_s = 0.340


# ============================================================
# OPERATION COUNTS
# ============================================================

# GEMM ops: 2*M*K*N if 1 MAC = 2 ops
fc1_ops = 2 * M * K * N
fc2_ops = 2 * M * N * K  # same value numerically
relu_ops = M * N         # one compare/max per output activation

mlp_ops = fc1_ops + fc2_ops + relu_ops


# ============================================================
# DDR BYTE COUNTS
# ============================================================

# Unique tensor sizes (bytes, assuming int8 activations/weights for a first model)
input_bytes_fc1 = M * K
output_bytes_fc1 = M * N
weights_bytes_fc1_unique = K * N

input_bytes_fc2 = M * N
output_bytes_fc2 = M * K
weights_bytes_fc2_unique = N * K

# Measured weight traffic for FC1 from your monitor
weights_bytes_fc1_measured = 18_874_368

# Assuming FC2 has the same measured traffic
weights_bytes_fc2_measured = 18_874_368

# Total implementation-aware bytes
fc1_bytes = weights_bytes_fc1_measured + input_bytes_fc1  
fc2_bytes = weights_bytes_fc2_measured + output_bytes_fc2

# Full MLP bytes:
# input of FC1 + output of FC2 counted once, hidden activation counted as produced/consumed in-stream
# If hidden activations also go to DDR in your system, add them explicitly.
mlp_bytes = (
    weights_bytes_fc1_measured
    + weights_bytes_fc2_measured
    + input_bytes_fc1
    + output_bytes_fc2
)

# If ReLU output is written/read from DDR, uncomment this:
# hidden_bytes = M * N
# mlp_bytes += 2 * hidden_bytes


# ============================================================
# ACHIEVED PERFORMANCE AND OPERATIONAL INTENSITY
# ============================================================

fc1_intensity = intensity(fc1_ops, fc1_bytes)
fc2_intensity = intensity(fc2_ops, fc2_bytes)
mlp_intensity = intensity(mlp_ops, mlp_bytes)

fc1_perf_gops = gops(fc1_ops, fc1_time_s)
fc2_perf_gops = gops(fc2_ops, fc2_time_s)
mlp_perf_gops = gops(mlp_ops, mlp_time_s)


# ============================================================
# COMPUTE ROOF
# ============================================================

# Peak compute throughput:
# 2 * PE * SIMD * f  (if each cycle performs PE*SIMD MACs, and 1 MAC = 2 ops)
peak_gops = 2 * PE * SIMD * freq_mhz * 1e6 / 1e9 #<----- DA ACCERTARE!!!

# Ridge point
ridge_intensity = peak_gops / ddr_bandwidth_gbs


# ============================================================
# PRINT SUMMARY
# ============================================================

print("===== Roofline Summary =====")
print(f"Clock frequency:        {freq_mhz} MHz")
print(f"PE:                     {PE}")
print(f"SIMD:                   {SIMD}")
print(f"Peak compute:           {peak_gops:.3f} GOPS")
print(f"DDR bandwidth:          {ddr_bandwidth_gbs:.3f} GB/s")
print(f"Ridge intensity:        {ridge_intensity:.3f} ops/byte")
print()

print("FC1:")
print(f"  Ops:                  {fc1_ops:,}")
print(f"  Bytes:                {fc1_bytes:,}")
print(f"  Intensity:            {fc1_intensity:.3f} ops/byte")
print(f"  Achieved perf:        {fc1_perf_gops:.3f} GOPS")
print(f"  Bound prediction:     {'compute-bound' if fc1_intensity > ridge_intensity else 'memory-bound'}")
print()

print("FC2:")
print(f"  Ops:                  {fc2_ops:,}")
print(f"  Bytes:                {fc2_bytes:,}")
print(f"  Intensity:            {fc2_intensity:.3f} ops/byte")
print(f"  Achieved perf:        {fc2_perf_gops:.3f} GOPS")
print(f"  Bound prediction:     {'compute-bound' if fc2_intensity > ridge_intensity else 'memory-bound'}")
print()

print("MLP total:")
print(f"  Ops:                  {mlp_ops:,}")
print(f"  Bytes:                {mlp_bytes:,}")
print(f"  Intensity:            {mlp_intensity:.3f} ops/byte")
print(f"  Achieved perf:        {mlp_perf_gops:.3f} GOPS")
print(f"  Bound prediction:     {'compute-bound' if mlp_intensity > ridge_intensity else 'memory-bound'}")
print()


# ============================================================
# PLOT ROOFLINE
# ============================================================

# X range for roofline plot (operational intensity)
x_min = 0.1
x_max = 1000
num_points = 500

x_vals = [10 ** (math.log10(x_min) + i * (math.log10(x_max) - math.log10(x_min)) / (num_points - 1))
          for i in range(num_points)]
y_vals = roofline_perf(x_vals, peak_gops, ddr_bandwidth_gbs)

plt.figure(figsize=(9, 6))
plt.loglog(x_vals, y_vals, linewidth=2, label="Roofline")

# Horizontal compute roof
plt.axhline(peak_gops, linestyle="--", linewidth=1.5, label=f"Compute roof = {peak_gops:.2f} GOPS")

# Vertical ridge point
plt.axvline(ridge_intensity, linestyle=":", linewidth=1.5, label=f"Ridge point = {ridge_intensity:.2f} ops/byte")

# Kernel points
plt.scatter([fc1_intensity], [fc1_perf_gops], s=80, marker="o", label="FC1")
plt.scatter([fc2_intensity], [fc2_perf_gops], s=80, marker="s", label="FC2")
plt.scatter([mlp_intensity], [mlp_perf_gops], s=100, marker="^", label="MLP total")

# Labels near points
plt.annotate("FC1", (fc1_intensity, fc1_perf_gops), textcoords="offset points", xytext=(8, 6))
plt.annotate("FC2", (fc2_intensity, fc2_perf_gops), textcoords="offset points", xytext=(8, 6))
plt.annotate("MLP", (mlp_intensity, mlp_perf_gops), textcoords="offset points", xytext=(8, 6))

plt.xlabel("Operational Intensity [ops/byte]")
plt.ylabel("Performance [GOPS]")
plt.title("Roofline Model for ViT MLP")
plt.grid(True, which="both", linestyle=":")
plt.legend()
plt.tight_layout()
plt.show()