set moduleName Out_linear_tiled
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
set C_modelName {Out_linear_tiled}
set C_modelType { void 0 }
set C_modelArgList {
	{ Out_r int 8 regular {axi_master 0}  }
	{ in_w int 64 regular  }
	{ out_linear4 int 8 regular {fifo 0 volatile }  }
	{ out_mha8 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Out_r", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_o","offset": { "type": "dynamic","port_name": "in_o","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_w", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_linear4", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_mha8", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 61
set portList { 
	{ m_axi_Out_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Out_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Out_r_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_Out_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Out_r_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_Out_r_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_Out_r_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_Out_r_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_Out_r_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_Out_r_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_Out_r_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_Out_r_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_Out_r_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Out_r_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Out_r_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Out_r_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_Out_r_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_Out_r_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_Out_r_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Out_r_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Out_r_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Out_r_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Out_r_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_Out_r_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Out_r_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_Out_r_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_Out_r_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_Out_r_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_Out_r_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_Out_r_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_Out_r_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_Out_r_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_Out_r_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Out_r_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_Out_r_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_Out_r_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_Out_r_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_Out_r_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_Out_r_RFIFONUM sc_in sc_lv 13 signal 0 } 
	{ m_axi_Out_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_Out_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_Out_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_Out_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_Out_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_Out_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_Out_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ in_w sc_in sc_lv 64 signal 1 } 
	{ out_linear4_dout sc_in sc_lv 8 signal 2 } 
	{ out_linear4_empty_n sc_in sc_logic 1 signal 2 } 
	{ out_linear4_read sc_out sc_logic 1 signal 2 } 
	{ out_mha8_din sc_out sc_lv 8 signal 3 } 
	{ out_mha8_full_n sc_in sc_logic 1 signal 3 } 
	{ out_mha8_write sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_w_ap_vld sc_in sc_logic 1 invld 1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_Out_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_Out_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_Out_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Out_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_Out_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "AWID" }} , 
 	{ "name": "m_axi_Out_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_Out_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Out_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_Out_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_Out_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_Out_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_Out_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Out_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_Out_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_Out_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_Out_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_Out_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_Out_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_Out_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Out_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_Out_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_Out_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_Out_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "WID" }} , 
 	{ "name": "m_axi_Out_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_Out_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_Out_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_Out_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Out_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_Out_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "ARID" }} , 
 	{ "name": "m_axi_Out_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_Out_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Out_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_Out_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_Out_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_Out_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_Out_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Out_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_Out_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_Out_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_Out_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_Out_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_Out_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_Out_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Out_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_Out_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_Out_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "RID" }} , 
 	{ "name": "m_axi_Out_r_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "Out_r", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_Out_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_Out_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_Out_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_Out_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_Out_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_Out_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "BID" }} , 
 	{ "name": "m_axi_Out_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_r", "role": "BUSER" }} , 
 	{ "name": "in_w", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_w", "role": "default" }} , 
 	{ "name": "out_linear4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_linear4", "role": "dout" }} , 
 	{ "name": "out_linear4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_linear4", "role": "empty_n" }} , 
 	{ "name": "out_linear4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_linear4", "role": "read" }} , 
 	{ "name": "out_mha8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_mha8", "role": "din" }} , 
 	{ "name": "out_mha8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mha8", "role": "full_n" }} , 
 	{ "name": "out_mha8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mha8", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_w_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_w", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "32", "33"],
		"CDFG" : "Out_linear_tiled",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "Out_r", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0", "Port" : "Out_r"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Port" : "out_linear4"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Port" : "out_mha8"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_h_0_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0", "Parent" : "0", "Child" : ["2", "3", "5"],
		"CDFG" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12",
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
			{"Name" : "Out_r", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_106", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "32", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.grp_burst_read_beats_1_ap_int_8_s_fu_106", "Parent" : "1",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Parent" : "1", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.burst_reads_fifo_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "0", "Child" : ["7", "8", "11", "29"],
		"CDFG" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5288", "EstimateLatencyMax" : "5288",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67", "Port" : "out_linear4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76", "Port" : "out_mha8", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "32", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60", "Port" : "bias_h_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60", "Parent" : "6", "Child" : ["9", "10"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60.bias_h_0_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67", "Parent" : "6", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2",
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
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_linear4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U347", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U348", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U349", "Parent" : "11"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U350", "Parent" : "11"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U351", "Parent" : "11"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U352", "Parent" : "11"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U353", "Parent" : "11"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U354", "Parent" : "11"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U355", "Parent" : "11"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U356", "Parent" : "11"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U357", "Parent" : "11"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U358", "Parent" : "11"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U359", "Parent" : "11"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U360", "Parent" : "11"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U361", "Parent" : "11"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U362", "Parent" : "11"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76", "Parent" : "6", "Child" : ["30", "31"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_mha8_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76.mul_32s_11ns_43_1_1_U366", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_w_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Out_linear_tiled {
		Out_r {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		out_linear4 {Type I LastRead 1 FirstWrite -1}
		out_mha8 {Type O LastRead -1 FirstWrite 2}
		bias_h_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12 {
		Out_r {Type I LastRead 7 FirstWrite -1}
		W_ddr_tile {Type I LastRead 0 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	burst_read_beats_1_ap_int_8_s {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		W_ddr {Type I LastRead 0 FirstWrite -1}
		burst_reads2 {Type O LastRead -1 FirstWrite 8}}
	packer_to_packs_1_1_1_ap_int_8_s {
		burst_reads2 {Type I LastRead 2 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_s {
		out_linear4 {Type I LastRead 1 FirstWrite -1}
		out_mha8 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 16 FirstWrite -1}
		bias_h_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_h_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2 {
		C_tile_V {Type IO LastRead 10 FirstWrite 10}
		out_linear4 {Type I LastRead 1 FirstWrite -1}
		out_w1 {Type I LastRead 16 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		out_mha8 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_Out_r_AWVALID VALID 1 1 }  { m_axi_Out_r_AWREADY READY 0 1 }  { m_axi_Out_r_AWADDR ADDR 1 64 }  { m_axi_Out_r_AWID ID 1 1 }  { m_axi_Out_r_AWLEN SIZE 1 32 }  { m_axi_Out_r_AWSIZE BURST 1 3 }  { m_axi_Out_r_AWBURST LOCK 1 2 }  { m_axi_Out_r_AWLOCK CACHE 1 2 }  { m_axi_Out_r_AWCACHE PROT 1 4 }  { m_axi_Out_r_AWPROT QOS 1 3 }  { m_axi_Out_r_AWQOS REGION 1 4 }  { m_axi_Out_r_AWREGION USER 1 4 }  { m_axi_Out_r_AWUSER DATA 1 1 }  { m_axi_Out_r_WVALID VALID 1 1 }  { m_axi_Out_r_WREADY READY 0 1 }  { m_axi_Out_r_WDATA FIFONUM 1 8 }  { m_axi_Out_r_WSTRB STRB 1 1 }  { m_axi_Out_r_WLAST LAST 1 1 }  { m_axi_Out_r_WID ID 1 1 }  { m_axi_Out_r_WUSER DATA 1 1 }  { m_axi_Out_r_ARVALID VALID 1 1 }  { m_axi_Out_r_ARREADY READY 0 1 }  { m_axi_Out_r_ARADDR ADDR 1 64 }  { m_axi_Out_r_ARID ID 1 1 }  { m_axi_Out_r_ARLEN SIZE 1 32 }  { m_axi_Out_r_ARSIZE BURST 1 3 }  { m_axi_Out_r_ARBURST LOCK 1 2 }  { m_axi_Out_r_ARLOCK CACHE 1 2 }  { m_axi_Out_r_ARCACHE PROT 1 4 }  { m_axi_Out_r_ARPROT QOS 1 3 }  { m_axi_Out_r_ARQOS REGION 1 4 }  { m_axi_Out_r_ARREGION USER 1 4 }  { m_axi_Out_r_ARUSER DATA 1 1 }  { m_axi_Out_r_RVALID VALID 0 1 }  { m_axi_Out_r_RREADY READY 1 1 }  { m_axi_Out_r_RDATA FIFONUM 0 8 }  { m_axi_Out_r_RLAST LAST 0 1 }  { m_axi_Out_r_RID ID 0 1 }  { m_axi_Out_r_RFIFONUM LEN 0 13 }  { m_axi_Out_r_RUSER DATA 0 1 }  { m_axi_Out_r_RRESP RESP 0 2 }  { m_axi_Out_r_BVALID VALID 0 1 }  { m_axi_Out_r_BREADY READY 1 1 }  { m_axi_Out_r_BRESP RESP 0 2 }  { m_axi_Out_r_BID ID 0 1 }  { m_axi_Out_r_BUSER DATA 0 1 } } }
	in_w { ap_none {  { in_w in_data 0 64 }  { in_w_ap_vld in_vld 0 1 } } }
	out_linear4 { ap_fifo {  { out_linear4_dout fifo_port_we 0 8 }  { out_linear4_empty_n fifo_status 0 1 }  { out_linear4_read fifo_data 1 1 } } }
	out_mha8 { ap_fifo {  { out_mha8_din fifo_port_we 1 8 }  { out_mha8_full_n fifo_status 0 1 }  { out_mha8_write fifo_data 1 1 } } }
}
