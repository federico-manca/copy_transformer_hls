// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xvit_block.h"

extern XVit_block_Config XVit_block_ConfigTable[];

XVit_block_Config *XVit_block_LookupConfig(u16 DeviceId) {
	XVit_block_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVIT_BLOCK_NUM_INSTANCES; Index++) {
		if (XVit_block_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVit_block_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVit_block_Initialize(XVit_block *InstancePtr, u16 DeviceId) {
	XVit_block_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVit_block_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVit_block_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

