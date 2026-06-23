set moduleName Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_s
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
set C_modelName {Linear_Layer<17,16,16,1,1,1,1,1,1,245,16,0,ap_int,ap_int,ap_int >}
set C_modelType { void 0 }
set C_modelArgList {
	{ K_in6 int 8 regular {fifo 0 volatile }  }
	{ k_lin2 int 8 regular {fifo 1 volatile }  }
	{ out_w1 int 8 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "K_in6", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "k_lin2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_w1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
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
	{ K_in6_dout sc_in sc_lv 8 signal 0 } 
	{ K_in6_num_data_valid sc_in sc_lv 13 signal 0 } 
	{ K_in6_fifo_cap sc_in sc_lv 13 signal 0 } 
	{ K_in6_empty_n sc_in sc_logic 1 signal 0 } 
	{ K_in6_read sc_out sc_logic 1 signal 0 } 
	{ k_lin2_din sc_out sc_lv 8 signal 1 } 
	{ k_lin2_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ k_lin2_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ k_lin2_full_n sc_in sc_logic 1 signal 1 } 
	{ k_lin2_write sc_out sc_logic 1 signal 1 } 
	{ out_w1_dout sc_in sc_lv 8 signal 2 } 
	{ out_w1_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ out_w1_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ out_w1_empty_n sc_in sc_logic 1 signal 2 } 
	{ out_w1_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "K_in6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "K_in6", "role": "dout" }} , 
 	{ "name": "K_in6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "K_in6", "role": "num_data_valid" }} , 
 	{ "name": "K_in6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "K_in6", "role": "fifo_cap" }} , 
 	{ "name": "K_in6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_in6", "role": "empty_n" }} , 
 	{ "name": "K_in6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_in6", "role": "read" }} , 
 	{ "name": "k_lin2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "k_lin2", "role": "din" }} , 
 	{ "name": "k_lin2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k_lin2", "role": "num_data_valid" }} , 
 	{ "name": "k_lin2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k_lin2", "role": "fifo_cap" }} , 
 	{ "name": "k_lin2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_lin2", "role": "full_n" }} , 
 	{ "name": "k_lin2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_lin2", "role": "write" }} , 
 	{ "name": "out_w1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_w1", "role": "dout" }} , 
 	{ "name": "out_w1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_w1", "role": "num_data_valid" }} , 
 	{ "name": "out_w1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_w1", "role": "fifo_cap" }} , 
 	{ "name": "out_w1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_w1", "role": "empty_n" }} , 
 	{ "name": "out_w1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_w1", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "23"],
		"CDFG" : "Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5288", "EstimateLatencyMax" : "5288",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67", "Port" : "K_in6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76", "Port" : "k_lin2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60", "Port" : "bias_k_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_tile_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60.bias_k_0_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "267", "EstimateLatencyMax" : "267",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "K_in6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U76", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U77", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U78", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U79", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U80", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U81", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U82", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U83", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U84", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U85", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U86", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U87", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U88", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U89", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U90", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U91", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5",
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
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "k_lin2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76.mul_32s_9ns_41_1_1_U95", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"}]}


set ArgLastReadFirstWriteLatency {
	Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_s {
		K_in6 {Type I LastRead 1 FirstWrite -1}
		k_lin2 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 16 FirstWrite -1}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5 {
		C_tile_V {Type IO LastRead 10 FirstWrite 10}
		K_in6 {Type I LastRead 1 FirstWrite -1}
		out_w1 {Type I LastRead 16 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		k_lin2 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5288", "Max" : "5288"}
	, {"Name" : "Interval", "Min" : "5288", "Max" : "5288"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	K_in6 { ap_fifo {  { K_in6_dout fifo_port_we 0 8 }  { K_in6_num_data_valid fifo_status_num_data_valid 0 13 }  { K_in6_fifo_cap fifo_update 0 13 }  { K_in6_empty_n fifo_status 0 1 }  { K_in6_read fifo_data 1 1 } } }
	k_lin2 { ap_fifo {  { k_lin2_din fifo_port_we 1 8 }  { k_lin2_num_data_valid fifo_status_num_data_valid 0 2 }  { k_lin2_fifo_cap fifo_update 0 2 }  { k_lin2_full_n fifo_status 0 1 }  { k_lin2_write fifo_data 1 1 } } }
	out_w1 { ap_fifo {  { out_w1_dout fifo_port_we 0 8 }  { out_w1_num_data_valid fifo_status_num_data_valid 0 5 }  { out_w1_fifo_cap fifo_update 0 5 }  { out_w1_empty_n fifo_status 0 1 }  { out_w1_read fifo_data 1 1 } } }
}
