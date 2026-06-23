set moduleName MLP_tiled_oc
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
set C_modelName {MLP_tiled_oc}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 8 regular {axi_master 0}  }
	{ in_w_up int 64 regular  }
	{ gmem1 int 8 regular {axi_master 0}  }
	{ in_w_down int 64 regular  }
	{ norm_out_113 int 8 regular {fifo 0 volatile }  }
	{ mlp_out14 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_w_up","offset": { "type": "dynamic","port_name": "in_w_up","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_w_up", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_w_down","offset": { "type": "dynamic","port_name": "in_w_down","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_w_down", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "norm_out_113", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_out14", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 112
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 13 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ in_w_up sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 8 signal 2 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 13 signal 2 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 2 } 
	{ in_w_down sc_in sc_lv 64 signal 3 } 
	{ norm_out_113_dout sc_in sc_lv 8 signal 4 } 
	{ norm_out_113_empty_n sc_in sc_logic 1 signal 4 } 
	{ norm_out_113_read sc_out sc_logic 1 signal 4 } 
	{ mlp_out14_din sc_out sc_lv 8 signal 5 } 
	{ mlp_out14_full_n sc_in sc_logic 1 signal 5 } 
	{ mlp_out14_write sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_w_up_ap_vld sc_in sc_logic 1 invld 1 } 
	{ in_w_down_ap_vld sc_in sc_logic 1 invld 3 } 
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
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "in_w_up", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_w_up", "role": "default" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "gmem1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "in_w_down", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_w_down", "role": "default" }} , 
 	{ "name": "norm_out_113_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "norm_out_113", "role": "dout" }} , 
 	{ "name": "norm_out_113_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_out_113", "role": "empty_n" }} , 
 	{ "name": "norm_out_113_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_out_113", "role": "read" }} , 
 	{ "name": "mlp_out14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mlp_out14", "role": "din" }} , 
 	{ "name": "mlp_out14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out14", "role": "full_n" }} , 
 	{ "name": "mlp_out14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out14", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_w_up_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_w_up", "role": "ap_vld" }} , 
 	{ "name": "in_w_down_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_w_down", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "83", "85", "119", "120", "121"],
		"CDFG" : "MLP_tiled_oc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"ID" : "1", "Name" : "FC1_tiled_oc_2_U0"},
			{"ID" : "85", "Name" : "FC2_tiled_oc_2_U0"}],
		"OutputProcess" : [
			{"ID" : "85", "Name" : "FC2_tiled_oc_2_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "FC1_tiled_oc_2_U0", "Port" : "gmem0"}]},
			{"Name" : "in_w_up", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "FC2_tiled_oc_2_U0", "Port" : "gmem1"}]},
			{"Name" : "in_w_down", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "FC1_tiled_oc_2_U0", "Port" : "norm_out_113"}]},
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "FC2_tiled_oc_2_U0", "Port" : "mlp_out14"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "FC1_tiled_oc_2_U0", "Port" : "bias_1_0_V"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "FC2_tiled_oc_2_U0", "Port" : "bias_2_0_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0", "Parent" : "0", "Child" : ["2", "7", "81", "82"],
		"CDFG" : "FC1_tiled_oc_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"ID" : "2", "Name" : "WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0", "Port" : "gmem0"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0", "Port" : "norm_out_113"}]},
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["83"], "DependentChan" : "119", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0", "Port" : "fc11"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_1_0_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0", "Parent" : "1", "Child" : ["3", "4", "6"],
		"CDFG" : "WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_s",
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
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_114", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "81", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_114", "Parent" : "2",
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122", "Parent" : "2", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.burst_reads_fifo_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "1", "Child" : ["8", "9", "12", "78"],
		"CDFG" : "Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20384", "EstimateLatencyMax" : "20384",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67", "Port" : "norm_out_113", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["83"], "DependentChan" : "119", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76", "Port" : "fc11", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "81", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60", "Port" : "bias_1_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60", "Parent" : "7", "Child" : ["10", "11"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60.bias_1_0_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67", "Parent" : "7", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1059", "EstimateLatencyMax" : "1059",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "norm_out_113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage33", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage33_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U445", "Parent" : "12"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U446", "Parent" : "12"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U447", "Parent" : "12"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U448", "Parent" : "12"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U449", "Parent" : "12"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U450", "Parent" : "12"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U451", "Parent" : "12"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U452", "Parent" : "12"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U453", "Parent" : "12"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U454", "Parent" : "12"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U455", "Parent" : "12"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U456", "Parent" : "12"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U457", "Parent" : "12"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U458", "Parent" : "12"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U459", "Parent" : "12"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U460", "Parent" : "12"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U461", "Parent" : "12"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U462", "Parent" : "12"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U463", "Parent" : "12"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U464", "Parent" : "12"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U465", "Parent" : "12"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U466", "Parent" : "12"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U467", "Parent" : "12"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U468", "Parent" : "12"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U469", "Parent" : "12"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U470", "Parent" : "12"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U471", "Parent" : "12"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U472", "Parent" : "12"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U473", "Parent" : "12"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U474", "Parent" : "12"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U475", "Parent" : "12"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U476", "Parent" : "12"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U477", "Parent" : "12"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U478", "Parent" : "12"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U479", "Parent" : "12"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U480", "Parent" : "12"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U481", "Parent" : "12"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U482", "Parent" : "12"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U483", "Parent" : "12"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U484", "Parent" : "12"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U485", "Parent" : "12"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U486", "Parent" : "12"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U487", "Parent" : "12"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U488", "Parent" : "12"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U489", "Parent" : "12"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U490", "Parent" : "12"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U491", "Parent" : "12"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U492", "Parent" : "12"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U493", "Parent" : "12"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U494", "Parent" : "12"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U495", "Parent" : "12"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U496", "Parent" : "12"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U497", "Parent" : "12"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U498", "Parent" : "12"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U499", "Parent" : "12"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U500", "Parent" : "12"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U501", "Parent" : "12"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U502", "Parent" : "12"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U503", "Parent" : "12"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U504", "Parent" : "12"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U505", "Parent" : "12"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U506", "Parent" : "12"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U507", "Parent" : "12"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U508", "Parent" : "12"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76", "Parent" : "7", "Child" : ["79", "80"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fc11_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76.mul_32s_10ns_42_1_1_U512", "Parent" : "78"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.out_w_U", "Parent" : "1"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FC1_tiled_oc_2_U0.start_for_Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "1"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Relu_tiled_oc_U0", "Parent" : "0", "Child" : ["84"],
		"CDFG" : "Relu_tiled_oc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1090", "EstimateLatencyMax" : "1090",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_Relu_tiled_oc_U0_U",
		"Port" : [
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1","7"], "DependentChan" : "119", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fc11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "relu2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["85","91"], "DependentChan" : "120", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "relu2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_502_1_VITIS_LOOP_504_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Relu_tiled_oc_U0.flow_control_loop_pipe_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0", "Parent" : "0", "Child" : ["86", "91", "117", "118"],
		"CDFG" : "FC2_tiled_oc_2",
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
			{"ID" : "86", "Name" : "WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "91", "Name" : "Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0", "Port" : "gmem1"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["83"], "DependentChan" : "120", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0", "Port" : "relu2"}]},
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0", "Port" : "mlp_out14"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_2_0_V"}]}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0", "Parent" : "85", "Child" : ["87", "88", "90"],
		"CDFG" : "WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_s",
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
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_114", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["91"], "DependentChan" : "117", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_114", "Parent" : "86",
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
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122", "Parent" : "86", "Child" : ["89"],
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
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.burst_reads_fifo_U", "Parent" : "86"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "85", "Child" : ["92", "93", "96", "114"],
		"CDFG" : "Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18344", "EstimateLatencyMax" : "18344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "86",
		"StartFifo" : "start_for_Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "relu2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["83"], "DependentChan" : "120", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67", "Port" : "relu2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_76", "Port" : "mlp_out14", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["86"], "DependentChan" : "117", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_60", "Port" : "bias_2_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_60", "Parent" : "91", "Child" : ["94", "95"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1512_2",
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
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_60.bias_2_0_V_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67", "Parent" : "91", "Child" : ["97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1525_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1035", "EstimateLatencyMax" : "1035",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "relu2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "relu2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U533", "Parent" : "96"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U534", "Parent" : "96"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U535", "Parent" : "96"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U536", "Parent" : "96"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U537", "Parent" : "96"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U538", "Parent" : "96"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U539", "Parent" : "96"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U540", "Parent" : "96"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U541", "Parent" : "96"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U542", "Parent" : "96"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U543", "Parent" : "96"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U544", "Parent" : "96"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U545", "Parent" : "96"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U546", "Parent" : "96"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U547", "Parent" : "96"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U548", "Parent" : "96"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "96"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_76", "Parent" : "91", "Child" : ["115", "116"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1588_17",
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
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mlp_out14_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_76.mul_32s_11ns_43_1_1_U552", "Parent" : "114"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.out_w_U", "Parent" : "85"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FC2_tiled_oc_2_U0.start_for_Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "85"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Relu_tiled_oc_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP_tiled_oc {
		gmem0 {Type I LastRead 7 FirstWrite -1}
		in_w_up {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 7 FirstWrite -1}
		in_w_down {Type I LastRead 4 FirstWrite -1}
		norm_out_113 {Type I LastRead 1 FirstWrite -1}
		mlp_out14 {Type O LastRead -1 FirstWrite 2}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}
		bias_2_0_V {Type I LastRead -1 FirstWrite -1}}
	FC1_tiled_oc_2 {
		gmem0 {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		norm_out_113 {Type I LastRead 1 FirstWrite -1}
		fc11 {Type O LastRead -1 FirstWrite 2}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_s {
		gmem0 {Type I LastRead 7 FirstWrite -1}
		W_ddr_tile {Type I LastRead 0 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	burst_read_beats_1_ap_int_8_s {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		W_ddr {Type I LastRead 0 FirstWrite -1}
		burst_reads2 {Type O LastRead -1 FirstWrite 8}}
	packer_to_packs_1_1_1_ap_int_8_s {
		burst_reads2 {Type I LastRead 2 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_s {
		norm_out_113 {Type I LastRead 1 FirstWrite -1}
		fc11 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 64 FirstWrite -1}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1 {
		C_tile_V {Type IO LastRead 34 FirstWrite 34}
		norm_out_113 {Type I LastRead 1 FirstWrite -1}
		out_w1 {Type I LastRead 64 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		fc11 {Type O LastRead -1 FirstWrite 2}}
	Relu_tiled_oc {
		fc11 {Type I LastRead 1 FirstWrite -1}
		relu2 {Type O LastRead -1 FirstWrite 1}}
	FC2_tiled_oc_2 {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		relu2 {Type I LastRead 1 FirstWrite -1}
		mlp_out14 {Type O LastRead -1 FirstWrite 2}
		bias_2_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_s {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		W_ddr_tile {Type I LastRead 0 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	burst_read_beats_1_ap_int_8_s {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		W_ddr {Type I LastRead 0 FirstWrite -1}
		burst_reads2 {Type O LastRead -1 FirstWrite 8}}
	packer_to_packs_1_1_1_ap_int_8_s {
		burst_reads2 {Type I LastRead 2 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_s {
		relu2 {Type I LastRead 1 FirstWrite -1}
		mlp_out14 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 16 FirstWrite -1}
		bias_2_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1512_2 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_2_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1525_6 {
		C_tile_V {Type IO LastRead 10 FirstWrite 10}
		relu2 {Type I LastRead 1 FirstWrite -1}
		out_w1 {Type I LastRead 16 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1588_17 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		mlp_out14 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 8 }  { m_axi_gmem0_WSTRB STRB 1 1 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 8 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 13 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	in_w_up { ap_none {  { in_w_up in_data 0 64 }  { in_w_up_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 8 }  { m_axi_gmem1_WSTRB STRB 1 1 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 8 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 13 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	in_w_down { ap_none {  { in_w_down in_data 0 64 }  { in_w_down_ap_vld in_vld 0 1 } } }
	norm_out_113 { ap_fifo {  { norm_out_113_dout fifo_port_we 0 8 }  { norm_out_113_empty_n fifo_status 0 1 }  { norm_out_113_read fifo_data 1 1 } } }
	mlp_out14 { ap_fifo {  { mlp_out14_din fifo_port_we 1 8 }  { mlp_out14_full_n fifo_status 0 1 }  { mlp_out14_write fifo_data 1 1 } } }
}
