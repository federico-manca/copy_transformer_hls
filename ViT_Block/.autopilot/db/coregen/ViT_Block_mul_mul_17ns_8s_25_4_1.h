// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __ViT_Block_mul_mul_17ns_8s_25_4_1__HH__
#define __ViT_Block_mul_mul_17ns_8s_25_4_1__HH__
#include "ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(ViT_Block_mul_mul_17ns_8s_25_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11 ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11_U;

    SC_CTOR(ViT_Block_mul_mul_17ns_8s_25_4_1):  ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11_U ("ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11_U") {
        ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11_U.clk(clk);
        ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11_U.rst(reset);
        ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11_U.ce(ce);
        ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11_U.a(din0);
        ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11_U.b(din1);
        ViT_Block_mul_mul_17ns_8s_25_4_1_DSP48_11_U.p(dout);

    }

};

#endif //
