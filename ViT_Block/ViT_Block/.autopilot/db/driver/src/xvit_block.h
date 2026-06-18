// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XVIT_BLOCK_H
#define XVIT_BLOCK_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xvit_block_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XVit_block_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XVit_block;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVit_block_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVit_block_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVit_block_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVit_block_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XVit_block_Initialize(XVit_block *InstancePtr, u16 DeviceId);
XVit_block_Config* XVit_block_LookupConfig(u16 DeviceId);
int XVit_block_CfgInitialize(XVit_block *InstancePtr, XVit_block_Config *ConfigPtr);
#else
int XVit_block_Initialize(XVit_block *InstancePtr, const char* InstanceName);
int XVit_block_Release(XVit_block *InstancePtr);
#endif

void XVit_block_Start(XVit_block *InstancePtr);
u32 XVit_block_IsDone(XVit_block *InstancePtr);
u32 XVit_block_IsIdle(XVit_block *InstancePtr);
u32 XVit_block_IsReady(XVit_block *InstancePtr);
void XVit_block_EnableAutoRestart(XVit_block *InstancePtr);
void XVit_block_DisableAutoRestart(XVit_block *InstancePtr);

void XVit_block_Set_in_q(XVit_block *InstancePtr, u64 Data);
u64 XVit_block_Get_in_q(XVit_block *InstancePtr);
void XVit_block_Set_in_k(XVit_block *InstancePtr, u64 Data);
u64 XVit_block_Get_in_k(XVit_block *InstancePtr);
void XVit_block_Set_in_v(XVit_block *InstancePtr, u64 Data);
u64 XVit_block_Get_in_v(XVit_block *InstancePtr);
void XVit_block_Set_in_o(XVit_block *InstancePtr, u64 Data);
u64 XVit_block_Get_in_o(XVit_block *InstancePtr);
void XVit_block_Set_in_w_up(XVit_block *InstancePtr, u64 Data);
u64 XVit_block_Get_in_w_up(XVit_block *InstancePtr);
void XVit_block_Set_in_w_down(XVit_block *InstancePtr, u64 Data);
u64 XVit_block_Get_in_w_down(XVit_block *InstancePtr);

void XVit_block_InterruptGlobalEnable(XVit_block *InstancePtr);
void XVit_block_InterruptGlobalDisable(XVit_block *InstancePtr);
void XVit_block_InterruptEnable(XVit_block *InstancePtr, u32 Mask);
void XVit_block_InterruptDisable(XVit_block *InstancePtr, u32 Mask);
void XVit_block_InterruptClear(XVit_block *InstancePtr, u32 Mask);
u32 XVit_block_InterruptGetEnabled(XVit_block *InstancePtr);
u32 XVit_block_InterruptGetStatus(XVit_block *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
