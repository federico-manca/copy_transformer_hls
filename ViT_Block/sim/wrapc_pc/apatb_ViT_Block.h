// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_ViT_Block (
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&in_r),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&out_r),
volatile void* in_q,
volatile void* in_k,
volatile void* in_v,
volatile void* in_o,
volatile void* in_w_up,
volatile void* in_w_down);
