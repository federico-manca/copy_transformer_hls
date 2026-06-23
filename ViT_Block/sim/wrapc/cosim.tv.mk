# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
__SIM_FPO__ = 1
__SIM_MATHHLS__ = 1
__SIM_FFT__ = 1
__SIM_FIR__ = 1
__SIM_DDS__ = 1

override TARGET := $(if $(pc),cosim.pc.exe,cosim.tv.exe)

AUTOPILOT_ROOT := /home/fede/PhD/Vitis_HLS/2022.2
AUTOPILOT_MACH := lnx64

ifdef COSIM_M32
  AUTOPILOT_MACH := lnx32
  IFLAG += -m32
endif
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /home/fede/PhD/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL = ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH = ${AUTOPILOT_ROOT}/common/technology
CCFLAG += -Werror=return-type
TOOLCHAIN += 

IFLAG += -g

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__VITIS_HLS__
IFLAG += -D__HLS_COSIM__
IFLAG += -D__SIM_FPO__
IFLAG += -D__SIM_FFT__
IFLAG += -D__SIM_FIR__
IFLAG += -D__SIM_DDS__
IFLAG += -D__DSP48E2__
IFLAG += $(pc)
IFLAG += -DUSE_BINARY_TV_FILE
IFLAG += -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas
LFLAG += -lpthread
LFLAG += -L "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/clang-3.9-csynth/lib/clang/7.0.0/lib/linux" -lclang_rt.builtins-x86_64
IFLAG += -D__RTL_SIMULATION__
IFLAG += -D__xilinx_ip_top=
DFLAG += -DAESL_PIPELINE

include ./Makefile.rules

all : $(TARGET)

$(ObjDir)/tb_vit_block.cpp_pre.cpp.tb.o : tb_vit_block.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling tb_vit_block.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/ViT_Block.cpp_pre.cpp.tb.o : ViT_Block.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ViT_Block.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/MultiHeadAttention_tiled.cpp_pre.cpp.tb.o : MultiHeadAttention_tiled.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling MultiHeadAttention_tiled.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/MM_tiled.cpp_pre.cpp.tb.o : MM_tiled.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling MM_tiled.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/MLP_tiled_oc.cpp_pre.cpp.tb.o : MLP_tiled_oc.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling MLP_tiled_oc.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/vit_params.cpp_pre.cpp.tb.o : vit_params.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling vit_params.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \
