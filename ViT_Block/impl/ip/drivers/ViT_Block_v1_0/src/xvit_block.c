// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xvit_block.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVit_block_CfgInitialize(XVit_block *InstancePtr, XVit_block_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVit_block_Start(XVit_block *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_AP_CTRL) & 0x80;
    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVit_block_IsDone(XVit_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVit_block_IsIdle(XVit_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVit_block_IsReady(XVit_block *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVit_block_EnableAutoRestart(XVit_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XVit_block_DisableAutoRestart(XVit_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_AP_CTRL, 0);
}

void XVit_block_Set_in_q(XVit_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_Q_DATA, (u32)(Data));
    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_Q_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_block_Get_in_q(XVit_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_Q_DATA);
    Data += (u64)XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_Q_DATA + 4) << 32;
    return Data;
}

void XVit_block_Set_in_k(XVit_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_K_DATA, (u32)(Data));
    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_K_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_block_Get_in_k(XVit_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_K_DATA);
    Data += (u64)XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_K_DATA + 4) << 32;
    return Data;
}

void XVit_block_Set_in_v(XVit_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_V_DATA, (u32)(Data));
    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_V_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_block_Get_in_v(XVit_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_V_DATA);
    Data += (u64)XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_V_DATA + 4) << 32;
    return Data;
}

void XVit_block_Set_in_o(XVit_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_O_DATA, (u32)(Data));
    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_O_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_block_Get_in_o(XVit_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_O_DATA);
    Data += (u64)XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_O_DATA + 4) << 32;
    return Data;
}

void XVit_block_Set_in_w_up(XVit_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_W_UP_DATA, (u32)(Data));
    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_W_UP_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_block_Get_in_w_up(XVit_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_W_UP_DATA);
    Data += (u64)XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_W_UP_DATA + 4) << 32;
    return Data;
}

void XVit_block_Set_in_w_down(XVit_block *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_W_DOWN_DATA, (u32)(Data));
    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_W_DOWN_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_block_Get_in_w_down(XVit_block *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_W_DOWN_DATA);
    Data += (u64)XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IN_W_DOWN_DATA + 4) << 32;
    return Data;
}

void XVit_block_InterruptGlobalEnable(XVit_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_GIE, 1);
}

void XVit_block_InterruptGlobalDisable(XVit_block *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_GIE, 0);
}

void XVit_block_InterruptEnable(XVit_block *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IER);
    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IER, Register | Mask);
}

void XVit_block_InterruptDisable(XVit_block *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IER);
    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IER, Register & (~Mask));
}

void XVit_block_InterruptClear(XVit_block *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_block_WriteReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_ISR, Mask);
}

u32 XVit_block_InterruptGetEnabled(XVit_block *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_IER);
}

u32 XVit_block_InterruptGetStatus(XVit_block *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVit_block_ReadReg(InstancePtr->Control_BaseAddress, XVIT_BLOCK_CONTROL_ADDR_ISR);
}

