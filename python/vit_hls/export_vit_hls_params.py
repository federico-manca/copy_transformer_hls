import json
import math
from pathlib import Path

import numpy as np
import torch


# ============================================================
# User-editable default HLS export configuration
# ============================================================

DEFAULT_HLS_EXPORT_CFG = {
    "debug": False,

    # Fixed-point integer export formats.
    # Scales are exported as int integer macros in Q format.
    "scale_frac_bits": 30,
    "param_frac_bits": 16,

    # HLS type widths.
    "types": {
        "axi_width": 8,
        "act_width": 8,
        "act_signed": True,
        "weight_width": 8,
        "weight_signed": True,
        "acc_width": 32,
        "acc_signed": True,
        "iter_type": "short",
    },

    # Tiling/parallelism. These are generated into types.h.
    # Keep AXI_WIDTH == SIMD * PE * weight_width when using the current packed
    # weight initializer that assumes one bus word contains exactly SIMD*PE weights.
    "linear_cfg": {
        "base": {"SIMD": 1, "PE": 1, "Tm": 1, "Tk": 1, "Tn": 1},
        "fc1":  {"SIMD": 1, "PE": 1, "Tm": 1, "Tk": 1, "Tn": 1},
        "fc2":  {"SIMD": 1, "PE": 1, "Tm": 1, "Tk": 1, "Tn": 1},
    },
}


INT32_MIN = -(1 << 31)
INT32_MAX = (1 << 31) - 1


# ============================================================
# Config helpers
# ============================================================

def deep_update(dst, src):
    """Recursively update dict dst with dict src."""
    for key, value in src.items():
        if isinstance(value, dict) and isinstance(dst.get(key), dict):
            deep_update(dst[key], value)
        else:
            dst[key] = value
    return dst


def load_hls_export_config(path=None, overrides=None):
    cfg = json.loads(json.dumps(DEFAULT_HLS_EXPORT_CFG))

    if path is not None:
        with open(path, "r", encoding="utf-8") as f:
            deep_update(cfg, json.load(f))

    if overrides is not None:
        deep_update(cfg, overrides)

    return cfg


def require_int(value, name):
    ivalue = int(value)
    if ivalue != value and isinstance(value, float):
        raise ValueError(f"{name} must be an integer, got {value}")
    return ivalue


def ap_int_type(width, signed=True):
    width = require_int(width, "width")
    return f"ap_int<{width}>" if signed else f"ap_uint<{width}>"


def int32_literal(value, name=""):
    v = int(value)
    if v < INT32_MIN or v > INT32_MAX:
        raise OverflowError(f"{name} overflows int32_t: {v}")
    return str(v)


# ============================================================
# Numeric conversion helpers
# ============================================================

def to_numpy(x):
    if isinstance(x, torch.Tensor):
        return x.detach().cpu().numpy()
    return np.asarray(x)


def flatten_c(x):
    return to_numpy(x).reshape(-1)


def fixed_to_int32_np(x, frac_bits, name=""):
    x = to_numpy(x).astype(np.float64)
    q = np.round(x * float(1 << int(frac_bits)))

    if q.size > 0:
        q_min = q.min()
        q_max = q.max()

        if q_min < INT32_MIN or q_max > INT32_MAX:
            raise OverflowError(
                f"{name} overflows int32_t with frac_bits={frac_bits}: "
                f"min={q_min}, max={q_max}"
            )

    return q.astype(np.int32)


def quantize_np_to_int8(x, scale, zp=0):
    q = np.round(x / scale).astype(np.int32) + int(zp)
    q = np.clip(q, -128, 127)
    return q.astype(np.int8)


def first_scalar(x):
    if x is None:
        return None

    if isinstance(x, torch.Tensor):
        if x.numel() == 0:
            return None
        return float(x.detach().cpu().reshape(-1)[0])

    if isinstance(x, np.ndarray):
        if x.size == 0:
            return None
        return float(x.reshape(-1)[0])

    return float(x)


# ============================================================
# C++ emission helpers
# ============================================================

def cpp_array_str(name, arr, cpp_type, values_per_line=16):
    """Emit a const C++ array with a semantic HLS type."""
    arr = flatten_c(arr)

    vals = []
    for v in arr:
        if cpp_type in {"act_0", "weight_0"}:
            vals.append(str(int(v)))
        elif cpp_type in {"accumulation", "int32_t"}:
            vals.append(str(int(np.int32(v))))
        else:
            raise ValueError(f"Unsupported array type: {cpp_type}")

    lines = []
    for i in range(0, len(vals), values_per_line):
        lines.append("    " + ", ".join(vals[i:i + values_per_line]))

    return (
        f"const {cpp_type} {name}[{len(arr)}] = {{\n"
        + ",\n".join(lines)
        + "\n};\n"
    )


def cpp_fixed_array_str(name, arr, frac_bits, cpp_type="accumulation", values_per_line=16):
    q = fixed_to_int32_np(arr, frac_bits, name=name)
    return cpp_array_str(name, q, cpp_type, values_per_line=values_per_line)


def define_int_str(name, value):
    return f"#define {name} {int32_literal(value, name)}\n"


def define_fixed_int_str(name, value, frac_bits):
    q = fixed_to_int32_np(np.asarray([value]), frac_bits, name=name)[0]
    return define_int_str(name, q)


def emit_linear_cfg_struct(name, base_name, values):
    lines = [f"struct {name} : {base_name} {{\n"]
    for field in ["SIMD", "PE", "Tm", "Tk", "Tn"]:
        if field in values:
            lines.append(f"  static constexpr int {field} = {int(values[field])};\n")
    lines.append("};\n")
    return "".join(lines)


def emit_types_h(scalar_defines_txt, hls_cfg):
    tcfg = hls_cfg["types"]
    lcfg = hls_cfg["linear_cfg"]

    act_t = ap_int_type(tcfg["act_width"], tcfg.get("act_signed", True))
    weight_t = ap_int_type(tcfg["weight_width"], tcfg.get("weight_signed", True))
    acc_t = ap_int_type(tcfg["acc_width"], tcfg.get("acc_signed", True))
    iter_t = str(tcfg.get("iter_type", "short"))

    base = lcfg.get("base", {})
    fc1 = lcfg.get("fc1", {})
    fc2 = lcfg.get("fc2", {})

    base_fields = {k: int(base.get(k, 1)) for k in ["SIMD", "PE", "Tm", "Tk", "Tn"]}

    debug_value = 1 if bool(hls_cfg.get("debug", False)) else 0

    return f"""#ifndef TYPES_H
#define TYPES_H

#include <hls_stream.h>
#include <ap_fixed.h>
#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <stdint.h>

/*
 * Generated file. Do not edit manually.
 * Edit the Python HLS export config instead.
 */

#define VIT_HLS_DEBUG {debug_value}
#if VIT_HLS_DEBUG
#define _HLS_DEBUG
#endif

{scalar_defines_txt}

#define AXI_WIDTH {int(tcfg["axi_width"])}
#define ACT_WIDTH {int(tcfg["act_width"])}
#define WEIGHT_WIDTH {int(tcfg["weight_width"])}
#define ACC_WIDTH {int(tcfg["acc_width"])}

#define VIT_CEIL_DIV(a, b) (((a) + (b) - 1) / (b))
#define VIT_AXI_BUS_ELEMS (AXI_WIDTH / ACT_WIDTH)
#define VIT_LIN_DEPTH  VIT_CEIL_DIV((E * E), VIT_AXI_BUS_ELEMS)
#define VIT_W_UP_DEPTH VIT_CEIL_DIV((E * F), VIT_AXI_BUS_ELEMS)

template<int W>
using axis_t = ap_axiu<W, 0, 0, 0>;

typedef ap_uint<AXI_WIDTH> word_t_bus;

typedef {act_t} act_0;
typedef {weight_t} weight_0;
typedef {acc_t} accumulation;
typedef {iter_t} ITER;

/*
 * ATTN_SCALE is an integer QPARAM_FRAC_BITS macro.
 * Keep this alias only for code paths still referencing Head_scale.
 */
static const accumulation Head_scale = (accumulation)ATTN_SCALE;

struct LinearCfgBase {{
  static constexpr int SIMD = {base_fields["SIMD"]};
  static constexpr int PE   = {base_fields["PE"]};
  static constexpr int Tm   = {base_fields["Tm"]};
  static constexpr int Tk   = {base_fields["Tk"]};
  static constexpr int Tn   = {base_fields["Tn"]};
}};

{emit_linear_cfg_struct("FC1Cfg", "LinearCfgBase", fc1)}
{emit_linear_cfg_struct("FC2Cfg", "LinearCfgBase", fc2)}

#endif
"""


def emit_vit_params_h():
    return """#ifndef VIT_PARAMS_H
#define VIT_PARAMS_H

#include "types.h"

/*
 * Generated model tensors.
 *
 * Scalar model/configuration constants are generated in types.h.
 * Arrays use HLS semantic types:
 *   - weight_0      for learned int8 weights
 *   - act_0         for quantized activations/tokens/position encodings
 *   - accumulation  for bias and fixed-point parameter arrays
 *   - int32_t       only for BN affine mul/add arrays, by design
 */

extern const accumulation rm_b0[E];
extern const accumulation rs_b0[E];
extern const accumulation scale_b0[E];
extern const accumulation bias_b0[E];

extern const accumulation rm_b1[E];
extern const accumulation rs_b1[E];
extern const accumulation scale_b1[E];
extern const accumulation bias_b1[E];

extern const accumulation rm_bf[E];
extern const accumulation rs_bf[E];
extern const accumulation scale_bf[E];
extern const accumulation bias_bf[E];

extern const weight_0 w_q_0[E * E];
extern const weight_0 w_k_0[E * E];
extern const weight_0 w_v_0[E * E];
extern const accumulation bias_q_0[E];
extern const accumulation bias_k_0[E];
extern const accumulation bias_v_0[E];

extern const weight_0 head_0[E * E];
extern const accumulation bias_h_0[E];

extern const weight_0 w_1_0[E * F];
extern const weight_0 w_2_0[F * E];
extern const accumulation bias_1_0[F];
extern const accumulation bias_2_0[E];

extern const weight_0 patch_kernels_0[E * IN_CHANNELS * PATCH * PATCH];
extern const accumulation patch_bias_0[E];

extern const act_0 cls_token_0[E];
extern const act_0 pos_enc_0[(T + 1) * E];

extern const weight_0 clas_weights_0[E * OUT_CLS];
extern const accumulation clas_bias_0[OUT_CLS];

/*
 * Keep these as int32_t explicitly.
 */
extern const int32_t bn0_mul[E];
extern const int32_t bn0_add[E];
extern const int32_t bn1_mul[E];
extern const int32_t bn1_add[E];

#endif
"""


# ============================================================
# Model inspection helpers
# ============================================================

def get_quant_scale_from_proxy(proxy):
    for attr in ["scale", "scaling_impl"]:
        if hasattr(proxy, attr):
            obj = getattr(proxy, attr)
            try:
                val = obj() if callable(obj) else obj
                s = first_scalar(val)
                if s is not None:
                    return s
            except Exception:
                pass

    try:
        tq = proxy.fused_activation_quant_proxy.tensor_quant
        if hasattr(tq, "scale"):
            s = first_scalar(tq.scale())
            if s is not None:
                return s
    except Exception:
        pass

    return None


def get_quant_zp_from_proxy(proxy, default=0):
    for attr in ["zero_point"]:
        if hasattr(proxy, attr):
            obj = getattr(proxy, attr)
            try:
                val = obj() if callable(obj) else obj
                zp = first_scalar(val)
                if zp is not None:
                    return int(round(zp))
            except Exception:
                pass

    try:
        tq = proxy.fused_activation_quant_proxy.tensor_quant
        if hasattr(tq, "zero_point"):
            zp = first_scalar(tq.zero_point())
            if zp is not None:
                return int(round(zp))
    except Exception:
        pass

    return int(default)


def qt_scale(x, name):
    if not hasattr(x, "scale") or x.scale is None:
        raise RuntimeError(f"Activation {name} has no .scale")

    s = first_scalar(x.scale)
    if s is None:
        raise RuntimeError(f"Could not read scale from activation {name}")

    return float(s)


def qt_zp(x, default=0):
    if hasattr(x, "zero_point") and x.zero_point is not None:
        zp = first_scalar(x.zero_point)
        if zp is not None:
            return int(round(zp))
    return int(default)


def collect_vit_activation_scales(model, sample_input=None, test_loader=None, device="cpu"):
    activations = {}

    targets = {
        "patch",
        "blocks.0.mha.q_proj",
        "blocks.0.mha.k_proj",
        "blocks.0.mha.v_proj",
        "blocks.0.mha.out_proj",
        "blocks.0.mha.logit_quant",
        "blocks.0.mha.soft_quant",
        "blocks.0.mlp.fc2",
        "blocks.0.quant_res0",
        "blocks.0.quant_res1",
    }

    def hook_fn(name):
        def hook(module, inputs, output):
            activations[name] = output
        return hook

    hooks = []
    for name, module in model.named_modules():
        if name in targets:
            hooks.append(module.register_forward_hook(hook_fn(name)))

    was_training = model.training

    try:
        model.to(device)
        model.eval()

        if sample_input is None:
            if test_loader is None:
                raise RuntimeError(
                    "Need sample_input or test_loader to collect activation scales."
                )

            batch = next(iter(test_loader))
            images = batch[0] if isinstance(batch, (tuple, list)) else batch
            sample_input = images[:1]

        sample_input = sample_input.to(device)

        with torch.no_grad():
            _ = model(sample_input)

    finally:
        for h in hooks:
            h.remove()

        if was_training:
            model.train()

    missing = sorted(targets - set(activations.keys()))
    if missing:
        raise RuntimeError(f"Missing activation hooks for: {missing}")

    return {
        "patch_scale": qt_scale(activations["patch"], "patch"),
        "q_scale": qt_scale(activations["blocks.0.mha.q_proj"], "q_proj"),
        "k_scale": qt_scale(activations["blocks.0.mha.k_proj"], "k_proj"),
        "v_scale": qt_scale(activations["blocks.0.mha.v_proj"], "v_proj"),
        "out_proj_scale": qt_scale(activations["blocks.0.mha.out_proj"], "out_proj"),
        "logit_scale": qt_scale(activations["blocks.0.mha.logit_quant"], "logit_quant"),
        "logit_zp": qt_zp(activations["blocks.0.mha.logit_quant"], 0),
        "soft_scale": qt_scale(activations["blocks.0.mha.soft_quant"], "soft_quant"),
        "soft_zp": qt_zp(activations["blocks.0.mha.soft_quant"], 0),
        "fc2_scale": qt_scale(activations["blocks.0.mlp.fc2"], "fc2"),
        "res0_scale": qt_scale(activations["blocks.0.quant_res0"], "quant_res0"),
        "res1_scale": qt_scale(activations["blocks.0.quant_res1"], "quant_res1"),
    }


def get_bn_params(bn):
    rm = to_numpy(bn.running_mean).astype(np.float32)
    rv = to_numpy(bn.running_var).astype(np.float32)
    gamma = to_numpy(bn.weight).astype(np.float32)
    beta = to_numpy(bn.bias).astype(np.float32)
    eps = float(bn.eps)

    rs = 1.0 / np.sqrt(rv + eps)

    return {
        "rm": rm,
        "rs": rs.astype(np.float32),
        "scale": gamma,
        "bias": beta,
    }


def ratio_to_mult_shift(acc_scale, target_scale, shift=16):
    ratio = float(acc_scale) / float(target_scale)
    mult = int(round(ratio * (1 << shift)))
    return mult, shift


def get_quantlinear_export(qlinear, input_act_scale):
    qw = qlinear.quant_weight()

    if not hasattr(qw, "value") or not hasattr(qw, "scale"):
        raise RuntimeError(f"quant_weight() did not return a QuantTensor for {qlinear}")

    w_real = qw.value.detach().cpu()
    w_scale = float(qw.scale.detach().cpu().reshape(-1)[0])

    w_int = torch.round(w_real / w_scale)
    w_int = torch.clamp(w_int, -128, 127).to(torch.int8).numpy()

    # PyTorch linear weights are [out_features, in_features].
    # HLS export uses [in_features, out_features].
    w_int = w_int.T

    if qlinear.bias is not None:
        bias_scale = float(input_act_scale) * float(w_scale)
        b_real = qlinear.bias.detach().cpu()
        b_int = torch.round(b_real / bias_scale).to(torch.int32).numpy()
    else:
        b_int = np.zeros(qlinear.out_features, dtype=np.int32)

    return w_int, b_int, w_scale, 0


def get_quantconv_export(qconv, input_act_scale):
    qw = qconv.quant_weight()

    if not hasattr(qw, "value") or not hasattr(qw, "scale"):
        raise RuntimeError(f"quant_weight() did not return a QuantTensor for {qconv}")

    w_real = qw.value.detach().cpu()
    w_scale = float(qw.scale.detach().cpu().reshape(-1)[0])

    w_int = torch.round(w_real / w_scale)
    w_int = torch.clamp(w_int, -128, 127).to(torch.int8).numpy()

    if qconv.bias is not None:
        bias_scale = float(input_act_scale) * float(w_scale)
        b_real = qconv.bias.detach().cpu()
        b_int = torch.round(b_real / bias_scale).to(torch.int32).numpy()
    else:
        b_int = np.zeros(qconv.out_channels, dtype=np.int32)

    return w_int, b_int, w_scale, 0


def export_bn_affine_int(
    bn,
    input_scale,
    output_scale,
    output_zp=0,
    input_zp=0,
    shift=16,
):
    rm = to_numpy(bn.running_mean).astype(np.float64)
    rv = to_numpy(bn.running_var).astype(np.float64)
    gamma = to_numpy(bn.weight).astype(np.float64)
    beta = to_numpy(bn.bias).astype(np.float64)
    eps = float(bn.eps)

    inv_std = 1.0 / np.sqrt(rv + eps)

    alpha = float(input_scale) * gamma * inv_std / float(output_scale)

    beta_q = (
        beta
        - rm * gamma * inv_std
        - float(input_zp) * float(input_scale) * gamma * inv_std
    ) / float(output_scale) + float(output_zp)

    mul = np.round(alpha * (1 << shift)).astype(np.int64)
    add = np.round(beta_q * (1 << shift)).astype(np.int64)

    if mul.min() < INT32_MIN or mul.max() > INT32_MAX:
        raise OverflowError("BN mul overflows int32_t")

    if add.min() < INT32_MIN or add.max() > INT32_MAX:
        raise OverflowError("BN add overflows int32_t")

    return mul.astype(np.int32), add.astype(np.int32), shift


def inspect_exported_weight(name, w_int):
    w_flat = w_int.reshape(-1)
    print(name)
    print("  shape:", w_int.shape)
    print("  min/max:", int(w_flat.min()), int(w_flat.max()))
    print("  nonzero count:", int(np.count_nonzero(w_flat)))
    print("  first 20:", w_flat[:20])


def inspect_exported_bias(name, b_int):
    b_flat = b_int.reshape(-1)
    print(name)
    print("  shape:", b_int.shape)
    print("  min/max:", int(b_flat.min()), int(b_flat.max()))
    print("  nonzero count:", int(np.count_nonzero(b_flat)))
    print("  first 20:", b_flat[:20])


# ============================================================
# Main exporter
# ============================================================

def export_vit_to_hls(
    model,
    config,
    out_dir_h="../../hls/include/parameters",
    out_dir_cpp="../../hls/src/parameters",
    hls_export_config=None,
    verbose=True,
    test_loader=None,
    sample_input=None,
    device="cpu",
):
    """
    Generate:
      - types.h
      - vit_params.h
      - vit_params.cpp

    types.h contains HLS types, model dimensions, scalar requant constants,
    fixed-point Q-format macros, and tiling/parallelism configs.

    vit_params.h/cpp contain only model tensors.
    """

    hls_cfg = load_hls_export_config(overrides=hls_export_config)

    scale_frac_bits = int(hls_cfg["scale_frac_bits"])
    param_frac_bits = int(hls_cfg["param_frac_bits"])

    model.eval()

    out_dir_h = Path(out_dir_h)
    out_dir_h.mkdir(parents=True, exist_ok=True)

    out_dir_cpp = Path(out_dir_cpp)
    out_dir_cpp.mkdir(parents=True, exist_ok=True)

    # ---------------- model paths ----------------
    patch = model.patch
    block = model.blocks[0]
    mha = block.mha
    mlp = block.mlp
    head = model.head

    # ---------------- model config ----------------
    in_channels = int(config["num_channels"])
    height = int(config["image_size"])
    width = int(config["image_size"])
    patch_size = int(config["patch_size"])
    embed_dim = int(config["embed_dim"])
    num_heads = int(config["num_heads"])
    num_classes = int(config["num_classes"])

    seq_len = (height // patch_size) * (width // patch_size)
    head_dim = embed_dim // num_heads
    attn_scale = math.sqrt(head_dim)

    # ---------------- activation scales / zero-points ----------------
    act_scales = collect_vit_activation_scales(
        model,
        sample_input=sample_input,
        test_loader=test_loader,
        device=device,
    )

    patch_out_scale = act_scales["patch_scale"]
    q_out_scale = act_scales["q_scale"]
    k_out_scale = act_scales["k_scale"]
    v_out_scale = act_scales["v_scale"]
    out_proj_out_scale = act_scales["out_proj_scale"]
    soft_out_scale = act_scales["soft_scale"]
    soft_out_zp = act_scales["soft_zp"]
    fc2_out_scale = act_scales["fc2_scale"]
    logit_out_scale = act_scales["logit_scale"]
    logit_out_zp = act_scales["logit_zp"]
    res_0_scale = act_scales["res0_scale"]
    res_1_scale = act_scales["res1_scale"]

    INPUT_SCALE = get_quant_scale_from_proxy(patch.proj.input_quant)
    INPUT_ZERO_PT = get_quant_zp_from_proxy(patch.proj.input_quant, 0)

    patch_out_zp = get_quant_zp_from_proxy(patch.proj.output_quant, 0)
    patch_weight_scale = get_quant_scale_from_proxy(patch.proj.weight_quant)

    bn1_out_scale = get_quant_scale_from_proxy(mha.q_proj.input_quant)
    bn1_out_zp = get_quant_zp_from_proxy(mha.q_proj.input_quant, 0)

    bn2_out_scale = get_quant_scale_from_proxy(mlp.fc1.input_quant)
    bn2_out_zp = get_quant_zp_from_proxy(mlp.fc1.input_quant, 0)

    q_out_zp = get_quant_zp_from_proxy(mha.q_proj.output_quant, 0)
    k_out_zp = get_quant_zp_from_proxy(mha.k_proj.output_quant, 0)
    v_out_zp = get_quant_zp_from_proxy(mha.v_proj.output_quant, 0)

    out_proj_in_scale = get_quant_scale_from_proxy(mha.out_proj.input_quant)
    out_proj_in_zp = get_quant_zp_from_proxy(mha.out_proj.input_quant, 0)
    out_proj_out_zp = get_quant_zp_from_proxy(mha.out_proj.output_quant, 0)

    fc1_out_scale = get_quant_scale_from_proxy(mlp.fc1.output_quant)
    fc1_out_zp = get_quant_zp_from_proxy(mlp.fc1.output_quant, 0)

    fc2_in_scale = get_quant_scale_from_proxy(mlp.fc2.input_quant)
    fc2_in_zp = get_quant_zp_from_proxy(mlp.fc2.input_quant, 0)
    fc2_out_zp = get_quant_zp_from_proxy(mlp.fc2.output_quant, 0)

    head_in_scale = get_quant_scale_from_proxy(head.input_quant)
    head_in_zp = get_quant_zp_from_proxy(head.input_quant, 0)

    debug_scales = {
        "INPUT_SCALE": INPUT_SCALE,
        "patch_out_scale": patch_out_scale,
        "patch_weight_scale": patch_weight_scale,
        "bn1_out_scale": bn1_out_scale,
        "bn2_out_scale": bn2_out_scale,
        "q_out_scale": q_out_scale,
        "k_out_scale": k_out_scale,
        "v_out_scale": v_out_scale,
        "soft_out_scale": soft_out_scale,
        "out_proj_in_scale": out_proj_in_scale,
        "out_proj_out_scale": out_proj_out_scale,
        "fc1_out_scale": fc1_out_scale,
        "fc2_in_scale": fc2_in_scale,
        "fc2_out_scale": fc2_out_scale,
        "head_in_scale": head_in_scale,
    }

    missing = [k for k, v in debug_scales.items() if v is None]
    if missing:
        raise RuntimeError(f"Missing quant scales for: {missing}")

    if verbose:
        print("=== Export scales ===")
        for k, v in debug_scales.items():
            print(k, v)

    # ---------------- weights / biases ----------------
    patch_w, patch_b, patch_w_scale, _ = get_quantconv_export(patch.proj, INPUT_SCALE)

    w_q_0, bias_q_0, wq_scale, _ = get_quantlinear_export(mha.q_proj, bn1_out_scale)
    w_k_0, bias_k_0, wk_scale, _ = get_quantlinear_export(mha.k_proj, bn1_out_scale)
    w_v_0, bias_v_0, wv_scale, _ = get_quantlinear_export(mha.v_proj, bn1_out_scale)
    head_0, bias_h_0, wh_scale, _ = get_quantlinear_export(mha.out_proj, out_proj_in_scale)

    w_1_0, bias_1_0, w1_scale, _ = get_quantlinear_export(mlp.fc1, bn2_out_scale)
    w_2_0, bias_2_0, w2_scale, _ = get_quantlinear_export(mlp.fc2, fc2_in_scale)

    clas_weights_0, clas_bias_0, head_w_scale, _ = get_quantlinear_export(head, head_in_scale)

    cls_token = quantize_np_to_int8(
        to_numpy(patch.cls_token_param),
        patch_out_scale,
        patch_out_zp,
    )

    pos_enc = quantize_np_to_int8(
        to_numpy(patch.pos_embed_param),
        patch_out_scale,
        patch_out_zp,
    )

    bn1 = get_bn_params(block.bn1)
    bn2 = get_bn_params(block.bn2)
    bn_final = get_bn_params(model.norm)

    # ---------------- requant params ----------------
    patch_acc_scale = float(INPUT_SCALE) * float(patch_w_scale)
    PATCH_MULT, PATCH_SHIFT = ratio_to_mult_shift(
        patch_acc_scale,
        patch_out_scale,
        shift=16,
    )
    PATCH_ZERO_PT = int(patch_out_zp)

    MULT_q, SHIFT_q = ratio_to_mult_shift(
        float(bn1_out_scale) * float(wq_scale),
        q_out_scale,
        shift=16,
    )
    ZP_OUT_q = int(q_out_zp)

    MULT_k, SHIFT_k = ratio_to_mult_shift(
        float(bn1_out_scale) * float(wk_scale),
        k_out_scale,
        shift=16,
    )
    ZP_OUT_k = int(k_out_zp)

    MULT_vproj, SHIFT_vproj = ratio_to_mult_shift(
        float(bn1_out_scale) * float(wv_scale),
        v_out_scale,
        shift=16,
    )
    ZP_OUT_vproj = int(v_out_zp)

    # Attention logits:
    # S = Q @ K^T / sqrt(head_dim)
    SCALE_x = float(logit_out_scale)
    ZERO_x = int(logit_out_zp)

    MULT_a = int(round(
        (
            float(q_out_scale)
            * float(k_out_scale)
            * (float(head_dim) ** -0.5)
            / float(logit_out_scale)
        )
        * (1 << 16)
    ))
    SHIFT_a = 16
    ZP_OUT_a = int(logit_out_zp)

    # Softmax output domain.
    SCALE_x1 = float(soft_out_scale)
    ZERO_x1 = int(soft_out_zp)
    MULT_soft = int(round((1.0 / (127.0 * float(soft_out_scale))) * (1 << 16)))

    # Softmax @ V -> out_proj input domain.
    MULT_kv = int(round(
        (
            float(soft_out_scale)
            * float(v_out_scale)
            / float(out_proj_in_scale)
        )
        * (1 << 16)
    ))

    MULT_v = MULT_kv
    SHIFT_v = 16
    ZP_OUT_v = int(out_proj_in_zp)

    # out_proj -> first residual add domain.
    MULT_h, SHIFT_h = ratio_to_mult_shift(
        float(out_proj_in_scale) * float(wh_scale),
        out_proj_out_scale,
        shift=16,
    )
    ZP_OUT_h = int(out_proj_out_zp)

    # First residual.
    RATIO_SHIFT = 16
    OUT_RES_0_SHIFT = 16
    RATIO = int(round((float(patch_out_scale) / float(out_proj_out_scale)) * (1 << 16)))
    OUT_RES_0 = int(round((float(out_proj_out_scale) / float(res_0_scale)) * (1 << 16)))

    # fc1 -> fc2 input domain.
    MULT_fc1, SHIFT_fc1 = ratio_to_mult_shift(
        float(bn2_out_scale) * float(w1_scale),
        fc2_in_scale,
        shift=16,
    )
    ZP_OUT_fc1 = int(fc2_in_zp)

    # fc2 output domain.
    MULT_fc2, SHIFT_fc2 = ratio_to_mult_shift(
        float(fc2_in_scale) * float(w2_scale),
        fc2_out_scale,
        shift=16,
    )
    ZP_OUT_fc2 = int(fc2_out_zp)

    # Second residual.
    RATIO1_SHIFT = 16
    OUT_RES_1_SHIFT = 16
    RATIO1 = int(round((float(res_0_scale) / float(fc2_out_scale)) * (1 << 16)))
    OUT_RES_1 = int(round((float(fc2_out_scale) / float(res_1_scale)) * (1 << 16)))

    BN_SCALE = patch_out_scale
    BN0_OUT_SCALE = bn1_out_scale
    BN1_SCALE = res_0_scale
    MLP_SCALE = bn2_out_scale
    RES2_SCALE = res_1_scale

    HEAD_MULT = 1
    HEAD_SHIFT = 0
    HEAD_ZERO_PT = 0

    bn0_mul, bn0_add, BN0_SHIFT = export_bn_affine_int(
        block.bn1,
        input_scale=BN_SCALE,
        output_scale=BN0_OUT_SCALE,
        output_zp=bn1_out_zp,
        input_zp=0,
        shift=16,
    )

    bn1_mul, bn1_add, BN1_SHIFT = export_bn_affine_int(
        block.bn2,
        input_scale=BN1_SCALE,
        output_scale=MLP_SCALE,
        output_zp=bn2_out_zp,
        input_zp=0,
        shift=16,
    )

    if verbose:
        print("\n=== Exported tensor sanity ===")
        inspect_exported_weight("patch_kernels_0", patch_w)
        inspect_exported_bias("patch_bias_0", patch_b)
        inspect_exported_weight("w_q_0", w_q_0)
        inspect_exported_bias("bias_q_0", bias_q_0)
        inspect_exported_weight("w_1_0", w_1_0)
        inspect_exported_bias("bias_1_0", bias_1_0)
        inspect_exported_weight("clas_weights_0", clas_weights_0)
        inspect_exported_bias("clas_bias_0", clas_bias_0)

    # ---------------- scalar defines for types.h ----------------
    scalar_defines = []

    scalar_defines.append(define_int_str("SCALE_FRAC_BITS", scale_frac_bits))
    scalar_defines.append(define_int_str("PARAM_FRAC_BITS", param_frac_bits))
    scalar_defines.append("\n")

    scalar_defines.append(define_int_str("IN_CHANNELS", in_channels))
    scalar_defines.append(define_int_str("HEIGHT", height))
    scalar_defines.append(define_int_str("WIDTH", width))
    scalar_defines.append(define_int_str("INPUT_DIM", in_channels * height * width))
    scalar_defines.append(define_int_str("PATCH", patch_size))
    scalar_defines.append(define_int_str("SEQUENCE_LENGTH", seq_len))
    scalar_defines.append(define_int_str("EMBED_DIM", embed_dim))
    scalar_defines.append(define_int_str("T", seq_len))
    scalar_defines.append(define_int_str("E", embed_dim))
    scalar_defines.append(define_int_str("F", embed_dim * 4))
    scalar_defines.append(define_int_str("H", num_heads))
    scalar_defines.append(define_int_str("OUT_CLS", num_classes))
    scalar_defines.append(define_int_str("I", head_dim))
    scalar_defines.append("\n")

    scalar_defines.append(define_fixed_int_str("INPUT_SCALE", INPUT_SCALE, scale_frac_bits))
    scalar_defines.append(define_int_str("INPUT_ZERO_PT", INPUT_ZERO_PT))
    scalar_defines.append("\n")

    scalar_defines.append(define_fixed_int_str("BN_SCALE", BN_SCALE, scale_frac_bits))
    scalar_defines.append(define_fixed_int_str("BN0_OUT_SCALE", BN0_OUT_SCALE, scale_frac_bits))
    scalar_defines.append(define_fixed_int_str("BN1_SCALE", BN1_SCALE, scale_frac_bits))
    scalar_defines.append(define_fixed_int_str("MLP_SCALE", MLP_SCALE, scale_frac_bits))
    scalar_defines.append(define_fixed_int_str("RES2_SCALE", RES2_SCALE, scale_frac_bits))
    scalar_defines.append("\n")

    scalar_defines.append(define_fixed_int_str("SCALE_x", SCALE_x, scale_frac_bits))
    scalar_defines.append(define_int_str("ZERO_x", ZERO_x))
    scalar_defines.append(define_fixed_int_str("SCALE_x1", SCALE_x1, scale_frac_bits))
    scalar_defines.append(define_int_str("ZERO_x1", ZERO_x1))
    scalar_defines.append("\n")

    scalar_defines.append(define_fixed_int_str("ATTN_SCALE", attn_scale, param_frac_bits))
    scalar_defines.append("\n")

    scalar_defines.append(define_int_str("PATCH_MULT", PATCH_MULT))
    scalar_defines.append(define_int_str("PATCH_SHIFT", PATCH_SHIFT))
    scalar_defines.append(define_int_str("PATCH_ZERO_PT", PATCH_ZERO_PT))
    scalar_defines.append("\n")

    scalar_defines.append(define_int_str("MULT_q", MULT_q))
    scalar_defines.append(define_int_str("SHIFT_q", SHIFT_q))
    scalar_defines.append(define_int_str("ZP_OUT_q", ZP_OUT_q))
    scalar_defines.append(define_int_str("MULT_k", MULT_k))
    scalar_defines.append(define_int_str("SHIFT_k", SHIFT_k))
    scalar_defines.append(define_int_str("ZP_OUT_k", ZP_OUT_k))
    scalar_defines.append(define_int_str("MULT_vproj", MULT_vproj))
    scalar_defines.append(define_int_str("SHIFT_vproj", SHIFT_vproj))
    scalar_defines.append(define_int_str("ZP_OUT_vproj", ZP_OUT_vproj))
    scalar_defines.append("\n")

    scalar_defines.append(define_int_str("MULT_h", MULT_h))
    scalar_defines.append(define_int_str("SHIFT_h", SHIFT_h))
    scalar_defines.append(define_int_str("ZP_OUT_h", ZP_OUT_h))
    scalar_defines.append(define_int_str("MULT_fc1", MULT_fc1))
    scalar_defines.append(define_int_str("SHIFT_fc1", SHIFT_fc1))
    scalar_defines.append(define_int_str("ZP_OUT_fc1", ZP_OUT_fc1))
    scalar_defines.append(define_int_str("MULT_fc2", MULT_fc2))
    scalar_defines.append(define_int_str("SHIFT_fc2", SHIFT_fc2))
    scalar_defines.append(define_int_str("ZP_OUT_fc2", ZP_OUT_fc2))
    scalar_defines.append("\n")

    scalar_defines.append(define_int_str("HEAD_MULT", HEAD_MULT))
    scalar_defines.append(define_int_str("HEAD_SHIFT", HEAD_SHIFT))
    scalar_defines.append(define_int_str("HEAD_ZERO_PT", HEAD_ZERO_PT))
    scalar_defines.append(define_fixed_int_str("HEAD_IN_SCALE", head_in_scale, scale_frac_bits))
    scalar_defines.append("\n")

    scalar_defines.append(define_int_str("BN0_SHIFT", BN0_SHIFT))
    scalar_defines.append(define_int_str("BN1_SHIFT", BN1_SHIFT))
    scalar_defines.append(define_int_str("MULT_a", MULT_a))
    scalar_defines.append(define_int_str("SHIFT_a", SHIFT_a))
    scalar_defines.append(define_int_str("ZP_OUT_a", ZP_OUT_a))
    scalar_defines.append(define_int_str("MULT_soft", MULT_soft))
    scalar_defines.append("\n")

    scalar_defines.append(define_int_str("MULT_kv", MULT_kv))
    scalar_defines.append(define_int_str("MULT_v", MULT_v))
    scalar_defines.append(define_int_str("SHIFT_v", SHIFT_v))
    scalar_defines.append(define_int_str("ZP_OUT_v", ZP_OUT_v))
    scalar_defines.append("\n")

    scalar_defines.append(define_int_str("RATIO", RATIO))
    scalar_defines.append(define_int_str("OUT_RES_0", OUT_RES_0))
    scalar_defines.append(define_int_str("RATIO1", RATIO1))
    scalar_defines.append(define_int_str("OUT_RES_1", OUT_RES_1))
    scalar_defines.append(define_int_str("OUT_RES_1_SHIFT", OUT_RES_1_SHIFT))
    scalar_defines.append(define_int_str("OUT_RES_0_SHIFT", OUT_RES_0_SHIFT))
    scalar_defines.append(define_int_str("RATIO_SHIFT", RATIO_SHIFT))
    scalar_defines.append(define_int_str("RATIO1_SHIFT", RATIO1_SHIFT))
    scalar_defines.append("\n")

    scalar_defines_txt = "".join(scalar_defines)

    # ---------------- write files ----------------
    types_h = emit_types_h(scalar_defines_txt, hls_cfg)
    vit_params_h = emit_vit_params_h()

    cpp_parts = ['#include "parameters/vit_params.h"\n\n']

    cpp_parts.append(cpp_fixed_array_str("rm_b0", bn1["rm"], param_frac_bits, "accumulation"))
    cpp_parts.append(cpp_fixed_array_str("rs_b0", bn1["rs"], param_frac_bits, "accumulation"))
    cpp_parts.append(cpp_fixed_array_str("scale_b0", bn1["scale"], param_frac_bits, "accumulation"))
    cpp_parts.append(cpp_fixed_array_str("bias_b0", bn1["bias"], param_frac_bits, "accumulation"))
    cpp_parts.append("\n")

    cpp_parts.append(cpp_fixed_array_str("rm_b1", bn2["rm"], param_frac_bits, "accumulation"))
    cpp_parts.append(cpp_fixed_array_str("rs_b1", bn2["rs"], param_frac_bits, "accumulation"))
    cpp_parts.append(cpp_fixed_array_str("scale_b1", bn2["scale"], param_frac_bits, "accumulation"))
    cpp_parts.append(cpp_fixed_array_str("bias_b1", bn2["bias"], param_frac_bits, "accumulation"))
    cpp_parts.append("\n")

    cpp_parts.append(cpp_fixed_array_str("rm_bf", bn_final["rm"], param_frac_bits, "accumulation"))
    cpp_parts.append(cpp_fixed_array_str("rs_bf", bn_final["rs"], param_frac_bits, "accumulation"))
    cpp_parts.append(cpp_fixed_array_str("scale_bf", bn_final["scale"], param_frac_bits, "accumulation"))
    cpp_parts.append(cpp_fixed_array_str("bias_bf", bn_final["bias"], param_frac_bits, "accumulation"))
    cpp_parts.append("\n")

    # Explicit exception: keep BN affine mul/add arrays as int32_t.
    cpp_parts.append(cpp_array_str("bn0_mul", bn0_mul, "int32_t"))
    cpp_parts.append(cpp_array_str("bn0_add", bn0_add, "int32_t"))
    cpp_parts.append("\n")
    cpp_parts.append(cpp_array_str("bn1_mul", bn1_mul, "int32_t"))
    cpp_parts.append(cpp_array_str("bn1_add", bn1_add, "int32_t"))
    cpp_parts.append("\n")

    arrays = [
        ("w_q_0", w_q_0, "weight_0"),
        ("w_k_0", w_k_0, "weight_0"),
        ("w_v_0", w_v_0, "weight_0"),
        ("bias_q_0", bias_q_0, "accumulation"),
        ("bias_k_0", bias_k_0, "accumulation"),
        ("bias_v_0", bias_v_0, "accumulation"),
        ("head_0", head_0, "weight_0"),
        ("bias_h_0", bias_h_0, "accumulation"),
        ("w_1_0", w_1_0, "weight_0"),
        ("w_2_0", w_2_0, "weight_0"),
        ("bias_1_0", bias_1_0, "accumulation"),
        ("bias_2_0", bias_2_0, "accumulation"),
        ("patch_kernels_0", patch_w, "weight_0"),
        ("patch_bias_0", patch_b, "accumulation"),
        ("cls_token_0", cls_token, "act_0"),
        ("pos_enc_0", pos_enc, "act_0"),
        ("clas_weights_0", clas_weights_0, "weight_0"),
        ("clas_bias_0", clas_bias_0, "accumulation"),
    ]

    for name, arr, cpp_type in arrays:
        cpp_parts.append(cpp_array_str(name, arr, cpp_type))
        cpp_parts.append("\n")

    (out_dir_h / "types.h").write_text(types_h, encoding="utf-8")
    (out_dir_h / "vit_params.h").write_text(vit_params_h, encoding="utf-8")
    (out_dir_cpp / "vit_params.cpp").write_text("".join(cpp_parts), encoding="utf-8")

    if verbose:
        print(f"Exported to: {out_dir_h / 'types.h'}")
        print(f"Exported to: {out_dir_h / 'vit_params.h'}")
        print(f"Exported to: {out_dir_cpp / 'vit_params.cpp'}")

    return {
        "types_h": out_dir_h / "types.h",
        "vit_params_h": out_dir_h / "vit_params.h",
        "vit_params_cpp": out_dir_cpp / "vit_params.cpp",
        "bn0_mul": bn0_mul,
        "bn0_add": bn0_add,
        "bn1_mul": bn1_mul,
        "bn1_add": bn1_add,
    }


# ============================================================
# Example usage from your existing training/export script:
# ============================================================
#
# hls_cfg = {
#     "debug": False,
#     "types": {
#         "axi_width": 8,
#         "act_width": 8,
#         "weight_width": 8,
#         "acc_width": 32,
#     },
#     "linear_cfg": {
#         "base": {"SIMD": 1, "PE": 1, "Tm": 1, "Tk": 1, "Tn": 1},
#         "fc1":  {"SIMD": 1, "PE": 1, "Tm": 1, "Tk": 1, "Tn": 1},
#         "fc2":  {"SIMD": 1, "PE": 1, "Tm": 1, "Tk": 1, "Tn": 1},
#     },
# }
#
# export_vit_to_hls(
#     model,
#     config,
#     out_dir_h="../../hls/include/parameters",
#     out_dir_cpp="../../hls/src/parameters",
#     hls_export_config=hls_cfg,
#     verbose=True,
#     test_loader=test_loader,
#     device="cpu",
# )
