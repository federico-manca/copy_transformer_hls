set moduleName Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_s
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
set C_modelName {Linear_Layer<17,16,64,1,1,1,1,1,1,291,16,0,ap_int,ap_int,ap_int >}
set C_modelType { void 0 }
set C_modelArgList {
	{ norm_out_113 int 8 regular {fifo 0 volatile }  }
	{ fc11 int 8 regular {fifo 1 volatile }  }
	{ out_w1 int 8 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "norm_out_113", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "fc11", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
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
	{ norm_out_113_dout sc_in sc_lv 8 signal 0 } 
	{ norm_out_113_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ norm_out_113_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ norm_out_113_empty_n sc_in sc_logic 1 signal 0 } 
	{ norm_out_113_read sc_out sc_logic 1 signal 0 } 
	{ fc11_din sc_out sc_lv 8 signal 1 } 
	{ fc11_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ fc11_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ fc11_full_n sc_in sc_logic 1 signal 1 } 
	{ fc11_write sc_out sc_logic 1 signal 1 } 
	{ out_w1_dout sc_in sc_lv 8 signal 2 } 
	{ out_w1_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ out_w1_fifo_cap sc_in sc_lv 7 signal 2 } 
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
 	{ "name": "norm_out_113_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "norm_out_113", "role": "dout" }} , 
 	{ "name": "norm_out_113_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "norm_out_113", "role": "num_data_valid" }} , 
 	{ "name": "norm_out_113_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "norm_out_113", "role": "fifo_cap" }} , 
 	{ "name": "norm_out_113_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_out_113", "role": "empty_n" }} , 
 	{ "name": "norm_out_113_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_out_113", "role": "read" }} , 
 	{ "name": "fc11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fc11", "role": "din" }} , 
 	{ "name": "fc11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "fc11", "role": "num_data_valid" }} , 
 	{ "name": "fc11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "fc11", "role": "fifo_cap" }} , 
 	{ "name": "fc11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc11", "role": "full_n" }} , 
 	{ "name": "fc11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc11", "role": "write" }} , 
 	{ "name": "out_w1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_w1", "role": "dout" }} , 
 	{ "name": "out_w1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_w1", "role": "num_data_valid" }} , 
 	{ "name": "out_w1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_w1", "role": "fifo_cap" }} , 
 	{ "name": "out_w1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_w1", "role": "empty_n" }} , 
 	{ "name": "out_w1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_w1", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "71"],
		"CDFG" : "Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20384", "EstimateLatencyMax" : "20384",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67", "Port" : "norm_out_113", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76", "Port" : "fc11", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60", "Port" : "bias_1_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_tile_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60.bias_1_0_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1059", "EstimateLatencyMax" : "1059",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "norm_out_113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage33", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage33_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U445", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U446", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U447", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U448", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U449", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U450", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U451", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U452", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U453", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U454", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U455", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U456", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U457", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U458", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U459", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U460", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U461", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U462", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U463", "Parent" : "5"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U464", "Parent" : "5"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U465", "Parent" : "5"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U466", "Parent" : "5"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U467", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U468", "Parent" : "5"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U469", "Parent" : "5"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U470", "Parent" : "5"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U471", "Parent" : "5"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U472", "Parent" : "5"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U473", "Parent" : "5"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U474", "Parent" : "5"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U475", "Parent" : "5"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U476", "Parent" : "5"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U477", "Parent" : "5"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U478", "Parent" : "5"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U479", "Parent" : "5"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U480", "Parent" : "5"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U481", "Parent" : "5"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U482", "Parent" : "5"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U483", "Parent" : "5"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U484", "Parent" : "5"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U485", "Parent" : "5"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U486", "Parent" : "5"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U487", "Parent" : "5"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U488", "Parent" : "5"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U489", "Parent" : "5"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U490", "Parent" : "5"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U491", "Parent" : "5"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U492", "Parent" : "5"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U493", "Parent" : "5"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U494", "Parent" : "5"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U495", "Parent" : "5"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U496", "Parent" : "5"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U497", "Parent" : "5"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U498", "Parent" : "5"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U499", "Parent" : "5"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U500", "Parent" : "5"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U501", "Parent" : "5"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U502", "Parent" : "5"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U503", "Parent" : "5"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U504", "Parent" : "5"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U505", "Parent" : "5"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U506", "Parent" : "5"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U507", "Parent" : "5"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U508", "Parent" : "5"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76", "Parent" : "0", "Child" : ["72", "73"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fc11_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76.mul_32s_10ns_42_1_1_U512", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"}]}


set ArgLastReadFirstWriteLatency {
	Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_s {
		norm_out_113 {Type I LastRead 1 FirstWrite -1}
		fc11 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 64 FirstWrite -1}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1 {
		C_tile_V {Type IO LastRead 34 FirstWrite 34}
		norm_out_113 {Type I LastRead 1 FirstWrite -1}
		out_w1 {Type I LastRead 64 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		fc11 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20384", "Max" : "20384"}
	, {"Name" : "Interval", "Min" : "20384", "Max" : "20384"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	norm_out_113 { ap_fifo {  { norm_out_113_dout fifo_port_we 0 8 }  { norm_out_113_num_data_valid fifo_status_num_data_valid 0 2 }  { norm_out_113_fifo_cap fifo_update 0 2 }  { norm_out_113_empty_n fifo_status 0 1 }  { norm_out_113_read fifo_data 1 1 } } }
	fc11 { ap_fifo {  { fc11_din fifo_port_we 1 8 }  { fc11_num_data_valid fifo_status_num_data_valid 0 7 }  { fc11_fifo_cap fifo_update 0 7 }  { fc11_full_n fifo_status 0 1 }  { fc11_write fifo_data 1 1 } } }
	out_w1 { ap_fifo {  { out_w1_dout fifo_port_we 0 8 }  { out_w1_num_data_valid fifo_status_num_data_valid 0 7 }  { out_w1_fifo_cap fifo_update 0 7 }  { out_w1_empty_n fifo_status 0 1 }  { out_w1_read fifo_data 1 1 } } }
}
