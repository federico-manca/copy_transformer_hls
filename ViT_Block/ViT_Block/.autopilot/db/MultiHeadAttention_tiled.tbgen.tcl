set moduleName MultiHeadAttention_tiled
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
set C_modelName {MultiHeadAttention_tiled}
set C_modelType { void 0 }
set C_modelArgList {
	{ Q int 8 regular {axi_master 0}  }
	{ in_q int 64 regular  }
	{ K int 8 regular {axi_master 0}  }
	{ in_k int 64 regular  }
	{ V int 8 regular {axi_master 0}  }
	{ in_v int 64 regular  }
	{ OUT_M int 8 regular {axi_master 0}  }
	{ in_o int 64 regular  }
	{ Q_in5 int 8 regular {fifo 0 volatile }  }
	{ K_in6 int 8 regular {fifo 0 volatile }  }
	{ V_in7 int 8 regular {fifo 0 volatile }  }
	{ out_mha8 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Q", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_q","offset": { "type": "dynamic","port_name": "in_q","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_q", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "K", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_k","offset": { "type": "dynamic","port_name": "in_k","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_k", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "V", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_v","offset": { "type": "dynamic","port_name": "in_v","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_v", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_M", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_o","offset": { "type": "dynamic","port_name": "in_o","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_o", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Q_in5", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "K_in6", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "V_in7", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_mha8", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 214
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
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
	{ in_q sc_in sc_lv 64 signal 1 } 
	{ m_axi_K_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_K_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_K_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_K_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_K_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_K_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_K_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_K_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_K_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_K_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_K_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_K_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_K_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_K_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_K_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_K_WDATA sc_out sc_lv 8 signal 2 } 
	{ m_axi_K_WSTRB sc_out sc_lv 1 signal 2 } 
	{ m_axi_K_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_K_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_K_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_K_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_K_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_K_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_K_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_K_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_K_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_K_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_K_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_K_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_K_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_K_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_K_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_K_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_K_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_K_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_K_RDATA sc_in sc_lv 8 signal 2 } 
	{ m_axi_K_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_K_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_K_RFIFONUM sc_in sc_lv 13 signal 2 } 
	{ m_axi_K_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_K_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_K_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_K_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_K_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_K_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_K_BUSER sc_in sc_lv 1 signal 2 } 
	{ in_k sc_in sc_lv 64 signal 3 } 
	{ m_axi_V_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_V_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_V_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_V_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_V_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_V_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_V_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_V_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_V_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_V_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_V_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_V_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_V_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_V_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_V_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_V_WDATA sc_out sc_lv 8 signal 4 } 
	{ m_axi_V_WSTRB sc_out sc_lv 1 signal 4 } 
	{ m_axi_V_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_V_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_V_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_V_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_V_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_V_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_V_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_V_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_V_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_V_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_V_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_V_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_V_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_V_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_V_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_V_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_V_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_V_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_V_RDATA sc_in sc_lv 8 signal 4 } 
	{ m_axi_V_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_V_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_V_RFIFONUM sc_in sc_lv 13 signal 4 } 
	{ m_axi_V_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_V_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_V_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_V_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_V_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_V_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_V_BUSER sc_in sc_lv 1 signal 4 } 
	{ in_v sc_in sc_lv 64 signal 5 } 
	{ m_axi_OUT_M_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_OUT_M_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_OUT_M_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_OUT_M_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_OUT_M_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_OUT_M_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_OUT_M_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_OUT_M_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_OUT_M_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_OUT_M_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_OUT_M_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_OUT_M_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_WDATA sc_out sc_lv 8 signal 6 } 
	{ m_axi_OUT_M_WSTRB sc_out sc_lv 1 signal 6 } 
	{ m_axi_OUT_M_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_OUT_M_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_OUT_M_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_OUT_M_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_OUT_M_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_OUT_M_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_OUT_M_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_OUT_M_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_OUT_M_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_OUT_M_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_OUT_M_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_OUT_M_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_OUT_M_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_OUT_M_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_RDATA sc_in sc_lv 8 signal 6 } 
	{ m_axi_OUT_M_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_OUT_M_RFIFONUM sc_in sc_lv 13 signal 6 } 
	{ m_axi_OUT_M_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_OUT_M_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_OUT_M_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_OUT_M_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_OUT_M_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_OUT_M_BUSER sc_in sc_lv 1 signal 6 } 
	{ in_o sc_in sc_lv 64 signal 7 } 
	{ Q_in5_dout sc_in sc_lv 8 signal 8 } 
	{ Q_in5_empty_n sc_in sc_logic 1 signal 8 } 
	{ Q_in5_read sc_out sc_logic 1 signal 8 } 
	{ K_in6_dout sc_in sc_lv 8 signal 9 } 
	{ K_in6_empty_n sc_in sc_logic 1 signal 9 } 
	{ K_in6_read sc_out sc_logic 1 signal 9 } 
	{ V_in7_dout sc_in sc_lv 8 signal 10 } 
	{ V_in7_empty_n sc_in sc_logic 1 signal 10 } 
	{ V_in7_read sc_out sc_logic 1 signal 10 } 
	{ out_mha8_din sc_out sc_lv 8 signal 11 } 
	{ out_mha8_full_n sc_in sc_logic 1 signal 11 } 
	{ out_mha8_write sc_out sc_logic 1 signal 11 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_q_ap_vld sc_in sc_logic 1 invld 1 } 
	{ in_k_ap_vld sc_in sc_logic 1 invld 3 } 
	{ in_v_ap_vld sc_in sc_logic 1 invld 5 } 
	{ in_o_ap_vld sc_in sc_logic 1 invld 7 } 
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
 	{ "name": "in_q", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_q", "role": "default" }} , 
 	{ "name": "m_axi_K_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "AWVALID" }} , 
 	{ "name": "m_axi_K_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "AWREADY" }} , 
 	{ "name": "m_axi_K_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "K", "role": "AWADDR" }} , 
 	{ "name": "m_axi_K_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "AWID" }} , 
 	{ "name": "m_axi_K_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K", "role": "AWLEN" }} , 
 	{ "name": "m_axi_K_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "K", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_K_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K", "role": "AWBURST" }} , 
 	{ "name": "m_axi_K_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_K_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "K", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_K_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "K", "role": "AWPROT" }} , 
 	{ "name": "m_axi_K_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "K", "role": "AWQOS" }} , 
 	{ "name": "m_axi_K_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "K", "role": "AWREGION" }} , 
 	{ "name": "m_axi_K_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "AWUSER" }} , 
 	{ "name": "m_axi_K_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "WVALID" }} , 
 	{ "name": "m_axi_K_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "WREADY" }} , 
 	{ "name": "m_axi_K_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "K", "role": "WDATA" }} , 
 	{ "name": "m_axi_K_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "WSTRB" }} , 
 	{ "name": "m_axi_K_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "WLAST" }} , 
 	{ "name": "m_axi_K_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "WID" }} , 
 	{ "name": "m_axi_K_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "WUSER" }} , 
 	{ "name": "m_axi_K_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "ARVALID" }} , 
 	{ "name": "m_axi_K_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "ARREADY" }} , 
 	{ "name": "m_axi_K_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "K", "role": "ARADDR" }} , 
 	{ "name": "m_axi_K_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "ARID" }} , 
 	{ "name": "m_axi_K_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K", "role": "ARLEN" }} , 
 	{ "name": "m_axi_K_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "K", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_K_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K", "role": "ARBURST" }} , 
 	{ "name": "m_axi_K_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_K_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "K", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_K_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "K", "role": "ARPROT" }} , 
 	{ "name": "m_axi_K_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "K", "role": "ARQOS" }} , 
 	{ "name": "m_axi_K_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "K", "role": "ARREGION" }} , 
 	{ "name": "m_axi_K_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "ARUSER" }} , 
 	{ "name": "m_axi_K_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "RVALID" }} , 
 	{ "name": "m_axi_K_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "RREADY" }} , 
 	{ "name": "m_axi_K_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "K", "role": "RDATA" }} , 
 	{ "name": "m_axi_K_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "RLAST" }} , 
 	{ "name": "m_axi_K_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "RID" }} , 
 	{ "name": "m_axi_K_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "K", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_K_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "RUSER" }} , 
 	{ "name": "m_axi_K_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K", "role": "RRESP" }} , 
 	{ "name": "m_axi_K_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "BVALID" }} , 
 	{ "name": "m_axi_K_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "BREADY" }} , 
 	{ "name": "m_axi_K_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "K", "role": "BRESP" }} , 
 	{ "name": "m_axi_K_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "BID" }} , 
 	{ "name": "m_axi_K_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "K", "role": "BUSER" }} , 
 	{ "name": "in_k", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_k", "role": "default" }} , 
 	{ "name": "m_axi_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "AWID" }} , 
 	{ "name": "m_axi_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "WVALID" }} , 
 	{ "name": "m_axi_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "WREADY" }} , 
 	{ "name": "m_axi_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "V", "role": "WDATA" }} , 
 	{ "name": "m_axi_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "WLAST" }} , 
 	{ "name": "m_axi_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "WID" }} , 
 	{ "name": "m_axi_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "WUSER" }} , 
 	{ "name": "m_axi_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "ARID" }} , 
 	{ "name": "m_axi_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "RVALID" }} , 
 	{ "name": "m_axi_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "RREADY" }} , 
 	{ "name": "m_axi_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "V", "role": "RDATA" }} , 
 	{ "name": "m_axi_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "RLAST" }} , 
 	{ "name": "m_axi_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "RID" }} , 
 	{ "name": "m_axi_V_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "V", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "RUSER" }} , 
 	{ "name": "m_axi_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "V", "role": "RRESP" }} , 
 	{ "name": "m_axi_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "BVALID" }} , 
 	{ "name": "m_axi_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "BREADY" }} , 
 	{ "name": "m_axi_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "V", "role": "BRESP" }} , 
 	{ "name": "m_axi_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "BID" }} , 
 	{ "name": "m_axi_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "BUSER" }} , 
 	{ "name": "in_v", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_v", "role": "default" }} , 
 	{ "name": "m_axi_OUT_M_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWVALID" }} , 
 	{ "name": "m_axi_OUT_M_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWREADY" }} , 
 	{ "name": "m_axi_OUT_M_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWADDR" }} , 
 	{ "name": "m_axi_OUT_M_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWID" }} , 
 	{ "name": "m_axi_OUT_M_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWLEN" }} , 
 	{ "name": "m_axi_OUT_M_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_OUT_M_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWBURST" }} , 
 	{ "name": "m_axi_OUT_M_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_OUT_M_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_OUT_M_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWPROT" }} , 
 	{ "name": "m_axi_OUT_M_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWQOS" }} , 
 	{ "name": "m_axi_OUT_M_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWREGION" }} , 
 	{ "name": "m_axi_OUT_M_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "AWUSER" }} , 
 	{ "name": "m_axi_OUT_M_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "WVALID" }} , 
 	{ "name": "m_axi_OUT_M_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "WREADY" }} , 
 	{ "name": "m_axi_OUT_M_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_M", "role": "WDATA" }} , 
 	{ "name": "m_axi_OUT_M_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "WSTRB" }} , 
 	{ "name": "m_axi_OUT_M_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "WLAST" }} , 
 	{ "name": "m_axi_OUT_M_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "WID" }} , 
 	{ "name": "m_axi_OUT_M_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "WUSER" }} , 
 	{ "name": "m_axi_OUT_M_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARVALID" }} , 
 	{ "name": "m_axi_OUT_M_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARREADY" }} , 
 	{ "name": "m_axi_OUT_M_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARADDR" }} , 
 	{ "name": "m_axi_OUT_M_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARID" }} , 
 	{ "name": "m_axi_OUT_M_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARLEN" }} , 
 	{ "name": "m_axi_OUT_M_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_OUT_M_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARBURST" }} , 
 	{ "name": "m_axi_OUT_M_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_OUT_M_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_OUT_M_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARPROT" }} , 
 	{ "name": "m_axi_OUT_M_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARQOS" }} , 
 	{ "name": "m_axi_OUT_M_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARREGION" }} , 
 	{ "name": "m_axi_OUT_M_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "ARUSER" }} , 
 	{ "name": "m_axi_OUT_M_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "RVALID" }} , 
 	{ "name": "m_axi_OUT_M_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "RREADY" }} , 
 	{ "name": "m_axi_OUT_M_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_M", "role": "RDATA" }} , 
 	{ "name": "m_axi_OUT_M_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "RLAST" }} , 
 	{ "name": "m_axi_OUT_M_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "RID" }} , 
 	{ "name": "m_axi_OUT_M_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "OUT_M", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_OUT_M_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "RUSER" }} , 
 	{ "name": "m_axi_OUT_M_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_M", "role": "RRESP" }} , 
 	{ "name": "m_axi_OUT_M_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "BVALID" }} , 
 	{ "name": "m_axi_OUT_M_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "BREADY" }} , 
 	{ "name": "m_axi_OUT_M_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_M", "role": "BRESP" }} , 
 	{ "name": "m_axi_OUT_M_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "BID" }} , 
 	{ "name": "m_axi_OUT_M_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_M", "role": "BUSER" }} , 
 	{ "name": "in_o", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_o", "role": "default" }} , 
 	{ "name": "Q_in5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Q_in5", "role": "dout" }} , 
 	{ "name": "Q_in5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_in5", "role": "empty_n" }} , 
 	{ "name": "Q_in5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_in5", "role": "read" }} , 
 	{ "name": "K_in6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "K_in6", "role": "dout" }} , 
 	{ "name": "K_in6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_in6", "role": "empty_n" }} , 
 	{ "name": "K_in6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_in6", "role": "read" }} , 
 	{ "name": "V_in7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "V_in7", "role": "dout" }} , 
 	{ "name": "V_in7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_in7", "role": "empty_n" }} , 
 	{ "name": "V_in7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_in7", "role": "read" }} , 
 	{ "name": "out_mha8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_mha8", "role": "din" }} , 
 	{ "name": "out_mha8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mha8", "role": "full_n" }} , 
 	{ "name": "out_mha8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mha8", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_q_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_q", "role": "ap_vld" }} , 
 	{ "name": "in_k_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_k", "role": "ap_vld" }} , 
 	{ "name": "in_v_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_v", "role": "ap_vld" }} , 
 	{ "name": "in_o_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_o", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "20", "39", "58", "60", "62", "64", "123", "144", "147", "175", "234", "255", "258", "286", "345", "366", "369", "397", "456", "477", "480", "508", "510", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580"],
		"CDFG" : "MultiHeadAttention_tiled",
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
			{"ID" : "1", "Name" : "Q_linear_tiled_U0"},
			{"ID" : "20", "Name" : "K_linear_tiled_U0"},
			{"ID" : "39", "Name" : "V_linear_tiled_U0"},
			{"ID" : "510", "Name" : "Out_linear_tiled_U0"}],
		"OutputProcess" : [
			{"ID" : "510", "Name" : "Out_linear_tiled_U0"}],
		"Port" : [
			{"Name" : "Q", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Q_linear_tiled_U0", "Port" : "Q"}]},
			{"Name" : "in_q", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "K_linear_tiled_U0", "Port" : "K"}]},
			{"Name" : "in_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "V_linear_tiled_U0", "Port" : "V"}]},
			{"Name" : "in_v", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_M", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "510", "SubInstance" : "Out_linear_tiled_U0", "Port" : "OUT_M"}]},
			{"Name" : "in_o", "Type" : "None", "Direction" : "I"},
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Q_linear_tiled_U0", "Port" : "Q_in5"}]},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "K_linear_tiled_U0", "Port" : "K_in6"}]},
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "V_linear_tiled_U0", "Port" : "V_in7"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "510", "SubInstance" : "Out_linear_tiled_U0", "Port" : "out_mha8"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Q_linear_tiled_U0", "Port" : "bias_q_0_V"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "K_linear_tiled_U0", "Port" : "bias_k_0_V"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "V_linear_tiled_U0", "Port" : "bias_v_0_V"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "SOFTMAX_tile_5_U0", "Port" : "exp_lut_V"},
					{"ID" : "123", "SubInstance" : "SOFTMAX_tile_U0", "Port" : "exp_lut_V"},
					{"ID" : "456", "SubInstance" : "SOFTMAX_tile_13_U0", "Port" : "exp_lut_V"},
					{"ID" : "345", "SubInstance" : "SOFTMAX_tile_9_U0", "Port" : "exp_lut_V"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "510", "SubInstance" : "Out_linear_tiled_U0", "Port" : "bias_h_0_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0", "Parent" : "0", "Child" : ["2", "7", "18", "19"],
		"CDFG" : "Q_linear_tiled",
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
			{"ID" : "2", "Name" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "Q", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0", "Port" : "Q"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0", "Port" : "Q_in5"}]},
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["58"], "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0", "Port" : "q_lin1"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_q_0_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0", "Parent" : "1", "Child" : ["3", "4", "6"],
		"CDFG" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_s",
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
					{"ID" : "3", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_112", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "18", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_112", "Parent" : "2",
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Parent" : "2", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.burst_reads_fifo_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "1", "Child" : ["8", "9", "12", "15"],
		"CDFG" : "Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "659482", "EstimateLatencyMax" : "659482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_in5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["58"], "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_96", "Port" : "q_lin1", "Inst_start_state" : "4", "Inst_end_state" : "7"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "18", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1_fu_103", "Port" : "out_w1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_89", "Port" : "bias_q_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_89", "Parent" : "7", "Child" : ["10", "11"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_89.bias_q_0_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_96", "Parent" : "7", "Child" : ["13", "14"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "195", "EstimateLatencyMax" : "195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "q_lin1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_96.mul_32s_8ns_40_1_1_U41", "Parent" : "12"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1_fu_103", "Parent" : "7", "Child" : ["16", "17"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "197", "EstimateLatencyMax" : "197",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lhs", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1540_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1_fu_103.mac_muladd_8s_8s_32s_32_4_1_U36", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.out_w_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "1"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0", "Parent" : "0", "Child" : ["21", "26", "37", "38"],
		"CDFG" : "K_linear_tiled",
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
			{"ID" : "21", "Name" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0"}],
		"OutputProcess" : [
			{"ID" : "26", "Name" : "Linear_Layer_4_U0"}],
		"Port" : [
			{"Name" : "K", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0", "Port" : "K"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Linear_Layer_4_U0", "Port" : "K_in6"}]},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["60"], "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Linear_Layer_4_U0", "Port" : "k_lin2"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Linear_Layer_4_U0", "Port" : "bias_k_0_V"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0", "Parent" : "20", "Child" : ["22", "23", "25"],
		"CDFG" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16",
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
			{"Name" : "K", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_112", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "37", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.grp_burst_read_beats_1_ap_int_8_s_fu_112", "Parent" : "21",
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
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Parent" : "21", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.burst_reads_fifo_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0", "Parent" : "20", "Child" : ["27", "28", "31", "34"],
		"CDFG" : "Linear_Layer_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "659482", "EstimateLatencyMax" : "659482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "21",
		"StartFifo" : "start_for_Linear_Layer_4_U0_U",
		"Port" : [
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_in6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["60"], "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17_fu_96", "Port" : "k_lin2", "Inst_start_state" : "4", "Inst_end_state" : "7"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "37", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9_fu_103", "Port" : "out_w1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2_fu_89", "Port" : "bias_k_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0.C_tile_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2_fu_89", "Parent" : "26", "Child" : ["29", "30"],
		"CDFG" : "Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2_fu_89.bias_k_0_V_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17_fu_96", "Parent" : "26", "Child" : ["32", "33"],
		"CDFG" : "Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "195", "EstimateLatencyMax" : "195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "k_lin2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17_fu_96.mul_32s_9ns_41_1_1_U65", "Parent" : "31"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9_fu_103", "Parent" : "26", "Child" : ["35", "36"],
		"CDFG" : "Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "197", "EstimateLatencyMax" : "197",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lhs", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1540_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9_fu_103.mac_muladd_8s_8s_32s_32_4_1_U61", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.out_w_U", "Parent" : "20"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.start_for_Linear_Layer_4_U0_U", "Parent" : "20"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0", "Parent" : "0", "Child" : ["40", "45", "56", "57"],
		"CDFG" : "V_linear_tiled",
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
			{"ID" : "40", "Name" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0"}],
		"OutputProcess" : [
			{"ID" : "45", "Name" : "Linear_Layer_3_U0"}],
		"Port" : [
			{"Name" : "V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0", "Port" : "V"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "Linear_Layer_3_U0", "Port" : "V_in7"}]},
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "Linear_Layer_3_U0", "Port" : "v_lin3"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "Linear_Layer_3_U0", "Port" : "bias_v_0_V"}]}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0", "Parent" : "39", "Child" : ["41", "42", "44"],
		"CDFG" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17",
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
			{"Name" : "V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_112", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["45"], "DependentChan" : "56", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.grp_burst_read_beats_1_ap_int_8_s_fu_112", "Parent" : "40",
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
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Parent" : "40", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.burst_reads_fifo_U", "Parent" : "40"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0", "Parent" : "39", "Child" : ["46", "47", "50", "53"],
		"CDFG" : "Linear_Layer_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "659482", "EstimateLatencyMax" : "659482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "40",
		"StartFifo" : "start_for_Linear_Layer_3_U0_U",
		"Port" : [
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_in7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17_fu_96", "Port" : "v_lin3", "Inst_start_state" : "4", "Inst_end_state" : "7"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["40"], "DependentChan" : "56", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9_fu_103", "Port" : "out_w1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2_fu_89", "Port" : "bias_v_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0.C_tile_V_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2_fu_89", "Parent" : "45", "Child" : ["48", "49"],
		"CDFG" : "Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2_fu_89.bias_v_0_V_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17_fu_96", "Parent" : "45", "Child" : ["51", "52"],
		"CDFG" : "Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "195", "EstimateLatencyMax" : "195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v_lin3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17_fu_96.mul_32s_9ns_41_1_1_U88", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9_fu_103", "Parent" : "45", "Child" : ["54", "55"],
		"CDFG" : "Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "197", "EstimateLatencyMax" : "197",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lhs", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1540_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9_fu_103.mac_muladd_8s_8s_32s_32_4_1_U84", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.out_w_U", "Parent" : "39"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.start_for_Linear_Layer_3_U0_U", "Parent" : "39"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.split_heads_U0", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "split_heads",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_split_heads_U0_U",
		"Port" : [
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1","7"], "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "q_lin1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["64","65"], "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["175","176"], "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["286","287"], "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["397","398"], "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.split_heads_U0.flow_control_loop_pipe_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.split_heads_2_U0", "Parent" : "0", "Child" : ["61"],
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
		"StartSource" : "20",
		"StartFifo" : "start_for_split_heads_2_U0_U",
		"Port" : [
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20","26"], "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k_lin2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["64","65"], "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["175","176"], "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["286","287"], "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["397","398"], "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.split_heads_2_U0.flow_control_loop_pipe_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.split_heads_3_U0", "Parent" : "0", "Child" : ["63"],
		"CDFG" : "split_heads_3",
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
		"StartSource" : "39",
		"StartFifo" : "start_for_split_heads_3_U0_U",
		"Port" : [
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39","45"], "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_lin3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["147","148"], "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["258","259"], "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["369","370"], "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["480","481"], "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.split_heads_3_U0.flow_control_loop_pipe_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0", "Parent" : "0", "Child" : ["65"],
		"CDFG" : "MM_tiled",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2861", "EstimateLatencyMax" : "2861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "58",
		"StartFifo" : "start_for_MM_tiled_U0_U",
		"InputProcess" : [
			{"ID" : "65", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0"}],
		"OutputProcess" : [
			{"ID" : "65", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0"}],
		"Port" : [
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["58"], "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0", "Port" : "Q_1_0"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0", "Port" : "K_1_0"}]},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["123"], "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0", "Port" : "A_0"}]}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0", "Parent" : "64", "Child" : ["66", "67", "68", "70", "72"],
		"CDFG" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2861", "EstimateLatencyMax" : "2861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["58"], "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["123"], "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.buff_K_V_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.tile_Q_V_0_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "65", "Child" : ["69"],
		"CDFG" : "MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "818", "EstimateLatencyMax" : "818",
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "65", "Child" : ["71"],
		"CDFG" : "MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
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
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "65", "Child" : ["73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122"],
		"CDFG" : "MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "65",
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
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U119", "Parent" : "72"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U120", "Parent" : "72"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U121", "Parent" : "72"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U122", "Parent" : "72"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U123", "Parent" : "72"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U124", "Parent" : "72"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U125", "Parent" : "72"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U126", "Parent" : "72"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U127", "Parent" : "72"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U128", "Parent" : "72"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U129", "Parent" : "72"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U130", "Parent" : "72"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U131", "Parent" : "72"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U132", "Parent" : "72"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U133", "Parent" : "72"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U134", "Parent" : "72"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U135", "Parent" : "72"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U136", "Parent" : "72"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U137", "Parent" : "72"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U138", "Parent" : "72"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U139", "Parent" : "72"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U140", "Parent" : "72"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U141", "Parent" : "72"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U142", "Parent" : "72"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U143", "Parent" : "72"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U144", "Parent" : "72"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U145", "Parent" : "72"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U146", "Parent" : "72"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U147", "Parent" : "72"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U148", "Parent" : "72"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U149", "Parent" : "72"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U150", "Parent" : "72"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U151", "Parent" : "72"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U152", "Parent" : "72"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U153", "Parent" : "72"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U154", "Parent" : "72"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U155", "Parent" : "72"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U156", "Parent" : "72"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U157", "Parent" : "72"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U158", "Parent" : "72"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U159", "Parent" : "72"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U160", "Parent" : "72"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U161", "Parent" : "72"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U162", "Parent" : "72"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U163", "Parent" : "72"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_18s_19_4_1_U164", "Parent" : "72"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_19s_20_4_1_U165", "Parent" : "72"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_20s_21_4_1_U166", "Parent" : "72"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_mul_21s_8ns_30_4_1_U167", "Parent" : "72"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0", "Parent" : "0", "Child" : ["124"],
		"CDFG" : "SOFTMAX_tile",
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
		"StartSource" : "64",
		"StartFifo" : "start_for_SOFTMAX_tile_U0_U",
		"Port" : [
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["64","65"], "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["144"], "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "123", "Child" : ["125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143"],
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
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "124"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "124"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "124"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "124"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "124"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "124"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "124"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "124"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "124"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "124"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "124"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "124"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "124"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U200", "Parent" : "124"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U201", "Parent" : "124"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U202", "Parent" : "124"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U203", "Parent" : "124"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0", "Parent" : "0", "Child" : ["145", "146"],
		"CDFG" : "requant_ap_int_8_ap_int_8_17_17_151241_16_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294", "EstimateLatencyMax" : "294",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "123",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0_U",
		"Port" : [
			{"Name" : "A_s_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["123"], "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["147","148"], "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0.mul_mul_8s_18ns_27_4_1_U210", "Parent" : "144"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0.flow_control_loop_pipe_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0", "Parent" : "0", "Child" : ["148"],
		"CDFG" : "MM1_tiled",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2368", "EstimateLatencyMax" : "2368",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "62",
		"StartFifo" : "start_for_MM1_tiled_U0_U",
		"InputProcess" : [
			{"ID" : "148", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0"}],
		"OutputProcess" : [
			{"ID" : "148", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0"}],
		"Port" : [
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["144"], "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0", "Port" : "A_sx_0"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0", "Port" : "V_1_0"}]},
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["508"], "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0", "Port" : "head_out_0"}]}]},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0", "Parent" : "147", "Child" : ["149", "150", "151", "153", "155"],
		"CDFG" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2368", "EstimateLatencyMax" : "2368",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["144"], "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["508"], "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.buff_B_V_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.tile_A_V_0_U", "Parent" : "148"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "148", "Child" : ["152"],
		"CDFG" : "MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "818", "EstimateLatencyMax" : "818",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "V_1_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "load_B_VITIS_LOOP_1796_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "148", "Child" : ["154"],
		"CDFG" : "MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5",
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
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_sx_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tile_A_V_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1818_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "148", "Child" : ["156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174"],
		"CDFG" : "MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59", "EstimateLatencyMax" : "59",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln186", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_100", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_101", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_102", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_104", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_106", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_108", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_110", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_112", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_114", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_118", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_120", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_122", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_124", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_126", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_128", "Type" : "None", "Direction" : "I"},
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "head_out_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1831_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U218", "Parent" : "155"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U219", "Parent" : "155"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U220", "Parent" : "155"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U221", "Parent" : "155"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U222", "Parent" : "155"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U223", "Parent" : "155"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U224", "Parent" : "155"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U225", "Parent" : "155"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U226", "Parent" : "155"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U227", "Parent" : "155"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U228", "Parent" : "155"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U229", "Parent" : "155"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U230", "Parent" : "155"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U231", "Parent" : "155"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U232", "Parent" : "155"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U233", "Parent" : "155"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U234", "Parent" : "155"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U235", "Parent" : "155"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "155"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0", "Parent" : "0", "Child" : ["176"],
		"CDFG" : "MM_tiled_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2861", "EstimateLatencyMax" : "2861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "58",
		"StartFifo" : "start_for_MM_tiled_4_U0_U",
		"InputProcess" : [
			{"ID" : "176", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0"}],
		"OutputProcess" : [
			{"ID" : "176", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0"}],
		"Port" : [
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["58"], "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0", "Port" : "Q_1_1"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0", "Port" : "K_1_1"}]},
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["234"], "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0", "Port" : "A_1"}]}]},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0", "Parent" : "175", "Child" : ["177", "178", "179", "181", "183"],
		"CDFG" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2861", "EstimateLatencyMax" : "2861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["58"], "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["234"], "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.buff_K_V_U", "Parent" : "176"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.tile_Q_V_0_U", "Parent" : "176"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "176", "Child" : ["180"],
		"CDFG" : "MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "818", "EstimateLatencyMax" : "818",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_K_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "K_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1656_1_VITIS_LOOP_1657_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "176", "Child" : ["182"],
		"CDFG" : "MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tile_Q_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Q_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1682_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "176", "Child" : ["184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233"],
		"CDFG" : "MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "65",
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
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "A_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1701_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U268", "Parent" : "183"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U269", "Parent" : "183"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U270", "Parent" : "183"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U271", "Parent" : "183"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U272", "Parent" : "183"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U273", "Parent" : "183"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U274", "Parent" : "183"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U275", "Parent" : "183"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U276", "Parent" : "183"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U277", "Parent" : "183"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U278", "Parent" : "183"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U279", "Parent" : "183"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U280", "Parent" : "183"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U281", "Parent" : "183"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U282", "Parent" : "183"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U283", "Parent" : "183"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U284", "Parent" : "183"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U285", "Parent" : "183"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U286", "Parent" : "183"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U287", "Parent" : "183"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U288", "Parent" : "183"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U289", "Parent" : "183"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U290", "Parent" : "183"},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U291", "Parent" : "183"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U292", "Parent" : "183"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U293", "Parent" : "183"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U294", "Parent" : "183"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U295", "Parent" : "183"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U296", "Parent" : "183"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U297", "Parent" : "183"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U298", "Parent" : "183"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U299", "Parent" : "183"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U300", "Parent" : "183"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U301", "Parent" : "183"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U302", "Parent" : "183"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U303", "Parent" : "183"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U304", "Parent" : "183"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U305", "Parent" : "183"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U306", "Parent" : "183"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U307", "Parent" : "183"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U308", "Parent" : "183"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U309", "Parent" : "183"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U310", "Parent" : "183"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U311", "Parent" : "183"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U312", "Parent" : "183"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_18s_19_4_1_U313", "Parent" : "183"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_19s_20_4_1_U314", "Parent" : "183"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_20s_21_4_1_U315", "Parent" : "183"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_mul_21s_8ns_30_4_1_U316", "Parent" : "183"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "183"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0", "Parent" : "0", "Child" : ["235"],
		"CDFG" : "SOFTMAX_tile_5",
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
		"StartSource" : "175",
		"StartFifo" : "start_for_SOFTMAX_tile_5_U0_U",
		"Port" : [
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["175","176"], "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["255"], "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "234", "Child" : ["236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254"],
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
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "235"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "235"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "235"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "235"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "235"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "235"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "235"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "235"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "235"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "235"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "235"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "235"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "235"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U200", "Parent" : "235"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U201", "Parent" : "235"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U202", "Parent" : "235"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U203", "Parent" : "235"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "235"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0", "Parent" : "0", "Child" : ["256", "257"],
		"CDFG" : "requant_ap_int_8_ap_int_8_17_17_151241_16_1_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294", "EstimateLatencyMax" : "294",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "234",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0_U",
		"Port" : [
			{"Name" : "A_s_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["234"], "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["258","259"], "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0.mul_mul_8s_18ns_27_4_1_U330", "Parent" : "255"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0.flow_control_loop_pipe_U", "Parent" : "255"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0", "Parent" : "0", "Child" : ["259"],
		"CDFG" : "MM1_tiled_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2368", "EstimateLatencyMax" : "2368",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "62",
		"StartFifo" : "start_for_MM1_tiled_7_U0_U",
		"InputProcess" : [
			{"ID" : "259", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0"}],
		"OutputProcess" : [
			{"ID" : "259", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0"}],
		"Port" : [
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["255"], "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0", "Port" : "A_sx_1"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0", "Port" : "V_1_1"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["508"], "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0", "Port" : "head_out_1"}]}]},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0", "Parent" : "258", "Child" : ["260", "261", "262", "264", "266"],
		"CDFG" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2368", "EstimateLatencyMax" : "2368",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["255"], "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["508"], "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "266", "SubInstance" : "grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.buff_B_V_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.tile_A_V_0_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "259", "Child" : ["263"],
		"CDFG" : "MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "818", "EstimateLatencyMax" : "818",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "V_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "load_B_VITIS_LOOP_1796_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "259", "Child" : ["265"],
		"CDFG" : "MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5",
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
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_sx_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tile_A_V_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1818_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "259", "Child" : ["267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285"],
		"CDFG" : "MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59", "EstimateLatencyMax" : "59",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln186", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_96", "Type" : "None", "Direction" : "I"},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "head_out_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1831_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U337", "Parent" : "266"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U338", "Parent" : "266"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U339", "Parent" : "266"},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U340", "Parent" : "266"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U341", "Parent" : "266"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U342", "Parent" : "266"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U343", "Parent" : "266"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U344", "Parent" : "266"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U345", "Parent" : "266"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U346", "Parent" : "266"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U347", "Parent" : "266"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U348", "Parent" : "266"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U349", "Parent" : "266"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U350", "Parent" : "266"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U351", "Parent" : "266"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U352", "Parent" : "266"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U353", "Parent" : "266"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U354", "Parent" : "266"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "266"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0", "Parent" : "0", "Child" : ["287"],
		"CDFG" : "MM_tiled_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2861", "EstimateLatencyMax" : "2861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "58",
		"StartFifo" : "start_for_MM_tiled_8_U0_U",
		"InputProcess" : [
			{"ID" : "287", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0"}],
		"OutputProcess" : [
			{"ID" : "287", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0"}],
		"Port" : [
			{"Name" : "Q_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["58"], "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0", "Port" : "Q_1_2"}]},
			{"Name" : "K_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0", "Port" : "K_1_2"}]},
			{"Name" : "A_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["345"], "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0", "Port" : "A_2"}]}]},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0", "Parent" : "286", "Child" : ["288", "289", "290", "292", "294"],
		"CDFG" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2861", "EstimateLatencyMax" : "2861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Q_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["58"], "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "538", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "290", "SubInstance" : "grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["345"], "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "294", "SubInstance" : "grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.buff_K_V_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.tile_Q_V_0_U", "Parent" : "287"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "287", "Child" : ["291"],
		"CDFG" : "MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "818", "EstimateLatencyMax" : "818",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_K_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "K_1_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "K_1_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1656_1_VITIS_LOOP_1657_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "287", "Child" : ["293"],
		"CDFG" : "MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tile_Q_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Q_1_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Q_1_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1682_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "287", "Child" : ["295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344"],
		"CDFG" : "MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "65",
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
			{"Name" : "A_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "A_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1701_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U385", "Parent" : "294"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U386", "Parent" : "294"},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U387", "Parent" : "294"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U388", "Parent" : "294"},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U389", "Parent" : "294"},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U390", "Parent" : "294"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U391", "Parent" : "294"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U392", "Parent" : "294"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U393", "Parent" : "294"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U394", "Parent" : "294"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U395", "Parent" : "294"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U396", "Parent" : "294"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U397", "Parent" : "294"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U398", "Parent" : "294"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U399", "Parent" : "294"},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U400", "Parent" : "294"},
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U401", "Parent" : "294"},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U402", "Parent" : "294"},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U403", "Parent" : "294"},
	{"ID" : "314", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U404", "Parent" : "294"},
	{"ID" : "315", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U405", "Parent" : "294"},
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U406", "Parent" : "294"},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U407", "Parent" : "294"},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U408", "Parent" : "294"},
	{"ID" : "319", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U409", "Parent" : "294"},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U410", "Parent" : "294"},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U411", "Parent" : "294"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U412", "Parent" : "294"},
	{"ID" : "323", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U413", "Parent" : "294"},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U414", "Parent" : "294"},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U415", "Parent" : "294"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U416", "Parent" : "294"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U417", "Parent" : "294"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U418", "Parent" : "294"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U419", "Parent" : "294"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U420", "Parent" : "294"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U421", "Parent" : "294"},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U422", "Parent" : "294"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U423", "Parent" : "294"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U424", "Parent" : "294"},
	{"ID" : "335", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U425", "Parent" : "294"},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U426", "Parent" : "294"},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U427", "Parent" : "294"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U428", "Parent" : "294"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U429", "Parent" : "294"},
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_18s_19_4_1_U430", "Parent" : "294"},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_19s_20_4_1_U431", "Parent" : "294"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_20s_21_4_1_U432", "Parent" : "294"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_mul_21s_8ns_30_4_1_U433", "Parent" : "294"},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "294"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0", "Parent" : "0", "Child" : ["346"],
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
		"StartSource" : "286",
		"StartFifo" : "start_for_SOFTMAX_tile_9_U0_U",
		"Port" : [
			{"Name" : "A_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["286","287"], "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "346", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["366"], "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "346", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "346", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "345", "Child" : ["347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365"],
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
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "346"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "346"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "346"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "346"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "346"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "346"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "346"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "346"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "346"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "346"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "346"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "346"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "346"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U200", "Parent" : "346"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U201", "Parent" : "346"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U202", "Parent" : "346"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U203", "Parent" : "346"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "346"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0", "Parent" : "0", "Child" : ["367", "368"],
		"CDFG" : "requant_ap_int_8_ap_int_8_17_17_151241_16_1_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294", "EstimateLatencyMax" : "294",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "345",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0_U",
		"Port" : [
			{"Name" : "A_s_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["345"], "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["369","370"], "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0.mul_mul_8s_18ns_27_4_1_U447", "Parent" : "366"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0.flow_control_loop_pipe_U", "Parent" : "366"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0", "Parent" : "0", "Child" : ["370"],
		"CDFG" : "MM1_tiled_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2368", "EstimateLatencyMax" : "2368",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "62",
		"StartFifo" : "start_for_MM1_tiled_11_U0_U",
		"InputProcess" : [
			{"ID" : "370", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0"}],
		"OutputProcess" : [
			{"ID" : "370", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0"}],
		"Port" : [
			{"Name" : "A_sx_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["366"], "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "370", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0", "Port" : "A_sx_2"}]},
			{"Name" : "V_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "370", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0", "Port" : "V_1_2"}]},
			{"Name" : "head_out_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["508"], "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "370", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0", "Port" : "head_out_2"}]}]},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0", "Parent" : "369", "Child" : ["371", "372", "373", "375", "377"],
		"CDFG" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2368", "EstimateLatencyMax" : "2368",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_sx_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["366"], "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "375", "SubInstance" : "grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["508"], "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "377", "SubInstance" : "grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_2", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.buff_B_V_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.tile_A_V_0_U", "Parent" : "370"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "370", "Child" : ["374"],
		"CDFG" : "MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "818", "EstimateLatencyMax" : "818",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "V_1_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "V_1_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "load_B_VITIS_LOOP_1796_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "370", "Child" : ["376"],
		"CDFG" : "MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5",
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
			{"Name" : "A_sx_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_sx_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tile_A_V_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1818_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "376", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "370", "Child" : ["378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396"],
		"CDFG" : "MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59", "EstimateLatencyMax" : "59",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln186", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "head_out_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "head_out_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1831_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "378", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U454", "Parent" : "377"},
	{"ID" : "379", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U455", "Parent" : "377"},
	{"ID" : "380", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U456", "Parent" : "377"},
	{"ID" : "381", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U457", "Parent" : "377"},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U458", "Parent" : "377"},
	{"ID" : "383", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U459", "Parent" : "377"},
	{"ID" : "384", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U460", "Parent" : "377"},
	{"ID" : "385", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U461", "Parent" : "377"},
	{"ID" : "386", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U462", "Parent" : "377"},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U463", "Parent" : "377"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U464", "Parent" : "377"},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U465", "Parent" : "377"},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U466", "Parent" : "377"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U467", "Parent" : "377"},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U468", "Parent" : "377"},
	{"ID" : "393", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U469", "Parent" : "377"},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U470", "Parent" : "377"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U471", "Parent" : "377"},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "377"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0", "Parent" : "0", "Child" : ["398"],
		"CDFG" : "MM_tiled_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2861", "EstimateLatencyMax" : "2861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "58",
		"StartFifo" : "start_for_MM_tiled_12_U0_U",
		"InputProcess" : [
			{"ID" : "398", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0"}],
		"OutputProcess" : [
			{"ID" : "398", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0"}],
		"Port" : [
			{"Name" : "Q_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["58"], "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "398", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0", "Port" : "Q_1_3"}]},
			{"Name" : "K_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "398", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0", "Port" : "K_1_3"}]},
			{"Name" : "A_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["456"], "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "398", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0", "Port" : "A_3"}]}]},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0", "Parent" : "397", "Child" : ["399", "400", "401", "403", "405"],
		"CDFG" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2861", "EstimateLatencyMax" : "2861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Q_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["58"], "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "403", "SubInstance" : "grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "539", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "401", "SubInstance" : "grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["456"], "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "405", "SubInstance" : "grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.buff_K_V_U", "Parent" : "398"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.tile_Q_V_0_U", "Parent" : "398"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "398", "Child" : ["402"],
		"CDFG" : "MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "818", "EstimateLatencyMax" : "818",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_K_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "K_1_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "K_1_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1656_1_VITIS_LOOP_1657_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "398", "Child" : ["404"],
		"CDFG" : "MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tile_Q_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Q_1_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Q_1_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1682_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "404", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "403"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "398", "Child" : ["406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455"],
		"CDFG" : "MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "65",
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
			{"Name" : "A_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "A_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1701_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "406", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U502", "Parent" : "405"},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U503", "Parent" : "405"},
	{"ID" : "408", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U504", "Parent" : "405"},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U505", "Parent" : "405"},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U506", "Parent" : "405"},
	{"ID" : "411", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U507", "Parent" : "405"},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U508", "Parent" : "405"},
	{"ID" : "413", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U509", "Parent" : "405"},
	{"ID" : "414", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U510", "Parent" : "405"},
	{"ID" : "415", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U511", "Parent" : "405"},
	{"ID" : "416", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U512", "Parent" : "405"},
	{"ID" : "417", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U513", "Parent" : "405"},
	{"ID" : "418", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U514", "Parent" : "405"},
	{"ID" : "419", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U515", "Parent" : "405"},
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U516", "Parent" : "405"},
	{"ID" : "421", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U517", "Parent" : "405"},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U518", "Parent" : "405"},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U519", "Parent" : "405"},
	{"ID" : "424", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U520", "Parent" : "405"},
	{"ID" : "425", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U521", "Parent" : "405"},
	{"ID" : "426", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U522", "Parent" : "405"},
	{"ID" : "427", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U523", "Parent" : "405"},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U524", "Parent" : "405"},
	{"ID" : "429", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U525", "Parent" : "405"},
	{"ID" : "430", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U526", "Parent" : "405"},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U527", "Parent" : "405"},
	{"ID" : "432", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U528", "Parent" : "405"},
	{"ID" : "433", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U529", "Parent" : "405"},
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U530", "Parent" : "405"},
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U531", "Parent" : "405"},
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U532", "Parent" : "405"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U533", "Parent" : "405"},
	{"ID" : "438", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U534", "Parent" : "405"},
	{"ID" : "439", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U535", "Parent" : "405"},
	{"ID" : "440", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U536", "Parent" : "405"},
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U537", "Parent" : "405"},
	{"ID" : "442", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U538", "Parent" : "405"},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U539", "Parent" : "405"},
	{"ID" : "444", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U540", "Parent" : "405"},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U541", "Parent" : "405"},
	{"ID" : "446", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U542", "Parent" : "405"},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U543", "Parent" : "405"},
	{"ID" : "448", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U544", "Parent" : "405"},
	{"ID" : "449", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U545", "Parent" : "405"},
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U546", "Parent" : "405"},
	{"ID" : "451", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_18s_19_4_1_U547", "Parent" : "405"},
	{"ID" : "452", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_19s_20_4_1_U548", "Parent" : "405"},
	{"ID" : "453", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_20s_21_4_1_U549", "Parent" : "405"},
	{"ID" : "454", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_mul_21s_8ns_30_4_1_U550", "Parent" : "405"},
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "405"},
	{"ID" : "456", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0", "Parent" : "0", "Child" : ["457"],
		"CDFG" : "SOFTMAX_tile_13",
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
		"StartSource" : "397",
		"StartFifo" : "start_for_SOFTMAX_tile_13_U0_U",
		"Port" : [
			{"Name" : "A_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["397","398"], "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "457", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["477"], "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "457", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "457", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "456", "Child" : ["458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476"],
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
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "457"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "457"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "457"},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "457"},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "457"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "457"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "457"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "457"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "457"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "457"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "457"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "457"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "457"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "457"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U200", "Parent" : "457"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U201", "Parent" : "457"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U202", "Parent" : "457"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U203", "Parent" : "457"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "457"},
	{"ID" : "477", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0", "Parent" : "0", "Child" : ["478", "479"],
		"CDFG" : "requant_ap_int_8_ap_int_8_17_17_151241_16_1_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294", "EstimateLatencyMax" : "294",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "456",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0_U",
		"Port" : [
			{"Name" : "A_s_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["456"], "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["480","481"], "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0.mul_mul_8s_18ns_27_4_1_U564", "Parent" : "477"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0.flow_control_loop_pipe_U", "Parent" : "477"},
	{"ID" : "480", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0", "Parent" : "0", "Child" : ["481"],
		"CDFG" : "MM1_tiled_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2368", "EstimateLatencyMax" : "2368",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "62",
		"StartFifo" : "start_for_MM1_tiled_15_U0_U",
		"InputProcess" : [
			{"ID" : "481", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0"}],
		"OutputProcess" : [
			{"ID" : "481", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0"}],
		"Port" : [
			{"Name" : "A_sx_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["477"], "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "481", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0", "Port" : "A_sx_3"}]},
			{"Name" : "V_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "481", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0", "Port" : "V_1_3"}]},
			{"Name" : "head_out_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["508"], "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "481", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0", "Port" : "head_out_3"}]}]},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0", "Parent" : "480", "Child" : ["482", "483", "484", "486", "488"],
		"CDFG" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2368", "EstimateLatencyMax" : "2368",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_sx_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["477"], "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "486", "SubInstance" : "grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "484", "SubInstance" : "grp_MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["508"], "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "488", "SubInstance" : "grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_3", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.buff_B_V_U", "Parent" : "481"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.tile_A_V_0_U", "Parent" : "481"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "481", "Child" : ["485"],
		"CDFG" : "MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "818", "EstimateLatencyMax" : "818",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "V_1_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "V_1_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "load_B_VITIS_LOOP_1796_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "485", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "484"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "481", "Child" : ["487"],
		"CDFG" : "MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5",
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
			{"Name" : "A_sx_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_sx_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tile_A_V_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1818_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "487", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "486"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "481", "Child" : ["489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507"],
		"CDFG" : "MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59", "EstimateLatencyMax" : "59",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln186", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "head_out_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "head_out_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1831_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "489", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U571", "Parent" : "488"},
	{"ID" : "490", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U572", "Parent" : "488"},
	{"ID" : "491", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U573", "Parent" : "488"},
	{"ID" : "492", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U574", "Parent" : "488"},
	{"ID" : "493", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U575", "Parent" : "488"},
	{"ID" : "494", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U576", "Parent" : "488"},
	{"ID" : "495", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U577", "Parent" : "488"},
	{"ID" : "496", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U578", "Parent" : "488"},
	{"ID" : "497", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U579", "Parent" : "488"},
	{"ID" : "498", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U580", "Parent" : "488"},
	{"ID" : "499", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U581", "Parent" : "488"},
	{"ID" : "500", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U582", "Parent" : "488"},
	{"ID" : "501", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U583", "Parent" : "488"},
	{"ID" : "502", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U584", "Parent" : "488"},
	{"ID" : "503", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U585", "Parent" : "488"},
	{"ID" : "504", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U586", "Parent" : "488"},
	{"ID" : "505", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U587", "Parent" : "488"},
	{"ID" : "506", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U588", "Parent" : "488"},
	{"ID" : "507", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "488"},
	{"ID" : "508", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.merge_heads_U0", "Parent" : "0", "Child" : ["509"],
		"CDFG" : "merge_heads",
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
		"StartSource" : "147",
		"StartFifo" : "start_for_merge_heads_U0_U",
		"Port" : [
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["147","148"], "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["258","259"], "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "head_out_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["369","370"], "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "head_out_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["480","481"], "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["510","516"], "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_linear4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1_VITIS_LOOP_179_2_VITIS_LOOP_180_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_heads_U0.flow_control_loop_pipe_U", "Parent" : "508"},
	{"ID" : "510", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0", "Parent" : "0", "Child" : ["511", "516", "527", "528"],
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
			{"ID" : "511", "Name" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0"}],
		"OutputProcess" : [
			{"ID" : "516", "Name" : "Linear_Layer_2_U0"}],
		"Port" : [
			{"Name" : "OUT_M", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "511", "SubInstance" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0", "Port" : "OUT_M"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["508"], "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "516", "SubInstance" : "Linear_Layer_2_U0", "Port" : "out_linear4"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "516", "SubInstance" : "Linear_Layer_2_U0", "Port" : "out_mha8"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "516", "SubInstance" : "Linear_Layer_2_U0", "Port" : "bias_h_0_V"}]}]},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0", "Parent" : "510", "Child" : ["512", "513", "515"],
		"CDFG" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24",
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
			{"Name" : "OUT_M", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "512", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_112", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["516"], "DependentChan" : "527", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "513", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.grp_burst_read_beats_1_ap_int_8_s_fu_112", "Parent" : "511",
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
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Parent" : "511", "Child" : ["514"],
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
	{"ID" : "514", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "513"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.burst_reads_fifo_U", "Parent" : "511"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0", "Parent" : "510", "Child" : ["517", "518", "521", "524"],
		"CDFG" : "Linear_Layer_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "659482", "EstimateLatencyMax" : "659482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "511",
		"StartFifo" : "start_for_Linear_Layer_2_U0_U",
		"Port" : [
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["508"], "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_linear4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "521", "SubInstance" : "grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96", "Port" : "out_mha8", "Inst_start_state" : "4", "Inst_end_state" : "7"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["511"], "DependentChan" : "527", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "524", "SubInstance" : "grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9_fu_103", "Port" : "out_w1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "518", "SubInstance" : "grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2_fu_89", "Port" : "bias_h_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0.C_tile_V_U", "Parent" : "516"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2_fu_89", "Parent" : "516", "Child" : ["519", "520"],
		"CDFG" : "Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
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
	{"ID" : "519", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2_fu_89.bias_h_0_V_U", "Parent" : "518"},
	{"ID" : "520", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "518"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96", "Parent" : "516", "Child" : ["522", "523"],
		"CDFG" : "Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "195", "EstimateLatencyMax" : "195",
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
	{"ID" : "522", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96.mul_32s_9ns_41_1_1_U630", "Parent" : "521"},
	{"ID" : "523", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "521"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9_fu_103", "Parent" : "516", "Child" : ["525", "526"],
		"CDFG" : "Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "197", "EstimateLatencyMax" : "197",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_tile_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lhs", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1540_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "525", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9_fu_103.mac_muladd_8s_8s_32s_32_4_1_U626", "Parent" : "524"},
	{"ID" : "526", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "524"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.out_w_U", "Parent" : "510"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.start_for_Linear_Layer_2_U0_U", "Parent" : "510"},
	{"ID" : "529", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_lin_U", "Parent" : "0"},
	{"ID" : "530", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_lin_U", "Parent" : "0"},
	{"ID" : "531", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_lin_U", "Parent" : "0"},
	{"ID" : "532", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_1_0_U", "Parent" : "0"},
	{"ID" : "533", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_1_1_U", "Parent" : "0"},
	{"ID" : "534", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_1_2_U", "Parent" : "0"},
	{"ID" : "535", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_1_3_U", "Parent" : "0"},
	{"ID" : "536", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_1_0_U", "Parent" : "0"},
	{"ID" : "537", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_1_1_U", "Parent" : "0"},
	{"ID" : "538", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_1_2_U", "Parent" : "0"},
	{"ID" : "539", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_1_3_U", "Parent" : "0"},
	{"ID" : "540", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_1_0_U", "Parent" : "0"},
	{"ID" : "541", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_1_1_U", "Parent" : "0"},
	{"ID" : "542", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_1_2_U", "Parent" : "0"},
	{"ID" : "543", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_1_3_U", "Parent" : "0"},
	{"ID" : "544", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_0_U", "Parent" : "0"},
	{"ID" : "545", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_s_0_U", "Parent" : "0"},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_sx_0_U", "Parent" : "0"},
	{"ID" : "547", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_out_0_U", "Parent" : "0"},
	{"ID" : "548", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_1_U", "Parent" : "0"},
	{"ID" : "549", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_s_1_U", "Parent" : "0"},
	{"ID" : "550", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_sx_1_U", "Parent" : "0"},
	{"ID" : "551", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_out_1_U", "Parent" : "0"},
	{"ID" : "552", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_2_U", "Parent" : "0"},
	{"ID" : "553", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_s_2_U", "Parent" : "0"},
	{"ID" : "554", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_sx_2_U", "Parent" : "0"},
	{"ID" : "555", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_out_2_U", "Parent" : "0"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_3_U", "Parent" : "0"},
	{"ID" : "557", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_s_3_U", "Parent" : "0"},
	{"ID" : "558", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_sx_3_U", "Parent" : "0"},
	{"ID" : "559", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_out_3_U", "Parent" : "0"},
	{"ID" : "560", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_linear_U", "Parent" : "0"},
	{"ID" : "561", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_split_heads_U0_U", "Parent" : "0"},
	{"ID" : "562", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_split_heads_2_U0_U", "Parent" : "0"},
	{"ID" : "563", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_split_heads_3_U0_U", "Parent" : "0"},
	{"ID" : "564", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM_tiled_U0_U", "Parent" : "0"},
	{"ID" : "565", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM_tiled_4_U0_U", "Parent" : "0"},
	{"ID" : "566", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM_tiled_8_U0_U", "Parent" : "0"},
	{"ID" : "567", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM_tiled_12_U0_U", "Parent" : "0"},
	{"ID" : "568", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM1_tiled_U0_U", "Parent" : "0"},
	{"ID" : "569", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM1_tiled_7_U0_U", "Parent" : "0"},
	{"ID" : "570", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM1_tiled_11_U0_U", "Parent" : "0"},
	{"ID" : "571", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM1_tiled_15_U0_U", "Parent" : "0"},
	{"ID" : "572", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_SOFTMAX_tile_U0_U", "Parent" : "0"},
	{"ID" : "573", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0_U", "Parent" : "0"},
	{"ID" : "574", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_merge_heads_U0_U", "Parent" : "0"},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_SOFTMAX_tile_5_U0_U", "Parent" : "0"},
	{"ID" : "576", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0_U", "Parent" : "0"},
	{"ID" : "577", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_SOFTMAX_tile_9_U0_U", "Parent" : "0"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0_U", "Parent" : "0"},
	{"ID" : "579", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_SOFTMAX_tile_13_U0_U", "Parent" : "0"},
	{"ID" : "580", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiHeadAttention_tiled {
		Q {Type I LastRead 7 FirstWrite -1}
		in_q {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead 7 FirstWrite -1}
		in_k {Type I LastRead 0 FirstWrite -1}
		V {Type I LastRead 7 FirstWrite -1}
		in_v {Type I LastRead 0 FirstWrite -1}
		OUT_M {Type I LastRead 7 FirstWrite -1}
		in_o {Type I LastRead 14 FirstWrite -1}
		Q_in5 {Type I LastRead 3 FirstWrite -1}
		K_in6 {Type I LastRead 3 FirstWrite -1}
		V_in7 {Type I LastRead 3 FirstWrite -1}
		out_mha8 {Type O LastRead -1 FirstWrite 2}
		bias_q_0_V {Type I LastRead -1 FirstWrite -1}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}
		bias_v_0_V {Type I LastRead -1 FirstWrite -1}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}
		bias_h_0_V {Type I LastRead -1 FirstWrite -1}}
	Q_linear_tiled {
		Q {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		Q_in5 {Type I LastRead 3 FirstWrite -1}
		q_lin1 {Type O LastRead -1 FirstWrite 2}
		bias_q_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_s {
		Q {Type I LastRead 7 FirstWrite -1}
		W_ddr_tile {Type I LastRead 0 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	burst_read_beats_1_ap_int_8_s {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		W_ddr {Type I LastRead 0 FirstWrite -1}
		burst_reads2 {Type O LastRead -1 FirstWrite 8}}
	packer_to_packs_1_1_1_ap_int_8_s {
		burst_reads2 {Type I LastRead 2 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_s {
		Q_in5 {Type I LastRead 3 FirstWrite -1}
		q_lin1 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		bias_q_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_q_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		q_lin1 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1 {
		C_tile_V {Type IO LastRead 2 FirstWrite 4}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		lhs {Type I LastRead 0 FirstWrite -1}}
	K_linear_tiled {
		K {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		K_in6 {Type I LastRead 3 FirstWrite -1}
		k_lin2 {Type O LastRead -1 FirstWrite 2}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16 {
		K {Type I LastRead 7 FirstWrite -1}
		W_ddr_tile {Type I LastRead 0 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	burst_read_beats_1_ap_int_8_s {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		W_ddr {Type I LastRead 0 FirstWrite -1}
		burst_reads2 {Type O LastRead -1 FirstWrite 8}}
	packer_to_packs_1_1_1_ap_int_8_s {
		burst_reads2 {Type I LastRead 2 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_4 {
		K_in6 {Type I LastRead 3 FirstWrite -1}
		k_lin2 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		k_lin2 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9 {
		C_tile_V {Type IO LastRead 2 FirstWrite 4}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		lhs {Type I LastRead 0 FirstWrite -1}}
	V_linear_tiled {
		V {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		V_in7 {Type I LastRead 3 FirstWrite -1}
		v_lin3 {Type O LastRead -1 FirstWrite 2}
		bias_v_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17 {
		V {Type I LastRead 7 FirstWrite -1}
		W_ddr_tile {Type I LastRead 0 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	burst_read_beats_1_ap_int_8_s {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		W_ddr {Type I LastRead 0 FirstWrite -1}
		burst_reads2 {Type O LastRead -1 FirstWrite 8}}
	packer_to_packs_1_1_1_ap_int_8_s {
		burst_reads2 {Type I LastRead 2 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_3 {
		V_in7 {Type I LastRead 3 FirstWrite -1}
		v_lin3 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		bias_v_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_v_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		v_lin3 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9 {
		C_tile_V {Type IO LastRead 2 FirstWrite 4}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		lhs {Type I LastRead 0 FirstWrite -1}}
	split_heads {
		q_lin1 {Type I LastRead 1 FirstWrite -1}
		Q_1_0 {Type O LastRead -1 FirstWrite 1}
		Q_1_1 {Type O LastRead -1 FirstWrite 1}
		Q_1_2 {Type O LastRead -1 FirstWrite 1}
		Q_1_3 {Type O LastRead -1 FirstWrite 1}}
	split_heads_2 {
		k_lin2 {Type I LastRead 1 FirstWrite -1}
		K_1_0 {Type O LastRead -1 FirstWrite 1}
		K_1_1 {Type O LastRead -1 FirstWrite 1}
		K_1_2 {Type O LastRead -1 FirstWrite 1}
		K_1_3 {Type O LastRead -1 FirstWrite 1}}
	split_heads_3 {
		v_lin3 {Type I LastRead 1 FirstWrite -1}
		V_1_0 {Type O LastRead -1 FirstWrite 1}
		V_1_1 {Type O LastRead -1 FirstWrite 1}
		V_1_2 {Type O LastRead -1 FirstWrite 1}
		V_1_3 {Type O LastRead -1 FirstWrite 1}}
	MM_tiled {
		Q_1_0 {Type I LastRead 1 FirstWrite -1}
		K_1_0 {Type I LastRead 1 FirstWrite -1}
		A_0 {Type O LastRead -1 FirstWrite 15}}
	MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_s {
		Q_1_0 {Type I LastRead 1 FirstWrite -1}
		K_1_0 {Type I LastRead 1 FirstWrite -1}
		A_0 {Type O LastRead -1 FirstWrite 15}}
	MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 {
		buff_K_V {Type O LastRead -1 FirstWrite 1}
		K_1_0 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6 {
		tile_Q_V_0 {Type O LastRead -1 FirstWrite 1}
		Q_1_0 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8 {
		tile_Q_V_0 {Type I LastRead 3 FirstWrite -1}
		buff_K_V {Type I LastRead 3 FirstWrite -1}
		A_0 {Type O LastRead -1 FirstWrite 15}}
	SOFTMAX_tile {
		A_0 {Type I LastRead 17 FirstWrite -1}
		A_s_0 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s {
		A_3 {Type I LastRead 17 FirstWrite -1}
		A_s_3 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	requant_ap_int_8_ap_int_8_17_17_151241_16_1_s {
		A_s_0 {Type I LastRead 1 FirstWrite -1}
		A_sx_0 {Type O LastRead -1 FirstWrite 4}}
	MM1_tiled {
		A_sx_0 {Type I LastRead 1 FirstWrite -1}
		V_1_0 {Type I LastRead 1 FirstWrite -1}
		head_out_0 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_s {
		A_sx_0 {Type I LastRead 1 FirstWrite -1}
		V_1_0 {Type I LastRead 1 FirstWrite -1}
		head_out_0 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1 {
		buff_B_V {Type O LastRead -1 FirstWrite 1}
		V_1_0 {Type I LastRead 1 FirstWrite -1}}
	MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5 {
		A_sx_0 {Type I LastRead 1 FirstWrite -1}
		tile_A_V_0 {Type O LastRead -1 FirstWrite 1}}
	MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6 {
		buff_B_V {Type I LastRead 1 FirstWrite -1}
		sext_ln186 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_100 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_101 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_102 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_104 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_106 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_108 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_110 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_112 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_114 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_116 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_118 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_120 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_122 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_124 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_126 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_128 {Type I LastRead 0 FirstWrite -1}
		head_out_0 {Type O LastRead -1 FirstWrite 10}}
	MM_tiled_4 {
		Q_1_1 {Type I LastRead 1 FirstWrite -1}
		K_1_1 {Type I LastRead 1 FirstWrite -1}
		A_1 {Type O LastRead -1 FirstWrite 15}}
	MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18 {
		Q_1_1 {Type I LastRead 1 FirstWrite -1}
		K_1_1 {Type I LastRead 1 FirstWrite -1}
		A_1 {Type O LastRead -1 FirstWrite 15}}
	MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 {
		buff_K_V {Type O LastRead -1 FirstWrite 1}
		K_1_1 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6 {
		tile_Q_V_0 {Type O LastRead -1 FirstWrite 1}
		Q_1_1 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8 {
		tile_Q_V_0 {Type I LastRead 3 FirstWrite -1}
		buff_K_V {Type I LastRead 3 FirstWrite -1}
		A_1 {Type O LastRead -1 FirstWrite 15}}
	SOFTMAX_tile_5 {
		A_1 {Type I LastRead 17 FirstWrite -1}
		A_s_1 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s {
		A_3 {Type I LastRead 17 FirstWrite -1}
		A_s_3 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	requant_ap_int_8_ap_int_8_17_17_151241_16_1_6 {
		A_s_1 {Type I LastRead 1 FirstWrite -1}
		A_sx_1 {Type O LastRead -1 FirstWrite 4}}
	MM1_tiled_7 {
		A_sx_1 {Type I LastRead 1 FirstWrite -1}
		V_1_1 {Type I LastRead 1 FirstWrite -1}
		head_out_1 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19 {
		A_sx_1 {Type I LastRead 1 FirstWrite -1}
		V_1_1 {Type I LastRead 1 FirstWrite -1}
		head_out_1 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1 {
		buff_B_V {Type O LastRead -1 FirstWrite 1}
		V_1_1 {Type I LastRead 1 FirstWrite -1}}
	MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5 {
		A_sx_1 {Type I LastRead 1 FirstWrite -1}
		tile_A_V_0 {Type O LastRead -1 FirstWrite 1}}
	MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6 {
		buff_B_V {Type I LastRead 1 FirstWrite -1}
		sext_ln186 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_67 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_68 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_70 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_72 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_74 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_76 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_78 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_80 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_82 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_84 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_86 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_88 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_90 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_92 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_94 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_96 {Type I LastRead 0 FirstWrite -1}
		head_out_1 {Type O LastRead -1 FirstWrite 10}}
	MM_tiled_8 {
		Q_1_2 {Type I LastRead 1 FirstWrite -1}
		K_1_2 {Type I LastRead 1 FirstWrite -1}
		A_2 {Type O LastRead -1 FirstWrite 15}}
	MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20 {
		Q_1_2 {Type I LastRead 1 FirstWrite -1}
		K_1_2 {Type I LastRead 1 FirstWrite -1}
		A_2 {Type O LastRead -1 FirstWrite 15}}
	MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 {
		buff_K_V {Type O LastRead -1 FirstWrite 1}
		K_1_2 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6 {
		tile_Q_V_0 {Type O LastRead -1 FirstWrite 1}
		Q_1_2 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8 {
		tile_Q_V_0 {Type I LastRead 3 FirstWrite -1}
		buff_K_V {Type I LastRead 3 FirstWrite -1}
		A_2 {Type O LastRead -1 FirstWrite 15}}
	SOFTMAX_tile_9 {
		A_2 {Type I LastRead 17 FirstWrite -1}
		A_s_2 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s {
		A_3 {Type I LastRead 17 FirstWrite -1}
		A_s_3 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	requant_ap_int_8_ap_int_8_17_17_151241_16_1_10 {
		A_s_2 {Type I LastRead 1 FirstWrite -1}
		A_sx_2 {Type O LastRead -1 FirstWrite 4}}
	MM1_tiled_11 {
		A_sx_2 {Type I LastRead 1 FirstWrite -1}
		V_1_2 {Type I LastRead 1 FirstWrite -1}
		head_out_2 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21 {
		A_sx_2 {Type I LastRead 1 FirstWrite -1}
		V_1_2 {Type I LastRead 1 FirstWrite -1}
		head_out_2 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1 {
		buff_B_V {Type O LastRead -1 FirstWrite 1}
		V_1_2 {Type I LastRead 1 FirstWrite -1}}
	MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5 {
		A_sx_2 {Type I LastRead 1 FirstWrite -1}
		tile_A_V_0 {Type O LastRead -1 FirstWrite 1}}
	MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6 {
		buff_B_V {Type I LastRead 1 FirstWrite -1}
		sext_ln186 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_34 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_36 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_38 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_40 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_42 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_44 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_46 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_48 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_50 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_52 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_54 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_56 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_58 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_60 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_62 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_64 {Type I LastRead 0 FirstWrite -1}
		head_out_2 {Type O LastRead -1 FirstWrite 10}}
	MM_tiled_12 {
		Q_1_3 {Type I LastRead 1 FirstWrite -1}
		K_1_3 {Type I LastRead 1 FirstWrite -1}
		A_3 {Type O LastRead -1 FirstWrite 15}}
	MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22 {
		Q_1_3 {Type I LastRead 1 FirstWrite -1}
		K_1_3 {Type I LastRead 1 FirstWrite -1}
		A_3 {Type O LastRead -1 FirstWrite 15}}
	MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 {
		buff_K_V {Type O LastRead -1 FirstWrite 1}
		K_1_3 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6 {
		tile_Q_V_0 {Type O LastRead -1 FirstWrite 1}
		Q_1_3 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8 {
		tile_Q_V_0 {Type I LastRead 3 FirstWrite -1}
		buff_K_V {Type I LastRead 3 FirstWrite -1}
		A_3 {Type O LastRead -1 FirstWrite 15}}
	SOFTMAX_tile_13 {
		A_3 {Type I LastRead 17 FirstWrite -1}
		A_s_3 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s {
		A_3 {Type I LastRead 17 FirstWrite -1}
		A_s_3 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	requant_ap_int_8_ap_int_8_17_17_151241_16_1_14 {
		A_s_3 {Type I LastRead 1 FirstWrite -1}
		A_sx_3 {Type O LastRead -1 FirstWrite 4}}
	MM1_tiled_15 {
		A_sx_3 {Type I LastRead 1 FirstWrite -1}
		V_1_3 {Type I LastRead 1 FirstWrite -1}
		head_out_3 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23 {
		A_sx_3 {Type I LastRead 1 FirstWrite -1}
		V_1_3 {Type I LastRead 1 FirstWrite -1}
		head_out_3 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1 {
		buff_B_V {Type O LastRead -1 FirstWrite 1}
		V_1_3 {Type I LastRead 1 FirstWrite -1}}
	MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5 {
		A_sx_3 {Type I LastRead 1 FirstWrite -1}
		tile_A_V_0 {Type O LastRead -1 FirstWrite 1}}
	MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6 {
		buff_B_V {Type I LastRead 1 FirstWrite -1}
		sext_ln186 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_18 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_20 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_22 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_24 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_26 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_28 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_30 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_32 {Type I LastRead 0 FirstWrite -1}
		head_out_3 {Type O LastRead -1 FirstWrite 10}}
	merge_heads {
		head_out_0 {Type I LastRead 1 FirstWrite -1}
		head_out_1 {Type I LastRead 1 FirstWrite -1}
		head_out_2 {Type I LastRead 1 FirstWrite -1}
		head_out_3 {Type I LastRead 1 FirstWrite -1}
		out_linear4 {Type O LastRead -1 FirstWrite 1}}
	Out_linear_tiled {
		OUT_M {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		out_linear4 {Type I LastRead 3 FirstWrite -1}
		out_mha8 {Type O LastRead -1 FirstWrite 2}
		bias_h_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24 {
		OUT_M {Type I LastRead 7 FirstWrite -1}
		W_ddr_tile {Type I LastRead 0 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	burst_read_beats_1_ap_int_8_s {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		W_ddr {Type I LastRead 0 FirstWrite -1}
		burst_reads2 {Type O LastRead -1 FirstWrite 8}}
	packer_to_packs_1_1_1_ap_int_8_s {
		burst_reads2 {Type I LastRead 2 FirstWrite -1}
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_2 {
		out_linear4 {Type I LastRead 3 FirstWrite -1}
		out_mha8 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		bias_h_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_h_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		out_mha8 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9 {
		C_tile_V {Type IO LastRead 2 FirstWrite 4}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		lhs {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_Q_AWVALID VALID 1 1 }  { m_axi_Q_AWREADY READY 0 1 }  { m_axi_Q_AWADDR ADDR 1 64 }  { m_axi_Q_AWID ID 1 1 }  { m_axi_Q_AWLEN SIZE 1 32 }  { m_axi_Q_AWSIZE BURST 1 3 }  { m_axi_Q_AWBURST LOCK 1 2 }  { m_axi_Q_AWLOCK CACHE 1 2 }  { m_axi_Q_AWCACHE PROT 1 4 }  { m_axi_Q_AWPROT QOS 1 3 }  { m_axi_Q_AWQOS REGION 1 4 }  { m_axi_Q_AWREGION USER 1 4 }  { m_axi_Q_AWUSER DATA 1 1 }  { m_axi_Q_WVALID VALID 1 1 }  { m_axi_Q_WREADY READY 0 1 }  { m_axi_Q_WDATA FIFONUM 1 8 }  { m_axi_Q_WSTRB STRB 1 1 }  { m_axi_Q_WLAST LAST 1 1 }  { m_axi_Q_WID ID 1 1 }  { m_axi_Q_WUSER DATA 1 1 }  { m_axi_Q_ARVALID VALID 1 1 }  { m_axi_Q_ARREADY READY 0 1 }  { m_axi_Q_ARADDR ADDR 1 64 }  { m_axi_Q_ARID ID 1 1 }  { m_axi_Q_ARLEN SIZE 1 32 }  { m_axi_Q_ARSIZE BURST 1 3 }  { m_axi_Q_ARBURST LOCK 1 2 }  { m_axi_Q_ARLOCK CACHE 1 2 }  { m_axi_Q_ARCACHE PROT 1 4 }  { m_axi_Q_ARPROT QOS 1 3 }  { m_axi_Q_ARQOS REGION 1 4 }  { m_axi_Q_ARREGION USER 1 4 }  { m_axi_Q_ARUSER DATA 1 1 }  { m_axi_Q_RVALID VALID 0 1 }  { m_axi_Q_RREADY READY 1 1 }  { m_axi_Q_RDATA FIFONUM 0 8 }  { m_axi_Q_RLAST LAST 0 1 }  { m_axi_Q_RID ID 0 1 }  { m_axi_Q_RFIFONUM LEN 0 13 }  { m_axi_Q_RUSER DATA 0 1 }  { m_axi_Q_RRESP RESP 0 2 }  { m_axi_Q_BVALID VALID 0 1 }  { m_axi_Q_BREADY READY 1 1 }  { m_axi_Q_BRESP RESP 0 2 }  { m_axi_Q_BID ID 0 1 }  { m_axi_Q_BUSER DATA 0 1 } } }
	in_q { ap_none {  { in_q in_data 0 64 }  { in_q_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_K_AWVALID VALID 1 1 }  { m_axi_K_AWREADY READY 0 1 }  { m_axi_K_AWADDR ADDR 1 64 }  { m_axi_K_AWID ID 1 1 }  { m_axi_K_AWLEN SIZE 1 32 }  { m_axi_K_AWSIZE BURST 1 3 }  { m_axi_K_AWBURST LOCK 1 2 }  { m_axi_K_AWLOCK CACHE 1 2 }  { m_axi_K_AWCACHE PROT 1 4 }  { m_axi_K_AWPROT QOS 1 3 }  { m_axi_K_AWQOS REGION 1 4 }  { m_axi_K_AWREGION USER 1 4 }  { m_axi_K_AWUSER DATA 1 1 }  { m_axi_K_WVALID VALID 1 1 }  { m_axi_K_WREADY READY 0 1 }  { m_axi_K_WDATA FIFONUM 1 8 }  { m_axi_K_WSTRB STRB 1 1 }  { m_axi_K_WLAST LAST 1 1 }  { m_axi_K_WID ID 1 1 }  { m_axi_K_WUSER DATA 1 1 }  { m_axi_K_ARVALID VALID 1 1 }  { m_axi_K_ARREADY READY 0 1 }  { m_axi_K_ARADDR ADDR 1 64 }  { m_axi_K_ARID ID 1 1 }  { m_axi_K_ARLEN SIZE 1 32 }  { m_axi_K_ARSIZE BURST 1 3 }  { m_axi_K_ARBURST LOCK 1 2 }  { m_axi_K_ARLOCK CACHE 1 2 }  { m_axi_K_ARCACHE PROT 1 4 }  { m_axi_K_ARPROT QOS 1 3 }  { m_axi_K_ARQOS REGION 1 4 }  { m_axi_K_ARREGION USER 1 4 }  { m_axi_K_ARUSER DATA 1 1 }  { m_axi_K_RVALID VALID 0 1 }  { m_axi_K_RREADY READY 1 1 }  { m_axi_K_RDATA FIFONUM 0 8 }  { m_axi_K_RLAST LAST 0 1 }  { m_axi_K_RID ID 0 1 }  { m_axi_K_RFIFONUM LEN 0 13 }  { m_axi_K_RUSER DATA 0 1 }  { m_axi_K_RRESP RESP 0 2 }  { m_axi_K_BVALID VALID 0 1 }  { m_axi_K_BREADY READY 1 1 }  { m_axi_K_BRESP RESP 0 2 }  { m_axi_K_BID ID 0 1 }  { m_axi_K_BUSER DATA 0 1 } } }
	in_k { ap_none {  { in_k in_data 0 64 }  { in_k_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_V_AWVALID VALID 1 1 }  { m_axi_V_AWREADY READY 0 1 }  { m_axi_V_AWADDR ADDR 1 64 }  { m_axi_V_AWID ID 1 1 }  { m_axi_V_AWLEN SIZE 1 32 }  { m_axi_V_AWSIZE BURST 1 3 }  { m_axi_V_AWBURST LOCK 1 2 }  { m_axi_V_AWLOCK CACHE 1 2 }  { m_axi_V_AWCACHE PROT 1 4 }  { m_axi_V_AWPROT QOS 1 3 }  { m_axi_V_AWQOS REGION 1 4 }  { m_axi_V_AWREGION USER 1 4 }  { m_axi_V_AWUSER DATA 1 1 }  { m_axi_V_WVALID VALID 1 1 }  { m_axi_V_WREADY READY 0 1 }  { m_axi_V_WDATA FIFONUM 1 8 }  { m_axi_V_WSTRB STRB 1 1 }  { m_axi_V_WLAST LAST 1 1 }  { m_axi_V_WID ID 1 1 }  { m_axi_V_WUSER DATA 1 1 }  { m_axi_V_ARVALID VALID 1 1 }  { m_axi_V_ARREADY READY 0 1 }  { m_axi_V_ARADDR ADDR 1 64 }  { m_axi_V_ARID ID 1 1 }  { m_axi_V_ARLEN SIZE 1 32 }  { m_axi_V_ARSIZE BURST 1 3 }  { m_axi_V_ARBURST LOCK 1 2 }  { m_axi_V_ARLOCK CACHE 1 2 }  { m_axi_V_ARCACHE PROT 1 4 }  { m_axi_V_ARPROT QOS 1 3 }  { m_axi_V_ARQOS REGION 1 4 }  { m_axi_V_ARREGION USER 1 4 }  { m_axi_V_ARUSER DATA 1 1 }  { m_axi_V_RVALID VALID 0 1 }  { m_axi_V_RREADY READY 1 1 }  { m_axi_V_RDATA FIFONUM 0 8 }  { m_axi_V_RLAST LAST 0 1 }  { m_axi_V_RID ID 0 1 }  { m_axi_V_RFIFONUM LEN 0 13 }  { m_axi_V_RUSER DATA 0 1 }  { m_axi_V_RRESP RESP 0 2 }  { m_axi_V_BVALID VALID 0 1 }  { m_axi_V_BREADY READY 1 1 }  { m_axi_V_BRESP RESP 0 2 }  { m_axi_V_BID ID 0 1 }  { m_axi_V_BUSER DATA 0 1 } } }
	in_v { ap_none {  { in_v in_data 0 64 }  { in_v_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_OUT_M_AWVALID VALID 1 1 }  { m_axi_OUT_M_AWREADY READY 0 1 }  { m_axi_OUT_M_AWADDR ADDR 1 64 }  { m_axi_OUT_M_AWID ID 1 1 }  { m_axi_OUT_M_AWLEN SIZE 1 32 }  { m_axi_OUT_M_AWSIZE BURST 1 3 }  { m_axi_OUT_M_AWBURST LOCK 1 2 }  { m_axi_OUT_M_AWLOCK CACHE 1 2 }  { m_axi_OUT_M_AWCACHE PROT 1 4 }  { m_axi_OUT_M_AWPROT QOS 1 3 }  { m_axi_OUT_M_AWQOS REGION 1 4 }  { m_axi_OUT_M_AWREGION USER 1 4 }  { m_axi_OUT_M_AWUSER DATA 1 1 }  { m_axi_OUT_M_WVALID VALID 1 1 }  { m_axi_OUT_M_WREADY READY 0 1 }  { m_axi_OUT_M_WDATA FIFONUM 1 8 }  { m_axi_OUT_M_WSTRB STRB 1 1 }  { m_axi_OUT_M_WLAST LAST 1 1 }  { m_axi_OUT_M_WID ID 1 1 }  { m_axi_OUT_M_WUSER DATA 1 1 }  { m_axi_OUT_M_ARVALID VALID 1 1 }  { m_axi_OUT_M_ARREADY READY 0 1 }  { m_axi_OUT_M_ARADDR ADDR 1 64 }  { m_axi_OUT_M_ARID ID 1 1 }  { m_axi_OUT_M_ARLEN SIZE 1 32 }  { m_axi_OUT_M_ARSIZE BURST 1 3 }  { m_axi_OUT_M_ARBURST LOCK 1 2 }  { m_axi_OUT_M_ARLOCK CACHE 1 2 }  { m_axi_OUT_M_ARCACHE PROT 1 4 }  { m_axi_OUT_M_ARPROT QOS 1 3 }  { m_axi_OUT_M_ARQOS REGION 1 4 }  { m_axi_OUT_M_ARREGION USER 1 4 }  { m_axi_OUT_M_ARUSER DATA 1 1 }  { m_axi_OUT_M_RVALID VALID 0 1 }  { m_axi_OUT_M_RREADY READY 1 1 }  { m_axi_OUT_M_RDATA FIFONUM 0 8 }  { m_axi_OUT_M_RLAST LAST 0 1 }  { m_axi_OUT_M_RID ID 0 1 }  { m_axi_OUT_M_RFIFONUM LEN 0 13 }  { m_axi_OUT_M_RUSER DATA 0 1 }  { m_axi_OUT_M_RRESP RESP 0 2 }  { m_axi_OUT_M_BVALID VALID 0 1 }  { m_axi_OUT_M_BREADY READY 1 1 }  { m_axi_OUT_M_BRESP RESP 0 2 }  { m_axi_OUT_M_BID ID 0 1 }  { m_axi_OUT_M_BUSER DATA 0 1 } } }
	in_o { ap_none {  { in_o in_data 0 64 }  { in_o_ap_vld in_vld 0 1 } } }
	Q_in5 { ap_fifo {  { Q_in5_dout fifo_port_we 0 8 }  { Q_in5_empty_n fifo_status 0 1 }  { Q_in5_read fifo_data 1 1 } } }
	K_in6 { ap_fifo {  { K_in6_dout fifo_port_we 0 8 }  { K_in6_empty_n fifo_status 0 1 }  { K_in6_read fifo_data 1 1 } } }
	V_in7 { ap_fifo {  { V_in7_dout fifo_port_we 0 8 }  { V_in7_empty_n fifo_status 0 1 }  { V_in7_read fifo_data 1 1 } } }
	out_mha8 { ap_fifo {  { out_mha8_din fifo_port_we 1 8 }  { out_mha8_full_n fifo_status 0 1 }  { out_mha8_write fifo_data 1 1 } } }
}
