set moduleName Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {Linear_Layer_Pipeline_VITIS_LOOP_1525_6.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ C_tile_V int 32 regular {array 64 { 2 2 } 1 1 }  }
	{ norm_out_113 int 8 regular {fifo 0 volatile }  }
	{ out_w1 int 8 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "C_tile_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "norm_out_113", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_w1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_w1_dout sc_in sc_lv 8 signal 2 } 
	{ out_w1_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ out_w1_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ out_w1_empty_n sc_in sc_logic 1 signal 2 } 
	{ out_w1_read sc_out sc_logic 1 signal 2 } 
	{ C_tile_V_address0 sc_out sc_lv 6 signal 0 } 
	{ C_tile_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ C_tile_V_we0 sc_out sc_logic 1 signal 0 } 
	{ C_tile_V_d0 sc_out sc_lv 32 signal 0 } 
	{ C_tile_V_q0 sc_in sc_lv 32 signal 0 } 
	{ C_tile_V_address1 sc_out sc_lv 6 signal 0 } 
	{ C_tile_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ C_tile_V_we1 sc_out sc_logic 1 signal 0 } 
	{ C_tile_V_d1 sc_out sc_lv 32 signal 0 } 
	{ C_tile_V_q1 sc_in sc_lv 32 signal 0 } 
	{ norm_out_113_dout sc_in sc_lv 8 signal 1 } 
	{ norm_out_113_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ norm_out_113_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ norm_out_113_empty_n sc_in sc_logic 1 signal 1 } 
	{ norm_out_113_read sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_w1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_w1", "role": "dout" }} , 
 	{ "name": "out_w1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_w1", "role": "num_data_valid" }} , 
 	{ "name": "out_w1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_w1", "role": "fifo_cap" }} , 
 	{ "name": "out_w1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_w1", "role": "empty_n" }} , 
 	{ "name": "out_w1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_w1", "role": "read" }} , 
 	{ "name": "C_tile_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "C_tile_V", "role": "address0" }} , 
 	{ "name": "C_tile_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_tile_V", "role": "ce0" }} , 
 	{ "name": "C_tile_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_tile_V", "role": "we0" }} , 
 	{ "name": "C_tile_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_tile_V", "role": "d0" }} , 
 	{ "name": "C_tile_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_tile_V", "role": "q0" }} , 
 	{ "name": "C_tile_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "C_tile_V", "role": "address1" }} , 
 	{ "name": "C_tile_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_tile_V", "role": "ce1" }} , 
 	{ "name": "C_tile_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_tile_V", "role": "we1" }} , 
 	{ "name": "C_tile_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_tile_V", "role": "d1" }} , 
 	{ "name": "C_tile_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_tile_V", "role": "q1" }} , 
 	{ "name": "norm_out_113_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "norm_out_113", "role": "dout" }} , 
 	{ "name": "norm_out_113_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "norm_out_113", "role": "num_data_valid" }} , 
 	{ "name": "norm_out_113_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "norm_out_113", "role": "fifo_cap" }} , 
 	{ "name": "norm_out_113_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_out_113", "role": "empty_n" }} , 
 	{ "name": "norm_out_113_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_out_113", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U445", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U446", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U447", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U448", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U449", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U450", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U451", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U452", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U453", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U454", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U455", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U456", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U457", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U458", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U459", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U460", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U461", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U462", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U463", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U464", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U465", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U466", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U467", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U468", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U469", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U470", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U471", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U472", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U473", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U474", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U475", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U476", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U477", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U478", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U479", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U480", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U481", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U482", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U483", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U484", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U485", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U486", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U487", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U488", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U489", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U490", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U491", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U492", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U493", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U494", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U495", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U496", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U497", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U498", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U499", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U500", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U501", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U502", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U503", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U504", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U505", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U506", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U507", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U508", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1 {
		C_tile_V {Type IO LastRead 34 FirstWrite 34}
		norm_out_113 {Type I LastRead 1 FirstWrite -1}
		out_w1 {Type I LastRead 64 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1059", "Max" : "1059"}
	, {"Name" : "Interval", "Min" : "1059", "Max" : "1059"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	C_tile_V { ap_memory {  { C_tile_V_address0 mem_address 1 6 }  { C_tile_V_ce0 mem_ce 1 1 }  { C_tile_V_we0 mem_we 1 1 }  { C_tile_V_d0 mem_din 1 32 }  { C_tile_V_q0 mem_dout 0 32 }  { C_tile_V_address1 MemPortADDR2 1 6 }  { C_tile_V_ce1 MemPortCE2 1 1 }  { C_tile_V_we1 MemPortWE2 1 1 }  { C_tile_V_d1 MemPortDIN2 1 32 }  { C_tile_V_q1 MemPortDOUT2 0 32 } } }
	norm_out_113 { ap_fifo {  { norm_out_113_dout fifo_port_we 0 8 }  { norm_out_113_num_data_valid fifo_status_num_data_valid 0 2 }  { norm_out_113_fifo_cap fifo_update 0 2 }  { norm_out_113_empty_n fifo_status 0 1 }  { norm_out_113_read fifo_data 1 1 } } }
	out_w1 { ap_fifo {  { out_w1_dout fifo_port_we 0 8 }  { out_w1_num_data_valid fifo_status_num_data_valid 0 7 }  { out_w1_fifo_cap fifo_update 0 7 }  { out_w1_empty_n fifo_status 0 1 }  { out_w1_read fifo_data 1 1 } } }
}
