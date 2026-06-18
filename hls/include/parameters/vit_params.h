#ifndef VIT_PARAMS_H
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
