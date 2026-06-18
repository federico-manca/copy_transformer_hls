set moduleName BatchNorm_tiled_0
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {BatchNorm_tiled_0}
set C_modelType { void 0 }
set C_modelArgList {
	{ x13 int 8 regular {fifo 0 volatile }  }
	{ norm_out4 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x13", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "norm_out4", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ x13_dout sc_in sc_lv 8 signal 0 } 
	{ x13_empty_n sc_in sc_logic 1 signal 0 } 
	{ x13_read sc_out sc_logic 1 signal 0 } 
	{ norm_out4_din sc_out sc_lv 8 signal 1 } 
	{ norm_out4_full_n sc_in sc_logic 1 signal 1 } 
	{ norm_out4_write sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "x13_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x13", "role": "dout" }} , 
 	{ "name": "x13_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x13", "role": "empty_n" }} , 
 	{ "name": "x13_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x13", "role": "read" }} , 
 	{ "name": "norm_out4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "norm_out4", "role": "din" }} , 
 	{ "name": "norm_out4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_out4", "role": "full_n" }} , 
 	{ "name": "norm_out4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_out4", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "BatchNorm_tiled_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3269", "EstimateLatencyMax" : "3269",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0"}],
		"Port" : [
			{"Name" : "x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0", "Port" : "x13"}]},
			{"Name" : "norm_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0", "Port" : "norm_out4"}]},
			{"Name" : "bn0_mul_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0", "Port" : "bn0_mul_1"}]},
			{"Name" : "bn0_add_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0", "Port" : "bn0_add_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3269", "EstimateLatencyMax" : "3269",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bn0_mul_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bn0_add_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_1_VITIS_LOOP_186_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.bn0_mul_1_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.bn0_add_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.mul_mul_15ns_8s_23_4_1_U13", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.flow_control_loop_pipe_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	BatchNorm_tiled_0 {
		x13 {Type I LastRead 0 FirstWrite -1}
		norm_out4 {Type O LastRead -1 FirstWrite 4}
		bn0_mul_1 {Type I LastRead -1 FirstWrite -1}
		bn0_add_1 {Type I LastRead -1 FirstWrite -1}}
	BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_s {
		x13 {Type I LastRead 0 FirstWrite -1}
		norm_out4 {Type O LastRead -1 FirstWrite 4}
		bn0_mul_1 {Type I LastRead -1 FirstWrite -1}
		bn0_add_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3269", "Max" : "3269"}
	, {"Name" : "Interval", "Min" : "3270", "Max" : "3270"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x13 { ap_fifo {  { x13_dout fifo_port_we 0 8 }  { x13_empty_n fifo_status 0 1 }  { x13_read fifo_data 1 1 } } }
	norm_out4 { ap_fifo {  { norm_out4_din fifo_port_we 1 8 }  { norm_out4_full_n fifo_status 0 1 }  { norm_out4_write fifo_data 1 1 } } }
}
