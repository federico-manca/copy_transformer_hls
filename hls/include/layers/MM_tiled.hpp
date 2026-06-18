
#define AP_INT_MAX_W 4096

#include "types.h"
#include "activations.h"
#include "linear.h"
#include "ap_fixed.h"


void MM_tiled( hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in1, 
               hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in2, 
               hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out);

void MM1_tiled( hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in1, 
               hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in2, 
               hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out);



