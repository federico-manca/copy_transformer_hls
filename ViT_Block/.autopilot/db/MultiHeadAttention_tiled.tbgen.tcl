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
	{ Out_r int 8 regular {axi_master 0}  }
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
 	{ "Name" : "Out_r", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_o","offset": { "type": "dynamic","port_name": "in_o","bundle": "control"},"direction": "READONLY"}]}]} , 
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
	{ m_axi_Out_r_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_Out_r_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_Out_r_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_Out_r_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_Out_r_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_Out_r_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_Out_r_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_Out_r_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_Out_r_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_Out_r_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_Out_r_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_Out_r_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_Out_r_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_Out_r_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_Out_r_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_Out_r_WDATA sc_out sc_lv 8 signal 6 } 
	{ m_axi_Out_r_WSTRB sc_out sc_lv 1 signal 6 } 
	{ m_axi_Out_r_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_Out_r_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_Out_r_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_Out_r_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_Out_r_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_Out_r_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_Out_r_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_Out_r_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_Out_r_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_Out_r_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_Out_r_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_Out_r_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_Out_r_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_Out_r_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_Out_r_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_Out_r_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_Out_r_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_Out_r_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_Out_r_RDATA sc_in sc_lv 8 signal 6 } 
	{ m_axi_Out_r_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_Out_r_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_Out_r_RFIFONUM sc_in sc_lv 13 signal 6 } 
	{ m_axi_Out_r_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_Out_r_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_Out_r_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_Out_r_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_Out_r_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_Out_r_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_Out_r_BUSER sc_in sc_lv 1 signal 6 } 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "35", "69", "103", "105", "107", "109", "128", "149", "152", "180", "199", "220", "223", "251", "253", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316"],
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
			{"ID" : "35", "Name" : "K_linear_tiled_U0"},
			{"ID" : "69", "Name" : "V_linear_tiled_U0"},
			{"ID" : "253", "Name" : "Out_linear_tiled_U0"}],
		"OutputProcess" : [
			{"ID" : "253", "Name" : "Out_linear_tiled_U0"}],
		"Port" : [
			{"Name" : "Q", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Q_linear_tiled_U0", "Port" : "Q"}]},
			{"Name" : "in_q", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "K_linear_tiled_U0", "Port" : "K"}]},
			{"Name" : "in_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "V_linear_tiled_U0", "Port" : "V"}]},
			{"Name" : "in_v", "Type" : "None", "Direction" : "I"},
			{"Name" : "Out_r", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Out_linear_tiled_U0", "Port" : "Out_r"}]},
			{"Name" : "in_o", "Type" : "None", "Direction" : "I"},
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Q_linear_tiled_U0", "Port" : "Q_in5"}]},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "K_linear_tiled_U0", "Port" : "K_in6"}]},
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "V_linear_tiled_U0", "Port" : "V_in7"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Out_linear_tiled_U0", "Port" : "out_mha8"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Q_linear_tiled_U0", "Port" : "bias_q_0_V"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "K_linear_tiled_U0", "Port" : "bias_k_0_V"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "V_linear_tiled_U0", "Port" : "bias_v_0_V"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "SOFTMAX_tile_U0", "Port" : "exp_lut_V"},
					{"ID" : "199", "SubInstance" : "SOFTMAX_tile_5_U0", "Port" : "exp_lut_V"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "Out_linear_tiled_U0", "Port" : "bias_h_0_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0", "Parent" : "0", "Child" : ["2", "7", "33", "34"],
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
			{"ID" : "2", "Name" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "Q", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0", "Port" : "Q"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0", "Port" : "Q_in5"}]},
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["103"], "DependentChan" : "287", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0", "Port" : "q_lin1"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_q_0_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0", "Parent" : "1", "Child" : ["3", "4", "6"],
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
					{"ID" : "3", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_106", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "33", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_106", "Parent" : "2",
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Parent" : "2", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.burst_reads_fifo_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "1", "Child" : ["8", "9", "12", "30"],
		"CDFG" : "Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_s",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67", "Port" : "Q_in5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["103"], "DependentChan" : "287", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4_fu_76", "Port" : "q_lin1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "33", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4_fu_60", "Port" : "bias_q_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4_fu_60", "Parent" : "7", "Child" : ["10", "11"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4",
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
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4_fu_60.bias_q_0_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67", "Parent" : "7", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4",
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
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Q_in5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U36", "Parent" : "12"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U37", "Parent" : "12"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U38", "Parent" : "12"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U39", "Parent" : "12"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U40", "Parent" : "12"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U41", "Parent" : "12"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U42", "Parent" : "12"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U43", "Parent" : "12"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U44", "Parent" : "12"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U45", "Parent" : "12"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U46", "Parent" : "12"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U47", "Parent" : "12"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U48", "Parent" : "12"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U49", "Parent" : "12"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U50", "Parent" : "12"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U51", "Parent" : "12"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4_fu_76", "Parent" : "7", "Child" : ["31", "32"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4",
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
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "q_lin1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4_fu_76.mul_32s_10ns_42_1_1_U56", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.out_w_U", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Q_linear_tiled_U0.start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "1"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0", "Parent" : "0", "Child" : ["36", "41", "67", "68"],
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
			{"ID" : "36", "Name" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0"}],
		"OutputProcess" : [
			{"ID" : "41", "Name" : "Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "K", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0", "Port" : "K"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0", "Port" : "K_in6"}]},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["105"], "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0", "Port" : "k_lin2"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_k_0_V"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0", "Parent" : "35", "Child" : ["37", "38", "40"],
		"CDFG" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8",
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
					{"ID" : "37", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_106", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "67", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_106", "Parent" : "36",
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
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Parent" : "36", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.burst_reads_fifo_U", "Parent" : "36"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "35", "Child" : ["42", "43", "46", "64"],
		"CDFG" : "Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_s",
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
		"StartSource" : "36",
		"StartFifo" : "start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67", "Port" : "K_in6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["105"], "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76", "Port" : "k_lin2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "67", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60", "Port" : "bias_k_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60", "Parent" : "41", "Child" : ["44", "45"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5",
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
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60.bias_k_0_V_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67", "Parent" : "41", "Child" : ["47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5",
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
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "K_in6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U76", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U77", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U78", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U79", "Parent" : "46"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U80", "Parent" : "46"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U81", "Parent" : "46"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U82", "Parent" : "46"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U83", "Parent" : "46"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U84", "Parent" : "46"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U85", "Parent" : "46"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U86", "Parent" : "46"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U87", "Parent" : "46"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U88", "Parent" : "46"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U89", "Parent" : "46"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U90", "Parent" : "46"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U91", "Parent" : "46"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76", "Parent" : "41", "Child" : ["65", "66"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5",
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
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "k_lin2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76.mul_32s_9ns_41_1_1_U95", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.out_w_U", "Parent" : "35"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.K_linear_tiled_U0.start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "35"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0", "Parent" : "0", "Child" : ["70", "75", "101", "102"],
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
			{"ID" : "70", "Name" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0"}],
		"OutputProcess" : [
			{"ID" : "75", "Name" : "Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0", "Port" : "V"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0", "Port" : "V_in7"}]},
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["107"], "DependentChan" : "289", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0", "Port" : "v_lin3"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_v_0_V"}]}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0", "Parent" : "69", "Child" : ["71", "72", "74"],
		"CDFG" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9",
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
					{"ID" : "71", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_106", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75"], "DependentChan" : "101", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.grp_burst_read_beats_1_ap_int_8_s_fu_106", "Parent" : "70",
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
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Parent" : "70", "Child" : ["73"],
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
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.burst_reads_fifo_U", "Parent" : "70"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "69", "Child" : ["76", "77", "80", "98"],
		"CDFG" : "Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_s",
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
		"StartSource" : "70",
		"StartFifo" : "start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67", "Port" : "V_in7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["107"], "DependentChan" : "289", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3_fu_76", "Port" : "v_lin3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["70"], "DependentChan" : "101", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3_fu_60", "Port" : "bias_v_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3_fu_60", "Parent" : "75", "Child" : ["78", "79"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3",
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
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3_fu_60.bias_v_0_V_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67", "Parent" : "75", "Child" : ["81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3",
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
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "V_in7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_w1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U114", "Parent" : "80"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U115", "Parent" : "80"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U116", "Parent" : "80"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U117", "Parent" : "80"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U118", "Parent" : "80"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U119", "Parent" : "80"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U120", "Parent" : "80"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U121", "Parent" : "80"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U122", "Parent" : "80"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U123", "Parent" : "80"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U124", "Parent" : "80"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U125", "Parent" : "80"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U126", "Parent" : "80"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U127", "Parent" : "80"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U128", "Parent" : "80"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U129", "Parent" : "80"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3_fu_76", "Parent" : "75", "Child" : ["99", "100"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3",
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
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v_lin3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3_fu_76.mul_32s_10ns_42_1_1_U133", "Parent" : "98"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.out_w_U", "Parent" : "69"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.V_linear_tiled_U0.start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "69"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.split_heads_U0", "Parent" : "0", "Child" : ["104"],
		"CDFG" : "split_heads",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_split_heads_U0_U",
		"Port" : [
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1","7"], "DependentChan" : "287", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "q_lin1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["109","110"], "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["180","181"], "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.split_heads_U0.flow_control_loop_pipe_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.split_heads_2_U0", "Parent" : "0", "Child" : ["106"],
		"CDFG" : "split_heads_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "35",
		"StartFifo" : "start_for_split_heads_2_U0_U",
		"Port" : [
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35","41"], "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k_lin2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["109","110"], "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["180","181"], "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.split_heads_2_U0.flow_control_loop_pipe_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.split_heads_3_U0", "Parent" : "0", "Child" : ["108"],
		"CDFG" : "split_heads_3",
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
		"StartSource" : "69",
		"StartFifo" : "start_for_split_heads_3_U0_U",
		"Port" : [
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69","75"], "DependentChan" : "289", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_lin3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["152","153"], "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["223","224"], "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.split_heads_3_U0.flow_control_loop_pipe_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0", "Parent" : "0", "Child" : ["110"],
		"CDFG" : "MM_tiled",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "855", "EstimateLatencyMax" : "855",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "103",
		"StartFifo" : "start_for_MM_tiled_U0_U",
		"InputProcess" : [
			{"ID" : "110", "Name" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0"}],
		"OutputProcess" : [
			{"ID" : "110", "Name" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0"}],
		"Port" : [
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["103"], "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0", "Port" : "Q_1_0"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["105"], "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0", "Port" : "K_1_0"}]},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["128"], "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0", "Port" : "A_0"}]}]},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0", "Parent" : "109", "Child" : ["111", "112", "113", "115", "117"],
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
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["103"], "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["105"], "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["128"], "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.buff_K_V_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.tile_Q_V_0_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "110", "Child" : ["114"],
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
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "110", "Child" : ["116"],
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
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "110", "Child" : ["118", "119", "120", "121", "122", "123", "124", "125", "126", "127"],
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
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U158", "Parent" : "117"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U159", "Parent" : "117"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U160", "Parent" : "117"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U161", "Parent" : "117"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U162", "Parent" : "117"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U163", "Parent" : "117"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U164", "Parent" : "117"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U165", "Parent" : "117"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.am_addmul_18s_16s_10ns_30_4_1_U166", "Parent" : "117"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "117"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0", "Parent" : "0", "Child" : ["129"],
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
		"StartSource" : "109",
		"StartFifo" : "start_for_SOFTMAX_tile_U0_U",
		"Port" : [
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["109","110"], "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["149"], "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "128", "Child" : ["130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148"],
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
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_s_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "A_s_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_563_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U183", "Parent" : "129"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U184", "Parent" : "129"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U185", "Parent" : "129"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U186", "Parent" : "129"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "129"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "129"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "129"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "129"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "129"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "129"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "129"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "129"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "129"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "129"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "129"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "129"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "129"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "129"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0", "Parent" : "0", "Child" : ["150", "151"],
		"CDFG" : "requant_ap_int_8_ap_int_8_17_17_170977_16_1_s",
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
		"StartSource" : "128",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0_U",
		"Port" : [
			{"Name" : "A_s_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["128"], "DependentChan" : "297", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["152","153"], "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0.mul_mul_8s_18ns_27_4_1_U206", "Parent" : "149"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0.flow_control_loop_pipe_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0", "Parent" : "0", "Child" : ["153"],
		"CDFG" : "MM1_tiled",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1008", "EstimateLatencyMax" : "1008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "107",
		"StartFifo" : "start_for_MM1_tiled_U0_U",
		"InputProcess" : [
			{"ID" : "153", "Name" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0"}],
		"OutputProcess" : [
			{"ID" : "153", "Name" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0"}],
		"Port" : [
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["149"], "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0", "Port" : "A_sx_0"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["107"], "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0", "Port" : "V_1_0"}]},
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["251"], "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0", "Port" : "head_out_0"}]}]},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0", "Parent" : "152", "Child" : ["154", "155", "156", "158", "160"],
		"CDFG" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1008", "EstimateLatencyMax" : "1008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["149"], "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["107"], "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["251"], "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.buff_B_V_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.tile_A_V_0_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "153", "Child" : ["157"],
		"CDFG" : "MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1",
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
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "V_1_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "load_B_VITIS_LOOP_1796_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "153", "Child" : ["159"],
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
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "153", "Child" : ["161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179"],
		"CDFG" : "MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6",
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
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "head_out_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1831_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U214", "Parent" : "160"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U215", "Parent" : "160"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U216", "Parent" : "160"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U217", "Parent" : "160"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U218", "Parent" : "160"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U219", "Parent" : "160"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U220", "Parent" : "160"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U221", "Parent" : "160"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U222", "Parent" : "160"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U223", "Parent" : "160"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U224", "Parent" : "160"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U225", "Parent" : "160"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U226", "Parent" : "160"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U227", "Parent" : "160"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U228", "Parent" : "160"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U229", "Parent" : "160"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U230", "Parent" : "160"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U231", "Parent" : "160"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "160"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0", "Parent" : "0", "Child" : ["181"],
		"CDFG" : "MM_tiled_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "855", "EstimateLatencyMax" : "855",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "103",
		"StartFifo" : "start_for_MM_tiled_4_U0_U",
		"InputProcess" : [
			{"ID" : "181", "Name" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0"}],
		"OutputProcess" : [
			{"ID" : "181", "Name" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0"}],
		"Port" : [
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["103"], "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0", "Port" : "Q_1_1"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["105"], "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0", "Port" : "K_1_1"}]},
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["199"], "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0", "Port" : "A_1"}]}]},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0", "Parent" : "180", "Child" : ["182", "183", "184", "186", "188"],
		"CDFG" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10",
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
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["103"], "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["105"], "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["199"], "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.buff_K_V_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.tile_Q_V_0_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "181", "Child" : ["185"],
		"CDFG" : "MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2",
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
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "K_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1656_1_VITIS_LOOP_1657_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "181", "Child" : ["187"],
		"CDFG" : "MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1682_6",
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
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Q_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1682_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "181", "Child" : ["189", "190", "191", "192", "193", "194", "195", "196", "197", "198"],
		"CDFG" : "MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8",
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
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "A_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1701_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U265", "Parent" : "188"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U266", "Parent" : "188"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U267", "Parent" : "188"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U268", "Parent" : "188"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U269", "Parent" : "188"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U270", "Parent" : "188"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U271", "Parent" : "188"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U272", "Parent" : "188"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.am_addmul_18s_16s_10ns_30_4_1_U273", "Parent" : "188"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "188"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0", "Parent" : "0", "Child" : ["200"],
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
		"StartSource" : "180",
		"StartFifo" : "start_for_SOFTMAX_tile_5_U0_U",
		"Port" : [
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["180","181"], "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["220"], "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "199", "Child" : ["201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219"],
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
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_s_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "A_s_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_563_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U183", "Parent" : "200"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U184", "Parent" : "200"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U185", "Parent" : "200"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U186", "Parent" : "200"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "200"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "200"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "200"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "200"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "200"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "200"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "200"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "200"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "200"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "200"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "200"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "200"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "200"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "200"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0", "Parent" : "0", "Child" : ["221", "222"],
		"CDFG" : "requant_ap_int_8_ap_int_8_17_17_170977_16_1_6",
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
		"StartSource" : "199",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0_U",
		"Port" : [
			{"Name" : "A_s_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["199"], "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["223","224"], "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0.mul_mul_8s_18ns_27_4_1_U287", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0.flow_control_loop_pipe_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0", "Parent" : "0", "Child" : ["224"],
		"CDFG" : "MM1_tiled_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1008", "EstimateLatencyMax" : "1008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "107",
		"StartFifo" : "start_for_MM1_tiled_7_U0_U",
		"InputProcess" : [
			{"ID" : "224", "Name" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0"}],
		"OutputProcess" : [
			{"ID" : "224", "Name" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0"}],
		"Port" : [
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["220"], "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0", "Port" : "A_sx_1"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["107"], "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0", "Port" : "V_1_1"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["251"], "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0", "Port" : "head_out_1"}]}]},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0", "Parent" : "223", "Child" : ["225", "226", "227", "229", "231"],
		"CDFG" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1008", "EstimateLatencyMax" : "1008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["220"], "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["107"], "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["251"], "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.buff_B_V_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.tile_A_V_0_U", "Parent" : "224"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "224", "Child" : ["228"],
		"CDFG" : "MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1",
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
			{"Name" : "buff_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "V_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "load_B_VITIS_LOOP_1796_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "224", "Child" : ["230"],
		"CDFG" : "MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5",
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
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "224", "Child" : ["232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250"],
		"CDFG" : "MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6",
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
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "head_out_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1831_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U294", "Parent" : "231"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U295", "Parent" : "231"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U296", "Parent" : "231"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U297", "Parent" : "231"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U298", "Parent" : "231"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U299", "Parent" : "231"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U300", "Parent" : "231"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U301", "Parent" : "231"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U302", "Parent" : "231"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U303", "Parent" : "231"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U304", "Parent" : "231"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U305", "Parent" : "231"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U306", "Parent" : "231"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U307", "Parent" : "231"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U308", "Parent" : "231"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U309", "Parent" : "231"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U310", "Parent" : "231"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U311", "Parent" : "231"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "231"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.merge_heads_U0", "Parent" : "0", "Child" : ["252"],
		"CDFG" : "merge_heads",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "152",
		"StartFifo" : "start_for_merge_heads_U0_U",
		"Port" : [
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["152","153"], "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["223","224"], "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["253","259"], "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_linear4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1_VITIS_LOOP_179_2_VITIS_LOOP_180_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_heads_U0.flow_control_loop_pipe_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0", "Parent" : "0", "Child" : ["254", "259", "285", "286"],
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
			{"ID" : "254", "Name" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0"}],
		"OutputProcess" : [
			{"ID" : "259", "Name" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "Out_r", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0", "Port" : "Out_r"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["251"], "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Port" : "out_linear4"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Port" : "out_mha8"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_h_0_V"}]}]},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0", "Parent" : "253", "Child" : ["255", "256", "258"],
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
					{"ID" : "255", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_106", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["259"], "DependentChan" : "285", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "256", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.grp_burst_read_beats_1_ap_int_8_s_fu_106", "Parent" : "254",
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
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Parent" : "254", "Child" : ["257"],
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
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.burst_reads_fifo_U", "Parent" : "254"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "253", "Child" : ["260", "261", "264", "282"],
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
		"StartSource" : "254",
		"StartFifo" : "start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["251"], "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67", "Port" : "out_linear4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76", "Port" : "out_mha8", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["254"], "DependentChan" : "285", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60", "Port" : "bias_h_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60", "Parent" : "259", "Child" : ["262", "263"],
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
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60.bias_h_0_V_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67", "Parent" : "259", "Child" : ["265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281"],
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
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U347", "Parent" : "264"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U348", "Parent" : "264"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U349", "Parent" : "264"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U350", "Parent" : "264"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U351", "Parent" : "264"},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U352", "Parent" : "264"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U353", "Parent" : "264"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U354", "Parent" : "264"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U355", "Parent" : "264"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U356", "Parent" : "264"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U357", "Parent" : "264"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U358", "Parent" : "264"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U359", "Parent" : "264"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U360", "Parent" : "264"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U361", "Parent" : "264"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U362", "Parent" : "264"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "264"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76", "Parent" : "259", "Child" : ["283", "284"],
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
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76.mul_32s_11ns_43_1_1_U366", "Parent" : "282"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "282"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.out_w_U", "Parent" : "253"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Out_linear_tiled_U0.start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "253"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_lin_U", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_lin_U", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_lin_U", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_1_0_U", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_1_1_U", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_1_0_U", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_1_1_U", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_1_0_U", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_1_1_U", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_0_U", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_s_0_U", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_sx_0_U", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_out_0_U", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_1_U", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_s_1_U", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_sx_1_U", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_out_1_U", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_linear_U", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_split_heads_U0_U", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_split_heads_2_U0_U", "Parent" : "0"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_split_heads_3_U0_U", "Parent" : "0"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM_tiled_U0_U", "Parent" : "0"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM_tiled_4_U0_U", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM1_tiled_U0_U", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MM1_tiled_7_U0_U", "Parent" : "0"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_SOFTMAX_tile_U0_U", "Parent" : "0"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0_U", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_merge_heads_U0_U", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_SOFTMAX_tile_5_U0_U", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiHeadAttention_tiled {
		Q {Type I LastRead 7 FirstWrite -1}
		in_q {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead 7 FirstWrite -1}
		in_k {Type I LastRead 0 FirstWrite -1}
		V {Type I LastRead 7 FirstWrite -1}
		in_v {Type I LastRead 0 FirstWrite -1}
		Out_r {Type I LastRead 7 FirstWrite -1}
		in_o {Type I LastRead 14 FirstWrite -1}
		Q_in5 {Type I LastRead 1 FirstWrite -1}
		K_in6 {Type I LastRead 1 FirstWrite -1}
		V_in7 {Type I LastRead 1 FirstWrite -1}
		out_mha8 {Type O LastRead -1 FirstWrite 2}
		bias_q_0_V {Type I LastRead -1 FirstWrite -1}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}
		bias_v_0_V {Type I LastRead -1 FirstWrite -1}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}
		bias_h_0_V {Type I LastRead -1 FirstWrite -1}}
	Q_linear_tiled {
		Q {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		Q_in5 {Type I LastRead 1 FirstWrite -1}
		q_lin1 {Type O LastRead -1 FirstWrite 2}
		bias_q_0_V {Type I LastRead -1 FirstWrite -1}}
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
		out_w1 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_s {
		Q_in5 {Type I LastRead 1 FirstWrite -1}
		q_lin1 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 16 FirstWrite -1}
		bias_q_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_q_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4 {
		C_tile_V {Type IO LastRead 10 FirstWrite 10}
		Q_in5 {Type I LastRead 1 FirstWrite -1}
		out_w1 {Type I LastRead 16 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		q_lin1 {Type O LastRead -1 FirstWrite 2}}
	K_linear_tiled {
		K {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		K_in6 {Type I LastRead 1 FirstWrite -1}
		k_lin2 {Type O LastRead -1 FirstWrite 2}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8 {
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
	Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_s {
		K_in6 {Type I LastRead 1 FirstWrite -1}
		k_lin2 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 16 FirstWrite -1}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5 {
		C_tile_V {Type IO LastRead 10 FirstWrite 10}
		K_in6 {Type I LastRead 1 FirstWrite -1}
		out_w1 {Type I LastRead 16 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		k_lin2 {Type O LastRead -1 FirstWrite 2}}
	V_linear_tiled {
		V {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		V_in7 {Type I LastRead 1 FirstWrite -1}
		v_lin3 {Type O LastRead -1 FirstWrite 2}
		bias_v_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9 {
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
	Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_s {
		V_in7 {Type I LastRead 1 FirstWrite -1}
		v_lin3 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 16 FirstWrite -1}
		bias_v_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_v_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3 {
		C_tile_V {Type IO LastRead 10 FirstWrite 10}
		V_in7 {Type I LastRead 1 FirstWrite -1}
		out_w1 {Type I LastRead 16 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		v_lin3 {Type O LastRead -1 FirstWrite 2}}
	split_heads {
		q_lin1 {Type I LastRead 1 FirstWrite -1}
		Q_1_0 {Type O LastRead -1 FirstWrite 1}
		Q_1_1 {Type O LastRead -1 FirstWrite 1}}
	split_heads_2 {
		k_lin2 {Type I LastRead 1 FirstWrite -1}
		K_1_0 {Type O LastRead -1 FirstWrite 1}
		K_1_1 {Type O LastRead -1 FirstWrite 1}}
	split_heads_3 {
		v_lin3 {Type I LastRead 1 FirstWrite -1}
		V_1_0 {Type O LastRead -1 FirstWrite 1}
		V_1_1 {Type O LastRead -1 FirstWrite 1}}
	MM_tiled {
		Q_1_0 {Type I LastRead 1 FirstWrite -1}
		K_1_0 {Type I LastRead 1 FirstWrite -1}
		A_0 {Type O LastRead -1 FirstWrite 9}}
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
		A_0 {Type O LastRead -1 FirstWrite 9}}
	SOFTMAX_tile {
		A_0 {Type I LastRead 17 FirstWrite -1}
		A_s_0 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s {
		A_1 {Type I LastRead 17 FirstWrite -1}
		A_s_1 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	requant_ap_int_8_ap_int_8_17_17_170977_16_1_s {
		A_s_0 {Type I LastRead 1 FirstWrite -1}
		A_sx_0 {Type O LastRead -1 FirstWrite 4}}
	MM1_tiled {
		A_sx_0 {Type I LastRead 1 FirstWrite -1}
		V_1_0 {Type I LastRead 1 FirstWrite -1}
		head_out_0 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_s {
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
		head_out_0 {Type O LastRead -1 FirstWrite 10}}
	MM_tiled_4 {
		Q_1_1 {Type I LastRead 1 FirstWrite -1}
		K_1_1 {Type I LastRead 1 FirstWrite -1}
		A_1 {Type O LastRead -1 FirstWrite 9}}
	MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10 {
		Q_1_1 {Type I LastRead 1 FirstWrite -1}
		K_1_1 {Type I LastRead 1 FirstWrite -1}
		A_1 {Type O LastRead -1 FirstWrite 9}}
	MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 {
		buff_K_V {Type O LastRead -1 FirstWrite 1}
		K_1_1 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1682_6 {
		tile_Q_V_0 {Type O LastRead -1 FirstWrite 1}
		Q_1_1 {Type I LastRead 1 FirstWrite -1}}
	MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8 {
		tile_Q_V_0 {Type I LastRead 1 FirstWrite -1}
		buff_K_V {Type I LastRead 1 FirstWrite -1}
		A_1 {Type O LastRead -1 FirstWrite 9}}
	SOFTMAX_tile_5 {
		A_1 {Type I LastRead 17 FirstWrite -1}
		A_s_1 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s {
		A_1 {Type I LastRead 17 FirstWrite -1}
		A_s_1 {Type O LastRead -1 FirstWrite 61}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}}
	requant_ap_int_8_ap_int_8_17_17_170977_16_1_6 {
		A_s_1 {Type I LastRead 1 FirstWrite -1}
		A_sx_1 {Type O LastRead -1 FirstWrite 4}}
	MM1_tiled_7 {
		A_sx_1 {Type I LastRead 1 FirstWrite -1}
		V_1_1 {Type I LastRead 1 FirstWrite -1}
		head_out_1 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11 {
		A_sx_1 {Type I LastRead 1 FirstWrite -1}
		V_1_1 {Type I LastRead 1 FirstWrite -1}
		head_out_1 {Type O LastRead -1 FirstWrite 10}}
	MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1 {
		buff_B_V {Type O LastRead -1 FirstWrite 1}
		V_1_1 {Type I LastRead 1 FirstWrite -1}}
	MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5 {
		A_sx_1 {Type I LastRead 1 FirstWrite -1}
		tile_A_V_0 {Type O LastRead -1 FirstWrite 1}}
	MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6 {
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
		head_out_1 {Type O LastRead -1 FirstWrite 10}}
	merge_heads {
		head_out_0 {Type I LastRead 1 FirstWrite -1}
		head_out_1 {Type I LastRead 1 FirstWrite -1}
		out_linear4 {Type O LastRead -1 FirstWrite 1}}
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
	 { m_axi {  { m_axi_Q_AWVALID VALID 1 1 }  { m_axi_Q_AWREADY READY 0 1 }  { m_axi_Q_AWADDR ADDR 1 64 }  { m_axi_Q_AWID ID 1 1 }  { m_axi_Q_AWLEN SIZE 1 32 }  { m_axi_Q_AWSIZE BURST 1 3 }  { m_axi_Q_AWBURST LOCK 1 2 }  { m_axi_Q_AWLOCK CACHE 1 2 }  { m_axi_Q_AWCACHE PROT 1 4 }  { m_axi_Q_AWPROT QOS 1 3 }  { m_axi_Q_AWQOS REGION 1 4 }  { m_axi_Q_AWREGION USER 1 4 }  { m_axi_Q_AWUSER DATA 1 1 }  { m_axi_Q_WVALID VALID 1 1 }  { m_axi_Q_WREADY READY 0 1 }  { m_axi_Q_WDATA FIFONUM 1 8 }  { m_axi_Q_WSTRB STRB 1 1 }  { m_axi_Q_WLAST LAST 1 1 }  { m_axi_Q_WID ID 1 1 }  { m_axi_Q_WUSER DATA 1 1 }  { m_axi_Q_ARVALID VALID 1 1 }  { m_axi_Q_ARREADY READY 0 1 }  { m_axi_Q_ARADDR ADDR 1 64 }  { m_axi_Q_ARID ID 1 1 }  { m_axi_Q_ARLEN SIZE 1 32 }  { m_axi_Q_ARSIZE BURST 1 3 }  { m_axi_Q_ARBURST LOCK 1 2 }  { m_axi_Q_ARLOCK CACHE 1 2 }  { m_axi_Q_ARCACHE PROT 1 4 }  { m_axi_Q_ARPROT QOS 1 3 }  { m_axi_Q_ARQOS REGION 1 4 }  { m_axi_Q_ARREGION USER 1 4 }  { m_axi_Q_ARUSER DATA 1 1 }  { m_axi_Q_RVALID VALID 0 1 }  { m_axi_Q_RREADY READY 1 1 }  { m_axi_Q_RDATA FIFONUM 0 8 }  { m_axi_Q_RLAST LAST 0 1 }  { m_axi_Q_RID ID 0 1 }  { m_axi_Q_RFIFONUM LEN 0 13 }  { m_axi_Q_RUSER DATA 0 1 }  { m_axi_Q_RRESP RESP 0 2 }  { m_axi_Q_BVALID VALID 0 1 }  { m_axi_Q_BREADY READY 1 1 }  { m_axi_Q_BRESP RESP 0 2 }  { m_axi_Q_BID ID 0 1 }  { m_axi_Q_BUSER DATA 0 1 } } }
	in_q { ap_none {  { in_q in_data 0 64 }  { in_q_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_K_AWVALID VALID 1 1 }  { m_axi_K_AWREADY READY 0 1 }  { m_axi_K_AWADDR ADDR 1 64 }  { m_axi_K_AWID ID 1 1 }  { m_axi_K_AWLEN SIZE 1 32 }  { m_axi_K_AWSIZE BURST 1 3 }  { m_axi_K_AWBURST LOCK 1 2 }  { m_axi_K_AWLOCK CACHE 1 2 }  { m_axi_K_AWCACHE PROT 1 4 }  { m_axi_K_AWPROT QOS 1 3 }  { m_axi_K_AWQOS REGION 1 4 }  { m_axi_K_AWREGION USER 1 4 }  { m_axi_K_AWUSER DATA 1 1 }  { m_axi_K_WVALID VALID 1 1 }  { m_axi_K_WREADY READY 0 1 }  { m_axi_K_WDATA FIFONUM 1 8 }  { m_axi_K_WSTRB STRB 1 1 }  { m_axi_K_WLAST LAST 1 1 }  { m_axi_K_WID ID 1 1 }  { m_axi_K_WUSER DATA 1 1 }  { m_axi_K_ARVALID VALID 1 1 }  { m_axi_K_ARREADY READY 0 1 }  { m_axi_K_ARADDR ADDR 1 64 }  { m_axi_K_ARID ID 1 1 }  { m_axi_K_ARLEN SIZE 1 32 }  { m_axi_K_ARSIZE BURST 1 3 }  { m_axi_K_ARBURST LOCK 1 2 }  { m_axi_K_ARLOCK CACHE 1 2 }  { m_axi_K_ARCACHE PROT 1 4 }  { m_axi_K_ARPROT QOS 1 3 }  { m_axi_K_ARQOS REGION 1 4 }  { m_axi_K_ARREGION USER 1 4 }  { m_axi_K_ARUSER DATA 1 1 }  { m_axi_K_RVALID VALID 0 1 }  { m_axi_K_RREADY READY 1 1 }  { m_axi_K_RDATA FIFONUM 0 8 }  { m_axi_K_RLAST LAST 0 1 }  { m_axi_K_RID ID 0 1 }  { m_axi_K_RFIFONUM LEN 0 13 }  { m_axi_K_RUSER DATA 0 1 }  { m_axi_K_RRESP RESP 0 2 }  { m_axi_K_BVALID VALID 0 1 }  { m_axi_K_BREADY READY 1 1 }  { m_axi_K_BRESP RESP 0 2 }  { m_axi_K_BID ID 0 1 }  { m_axi_K_BUSER DATA 0 1 } } }
	in_k { ap_none {  { in_k in_data 0 64 }  { in_k_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_V_AWVALID VALID 1 1 }  { m_axi_V_AWREADY READY 0 1 }  { m_axi_V_AWADDR ADDR 1 64 }  { m_axi_V_AWID ID 1 1 }  { m_axi_V_AWLEN SIZE 1 32 }  { m_axi_V_AWSIZE BURST 1 3 }  { m_axi_V_AWBURST LOCK 1 2 }  { m_axi_V_AWLOCK CACHE 1 2 }  { m_axi_V_AWCACHE PROT 1 4 }  { m_axi_V_AWPROT QOS 1 3 }  { m_axi_V_AWQOS REGION 1 4 }  { m_axi_V_AWREGION USER 1 4 }  { m_axi_V_AWUSER DATA 1 1 }  { m_axi_V_WVALID VALID 1 1 }  { m_axi_V_WREADY READY 0 1 }  { m_axi_V_WDATA FIFONUM 1 8 }  { m_axi_V_WSTRB STRB 1 1 }  { m_axi_V_WLAST LAST 1 1 }  { m_axi_V_WID ID 1 1 }  { m_axi_V_WUSER DATA 1 1 }  { m_axi_V_ARVALID VALID 1 1 }  { m_axi_V_ARREADY READY 0 1 }  { m_axi_V_ARADDR ADDR 1 64 }  { m_axi_V_ARID ID 1 1 }  { m_axi_V_ARLEN SIZE 1 32 }  { m_axi_V_ARSIZE BURST 1 3 }  { m_axi_V_ARBURST LOCK 1 2 }  { m_axi_V_ARLOCK CACHE 1 2 }  { m_axi_V_ARCACHE PROT 1 4 }  { m_axi_V_ARPROT QOS 1 3 }  { m_axi_V_ARQOS REGION 1 4 }  { m_axi_V_ARREGION USER 1 4 }  { m_axi_V_ARUSER DATA 1 1 }  { m_axi_V_RVALID VALID 0 1 }  { m_axi_V_RREADY READY 1 1 }  { m_axi_V_RDATA FIFONUM 0 8 }  { m_axi_V_RLAST LAST 0 1 }  { m_axi_V_RID ID 0 1 }  { m_axi_V_RFIFONUM LEN 0 13 }  { m_axi_V_RUSER DATA 0 1 }  { m_axi_V_RRESP RESP 0 2 }  { m_axi_V_BVALID VALID 0 1 }  { m_axi_V_BREADY READY 1 1 }  { m_axi_V_BRESP RESP 0 2 }  { m_axi_V_BID ID 0 1 }  { m_axi_V_BUSER DATA 0 1 } } }
	in_v { ap_none {  { in_v in_data 0 64 }  { in_v_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_Out_r_AWVALID VALID 1 1 }  { m_axi_Out_r_AWREADY READY 0 1 }  { m_axi_Out_r_AWADDR ADDR 1 64 }  { m_axi_Out_r_AWID ID 1 1 }  { m_axi_Out_r_AWLEN SIZE 1 32 }  { m_axi_Out_r_AWSIZE BURST 1 3 }  { m_axi_Out_r_AWBURST LOCK 1 2 }  { m_axi_Out_r_AWLOCK CACHE 1 2 }  { m_axi_Out_r_AWCACHE PROT 1 4 }  { m_axi_Out_r_AWPROT QOS 1 3 }  { m_axi_Out_r_AWQOS REGION 1 4 }  { m_axi_Out_r_AWREGION USER 1 4 }  { m_axi_Out_r_AWUSER DATA 1 1 }  { m_axi_Out_r_WVALID VALID 1 1 }  { m_axi_Out_r_WREADY READY 0 1 }  { m_axi_Out_r_WDATA FIFONUM 1 8 }  { m_axi_Out_r_WSTRB STRB 1 1 }  { m_axi_Out_r_WLAST LAST 1 1 }  { m_axi_Out_r_WID ID 1 1 }  { m_axi_Out_r_WUSER DATA 1 1 }  { m_axi_Out_r_ARVALID VALID 1 1 }  { m_axi_Out_r_ARREADY READY 0 1 }  { m_axi_Out_r_ARADDR ADDR 1 64 }  { m_axi_Out_r_ARID ID 1 1 }  { m_axi_Out_r_ARLEN SIZE 1 32 }  { m_axi_Out_r_ARSIZE BURST 1 3 }  { m_axi_Out_r_ARBURST LOCK 1 2 }  { m_axi_Out_r_ARLOCK CACHE 1 2 }  { m_axi_Out_r_ARCACHE PROT 1 4 }  { m_axi_Out_r_ARPROT QOS 1 3 }  { m_axi_Out_r_ARQOS REGION 1 4 }  { m_axi_Out_r_ARREGION USER 1 4 }  { m_axi_Out_r_ARUSER DATA 1 1 }  { m_axi_Out_r_RVALID VALID 0 1 }  { m_axi_Out_r_RREADY READY 1 1 }  { m_axi_Out_r_RDATA FIFONUM 0 8 }  { m_axi_Out_r_RLAST LAST 0 1 }  { m_axi_Out_r_RID ID 0 1 }  { m_axi_Out_r_RFIFONUM LEN 0 13 }  { m_axi_Out_r_RUSER DATA 0 1 }  { m_axi_Out_r_RRESP RESP 0 2 }  { m_axi_Out_r_BVALID VALID 0 1 }  { m_axi_Out_r_BREADY READY 1 1 }  { m_axi_Out_r_BRESP RESP 0 2 }  { m_axi_Out_r_BID ID 0 1 }  { m_axi_Out_r_BUSER DATA 0 1 } } }
	in_o { ap_none {  { in_o in_data 0 64 }  { in_o_ap_vld in_vld 0 1 } } }
	Q_in5 { ap_fifo {  { Q_in5_dout fifo_port_we 0 8 }  { Q_in5_empty_n fifo_status 0 1 }  { Q_in5_read fifo_data 1 1 } } }
	K_in6 { ap_fifo {  { K_in6_dout fifo_port_we 0 8 }  { K_in6_empty_n fifo_status 0 1 }  { K_in6_read fifo_data 1 1 } } }
	V_in7 { ap_fifo {  { V_in7_dout fifo_port_we 0 8 }  { V_in7_empty_n fifo_status 0 1 }  { V_in7_read fifo_data 1 1 } } }
	out_mha8 { ap_fifo {  { out_mha8_din fifo_port_we 1 8 }  { out_mha8_full_n fifo_status 0 1 }  { out_mha8_write fifo_data 1 1 } } }
}
