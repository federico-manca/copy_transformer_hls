set moduleName MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_s
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
set C_modelName {MatMul_QK_tiled<17, 8, 17, 1, 1, 1, 1, 1, 607, 16, 0, ap_int<8>, ap_int<32> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ Q_1_0 int 8 regular {fifo 0 volatile }  }
	{ K_1_0 int 8 regular {fifo 0 volatile }  }
	{ A_0 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Q_1_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "K_1_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "A_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
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
	{ Q_1_0_dout sc_in sc_lv 8 signal 0 } 
	{ Q_1_0_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ Q_1_0_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ Q_1_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ Q_1_0_read sc_out sc_logic 1 signal 0 } 
	{ K_1_0_dout sc_in sc_lv 8 signal 1 } 
	{ K_1_0_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ K_1_0_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ K_1_0_empty_n sc_in sc_logic 1 signal 1 } 
	{ K_1_0_read sc_out sc_logic 1 signal 1 } 
	{ A_0_din sc_out sc_lv 8 signal 2 } 
	{ A_0_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ A_0_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ A_0_full_n sc_in sc_logic 1 signal 2 } 
	{ A_0_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Q_1_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Q_1_0", "role": "dout" }} , 
 	{ "name": "Q_1_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Q_1_0", "role": "num_data_valid" }} , 
 	{ "name": "Q_1_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Q_1_0", "role": "fifo_cap" }} , 
 	{ "name": "Q_1_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_1_0", "role": "empty_n" }} , 
 	{ "name": "Q_1_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_1_0", "role": "read" }} , 
 	{ "name": "K_1_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "K_1_0", "role": "dout" }} , 
 	{ "name": "K_1_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K_1_0", "role": "num_data_valid" }} , 
 	{ "name": "K_1_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K_1_0", "role": "fifo_cap" }} , 
 	{ "name": "K_1_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_1_0", "role": "empty_n" }} , 
 	{ "name": "K_1_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_1_0", "role": "read" }} , 
 	{ "name": "A_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_0", "role": "din" }} , 
 	{ "name": "A_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_0", "role": "num_data_valid" }} , 
 	{ "name": "A_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_0", "role": "fifo_cap" }} , 
 	{ "name": "A_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "full_n" }} , 
 	{ "name": "A_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7"],
		"CDFG" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "855", "EstimateLatencyMax" : "855",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_K_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tile_Q_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_K_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "K_1_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1656_1_VITIS_LOOP_1657_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tile_Q_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Q_1_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1682_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U158", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U159", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U160", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U161", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U162", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U163", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U164", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U165", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.am_addmul_18s_16s_10ns_30_4_1_U166", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_s {
		Q_1_0 {Type I LastRead 1 FirstWrite -1}
		K_1_0 {Type I LastRead 1 FirstWrite -1}
		A_0 {Type O LastRead -1 FirstWrite 9}}
	MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 {
		buff_K_V {Type O LastRead -1 FirstWrite 1}
		K_1_0 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6 {
		tile_Q_V_0 {Type O LastRead -1 FirstWrite 1}
		Q_1_0 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8 {
		tile_Q_V_0 {Type I LastRead 1 FirstWrite -1}
		buff_K_V {Type I LastRead 1 FirstWrite -1}
		A_0 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "855", "Max" : "855"}
	, {"Name" : "Interval", "Min" : "855", "Max" : "855"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Q_1_0 { ap_fifo {  { Q_1_0_dout fifo_port_we 0 8 }  { Q_1_0_num_data_valid fifo_status_num_data_valid 0 2 }  { Q_1_0_fifo_cap fifo_update 0 2 }  { Q_1_0_empty_n fifo_status 0 1 }  { Q_1_0_read fifo_data 1 1 } } }
	K_1_0 { ap_fifo {  { K_1_0_dout fifo_port_we 0 8 }  { K_1_0_num_data_valid fifo_status_num_data_valid 0 2 }  { K_1_0_fifo_cap fifo_update 0 2 }  { K_1_0_empty_n fifo_status 0 1 }  { K_1_0_read fifo_data 1 1 } } }
	A_0 { ap_fifo {  { A_0_din fifo_port_we 1 8 }  { A_0_num_data_valid fifo_status_num_data_valid 0 2 }  { A_0_fifo_cap fifo_update 0 2 }  { A_0_full_n fifo_status 0 1 }  { A_0_write fifo_data 1 1 } } }
}
