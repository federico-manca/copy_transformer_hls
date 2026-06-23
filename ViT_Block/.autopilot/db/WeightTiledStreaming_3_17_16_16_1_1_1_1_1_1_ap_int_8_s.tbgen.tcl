set moduleName WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_s
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
set C_modelName {WeightTiledStreaming_3<17, 16, 16, 1, 1, 1, 1, 1, 1, ap_int<8> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ Q int 8 regular {axi_master 0}  }
	{ W_ddr_tile int 64 regular  }
	{ out_w1 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Q", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_q","offset": { "type": "dynamic","port_name": "in_q","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "W_ddr_tile", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_w1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 62
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
	{ m_axi_Q_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Q_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Q_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_Q_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Q_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_Q_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_Q_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_Q_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_Q_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_Q_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_Q_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_Q_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_Q_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Q_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Q_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Q_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_Q_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_Q_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_Q_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Q_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Q_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Q_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Q_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_Q_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Q_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_Q_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_Q_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_Q_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_Q_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_Q_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_Q_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_Q_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_Q_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Q_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_Q_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_Q_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_Q_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_Q_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_Q_RFIFONUM sc_in sc_lv 13 signal 0 } 
	{ m_axi_Q_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_Q_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_Q_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_Q_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_Q_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_Q_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_Q_BUSER sc_in sc_lv 1 signal 0 } 
	{ W_ddr_tile sc_in sc_lv 64 signal 1 } 
	{ out_w1_din sc_out sc_lv 8 signal 2 } 
	{ out_w1_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ out_w1_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ out_w1_full_n sc_in sc_logic 1 signal 2 } 
	{ out_w1_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "m_axi_Q_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "AWVALID" }} , 
 	{ "name": "m_axi_Q_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "AWREADY" }} , 
 	{ "name": "m_axi_Q_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q", "role": "AWADDR" }} , 
 	{ "name": "m_axi_Q_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "AWID" }} , 
 	{ "name": "m_axi_Q_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q", "role": "AWLEN" }} , 
 	{ "name": "m_axi_Q_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_Q_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Q", "role": "AWBURST" }} , 
 	{ "name": "m_axi_Q_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Q", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_Q_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Q", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_Q_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q", "role": "AWPROT" }} , 
 	{ "name": "m_axi_Q_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Q", "role": "AWQOS" }} , 
 	{ "name": "m_axi_Q_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Q", "role": "AWREGION" }} , 
 	{ "name": "m_axi_Q_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "AWUSER" }} , 
 	{ "name": "m_axi_Q_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "WVALID" }} , 
 	{ "name": "m_axi_Q_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "WREADY" }} , 
 	{ "name": "m_axi_Q_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Q", "role": "WDATA" }} , 
 	{ "name": "m_axi_Q_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "WSTRB" }} , 
 	{ "name": "m_axi_Q_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "WLAST" }} , 
 	{ "name": "m_axi_Q_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "WID" }} , 
 	{ "name": "m_axi_Q_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "WUSER" }} , 
 	{ "name": "m_axi_Q_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "ARVALID" }} , 
 	{ "name": "m_axi_Q_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "ARREADY" }} , 
 	{ "name": "m_axi_Q_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q", "role": "ARADDR" }} , 
 	{ "name": "m_axi_Q_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "ARID" }} , 
 	{ "name": "m_axi_Q_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q", "role": "ARLEN" }} , 
 	{ "name": "m_axi_Q_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_Q_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Q", "role": "ARBURST" }} , 
 	{ "name": "m_axi_Q_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Q", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_Q_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Q", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_Q_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q", "role": "ARPROT" }} , 
 	{ "name": "m_axi_Q_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Q", "role": "ARQOS" }} , 
 	{ "name": "m_axi_Q_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Q", "role": "ARREGION" }} , 
 	{ "name": "m_axi_Q_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "ARUSER" }} , 
 	{ "name": "m_axi_Q_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "RVALID" }} , 
 	{ "name": "m_axi_Q_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "RREADY" }} , 
 	{ "name": "m_axi_Q_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Q", "role": "RDATA" }} , 
 	{ "name": "m_axi_Q_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "RLAST" }} , 
 	{ "name": "m_axi_Q_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "RID" }} , 
 	{ "name": "m_axi_Q_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "Q", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_Q_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "RUSER" }} , 
 	{ "name": "m_axi_Q_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Q", "role": "RRESP" }} , 
 	{ "name": "m_axi_Q_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "BVALID" }} , 
 	{ "name": "m_axi_Q_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "BREADY" }} , 
 	{ "name": "m_axi_Q_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Q", "role": "BRESP" }} , 
 	{ "name": "m_axi_Q_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "BID" }} , 
 	{ "name": "m_axi_Q_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "BUSER" }} , 
 	{ "name": "W_ddr_tile", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W_ddr_tile", "role": "default" }} , 
 	{ "name": "out_w1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_w1", "role": "din" }} , 
 	{ "name": "out_w1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_w1", "role": "num_data_valid" }} , 
 	{ "name": "out_w1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_w1", "role": "fifo_cap" }} , 
 	{ "name": "out_w1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_w1", "role": "full_n" }} , 
 	{ "name": "out_w1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_w1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Q", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_106", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_burst_read_beats_1_ap_int_8_s_fu_106", "Parent" : "0",
		"CDFG" : "burst_read_beats_1_ap_int_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "W_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "burst_reads2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "burst_reads2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "packer_to_packs_1_1_1_ap_int_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "burst_reads2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "burst_reads2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_591_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.burst_reads_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_s {
		Q {Type I LastRead 7 FirstWrite -1}
		W_ddr_tile {Type I LastRead 0 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	burst_read_beats_1_ap_int_8_s {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		W_ddr {Type I LastRead 0 FirstWrite -1}
		burst_reads2 {Type O LastRead -1 FirstWrite 8}}
	packer_to_packs_1_1_1_ap_int_8_s {
		burst_reads2 {Type I LastRead 2 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_Q_AWVALID VALID 1 1 }  { m_axi_Q_AWREADY READY 0 1 }  { m_axi_Q_AWADDR ADDR 1 64 }  { m_axi_Q_AWID ID 1 1 }  { m_axi_Q_AWLEN SIZE 1 32 }  { m_axi_Q_AWSIZE BURST 1 3 }  { m_axi_Q_AWBURST LOCK 1 2 }  { m_axi_Q_AWLOCK CACHE 1 2 }  { m_axi_Q_AWCACHE PROT 1 4 }  { m_axi_Q_AWPROT QOS 1 3 }  { m_axi_Q_AWQOS REGION 1 4 }  { m_axi_Q_AWREGION USER 1 4 }  { m_axi_Q_AWUSER DATA 1 1 }  { m_axi_Q_WVALID VALID 1 1 }  { m_axi_Q_WREADY READY 0 1 }  { m_axi_Q_WDATA FIFONUM 1 8 }  { m_axi_Q_WSTRB STRB 1 1 }  { m_axi_Q_WLAST LAST 1 1 }  { m_axi_Q_WID ID 1 1 }  { m_axi_Q_WUSER DATA 1 1 }  { m_axi_Q_ARVALID VALID 1 1 }  { m_axi_Q_ARREADY READY 0 1 }  { m_axi_Q_ARADDR ADDR 1 64 }  { m_axi_Q_ARID ID 1 1 }  { m_axi_Q_ARLEN SIZE 1 32 }  { m_axi_Q_ARSIZE BURST 1 3 }  { m_axi_Q_ARBURST LOCK 1 2 }  { m_axi_Q_ARLOCK CACHE 1 2 }  { m_axi_Q_ARCACHE PROT 1 4 }  { m_axi_Q_ARPROT QOS 1 3 }  { m_axi_Q_ARQOS REGION 1 4 }  { m_axi_Q_ARREGION USER 1 4 }  { m_axi_Q_ARUSER DATA 1 1 }  { m_axi_Q_RVALID VALID 0 1 }  { m_axi_Q_RREADY READY 1 1 }  { m_axi_Q_RDATA FIFONUM 0 8 }  { m_axi_Q_RLAST LAST 0 1 }  { m_axi_Q_RID ID 0 1 }  { m_axi_Q_RFIFONUM LEN 0 13 }  { m_axi_Q_RUSER DATA 0 1 }  { m_axi_Q_RRESP RESP 0 2 }  { m_axi_Q_BVALID VALID 0 1 }  { m_axi_Q_BREADY READY 1 1 }  { m_axi_Q_BRESP RESP 0 2 }  { m_axi_Q_BID ID 0 1 }  { m_axi_Q_BUSER DATA 0 1 } } }
	W_ddr_tile { ap_none {  { W_ddr_tile in_data 0 64 } } }
	out_w1 { ap_fifo {  { out_w1_din fifo_port_we 1 8 }  { out_w1_num_data_valid fifo_status_num_data_valid 0 7 }  { out_w1_fifo_cap fifo_update 0 7 }  { out_w1_full_n fifo_status 0 1 }  { out_w1_write fifo_data 1 1 } } }
}
