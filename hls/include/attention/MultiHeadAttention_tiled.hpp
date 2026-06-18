#ifndef MULTIHEADATTENTION_TILED_HPP
#define MULTIHEADATTENTION_TILED_HPP

#include <hls_stream.h>
#include <ap_int.h>
#include "types.h"
#include "activations.h"
#include "linear.h"

void MultiHeadAttention_tiled(
    const word_t_bus* in_q,
    const word_t_bus* in_k,
    const word_t_bus* in_v,
    const word_t_bus* in_o,
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &Q_in,
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &K_in,
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &V_in,
    hls::stream<ap_uint<FC2Cfg::PE   * act_0::width>> &output
);

#endif