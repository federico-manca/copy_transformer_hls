# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../hls/tb/tb_vit_block.cpp ../../../../hls/src/model/ViT_Block.cpp ../../../../hls/src/attention/MultiHeadAttention_tiled.cpp ../../../../hls/src/layers/MM_tiled.cpp ../../../../hls/src/layers/MLP_tiled_oc.cpp ../../../../hls/src/parameters/vit_params.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /home/fede/PhD/Vitis_HLS/2022.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /home/fede/PhD/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas 
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/tb_vit_block.o: ../../../../hls/tb/tb_vit_block.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../hls/tb/tb_vit_block.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb_vit_block.d

$(ObjDir)/ViT_Block.o: ../../../../hls/src/model/ViT_Block.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../hls/src/model/ViT_Block.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/ViT_Block.d

$(ObjDir)/MultiHeadAttention_tiled.o: ../../../../hls/src/attention/MultiHeadAttention_tiled.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../hls/src/attention/MultiHeadAttention_tiled.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/MultiHeadAttention_tiled.d

$(ObjDir)/MM_tiled.o: ../../../../hls/src/layers/MM_tiled.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../hls/src/layers/MM_tiled.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/MM_tiled.d

$(ObjDir)/MLP_tiled_oc.o: ../../../../hls/src/layers/MLP_tiled_oc.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../hls/src/layers/MLP_tiled_oc.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/MLP_tiled_oc.d

$(ObjDir)/vit_params.o: ../../../../hls/src/parameters/vit_params.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../hls/src/parameters/vit_params.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/vit_params.d
