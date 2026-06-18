#ifndef TYPES_H
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

#define VIT_HLS_DEBUG 0
#if VIT_HLS_DEBUG
#define _HLS_DEBUG
#endif

#define SCALE_FRAC_BITS 30
#define PARAM_FRAC_BITS 16

#define IN_CHANNELS 1
#define HEIGHT 32
#define WIDTH 32
#define INPUT_DIM 1024
#define PATCH 8
#define SEQUENCE_LENGTH 16
#define EMBED_DIM 192
#define T 16
#define E 192
#define F 768
#define H 4
#define OUT_CLS 10
#define I 48

#define INPUT_SCALE 5249455
#define INPUT_ZERO_PT 0

#define BN_SCALE 3839159
#define BN0_OUT_SCALE 51321828
#define BN1_SCALE 16170801
#define MLP_SCALE 46775700
#define RES2_SCALE 27989374

#define SCALE_x 113657000
#define ZERO_x 0
#define SCALE_x1 3663594
#define ZERO_x1 0

#define ATTN_SCALE 454047

#define PATCH_MULT 189
#define PATCH_SHIFT 16
#define PATCH_ZERO_PT 0

#define MULT_q 98
#define SHIFT_q 16
#define ZP_OUT_q 0
#define MULT_k 165
#define SHIFT_k 16
#define ZP_OUT_k 0
#define MULT_vproj 200
#define SHIFT_vproj 16
#define ZP_OUT_vproj 0

#define MULT_h 241
#define SHIFT_h 16
#define ZP_OUT_h 0
#define MULT_fc1 169
#define SHIFT_fc1 16
#define ZP_OUT_fc1 0
#define MULT_fc2 261
#define SHIFT_fc2 16
#define ZP_OUT_fc2 0

#define HEAD_MULT 1
#define HEAD_SHIFT 0
#define HEAD_ZERO_PT 0
#define HEAD_IN_SCALE 46775700

#define BN0_SHIFT 16
#define BN1_SHIFT 16
#define MULT_a 137
#define SHIFT_a 16
#define ZP_OUT_a 0
#define MULT_soft 151241

#define MULT_kv 382
#define MULT_v 382
#define SHIFT_v 16
#define ZP_OUT_v 0

#define RATIO 23553
#define OUT_RES_0 43294
#define RATIO1 68366
#define OUT_RES_1 36296
#define OUT_RES_1_SHIFT 16
#define OUT_RES_0_SHIFT 16
#define RATIO_SHIFT 16
#define RATIO1_SHIFT 16



#define AXI_WIDTH 8
#define ACT_WIDTH 8
#define WEIGHT_WIDTH 8
#define ACC_WIDTH 32

#define VIT_CEIL_DIV(a, b) (((a) + (b) - 1) / (b))
#define VIT_AXI_BUS_ELEMS (AXI_WIDTH / ACT_WIDTH)
#define VIT_LIN_DEPTH  VIT_CEIL_DIV((E * E), VIT_AXI_BUS_ELEMS)
#define VIT_W_UP_DEPTH VIT_CEIL_DIV((E * F), VIT_AXI_BUS_ELEMS)

template<int W>
using axis_t = ap_axiu<W, 0, 0, 0>;

typedef ap_uint<AXI_WIDTH> word_t_bus;

typedef ap_int<8> act_0;
typedef ap_int<8> weight_0;
typedef ap_int<32> accumulation;
typedef short ITER;

/*
 * ATTN_SCALE is an integer QPARAM_FRAC_BITS macro.
 * Keep this alias only for code paths still referencing Head_scale.
 */
static const accumulation Head_scale = (accumulation)ATTN_SCALE;

struct LinearCfgBase {
  static constexpr int SIMD = 1;
  static constexpr int PE   = 1;
  static constexpr int Tm   = 1;
  static constexpr int Tk   = 1;
  static constexpr int Tn   = 1;
};

struct FC1Cfg : LinearCfgBase {
  static constexpr int SIMD = 1;
  static constexpr int PE = 1;
  static constexpr int Tm = 1;
  static constexpr int Tk = 1;
  static constexpr int Tn = 1;
};

struct FC2Cfg : LinearCfgBase {
  static constexpr int SIMD = 1;
  static constexpr int PE = 1;
  static constexpr int Tm = 1;
  static constexpr int Tk = 1;
  static constexpr int Tn = 1;
};


#endif
