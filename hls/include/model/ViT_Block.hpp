#ifndef VIT_BLOCK_H
#define VIT_BLOCK_H

#include "types.h"
#include "activations.h"
#include "linear.h"
#include "ap_fixed.h"
#include "normalizations.hpp"

#include "MultiHeadAttention_tiled.hpp"
#include "MLP_tiled_oc.hpp"



#include "NORM_1.h"
#include "NORM_2.h"
#include "NORM.h"
#include "OUT_.h"
#include "PATCH.h"
#include "Q_.h"
#include "V_.h"
#include "K_.h"
#include "HEAD_.h"
#include "MLP1.h"
#include "MLP2.h"


void BatchNorm_tiled_0(hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &in, hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out);
void BatchNorm_tiled_1(hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &in, hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out);
void duplicate_stream(hls::stream<ap_uint<act_0::width * FC1Cfg::PE>> &in,
                      hls::stream<ap_uint<act_0::width * FC1Cfg::PE>> &out_0,
                      hls::stream<ap_uint<act_0::width * FC1Cfg::PE>> &out_1,
                      int M, int N, int PE);

void triplicate_stream(hls::stream<ap_uint<act_0::width * FC1Cfg::PE>> &in,
                      hls::stream<ap_uint<act_0::width * FC1Cfg::PE>> &out_0,
                      hls::stream<ap_uint<act_0::width * FC1Cfg::PE>> &out_1,
                      hls::stream<ap_uint<act_0::width * FC1Cfg::PE>> &out_2,
                      int M, int N, int PE);

void ViT_Block_Core(
    hls::stream<ap_uint<act_0::width * FC1Cfg::SIMD>> &in,
    hls::stream<ap_uint<act_0::width * FC1Cfg::PE>> &out,
    const word_t_bus* in_q,
    const word_t_bus* in_k,
    const word_t_bus* in_v,
    const word_t_bus* in_o,
    const word_t_bus* in_w_up, 
    const word_t_bus* in_w_down
);

void ViT_Block(
    hls::stream<axis_t<act_0::width * FC1Cfg::SIMD>> &in,
    hls::stream<axis_t<act_0::width * FC1Cfg::PE>> &out,
    const word_t_bus* in_q,
    const word_t_bus* in_k,
    const word_t_bus* in_v,
    const word_t_bus* in_o,
    const word_t_bus* in_w_up, 
    const word_t_bus* in_w_down
);


#endif