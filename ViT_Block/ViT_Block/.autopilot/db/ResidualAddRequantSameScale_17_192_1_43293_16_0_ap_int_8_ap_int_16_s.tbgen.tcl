set moduleName ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_s
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
set C_modelName {ResidualAddRequantSameScale<17, 192, 1, 43293, 16, 0, ap_int<8>, ap_int<16> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_mha8 int 8 regular {fifo 0 volatile }  }
	{ res_rq2 int 8 regular {fifo 0 volatile }  }
	{ out_res_09 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_mha8", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res_rq2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_res_09", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
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
	{ out_mha8_dout sc_in sc_lv 8 signal 0 } 
	{ out_mha8_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ out_mha8_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ out_mha8_empty_n sc_in sc_logic 1 signal 0 } 
	{ out_mha8_read sc_out sc_logic 1 signal 0 } 
	{ res_rq2_dout sc_in sc_lv 8 signal 1 } 
	{ res_rq2_num_data_valid sc_in sc_lv 13 signal 1 } 
	{ res_rq2_fifo_cap sc_in sc_lv 13 signal 1 } 
	{ res_rq2_empty_n sc_in sc_logic 1 signal 1 } 
	{ res_rq2_read sc_out sc_logic 1 signal 1 } 
	{ out_res_09_din sc_out sc_lv 8 signal 2 } 
	{ out_res_09_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ out_res_09_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ out_res_09_full_n sc_in sc_logic 1 signal 2 } 
	{ out_res_09_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "out_mha8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_mha8", "role": "dout" }} , 
 	{ "name": "out_mha8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_mha8", "role": "num_data_valid" }} , 
 	{ "name": "out_mha8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_mha8", "role": "fifo_cap" }} , 
 	{ "name": "out_mha8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mha8", "role": "empty_n" }} , 
 	{ "name": "out_mha8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mha8", "role": "read" }} , 
 	{ "name": "res_rq2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_rq2", "role": "dout" }} , 
 	{ "name": "res_rq2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_rq2", "role": "num_data_valid" }} , 
 	{ "name": "res_rq2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "res_rq2", "role": "fifo_cap" }} , 
 	{ "name": "res_rq2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_rq2", "role": "empty_n" }} , 
 	{ "name": "res_rq2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_rq2", "role": "read" }} , 
 	{ "name": "out_res_09_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_res_09", "role": "din" }} , 
 	{ "name": "out_res_09_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_res_09", "role": "num_data_valid" }} , 
 	{ "name": "out_res_09_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_res_09", "role": "fifo_cap" }} , 
 	{ "name": "out_res_09_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_res_09", "role": "full_n" }} , 
 	{ "name": "out_res_09_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_res_09", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_mha8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_rq2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_rq2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_res_09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_res_09_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_802_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_8s_8s_16ns_26_4_1_U710", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_s {
		out_mha8 {Type I LastRead 1 FirstWrite -1}
		res_rq2 {Type I LastRead 1 FirstWrite -1}
		out_res_09 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3269", "Max" : "3269"}
	, {"Name" : "Interval", "Min" : "3269", "Max" : "3269"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_mha8 { ap_fifo {  { out_mha8_dout fifo_port_we 0 8 }  { out_mha8_num_data_valid fifo_status_num_data_valid 0 2 }  { out_mha8_fifo_cap fifo_update 0 2 }  { out_mha8_empty_n fifo_status 0 1 }  { out_mha8_read fifo_data 1 1 } } }
	res_rq2 { ap_fifo {  { res_rq2_dout fifo_port_we 0 8 }  { res_rq2_num_data_valid fifo_status_num_data_valid 0 13 }  { res_rq2_fifo_cap fifo_update 0 13 }  { res_rq2_empty_n fifo_status 0 1 }  { res_rq2_read fifo_data 1 1 } } }
	out_res_09 { ap_fifo {  { out_res_09_din fifo_port_we 1 8 }  { out_res_09_num_data_valid fifo_status_num_data_valid 0 2 }  { out_res_09_fifo_cap fifo_update 0 2 }  { out_res_09_full_n fifo_status 0 1 }  { out_res_09_write fifo_data 1 1 } } }
}
