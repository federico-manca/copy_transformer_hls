set moduleName duplicate_stream_ap_int_8_17_192_1_s
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
set C_modelName {duplicate_stream<ap_int<8>, 17, 192, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_stream1 int 8 regular {fifo 0 volatile }  }
	{ res1 int 8 regular {fifo 1 volatile }  }
	{ x13 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_stream1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x13", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_stream1_dout sc_in sc_lv 8 signal 0 } 
	{ input_stream1_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ input_stream1_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ input_stream1_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_stream1_read sc_out sc_logic 1 signal 0 } 
	{ res1_din sc_out sc_lv 8 signal 1 } 
	{ res1_num_data_valid sc_in sc_lv 13 signal 1 } 
	{ res1_fifo_cap sc_in sc_lv 13 signal 1 } 
	{ res1_full_n sc_in sc_logic 1 signal 1 } 
	{ res1_write sc_out sc_logic 1 signal 1 } 
	{ x13_din sc_out sc_lv 8 signal 2 } 
	{ x13_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ x13_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ x13_full_n sc_in sc_logic 1 signal 2 } 
	{ x13_write sc_out sc_logic 1 signal 2 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "input_stream1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_stream1", "role": "dout" }} , 
 	{ "name": "input_stream1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_stream1", "role": "num_data_valid" }} , 
 	{ "name": "input_stream1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_stream1", "role": "fifo_cap" }} , 
 	{ "name": "input_stream1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream1", "role": "empty_n" }} , 
 	{ "name": "input_stream1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream1", "role": "read" }} , 
 	{ "name": "res1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res1", "role": "din" }} , 
 	{ "name": "res1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res1", "role": "num_data_valid" }} , 
 	{ "name": "res1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res1", "role": "fifo_cap" }} , 
 	{ "name": "res1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res1", "role": "full_n" }} , 
 	{ "name": "res1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res1", "role": "write" }} , 
 	{ "name": "x13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x13", "role": "din" }} , 
 	{ "name": "x13_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x13", "role": "num_data_valid" }} , 
 	{ "name": "x13_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x13", "role": "fifo_cap" }} , 
 	{ "name": "x13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x13", "role": "full_n" }} , 
 	{ "name": "x13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x13", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "duplicate_stream_ap_int_8_17_192_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3266", "EstimateLatencyMax" : "3266",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_stream1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "input_stream1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x13_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	duplicate_stream_ap_int_8_17_192_1_s {
		input_stream1 {Type I LastRead 0 FirstWrite -1}
		res1 {Type O LastRead -1 FirstWrite 1}
		x13 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3266", "Max" : "3266"}
	, {"Name" : "Interval", "Min" : "3266", "Max" : "3266"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_stream1 { ap_fifo {  { input_stream1_dout fifo_port_we 0 8 }  { input_stream1_num_data_valid fifo_status_num_data_valid 0 2 }  { input_stream1_fifo_cap fifo_update 0 2 }  { input_stream1_empty_n fifo_status 0 1 }  { input_stream1_read fifo_data 1 1 } } }
	res1 { ap_fifo {  { res1_din fifo_port_we 1 8 }  { res1_num_data_valid fifo_status_num_data_valid 0 13 }  { res1_fifo_cap fifo_update 0 13 }  { res1_full_n fifo_status 0 1 }  { res1_write fifo_data 1 1 } } }
	x13 { ap_fifo {  { x13_din fifo_port_we 1 8 }  { x13_num_data_valid fifo_status_num_data_valid 0 2 }  { x13_fifo_cap fifo_update 0 2 }  { x13_full_n fifo_status 0 1 }  { x13_write fifo_data 1 1 } } }
}
