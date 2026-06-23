set moduleName duplicate_stream_ap_int_8_17_16_1_1
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
set C_modelName {duplicate_stream<ap_int<8>, 17, 16, 1>.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_res_09 int 8 regular {fifo 0 volatile }  }
	{ res_110 int 8 regular {fifo 1 volatile }  }
	{ x212 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_res_09", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res_110", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x212", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
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
	{ out_res_09_dout sc_in sc_lv 8 signal 0 } 
	{ out_res_09_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ out_res_09_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ out_res_09_empty_n sc_in sc_logic 1 signal 0 } 
	{ out_res_09_read sc_out sc_logic 1 signal 0 } 
	{ res_110_din sc_out sc_lv 8 signal 1 } 
	{ res_110_num_data_valid sc_in sc_lv 13 signal 1 } 
	{ res_110_fifo_cap sc_in sc_lv 13 signal 1 } 
	{ res_110_full_n sc_in sc_logic 1 signal 1 } 
	{ res_110_write sc_out sc_logic 1 signal 1 } 
	{ x212_din sc_out sc_lv 8 signal 2 } 
	{ x212_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ x212_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ x212_full_n sc_in sc_logic 1 signal 2 } 
	{ x212_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "out_res_09_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_res_09", "role": "dout" }} , 
 	{ "name": "out_res_09_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_res_09", "role": "num_data_valid" }} , 
 	{ "name": "out_res_09_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_res_09", "role": "fifo_cap" }} , 
 	{ "name": "out_res_09_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_res_09", "role": "empty_n" }} , 
 	{ "name": "out_res_09_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_res_09", "role": "read" }} , 
 	{ "name": "res_110_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_110", "role": "din" }} , 
 	{ "name": "res_110_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_110", "role": "num_data_valid" }} , 
 	{ "name": "res_110_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_110", "role": "fifo_cap" }} , 
 	{ "name": "res_110_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_110", "role": "full_n" }} , 
 	{ "name": "res_110_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_110", "role": "write" }} , 
 	{ "name": "x212_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x212", "role": "din" }} , 
 	{ "name": "x212_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x212", "role": "num_data_valid" }} , 
 	{ "name": "x212_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x212", "role": "fifo_cap" }} , 
 	{ "name": "x212_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x212", "role": "full_n" }} , 
 	{ "name": "x212_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x212", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "duplicate_stream_ap_int_8_17_16_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "274", "EstimateLatencyMax" : "274",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_res_09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_res_09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x212_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	duplicate_stream_ap_int_8_17_16_1_1 {
		out_res_09 {Type I LastRead 1 FirstWrite -1}
		res_110 {Type O LastRead -1 FirstWrite 1}
		x212 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "274", "Max" : "274"}
	, {"Name" : "Interval", "Min" : "274", "Max" : "274"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_res_09 { ap_fifo {  { out_res_09_dout fifo_port_we 0 8 }  { out_res_09_num_data_valid fifo_status_num_data_valid 0 2 }  { out_res_09_fifo_cap fifo_update 0 2 }  { out_res_09_empty_n fifo_status 0 1 }  { out_res_09_read fifo_data 1 1 } } }
	res_110 { ap_fifo {  { res_110_din fifo_port_we 1 8 }  { res_110_num_data_valid fifo_status_num_data_valid 0 13 }  { res_110_fifo_cap fifo_update 0 13 }  { res_110_full_n fifo_status 0 1 }  { res_110_write fifo_data 1 1 } } }
	x212 { ap_fifo {  { x212_din fifo_port_we 1 8 }  { x212_num_data_valid fifo_status_num_data_valid 0 2 }  { x212_fifo_cap fifo_update 0 2 }  { x212_full_n fifo_status 0 1 }  { x212_write fifo_data 1 1 } } }
}
