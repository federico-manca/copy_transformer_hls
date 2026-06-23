set moduleName MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {MatMul_KV_tiled<17, 17, 8, 1, 1, 1, 1, 1, 339, 16, 0, ap_int<8>, ap_int<32> >.11}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_sx_1 int 8 regular {fifo 0 volatile }  }
	{ V_1_1 int 8 regular {fifo 0 volatile }  }
	{ head_out_1 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_sx_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "V_1_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "head_out_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_sx_1_dout sc_in sc_lv 8 signal 0 } 
	{ A_sx_1_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ A_sx_1_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ A_sx_1_empty_n sc_in sc_logic 1 signal 0 } 
	{ A_sx_1_read sc_out sc_logic 1 signal 0 } 
	{ V_1_1_dout sc_in sc_lv 8 signal 1 } 
	{ V_1_1_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ V_1_1_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ V_1_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ V_1_1_read sc_out sc_logic 1 signal 1 } 
	{ head_out_1_din sc_out sc_lv 8 signal 2 } 
	{ head_out_1_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ head_out_1_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ head_out_1_full_n sc_in sc_logic 1 signal 2 } 
	{ head_out_1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_sx_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_sx_1", "role": "dout" }} , 
 	{ "name": "A_sx_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_sx_1", "role": "num_data_valid" }} , 
 	{ "name": "A_sx_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_sx_1", "role": "fifo_cap" }} , 
 	{ "name": "A_sx_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_sx_1", "role": "empty_n" }} , 
 	{ "name": "A_sx_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_sx_1", "role": "read" }} , 
 	{ "name": "V_1_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "V_1_1", "role": "dout" }} , 
 	{ "name": "V_1_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "V_1_1", "role": "num_data_valid" }} , 
 	{ "name": "V_1_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "V_1_1", "role": "fifo_cap" }} , 
 	{ "name": "V_1_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_1_1", "role": "empty_n" }} , 
 	{ "name": "V_1_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_1_1", "role": "read" }} , 
 	{ "name": "head_out_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "head_out_1", "role": "din" }} , 
 	{ "name": "head_out_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "head_out_1", "role": "num_data_valid" }} , 
 	{ "name": "head_out_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "head_out_1", "role": "fifo_cap" }} , 
 	{ "name": "head_out_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "head_out_1", "role": "full_n" }} , 
 	{ "name": "head_out_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "head_out_1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7"],
		"CDFG" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1008", "EstimateLatencyMax" : "1008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_B_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tile_A_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "V_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "load_B_VITIS_LOOP_1796_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_sx_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tile_A_V_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1818_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln186", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "head_out_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1831_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U294", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U295", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U296", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U297", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U298", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U299", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U300", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U301", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U302", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U303", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U304", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U305", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U306", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U307", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U308", "Parent" : "7"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U309", "Parent" : "7"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U310", "Parent" : "7"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U311", "Parent" : "7"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11 {
		A_sx_1 {Type I LastRead 1 FirstWrite -1}
		V_1_1 {Type I LastRead 1 FirstWrite -1}
		head_out_1 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1 {
		buff_B_V {Type O LastRead -1 FirstWrite 1}
		V_1_1 {Type I LastRead 1 FirstWrite -1}}
	MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5 {
		A_sx_1 {Type I LastRead 1 FirstWrite -1}
		tile_A_V_0 {Type O LastRead -1 FirstWrite 1}}
	MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6 {
		buff_B_V {Type I LastRead 1 FirstWrite -1}
		sext_ln186 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_18 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_20 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_22 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_24 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_26 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_28 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_30 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_32 {Type I LastRead 0 FirstWrite -1}
		head_out_1 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1008", "Max" : "1008"}
	, {"Name" : "Interval", "Min" : "1008", "Max" : "1008"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_sx_1 { ap_fifo {  { A_sx_1_dout fifo_port_we 0 8 }  { A_sx_1_num_data_valid fifo_status_num_data_valid 0 2 }  { A_sx_1_fifo_cap fifo_update 0 2 }  { A_sx_1_empty_n fifo_status 0 1 }  { A_sx_1_read fifo_data 1 1 } } }
	V_1_1 { ap_fifo {  { V_1_1_dout fifo_port_we 0 8 }  { V_1_1_num_data_valid fifo_status_num_data_valid 0 2 }  { V_1_1_fifo_cap fifo_update 0 2 }  { V_1_1_empty_n fifo_status 0 1 }  { V_1_1_read fifo_data 1 1 } } }
	head_out_1 { ap_fifo {  { head_out_1_din fifo_port_we 1 8 }  { head_out_1_num_data_valid fifo_status_num_data_valid 0 2 }  { head_out_1_fifo_cap fifo_update 0 2 }  { head_out_1_full_n fifo_status 0 1 }  { head_out_1_write fifo_data 1 1 } } }
}
