import math
from pathlib import Path

import numpy as np
import torch


# ============================================================
# Fixed-point export format
# ============================================================

INT32_MIN = -(1 << 31)
INT32_MAX = (1 << 31) - 1

# Quantization scales are usually small numbers such as 0.0039.
# Q30 preserves them accurately as int32_t.
SCALE_FRAC_BITS = 30

# BN parameters, attention scale, and generic real-valued params.
# Q16 is safer for values that may be larger than 1.
PARAM_FRAC_BITS = 16


def to_numpy(x):
    if isinstance(x, torch.Tensor):
        return x.detach().cpu().numpy()
    return np.asarray(x)


def flatten_c(x):
    return to_numpy(x).reshape(-1)


def fixed_to_int32_np(x, frac_bits, name=""):
    x = to_numpy(x).astype(np.float64)
    q = np.round(x * float(1 << frac_bits))

    if q.size > 0:
        q_min = q.min()
        q_max = q.max()

        if q_min < INT32_MIN or q_max > INT32_MAX:
            raise OverflowError(
                f"{name} overflows int32_t with frac_bits={frac_bits}: "
                f"min={q_min}, max={q_max}"
            )

    return q.astype(np.int32)


def c_array_str(name, arr, ctype, values_per_line=16):
    arr = flatten_c(arr)

    if ctype == "float":
        vals = [f"{float(v):.8f}f" for v in arr]
    elif ctype == "int8_t":
        vals = [str(int(np.int8(v))) for v in arr]
    elif ctype == "int32_t":
        vals = [str(int(np.int32(v))) for v in arr]
    else:
        raise ValueError(f"Unsupported ctype: {ctype}")

    lines = []
    for i in range(0, len(vals), values_per_line):
        lines.append("    " + ", ".join(vals[i:i + values_per_line]))

    return f"const {ctype} {name}[{len(arr)}] = {{\n" + ",\n".join(lines) + "\n};\n"


def c_scalar_str(name, value, ctype):
    if ctype == "float":
        return f"const {ctype} {name} = {float(value):.8f}f;\n"
    elif ctype == "int32_t":
        return f"const {ctype} {name} = {int(np.int32(value))};\n"
    else:
        raise ValueError(f"Unsupported scalar ctype: {ctype}")


def c_fixed_scalar_str(name, value, frac_bits):
    q = fixed_to_int32_np(np.asarray([value]), frac_bits, name=name)[0]
    return c_scalar_str(name, q, "int32_t")


def c_fixed_array_str(name, arr, frac_bits, values_per_line=16):
    q = fixed_to_int32_np(arr, frac_bits, name=name)
    return c_array_str(name, q, "int32_t", values_per_line=values_per_line)


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
    """
    MULT / 2^SHIFT ~= acc_scale / target_scale
    """
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

    # Export linear weights as [in_features, out_features]
    # because PyTorch stores them as [out_features, in_features].
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

    # y_real = gamma * inv_std * (S_in * (q - zp_in) - rm) + beta
    # q_out = y_real / S_out + zp_out
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

def export_vit_to_c(
    model,
    config,
    out_dir_h="./vit_c_export",
    out_dir_c="./vit_c_export",
    verbose=True,
):
    model.eval()

    out_dir_h = Path(out_dir_h)
    out_dir_h.mkdir(parents=True, exist_ok=True)

    out_dir_c = Path(out_dir_c)
    out_dir_c.mkdir(parents=True, exist_ok=True)

    # ---------------- model paths ----------------
    patch = model.patch
    block = model.blocks[0]
    mha = block.mha
    mlp = block.mlp
    head = model.head

    # ---------------- config ----------------
    in_channels = int(config["num_channels"])
    height = int(config["image_size"])
    width = int(config["image_size"])
    patch_size = int(config["patch_size"])
    embed_dim = int(config["embed_dim"])
    num_heads = int(config["num_heads"])
    num_classes = int(config["num_classes"])

    seq_len = (height // patch_size) * (width // patch_size)
    attn_scale = math.sqrt(embed_dim // num_heads)

    # ---------------- activation scales / zero-points ----------------
    INPUT_SCALE = get_quant_scale_from_proxy(patch.proj.input_quant)
    INPUT_ZERO_PT = get_quant_zp_from_proxy(patch.proj.input_quant, 0)

    patch_out_scale = get_quant_scale_from_proxy(patch.proj.output_quant)
    patch_out_zp = get_quant_zp_from_proxy(patch.proj.output_quant, 0)

    patch_weight_scale = get_quant_scale_from_proxy(patch.proj.weight_quant)

    bn1_out_scale = get_quant_scale_from_proxy(mha.q_proj.input_quant)
    bn1_out_zp = get_quant_zp_from_proxy(mha.q_proj.input_quant, 0)

    bn2_out_scale = get_quant_scale_from_proxy(mlp.fc1.input_quant)
    bn2_out_zp = get_quant_zp_from_proxy(mlp.fc1.input_quant, 0)

    q_out_scale = get_quant_scale_from_proxy(mha.q_proj.output_quant)
    q_out_zp = get_quant_zp_from_proxy(mha.q_proj.output_quant, 0)

    k_out_scale = get_quant_scale_from_proxy(mha.k_proj.output_quant)
    k_out_zp = get_quant_zp_from_proxy(mha.k_proj.output_quant, 0)

    v_out_scale = get_quant_scale_from_proxy(mha.v_proj.output_quant)
    v_out_zp = get_quant_zp_from_proxy(mha.v_proj.output_quant, 0)

    out_proj_in_scale = get_quant_scale_from_proxy(mha.out_proj.input_quant)
    out_proj_in_zp = get_quant_zp_from_proxy(mha.out_proj.input_quant, 0)

    out_proj_out_scale = get_quant_scale_from_proxy(mha.out_proj.output_quant)
    out_proj_out_zp = get_quant_zp_from_proxy(mha.out_proj.output_quant, 0)

    fc1_out_scale = get_quant_scale_from_proxy(mlp.fc1.output_quant)
    fc1_out_zp = get_quant_zp_from_proxy(mlp.fc1.output_quant, 0)

    fc2_in_scale = get_quant_scale_from_proxy(mlp.fc2.input_quant)
    fc2_in_zp = get_quant_zp_from_proxy(mlp.fc2.input_quant, 0)

    fc2_out_scale = get_quant_scale_from_proxy(mlp.fc2.output_quant)
    fc2_out_zp = get_quant_zp_from_proxy(mlp.fc2.output_quant, 0)

    S_out_proj_in = get_quant_scale_from_proxy(model.blocks[0].mha.out_proj.input_quant)
    print("S_out_proh_in:", S_out_proj_in)

    soft_out_scale = None
    soft_out_zp = 0

    if hasattr(mha, "soft_quant") and hasattr(mha.soft_quant, "act_quant"):
        soft_out_scale = get_quant_scale_from_proxy(mha.soft_quant.act_quant)
        soft_out_zp = get_quant_zp_from_proxy(mha.soft_quant.act_quant, 0)

    if soft_out_scale is None:
        soft_out_scale = 1.0 / 255.0
        soft_out_zp = 0

    # Residual output domains
    res1_scale = out_proj_out_scale
    res1_zp = out_proj_out_zp

    res2_scale = fc2_out_scale
    res2_zp = fc2_out_zp

    # Classifier input domain
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

    if verbose:
        print("=== Export scales ===")
        for k, v in debug_scales.items():
            print(k, v)

    missing = [k for k, v in debug_scales.items() if v is None]
    if missing:
        raise RuntimeError(f"Missing quant scales for: {missing}")

    # ---------------- weights / biases ----------------
    patch_w, patch_b, patch_w_scale, _ = get_quantconv_export(patch.proj, INPUT_SCALE)

    w_q_0, bias_q_0, wq_scale, _ = get_quantlinear_export(mha.q_proj, bn1_out_scale)
    w_k_0, bias_k_0, wk_scale, _ = get_quantlinear_export(mha.k_proj, bn1_out_scale)
    w_v_0, bias_v_0, wv_scale, _ = get_quantlinear_export(mha.v_proj, bn1_out_scale)
    head_0, bias_h_0, wh_scale, _ = get_quantlinear_export(mha.out_proj, out_proj_in_scale)

    w_1_0, bias_1_0, w1_scale, _ = get_quantlinear_export(mlp.fc1, bn2_out_scale)
    w_2_0, bias_2_0, w2_scale, _ = get_quantlinear_export(mlp.fc2, fc2_in_scale)

    clas_weights_0, clas_bias_0, head_w_scale, _ = get_quantlinear_export(head, head_in_scale)

    # ---------------- cls token / positional encoding ----------------
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

    # ---------------- BN params ----------------
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

    # Attention score tensor A = Q @ K^T.
    # qk accumulator scale = q_out_scale * k_out_scale.
    SCALE_x = float(q_out_scale) * float(k_out_scale)
    ZERO_x = 0

    MULT_a, SHIFT_a = ratio_to_mult_shift(
        float(q_out_scale) * float(k_out_scale),
        SCALE_x,
        shift=16,
    )
    ZP_OUT_a = 0

    # Softmax output domain.
    SCALE_x1 = float(soft_out_scale)
    ZERO_x1 = int(soft_out_zp)

    # A @ V -> out_proj input domain.
    MULT_v, SHIFT_v = ratio_to_mult_shift(
        float(SCALE_x1) * float(v_out_scale),
        out_proj_in_scale,
        shift=16,
    )
    ZP_OUT_v = int(out_proj_in_zp)

    # out_proj -> residual add domain.
    MULT_h, SHIFT_h = ratio_to_mult_shift(
        float(out_proj_in_scale) * float(wh_scale),
        out_proj_out_scale,
        shift=16,
    )
    ZP_OUT_h = int(out_proj_out_zp)

    # fc1 -> fc2 input domain.
    MULT_fc1, SHIFT_fc1 = ratio_to_mult_shift(
        float(bn2_out_scale) * float(w1_scale),
        fc2_in_scale,
        shift=16,
    )
    ZP_OUT_fc1 = int(fc2_in_zp)

    # fc2 -> residual add domain.
    MULT_fc2, SHIFT_fc2 = ratio_to_mult_shift(
        float(fc2_in_scale) * float(w2_scale),
        fc2_out_scale,
        shift=16,
    )
    ZP_OUT_fc2 = int(fc2_out_zp)

    # Residual skip requants.
    RATIO, RATIO_SHIFT = ratio_to_mult_shift(
        patch_out_scale,
        res1_scale,
        shift=16,
    )

    RATIO1, RATIO1_SHIFT = ratio_to_mult_shift(
        res1_scale,
        res2_scale,
        shift=16,
    )

    # BN / block scales used by the C path.
    BN_SCALE = patch_out_scale
    BN0_OUT_SCALE = bn1_out_scale
    BN1_SCALE = res1_scale
    MLP_SCALE = bn2_out_scale
    RES2_SCALE = res2_scale

    # Classifier output stays raw int32 logits in current C path.
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
    

    print(f"BN0 MULT: {bn0_mul}, BN0_ADD: {bn0_add}, BN0_SHIFT: {BN0_SHIFT}")
    print(f"BN1 MULT: {bn1_mul}, BN1_ADD: {bn1_add}, BN1_SHIFT: {BN1_SHIFT}")


    if verbose:
        print("\n=== Patch requant ===")
        print("patch_acc_scale =", patch_acc_scale)
        print("PATCH_MULT =", PATCH_MULT)
        print("PATCH_SHIFT =", PATCH_SHIFT)
        print("PATCH_ZERO_PT =", PATCH_ZERO_PT)

        print("\n=== Projection requants ===")
        print("MULT_q =", MULT_q, "SHIFT_q =", SHIFT_q, "ZP_OUT_q =", ZP_OUT_q)
        print("MULT_k =", MULT_k, "SHIFT_k =", SHIFT_k, "ZP_OUT_k =", ZP_OUT_k)
        print(
            "MULT_vproj =",
            MULT_vproj,
            "SHIFT_vproj =",
            SHIFT_vproj,
            "ZP_OUT_vproj =",
            ZP_OUT_vproj,
        )

        print("\n=== Attention requants ===")
        print("SCALE_x =", SCALE_x, "ZERO_x =", ZERO_x)
        print("MULT_a =", MULT_a, "SHIFT_a =", SHIFT_a, "ZP_OUT_a =", ZP_OUT_a)
        print("SCALE_x1 =", SCALE_x1, "ZERO_x1 =", ZERO_x1)
        print("MULT_v =", MULT_v, "SHIFT_v =", SHIFT_v, "ZP_OUT_v =", ZP_OUT_v)

        print("\n=== MLP / out proj requants ===")
        print("MULT_h =", MULT_h, "SHIFT_h =", SHIFT_h, "ZP_OUT_h =", ZP_OUT_h)
        print(
            "MULT_fc1 =",
            MULT_fc1,
            "SHIFT_fc1 =",
            SHIFT_fc1,
            "ZP_OUT_fc1 =",
            ZP_OUT_fc1,
        )
        print(
            "MULT_fc2 =",
            MULT_fc2,
            "SHIFT_fc2 =",
            SHIFT_fc2,
            "ZP_OUT_fc2 =",
            ZP_OUT_fc2,
        )

        print("\n=== Exported tensor sanity ===")
        inspect_exported_weight("patch_kernels_0", patch_w)
        inspect_exported_bias("patch_bias_0", patch_b)
        inspect_exported_weight("w_q_0", w_q_0)
        inspect_exported_bias("bias_q_0", bias_q_0)
        inspect_exported_weight("w_1_0", w_1_0)
        inspect_exported_bias("bias_1_0", bias_1_0)
        inspect_exported_weight("clas_weights_0", clas_weights_0)
        inspect_exported_bias("clas_bias_0", clas_bias_0)

    # ---------------- write vit_params.h ----------------
    h_txt = f"""#ifndef VIT_PARAMS_H
#define VIT_PARAMS_H

#include <stddef.h>
#include <stdint.h>

/*
 * No floating-point parameters are exported.
 *
 * Former float scales are exported as int32_t Q{SCALE_FRAC_BITS}:
 *     real_value = value / 2^{SCALE_FRAC_BITS}
 *
 * BN parameters and attention scale are exported as int32_t Q{PARAM_FRAC_BITS}:
 *     real_value = value / 2^{PARAM_FRAC_BITS}
 */

#define SCALE_FRAC_BITS {SCALE_FRAC_BITS}
#define PARAM_FRAC_BITS {PARAM_FRAC_BITS}

enum {{
    IN_CHANNELS = {in_channels},
    HEIGHT = {height},
    WIDTH = {width},
    INPUT_DIM = IN_CHANNELS * HEIGHT * WIDTH,
    PATCH = {patch_size},
    SEQUENCE_LENGTH = (HEIGHT / PATCH) * (WIDTH / PATCH),
    EMBED_DIM = {embed_dim},
    T = SEQUENCE_LENGTH,
    E = EMBED_DIM,
    F = E * 4,
    H = {num_heads},
    OUT_CLS = {num_classes}
}};

extern const int32_t INPUT_SCALE;
extern const int32_t INPUT_ZERO_PT;

extern const int32_t BN_SCALE;
extern const int32_t BN0_OUT_SCALE;
extern const int32_t BN1_SCALE;
extern const int32_t MLP_SCALE;
extern const int32_t RES2_SCALE;

extern const int32_t SCALE_x;
extern const int32_t ZERO_x;
extern const int32_t SCALE_x1;
extern const int32_t ZERO_x1;

extern const int32_t ATTN_SCALE;

extern const int32_t PATCH_MULT;
extern const int32_t PATCH_SHIFT;
extern const int32_t PATCH_ZERO_PT;

extern const int32_t MULT_q;
extern const int32_t SHIFT_q;
extern const int32_t ZP_OUT_q;

extern const int32_t MULT_k;
extern const int32_t SHIFT_k;
extern const int32_t ZP_OUT_k;

extern const int32_t MULT_vproj;
extern const int32_t SHIFT_vproj;
extern const int32_t ZP_OUT_vproj;

extern const int32_t RATIO;
extern const int32_t RATIO1;

extern const int32_t MULT_a;
extern const int32_t SHIFT_a;
extern const int32_t ZP_OUT_a;

extern const int32_t MULT_v;
extern const int32_t SHIFT_v;
extern const int32_t ZP_OUT_v;

extern const int32_t MULT_h;
extern const int32_t SHIFT_h;
extern const int32_t ZP_OUT_h;

extern const int32_t MULT_fc1;
extern const int32_t SHIFT_fc1;
extern const int32_t ZP_OUT_fc1;

extern const int32_t MULT_fc2;
extern const int32_t SHIFT_fc2;
extern const int32_t ZP_OUT_fc2;

extern const int32_t HEAD_MULT;
extern const int32_t HEAD_SHIFT;
extern const int32_t HEAD_ZERO_PT;
extern const int32_t HEAD_IN_SCALE;

extern const int32_t rm_b0[E];
extern const int32_t rs_b0[E];
extern const int32_t scale_b0[E];
extern const int32_t bias_b0[E];

extern const int32_t rm_b1[E];
extern const int32_t rs_b1[E];
extern const int32_t scale_b1[E];
extern const int32_t bias_b1[E];

extern const int32_t rm_bf[E];
extern const int32_t rs_bf[E];
extern const int32_t scale_bf[E];
extern const int32_t bias_bf[E];

extern const int8_t w_q_0[E * E];
extern const int8_t w_k_0[E * E];
extern const int8_t w_v_0[E * E];
extern const int32_t bias_q_0[E];
extern const int32_t bias_k_0[E];
extern const int32_t bias_v_0[E];
extern const int8_t head_0[E * E];
extern const int32_t bias_h_0[E];

extern const int8_t w_1_0[E * F];
extern const int8_t w_2_0[F * E];
extern const int32_t bias_1_0[F];
extern const int32_t bias_2_0[E];

extern const int8_t patch_kernels_0[E * IN_CHANNELS * PATCH * PATCH];
extern const int32_t patch_bias_0[E];
extern const int8_t cls_token_0[E];
extern const int8_t pos_enc_0[(T + 1) * E];

extern const int8_t clas_weights_0[E * OUT_CLS];
extern const int32_t clas_bias_0[OUT_CLS];

#define BN0_SHIFT 16
extern const int32_t bn0_mul[E];
extern const int32_t bn0_add[E];

#define BN1_SHIFT 16
extern const int32_t bn1_mul[E];
extern const int32_t bn1_add[E];

#endif
"""

    (out_dir_h / "vit_params.h").write_text(h_txt)

    # ---------------- write vit_params.c ----------------
    c_parts = ['#include "vit_params.h"\n\n']

    # Scales exported as Q30 int32_t.
    c_parts.append(c_fixed_scalar_str("INPUT_SCALE", INPUT_SCALE, SCALE_FRAC_BITS))
    c_parts.append(c_scalar_str("INPUT_ZERO_PT", INPUT_ZERO_PT, "int32_t"))
    c_parts.append("\n")

    c_parts.append(c_fixed_scalar_str("BN_SCALE", BN_SCALE, SCALE_FRAC_BITS))
    c_parts.append(c_fixed_scalar_str("BN0_OUT_SCALE", BN0_OUT_SCALE, SCALE_FRAC_BITS))
    c_parts.append(c_fixed_scalar_str("BN1_SCALE", BN1_SCALE, SCALE_FRAC_BITS))
    c_parts.append(c_fixed_scalar_str("MLP_SCALE", MLP_SCALE, SCALE_FRAC_BITS))
    c_parts.append(c_fixed_scalar_str("RES2_SCALE", RES2_SCALE, SCALE_FRAC_BITS))
    c_parts.append("\n")

    c_parts.append(c_fixed_scalar_str("SCALE_x", SCALE_x, SCALE_FRAC_BITS))
    c_parts.append(c_scalar_str("ZERO_x", ZERO_x, "int32_t"))
    c_parts.append(c_fixed_scalar_str("SCALE_x1", SCALE_x1, SCALE_FRAC_BITS))
    c_parts.append(c_scalar_str("ZERO_x1", ZERO_x1, "int32_t"))
    c_parts.append("\n")

    # Attention scale exported as Q16 int32_t.
    c_parts.append(c_fixed_scalar_str("ATTN_SCALE", attn_scale, PARAM_FRAC_BITS))
    c_parts.append("\n")

    c_parts.append(c_scalar_str("PATCH_MULT", PATCH_MULT, "int32_t"))
    c_parts.append(c_scalar_str("PATCH_SHIFT", PATCH_SHIFT, "int32_t"))
    c_parts.append(c_scalar_str("PATCH_ZERO_PT", PATCH_ZERO_PT, "int32_t"))
    c_parts.append("\n")

    c_parts.append(c_scalar_str("MULT_q", MULT_q, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_q", SHIFT_q, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_q", ZP_OUT_q, "int32_t"))

    c_parts.append(c_scalar_str("MULT_k", MULT_k, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_k", SHIFT_k, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_k", ZP_OUT_k, "int32_t"))

    c_parts.append(c_scalar_str("MULT_vproj", MULT_vproj, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_vproj", SHIFT_vproj, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_vproj", ZP_OUT_vproj, "int32_t"))
    c_parts.append("\n")

    c_parts.append(c_scalar_str("RATIO", RATIO, "int32_t"))
    c_parts.append(c_scalar_str("RATIO1", RATIO1, "int32_t"))
    c_parts.append("\n")

    c_parts.append(c_scalar_str("MULT_a", MULT_a, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_a", SHIFT_a, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_a", ZP_OUT_a, "int32_t"))

    c_parts.append(c_scalar_str("MULT_v", MULT_v, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_v", SHIFT_v, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_v", ZP_OUT_v, "int32_t"))

    c_parts.append(c_scalar_str("MULT_h", MULT_h, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_h", SHIFT_h, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_h", ZP_OUT_h, "int32_t"))

    c_parts.append(c_scalar_str("MULT_fc1", MULT_fc1, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_fc1", SHIFT_fc1, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_fc1", ZP_OUT_fc1, "int32_t"))

    c_parts.append(c_scalar_str("MULT_fc2", MULT_fc2, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_fc2", SHIFT_fc2, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_fc2", ZP_OUT_fc2, "int32_t"))

    c_parts.append(c_scalar_str("HEAD_MULT", HEAD_MULT, "int32_t"))
    c_parts.append(c_scalar_str("HEAD_SHIFT", HEAD_SHIFT, "int32_t"))
    c_parts.append(c_scalar_str("HEAD_ZERO_PT", HEAD_ZERO_PT, "int32_t"))

    # Classifier input scale exported as Q30 int32_t.
    c_parts.append(c_fixed_scalar_str("HEAD_IN_SCALE", head_in_scale, SCALE_FRAC_BITS))
    c_parts.append("\n")

    # BN params exported as Q16 int32_t arrays.
    c_parts.append(c_fixed_array_str("rm_b0", bn1["rm"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("rs_b0", bn1["rs"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("scale_b0", bn1["scale"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("bias_b0", bn1["bias"], PARAM_FRAC_BITS))
    c_parts.append("\n")

    c_parts.append(c_fixed_array_str("rm_b1", bn2["rm"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("rs_b1", bn2["rs"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("scale_b1", bn2["scale"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("bias_b1", bn2["bias"], PARAM_FRAC_BITS))
    c_parts.append("\n")

    c_parts.append(c_fixed_array_str("rm_bf", bn_final["rm"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("rs_bf", bn_final["rs"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("scale_bf", bn_final["scale"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("bias_bf", bn_final["bias"], PARAM_FRAC_BITS))

    c_parts.append(c_array_str("bn0_mul", bn0_mul, "int32_t"))
    c_parts.append(c_array_str("bn0_add", bn0_add, "int32_t"))
    c_parts.append("\n")

    c_parts.append(c_array_str("bn1_mul", bn1_mul, "int32_t"))
    c_parts.append(c_array_str("bn1_add", bn1_add, "int32_t"))
    c_parts.append("\n")

    c_parts.append("\n")

    

    arrays = [
        ("w_q_0", w_q_0, "int8_t"),
        ("w_k_0", w_k_0, "int8_t"),
        ("w_v_0", w_v_0, "int8_t"),
        ("bias_q_0", bias_q_0, "int32_t"),
        ("bias_k_0", bias_k_0, "int32_t"),
        ("bias_v_0", bias_v_0, "int32_t"),
        ("head_0", head_0, "int8_t"),
        ("bias_h_0", bias_h_0, "int32_t"),
        ("w_1_0", w_1_0, "int8_t"),
        ("w_2_0", w_2_0, "int8_t"),
        ("bias_1_0", bias_1_0, "int32_t"),
        ("bias_2_0", bias_2_0, "int32_t"),
        ("patch_kernels_0", patch_w, "int8_t"),
        ("patch_bias_0", patch_b, "int32_t"),
        ("cls_token_0", cls_token, "int8_t"),
        ("pos_enc_0", pos_enc, "int8_t"),
        ("clas_weights_0", clas_weights_0, "int8_t"),
        ("clas_bias_0", clas_bias_0, "int32_t"),

    ]

    for name, arr, ctype in arrays:
        c_parts.append(c_array_str(name, arr, ctype))
        c_parts.append("\n")

    (out_dir_c / "vit_params.c").write_text("".join(c_parts))

    print(f"Exported to: {out_dir_h / 'vit_params.h'}")
    print(f"Exported to: {out_dir_c / 'vit_params.c'}")

    return bn0_mul, bn0_add

    


model.eval()

bn0_mul, bn0_add = export_vit_to_c(
    model,
    config,
    out_dir_h="../../hls/include/parameters",
    out_dir_c="../../hls/src/parameters",
    verbose=True,
)
