set moduleName MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8
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
set C_modelName {MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8}
set C_modelType { void 0 }
set C_modelArgList {
	{ tile_Q_V_0 int 8 regular {array 8 { 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ buff_K_V int 8 regular {array 136 { 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ A_0 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tile_Q_V_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buff_K_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "A_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_0_din sc_out sc_lv 8 signal 2 } 
	{ A_0_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ A_0_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ A_0_full_n sc_in sc_logic 1 signal 2 } 
	{ A_0_write sc_out sc_logic 1 signal 2 } 
	{ tile_Q_V_0_address0 sc_out sc_lv 3 signal 0 } 
	{ tile_Q_V_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q0 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address1 sc_out sc_lv 3 signal 0 } 
	{ tile_Q_V_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q1 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address2 sc_out sc_lv 3 signal 0 } 
	{ tile_Q_V_0_ce2 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q2 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address3 sc_out sc_lv 3 signal 0 } 
	{ tile_Q_V_0_ce3 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q3 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address4 sc_out sc_lv 3 signal 0 } 
	{ tile_Q_V_0_ce4 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q4 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address5 sc_out sc_lv 3 signal 0 } 
	{ tile_Q_V_0_ce5 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q5 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address6 sc_out sc_lv 3 signal 0 } 
	{ tile_Q_V_0_ce6 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q6 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address7 sc_out sc_lv 3 signal 0 } 
	{ tile_Q_V_0_ce7 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q7 sc_in sc_lv 8 signal 0 } 
	{ buff_K_V_address0 sc_out sc_lv 8 signal 1 } 
	{ buff_K_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q0 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address1 sc_out sc_lv 8 signal 1 } 
	{ buff_K_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q1 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address2 sc_out sc_lv 8 signal 1 } 
	{ buff_K_V_ce2 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q2 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address3 sc_out sc_lv 8 signal 1 } 
	{ buff_K_V_ce3 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q3 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address4 sc_out sc_lv 8 signal 1 } 
	{ buff_K_V_ce4 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q4 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address5 sc_out sc_lv 8 signal 1 } 
	{ buff_K_V_ce5 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q5 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address6 sc_out sc_lv 8 signal 1 } 
	{ buff_K_V_ce6 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q6 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address7 sc_out sc_lv 8 signal 1 } 
	{ buff_K_V_ce7 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q7 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_0", "role": "din" }} , 
 	{ "name": "A_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_0", "role": "num_data_valid" }} , 
 	{ "name": "A_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_0", "role": "fifo_cap" }} , 
 	{ "name": "A_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "full_n" }} , 
 	{ "name": "A_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "write" }} , 
 	{ "name": "tile_Q_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address0" }} , 
 	{ "name": "tile_Q_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce0" }} , 
 	{ "name": "tile_Q_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q0" }} , 
 	{ "name": "tile_Q_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address1" }} , 
 	{ "name": "tile_Q_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce1" }} , 
 	{ "name": "tile_Q_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q1" }} , 
 	{ "name": "tile_Q_V_0_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address2" }} , 
 	{ "name": "tile_Q_V_0_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce2" }} , 
 	{ "name": "tile_Q_V_0_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q2" }} , 
 	{ "name": "tile_Q_V_0_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address3" }} , 
 	{ "name": "tile_Q_V_0_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce3" }} , 
 	{ "name": "tile_Q_V_0_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q3" }} , 
 	{ "name": "tile_Q_V_0_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address4" }} , 
 	{ "name": "tile_Q_V_0_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce4" }} , 
 	{ "name": "tile_Q_V_0_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q4" }} , 
 	{ "name": "tile_Q_V_0_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address5" }} , 
 	{ "name": "tile_Q_V_0_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce5" }} , 
 	{ "name": "tile_Q_V_0_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q5" }} , 
 	{ "name": "tile_Q_V_0_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address6" }} , 
 	{ "name": "tile_Q_V_0_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce6" }} , 
 	{ "name": "tile_Q_V_0_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q6" }} , 
 	{ "name": "tile_Q_V_0_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address7" }} , 
 	{ "name": "tile_Q_V_0_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce7" }} , 
 	{ "name": "tile_Q_V_0_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q7" }} , 
 	{ "name": "buff_K_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address0" }} , 
 	{ "name": "buff_K_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce0" }} , 
 	{ "name": "buff_K_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q0" }} , 
 	{ "name": "buff_K_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address1" }} , 
 	{ "name": "buff_K_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce1" }} , 
 	{ "name": "buff_K_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q1" }} , 
 	{ "name": "buff_K_V_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address2" }} , 
 	{ "name": "buff_K_V_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce2" }} , 
 	{ "name": "buff_K_V_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q2" }} , 
 	{ "name": "buff_K_V_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address3" }} , 
 	{ "name": "buff_K_V_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce3" }} , 
 	{ "name": "buff_K_V_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q3" }} , 
 	{ "name": "buff_K_V_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address4" }} , 
 	{ "name": "buff_K_V_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce4" }} , 
 	{ "name": "buff_K_V_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q4" }} , 
 	{ "name": "buff_K_V_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address5" }} , 
 	{ "name": "buff_K_V_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce5" }} , 
 	{ "name": "buff_K_V_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q5" }} , 
 	{ "name": "buff_K_V_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address6" }} , 
 	{ "name": "buff_K_V_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce6" }} , 
 	{ "name": "buff_K_V_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q6" }} , 
 	{ "name": "buff_K_V_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address7" }} , 
 	{ "name": "buff_K_V_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce7" }} , 
 	{ "name": "buff_K_V_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q7" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tile_Q_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_K_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "A_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1701_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U158", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U159", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U160", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U161", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U162", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U163", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U164", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_4_1_U165", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_18s_16s_10ns_30_4_1_U166", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8 {
		tile_Q_V_0 {Type I LastRead 1 FirstWrite -1}
		buff_K_V {Type I LastRead 1 FirstWrite -1}
		A_0 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "27", "Max" : "27"}
	, {"Name" : "Interval", "Min" : "27", "Max" : "27"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tile_Q_V_0 { ap_memory {  { tile_Q_V_0_address0 mem_address 1 3 }  { tile_Q_V_0_ce0 mem_ce 1 1 }  { tile_Q_V_0_q0 mem_dout 0 8 }  { tile_Q_V_0_address1 MemPortADDR2 1 3 }  { tile_Q_V_0_ce1 MemPortCE2 1 1 }  { tile_Q_V_0_q1 in_data 0 8 }  { tile_Q_V_0_address2 MemPortADDR2 1 3 }  { tile_Q_V_0_ce2 MemPortCE2 1 1 }  { tile_Q_V_0_q2 MemPortDOUT2 0 8 }  { tile_Q_V_0_address3 MemPortADDR2 1 3 }  { tile_Q_V_0_ce3 MemPortCE2 1 1 }  { tile_Q_V_0_q3 MemPortDOUT2 0 8 }  { tile_Q_V_0_address4 MemPortADDR2 1 3 }  { tile_Q_V_0_ce4 MemPortCE2 1 1 }  { tile_Q_V_0_q4 MemPortDOUT2 0 8 }  { tile_Q_V_0_address5 MemPortADDR2 1 3 }  { tile_Q_V_0_ce5 MemPortCE2 1 1 }  { tile_Q_V_0_q5 in_data 0 8 }  { tile_Q_V_0_address6 MemPortADDR2 1 3 }  { tile_Q_V_0_ce6 MemPortCE2 1 1 }  { tile_Q_V_0_q6 MemPortDOUT2 0 8 }  { tile_Q_V_0_address7 MemPortADDR2 1 3 }  { tile_Q_V_0_ce7 MemPortCE2 1 1 }  { tile_Q_V_0_q7 MemPortDOUT2 0 8 } } }
	buff_K_V { ap_memory {  { buff_K_V_address0 mem_address 1 8 }  { buff_K_V_ce0 mem_ce 1 1 }  { buff_K_V_q0 mem_dout 0 8 }  { buff_K_V_address1 MemPortADDR2 1 8 }  { buff_K_V_ce1 MemPortCE2 1 1 }  { buff_K_V_q1 in_data 0 8 }  { buff_K_V_address2 MemPortADDR2 1 8 }  { buff_K_V_ce2 MemPortCE2 1 1 }  { buff_K_V_q2 MemPortDOUT2 0 8 }  { buff_K_V_address3 MemPortADDR2 1 8 }  { buff_K_V_ce3 MemPortCE2 1 1 }  { buff_K_V_q3 MemPortDOUT2 0 8 }  { buff_K_V_address4 MemPortADDR2 1 8 }  { buff_K_V_ce4 MemPortCE2 1 1 }  { buff_K_V_q4 MemPortDOUT2 0 8 }  { buff_K_V_address5 MemPortADDR2 1 8 }  { buff_K_V_ce5 MemPortCE2 1 1 }  { buff_K_V_q5 in_data 0 8 }  { buff_K_V_address6 MemPortADDR2 1 8 }  { buff_K_V_ce6 MemPortCE2 1 1 }  { buff_K_V_q6 MemPortDOUT2 0 8 }  { buff_K_V_address7 MemPortADDR2 1 8 }  { buff_K_V_ce7 MemPortCE2 1 1 }  { buff_K_V_q7 MemPortDOUT2 0 8 } } }
	A_0 { ap_fifo {  { A_0_din fifo_port_we 1 8 }  { A_0_num_data_valid fifo_status_num_data_valid 0 2 }  { A_0_fifo_cap fifo_update 0 2 }  { A_0_full_n fifo_status 0 1 }  { A_0_write fifo_data 1 1 } } }
}
