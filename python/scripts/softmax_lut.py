import math

LUT_SIZE = 64

Z_min = -8.0
Z_max = 0.0

SCALE = 255

# Includes both endpoints: z[0] = -8.0, z[255] = 0.0
step = (Z_max - Z_min) / (LUT_SIZE - 1)

entries = []

for idx in range(LUT_SIZE):
    z = Z_min + idx * step
    val = math.exp(z)
    val = round(val * SCALE)
    val = val + 1
    entries.append(val)

print("const float exp_lut[64] = {")

values_per_row = 8

for row_start in range(0, LUT_SIZE, values_per_row):
    row_values = []

    for idx in range(row_start, min(row_start + values_per_row, LUT_SIZE)):
        comma = "," if idx < LUT_SIZE - 1 else ""
        row_values.append(f"{entries[idx]}{comma}")

    print("    " + " ".join(row_values))

print("};")