set moduleName split_heads_2
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
set C_modelName {split_heads.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ k_lin2 int 8 regular {fifo 0 volatile }  }
	{ K_1_0 int 8 regular {fifo 1 volatile }  }
	{ K_1_1 int 8 regular {fifo 1 volatile }  }
	{ K_1_2 int 8 regular {fifo 1 volatile }  }
	{ K_1_3 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "k_lin2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "K_1_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "K_1_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "K_1_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "K_1_3", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ k_lin2_dout sc_in sc_lv 8 signal 0 } 
	{ k_lin2_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ k_lin2_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ k_lin2_empty_n sc_in sc_logic 1 signal 0 } 
	{ k_lin2_read sc_out sc_logic 1 signal 0 } 
	{ K_1_2_din sc_out sc_lv 8 signal 3 } 
	{ K_1_2_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ K_1_2_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ K_1_2_full_n sc_in sc_logic 1 signal 3 } 
	{ K_1_2_write sc_out sc_logic 1 signal 3 } 
	{ K_1_1_din sc_out sc_lv 8 signal 2 } 
	{ K_1_1_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ K_1_1_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ K_1_1_full_n sc_in sc_logic 1 signal 2 } 
	{ K_1_1_write sc_out sc_logic 1 signal 2 } 
	{ K_1_0_din sc_out sc_lv 8 signal 1 } 
	{ K_1_0_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ K_1_0_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ K_1_0_full_n sc_in sc_logic 1 signal 1 } 
	{ K_1_0_write sc_out sc_logic 1 signal 1 } 
	{ K_1_3_din sc_out sc_lv 8 signal 4 } 
	{ K_1_3_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ K_1_3_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ K_1_3_full_n sc_in sc_logic 1 signal 4 } 
	{ K_1_3_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "k_lin2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "k_lin2", "role": "dout" }} , 
 	{ "name": "k_lin2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k_lin2", "role": "num_data_valid" }} , 
 	{ "name": "k_lin2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k_lin2", "role": "fifo_cap" }} , 
 	{ "name": "k_lin2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_lin2", "role": "empty_n" }} , 
 	{ "name": "k_lin2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_lin2", "role": "read" }} , 
 	{ "name": "K_1_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "K_1_2", "role": "din" }} , 
 	{ "name": "K_1_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K_1_2", "role": "num_data_valid" }} , 
 	{ "name": "K_1_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K_1_2", "role": "fifo_cap" }} , 
 	{ "name": "K_1_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_1_2", "role": "full_n" }} , 
 	{ "name": "K_1_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_1_2", "role": "write" }} , 
 	{ "name": "K_1_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "K_1_1", "role": "din" }} , 
 	{ "name": "K_1_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K_1_1", "role": "num_data_valid" }} , 
 	{ "name": "K_1_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K_1_1", "role": "fifo_cap" }} , 
 	{ "name": "K_1_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_1_1", "role": "full_n" }} , 
 	{ "name": "K_1_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_1_1", "role": "write" }} , 
 	{ "name": "K_1_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "K_1_0", "role": "din" }} , 
 	{ "name": "K_1_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K_1_0", "role": "num_data_valid" }} , 
 	{ "name": "K_1_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K_1_0", "role": "fifo_cap" }} , 
 	{ "name": "K_1_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_1_0", "role": "full_n" }} , 
 	{ "name": "K_1_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_1_0", "role": "write" }} , 
 	{ "name": "K_1_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "K_1_3", "role": "din" }} , 
 	{ "name": "K_1_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K_1_3", "role": "num_data_valid" }} , 
 	{ "name": "K_1_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K_1_3", "role": "fifo_cap" }} , 
 	{ "name": "K_1_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_1_3", "role": "full_n" }} , 
 	{ "name": "K_1_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_1_3", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "split_heads_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k_lin2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	split_heads_2 {
		k_lin2 {Type I LastRead 1 FirstWrite -1}
		K_1_0 {Type O LastRead -1 FirstWrite 1}
		K_1_1 {Type O LastRead -1 FirstWrite 1}
		K_1_2 {Type O LastRead -1 FirstWrite 1}
		K_1_3 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3266", "Max" : "3266"}
	, {"Name" : "Interval", "Min" : "3266", "Max" : "3266"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	k_lin2 { ap_fifo {  { k_lin2_dout fifo_port_we 0 8 }  { k_lin2_num_data_valid fifo_status_num_data_valid 0 2 }  { k_lin2_fifo_cap fifo_update 0 2 }  { k_lin2_empty_n fifo_status 0 1 }  { k_lin2_read fifo_data 1 1 } } }
	K_1_0 { ap_fifo {  { K_1_0_din fifo_port_we 1 8 }  { K_1_0_num_data_valid fifo_status_num_data_valid 0 2 }  { K_1_0_fifo_cap fifo_update 0 2 }  { K_1_0_full_n fifo_status 0 1 }  { K_1_0_write fifo_data 1 1 } } }
	K_1_1 { ap_fifo {  { K_1_1_din fifo_port_we 1 8 }  { K_1_1_num_data_valid fifo_status_num_data_valid 0 2 }  { K_1_1_fifo_cap fifo_update 0 2 }  { K_1_1_full_n fifo_status 0 1 }  { K_1_1_write fifo_data 1 1 } } }
	K_1_2 { ap_fifo {  { K_1_2_din fifo_port_we 1 8 }  { K_1_2_num_data_valid fifo_status_num_data_valid 0 2 }  { K_1_2_fifo_cap fifo_update 0 2 }  { K_1_2_full_n fifo_status 0 1 }  { K_1_2_write fifo_data 1 1 } } }
	K_1_3 { ap_fifo {  { K_1_3_din fifo_port_we 1 8 }  { K_1_3_num_data_valid fifo_status_num_data_valid 0 2 }  { K_1_3_fifo_cap fifo_update 0 2 }  { K_1_3_full_n fifo_status 0 1 }  { K_1_3_write fifo_data 1 1 } } }
}
