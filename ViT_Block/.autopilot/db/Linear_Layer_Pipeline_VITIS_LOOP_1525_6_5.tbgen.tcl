set moduleName Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5
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
set C_modelName {Linear_Layer_Pipeline_VITIS_LOOP_1525_6.5}
set C_modelType { void 0 }
set C_modelArgList {
	{ C_tile_V int 32 regular {array 16 { 2 2 } 1 1 }  }
	{ K_in6 int 8 regular {fifo 0 volatile }  }
	{ out_w1 int 8 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "C_tile_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "K_in6", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
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
	{ out_w1_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ out_w1_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ out_w1_empty_n sc_in sc_logic 1 signal 2 } 
	{ out_w1_read sc_out sc_logic 1 signal 2 } 
	{ C_tile_V_address0 sc_out sc_lv 4 signal 0 } 
	{ C_tile_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ C_tile_V_we0 sc_out sc_logic 1 signal 0 } 
	{ C_tile_V_d0 sc_out sc_lv 32 signal 0 } 
	{ C_tile_V_q0 sc_in sc_lv 32 signal 0 } 
	{ C_tile_V_address1 sc_out sc_lv 4 signal 0 } 
	{ C_tile_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ C_tile_V_we1 sc_out sc_logic 1 signal 0 } 
	{ C_tile_V_d1 sc_out sc_lv 32 signal 0 } 
	{ C_tile_V_q1 sc_in sc_lv 32 signal 0 } 
	{ K_in6_dout sc_in sc_lv 8 signal 1 } 
	{ K_in6_num_data_valid sc_in sc_lv 13 signal 1 } 
	{ K_in6_fifo_cap sc_in sc_lv 13 signal 1 } 
	{ K_in6_empty_n sc_in sc_logic 1 signal 1 } 
	{ K_in6_read sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_w1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_w1", "role": "dout" }} , 
 	{ "name": "out_w1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_w1", "role": "num_data_valid" }} , 
 	{ "name": "out_w1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_w1", "role": "fifo_cap" }} , 
 	{ "name": "out_w1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_w1", "role": "empty_n" }} , 
 	{ "name": "out_w1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_w1", "role": "read" }} , 
 	{ "name": "C_tile_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_tile_V", "role": "address0" }} , 
 	{ "name": "C_tile_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_tile_V", "role": "ce0" }} , 
 	{ "name": "C_tile_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_tile_V", "role": "we0" }} , 
 	{ "name": "C_tile_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_tile_V", "role": "d0" }} , 
 	{ "name": "C_tile_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_tile_V", "role": "q0" }} , 
 	{ "name": "C_tile_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_tile_V", "role": "address1" }} , 
 	{ "name": "C_tile_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_tile_V", "role": "ce1" }} , 
 	{ "name": "C_tile_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_tile_V", "role": "we1" }} , 
 	{ "name": "C_tile_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_tile_V", "role": "d1" }} , 
 	{ "name": "C_tile_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_tile_V", "role": "q1" }} , 
 	{ "name": "K_in6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "K_in6", "role": "dout" }} , 
 	{ "name": "K_in6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "K_in6", "role": "num_data_valid" }} , 
 	{ "name": "K_in6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "K_in6", "role": "fifo_cap" }} , 
 	{ "name": "K_in6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_in6", "role": "empty_n" }} , 
 	{ "name": "K_in6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_in6", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U76", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U77", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U78", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U79", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U80", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U81", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U82", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U83", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U84", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U85", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U86", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U87", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U88", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U89", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U90", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U91", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5 {
		C_tile_V {Type IO LastRead 10 FirstWrite 10}
		K_in6 {Type I LastRead 1 FirstWrite -1}
		out_w1 {Type I LastRead 16 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "267", "Max" : "267"}
	, {"Name" : "Interval", "Min" : "267", "Max" : "267"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	C_tile_V { ap_memory {  { C_tile_V_address0 mem_address 1 4 }  { C_tile_V_ce0 mem_ce 1 1 }  { C_tile_V_we0 mem_we 1 1 }  { C_tile_V_d0 mem_din 1 32 }  { C_tile_V_q0 mem_dout 0 32 }  { C_tile_V_address1 MemPortADDR2 1 4 }  { C_tile_V_ce1 MemPortCE2 1 1 }  { C_tile_V_we1 MemPortWE2 1 1 }  { C_tile_V_d1 MemPortDIN2 1 32 }  { C_tile_V_q1 MemPortDOUT2 0 32 } } }
	K_in6 { ap_fifo {  { K_in6_dout fifo_port_we 0 8 }  { K_in6_num_data_valid fifo_status_num_data_valid 0 13 }  { K_in6_fifo_cap fifo_update 0 13 }  { K_in6_empty_n fifo_status 0 1 }  { K_in6_read fifo_data 1 1 } } }
	out_w1 { ap_fifo {  { out_w1_dout fifo_port_we 0 8 }  { out_w1_num_data_valid fifo_status_num_data_valid 0 5 }  { out_w1_fifo_cap fifo_update 0 5 }  { out_w1_empty_n fifo_status 0 1 }  { out_w1_read fifo_data 1 1 } } }
}
