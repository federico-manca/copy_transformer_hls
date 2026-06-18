#include "MM_tiled.hpp"


void MM_tiled( hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in1, 
               hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in2, 
               hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out) {


#pragma HLS DATAFLOW


    static constexpr int SIMD = FC1Cfg::SIMD;
    static constexpr int PE   = FC1Cfg::PE;
    static constexpr int Tm   = FC1Cfg::Tm;
    static constexpr int Tk   = FC1Cfg::Tk;
    static constexpr int Tn   = FC1Cfg::Tn;


    MatMul_QK_tiled<
            T+1, E / H, T+1,
            Tm, Tk, Tn,
            SIMD, SIMD,
            MULT_a, SHIFT_a, ZP_OUT_a,
            act_0, accumulation
        >(in1, in2, out);
  
}

void MM1_tiled( hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in1, 
               hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in2, 
               hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out) {


#pragma HLS DATAFLOW


    static constexpr int SIMD = FC1Cfg::SIMD;
    static constexpr int PE   = FC1Cfg::PE;
    static constexpr int Tm   = FC1Cfg::Tm;
    static constexpr int Tk   = FC1Cfg::Tk;
    static constexpr int Tn   = FC1Cfg::Tn;


    MatMul_KV_tiled<
            T+1, T+1, E/H,
            Tm, Tk, Tn,
            SIMD, SIMD,
            MULT_kv, 16, 0,
            act_0, accumulation
        >(in1, in2, out);
  
}



