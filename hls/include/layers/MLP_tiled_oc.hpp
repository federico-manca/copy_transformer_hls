#ifndef MLPTILED_OC
#define MLPTILED_OC

#define AP_INT_MAX_W 4096

#include "types.h"
#include "activations.h"
#include "linear.h"
#include "ap_fixed.h"
#include "MLP1.h"
#include "MLP2.h"


typedef ap_uint<FC1Cfg::SIMD*FC1Cfg::PE*weight_0::width> word_t ;

//void MLP_tiled_oc(const word_t* in_w_up, const word_t* in_w_down, hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in, hls::stream<ap_uint<FC2Cfg::PE*act_0::width>> &out);
//void FC1_tiled_oc( const word_t* in_w, hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in, hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out);
//void FC2_tiled_oc( const word_t* in_w, hls::stream<ap_uint<FC2Cfg::SIMD*act_0::width>> &in, hls::stream<ap_uint<FC2Cfg::PE*act_0::width>> &out);

void Relu_tiled_oc(hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &in, hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out);

void MLP_tiled_oc(const word_t_bus* in_w_up, const word_t_bus* in_w_down, hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in, hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out);
void MLP_tiled_oc_ip(const word_t_bus* in_w_up, const word_t_bus* in_w_down, hls::stream<axis_t<FC1Cfg::SIMD*act_0::width>> &in, hls::stream<axis_t<FC1Cfg::PE*act_0::width>> &out);

void MLP_top(const word_t_bus* in_w_up, const word_t_bus* in_w_down, hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in, hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out);

void FC2_tiled_oc_2( const word_t_bus* in_w, hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in, hls::stream<ap_uint<FC2Cfg::PE*act_0::width>> &out);
void FC1_tiled_oc_2( const word_t_bus* in_w, hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &in, hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out);

void axis_to_apuint(hls::stream<axis_t<FC1Cfg::SIMD*act_0::width>> &in,hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &out );

void apuint_to_axis(hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &in, hls::stream<axis_t<FC1Cfg::PE*act_0::width>> &out );

#endif