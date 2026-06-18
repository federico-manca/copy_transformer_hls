set moduleName SOFTMAX_tile_9
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
set C_modelName {SOFTMAX_tile.9}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_2 int 8 regular {fifo 0 volatile }  }
	{ A_s_2 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "A_s_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ A_2_dout sc_in sc_lv 8 signal 0 } 
	{ A_2_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ A_2_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ A_2_empty_n sc_in sc_logic 1 signal 0 } 
	{ A_2_read sc_out sc_logic 1 signal 0 } 
	{ A_s_2_din sc_out sc_lv 8 signal 1 } 
	{ A_s_2_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ A_s_2_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ A_s_2_full_n sc_in sc_logic 1 signal 1 } 
	{ A_s_2_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "A_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_2", "role": "dout" }} , 
 	{ "name": "A_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_2", "role": "num_data_valid" }} , 
 	{ "name": "A_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_2", "role": "fifo_cap" }} , 
 	{ "name": "A_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "empty_n" }} , 
 	{ "name": "A_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "read" }} , 
 	{ "name": "A_s_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_s_2", "role": "din" }} , 
 	{ "name": "A_s_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_s_2", "role": "num_data_valid" }} , 
 	{ "name": "A_s_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_s_2", "role": "fifo_cap" }} , 
 	{ "name": "A_s_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_s_2", "role": "full_n" }} , 
 	{ "name": "A_s_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_s_2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "SOFTMAX_tile_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "352", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "351", "EstimateLatencyMax" : "351",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_s_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "A_s_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_563_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U200", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U201", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U202", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U203", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	SOFTMAX_tile_9 {
		A_2 {Type I LastRead 17 FirstWrite -1}
		A_s_2 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s {
		A_3 {Type I LastRead 17 FirstWrite -1}
		A_s_3 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "352", "Max" : "352"}
	, {"Name" : "Interval", "Min" : "352", "Max" : "352"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_2 { ap_fifo {  { A_2_dout fifo_port_we 0 8 }  { A_2_num_data_valid fifo_status_num_data_valid 0 2 }  { A_2_fifo_cap fifo_update 0 2 }  { A_2_empty_n fifo_status 0 1 }  { A_2_read fifo_data 1 1 } } }
	A_s_2 { ap_fifo {  { A_s_2_din fifo_port_we 1 8 }  { A_s_2_num_data_valid fifo_status_num_data_valid 0 2 }  { A_s_2_fifo_cap fifo_update 0 2 }  { A_s_2_full_n fifo_status 0 1 }  { A_s_2_write fifo_data 1 1 } } }
}
