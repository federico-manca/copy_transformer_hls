set moduleName ViT_Block_Core
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
set C_modelName {ViT_Block_Core}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_stream1 int 8 regular {fifo 0 volatile }  }
	{ output_stream2 int 8 regular {fifo 1 volatile }  }
	{ Q int 8 regular {axi_master 0}  }
	{ in_q int 64 regular  }
	{ K int 8 regular {axi_master 0}  }
	{ in_k int 64 regular  }
	{ V int 8 regular {axi_master 0}  }
	{ in_v int 64 regular  }
	{ OUT_M int 8 regular {axi_master 0}  }
	{ in_o int 64 regular  }
	{ gmem0 int 8 regular {axi_master 0}  }
	{ in_w_up int 64 regular  }
	{ gmem1 int 8 regular {axi_master 0}  }
	{ in_w_down int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_stream1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_stream2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_q","offset": { "type": "dynamic","port_name": "in_q","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_q", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "K", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_k","offset": { "type": "dynamic","port_name": "in_k","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_k", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "V", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_v","offset": { "type": "dynamic","port_name": "in_v","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_v", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_M", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_o","offset": { "type": "dynamic","port_name": "in_o","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_o", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_w_up","offset": { "type": "dynamic","port_name": "in_w_up","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_w_up", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_w_down","offset": { "type": "dynamic","port_name": "in_w_down","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_w_down", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 304
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ input_stream1_dout sc_in sc_lv 8 signal 0 } 
	{ input_stream1_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_stream1_read sc_out sc_logic 1 signal 0 } 
	{ output_stream2_din sc_out sc_lv 8 signal 1 } 
	{ output_stream2_full_n sc_in sc_logic 1 signal 1 } 
	{ output_stream2_write sc_out sc_logic 1 signal 1 } 
	{ m_axi_Q_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_Q_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_Q_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_Q_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_Q_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_Q_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_Q_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_Q_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_Q_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_Q_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_Q_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_Q_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_Q_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_Q_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_Q_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_Q_WDATA sc_out sc_lv 8 signal 2 } 
	{ m_axi_Q_WSTRB sc_out sc_lv 1 signal 2 } 
	{ m_axi_Q_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_Q_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_Q_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_Q_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_Q_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_Q_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_Q_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_Q_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_Q_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_Q_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_Q_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_Q_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_Q_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_Q_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_Q_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_Q_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_Q_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_Q_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_Q_RDATA sc_in sc_lv 8 signal 2 } 
	{ m_axi_Q_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_Q_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_Q_RFIFONUM sc_in sc_lv 13 signal 2 } 
	{ m_axi_Q_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_Q_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_Q_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_Q_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_Q_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_Q_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_Q_BUSER sc_in sc_lv 1 signal 2 } 
	{ in_q sc_in sc_lv 64 signal 3 } 
	{ m_axi_K_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_K_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_K_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_K_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_K_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_K_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_K_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_K_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_K_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_K_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_K_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_K_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_K_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_K_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_K_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_K_WDATA sc_out sc_lv 8 signal 4 } 
	{ m_axi_K_WSTRB sc_out sc_lv 1 signal 4 } 
	{ m_axi_K_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_K_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_K_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_K_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_K_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_K_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_K_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_K_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_K_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_K_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_K_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_K_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_K_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_K_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_K_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_K_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_K_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_K_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_K_RDATA sc_in sc_lv 8 signal 4 } 
	{ m_axi_K_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_K_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_K_RFIFONUM sc_in sc_lv 13 signal 4 } 
	{ m_axi_K_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_K_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_K_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_K_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_K_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_K_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_K_BUSER sc_in sc_lv 1 signal 4 } 
	{ in_k sc_in sc_lv 64 signal 5 } 
	{ m_axi_V_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_V_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_V_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_V_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_V_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_V_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_V_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_V_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_V_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_V_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_V_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_V_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_V_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_V_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_V_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_V_WDATA sc_out sc_lv 8 signal 6 } 
	{ m_axi_V_WSTRB sc_out sc_lv 1 signal 6 } 
	{ m_axi_V_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_V_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_V_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_V_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_V_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_V_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_V_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_V_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_V_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_V_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_V_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_V_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_V_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_V_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_V_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_V_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_V_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_V_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_V_RDATA sc_in sc_lv 8 signal 6 } 
	{ m_axi_V_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_V_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_V_RFIFONUM sc_in sc_lv 13 signal 6 } 
	{ m_axi_V_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_V_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_V_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_V_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_V_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_V_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_V_BUSER sc_in sc_lv 1 signal 6 } 
	{ in_v sc_in sc_lv 64 signal 7 } 
	{ m_axi_OUT_M_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_OUT_M_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_OUT_M_AWLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_OUT_M_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_OUT_M_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_OUT_M_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_OUT_M_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_OUT_M_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_OUT_M_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_OUT_M_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_OUT_M_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_OUT_M_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_WDATA sc_out sc_lv 8 signal 8 } 
	{ m_axi_OUT_M_WSTRB sc_out sc_lv 1 signal 8 } 
	{ m_axi_OUT_M_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_OUT_M_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_OUT_M_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_OUT_M_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_OUT_M_ARLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_OUT_M_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_OUT_M_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_OUT_M_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_OUT_M_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_OUT_M_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_OUT_M_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_OUT_M_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_OUT_M_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_OUT_M_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_RDATA sc_in sc_lv 8 signal 8 } 
	{ m_axi_OUT_M_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_OUT_M_RFIFONUM sc_in sc_lv 13 signal 8 } 
	{ m_axi_OUT_M_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_OUT_M_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_OUT_M_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_OUT_M_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_OUT_M_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_OUT_M_BUSER sc_in sc_lv 1 signal 8 } 
	{ in_o sc_in sc_lv 64 signal 9 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 8 signal 10 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 8 signal 10 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 13 signal 10 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 10 } 
	{ in_w_up sc_in sc_lv 64 signal 11 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 12 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 8 signal 12 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 12 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 8 signal 12 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 13 signal 12 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 12 } 
	{ in_w_down sc_in sc_lv 64 signal 13 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_q_ap_vld sc_in sc_logic 1 invld 3 } 
	{ in_k_ap_vld sc_in sc_logic 1 invld 5 } 
	{ in_v_ap_vld sc_in sc_logic 1 invld 7 } 
	{ in_o_ap_vld sc_in sc_logic 1 invld 9 } 
	{ in_w_up_ap_vld sc_in sc_logic 1 invld 11 } 
	{ in_w_down_ap_vld sc_in sc_logic 1 invld 13 } 
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
 	{ "name": "input_stream1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_stream1", "role": "dout" }} , 
 	{ "name": "input_stream1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream1", "role": "empty_n" }} , 
 	{ "name": "input_stream1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream1", "role": "read" }} , 
 	{ "name": "output_stream2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_stream2", "role": "din" }} , 
 	{ "name": "output_stream2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_stream2", "role": "full_n" }} , 
 	{ "name": "output_stream2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_stream2", "role": "write" }} , 
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
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_q_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_q", "role": "ap_vld" }} , 
 	{ "name": "in_k_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_k", "role": "ap_vld" }} , 
 	{ "name": "in_v_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_v", "role": "ap_vld" }} , 
 	{ "name": "in_o_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_o", "role": "ap_vld" }} , 
 	{ "name": "in_w_up_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_w_up", "role": "ap_vld" }} , 
 	{ "name": "in_w_down_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_w_down", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "9", "11", "592", "595", "598", "600", "605", "649", "652", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676"],
		"CDFG" : "ViT_Block_Core",
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
			{"ID" : "1", "Name" : "duplicate_stream_ap_int_8_17_192_1_U0"},
			{"ID" : "11", "Name" : "MultiHeadAttention_tiled_U0"},
			{"ID" : "605", "Name" : "MLP_tiled_oc_U0"}],
		"OutputProcess" : [
			{"ID" : "652", "Name" : "ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0"}],
		"Port" : [
			{"Name" : "input_stream1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "duplicate_stream_ap_int_8_17_192_1_U0", "Port" : "input_stream1"}]},
			{"Name" : "output_stream2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0", "Port" : "output_stream2"}]},
			{"Name" : "Q", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MultiHeadAttention_tiled_U0", "Port" : "Q"}]},
			{"Name" : "in_q", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MultiHeadAttention_tiled_U0", "Port" : "K"}]},
			{"Name" : "in_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MultiHeadAttention_tiled_U0", "Port" : "V"}]},
			{"Name" : "in_v", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_M", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MultiHeadAttention_tiled_U0", "Port" : "OUT_M"}]},
			{"Name" : "in_o", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "605", "SubInstance" : "MLP_tiled_oc_U0", "Port" : "gmem0"}]},
			{"Name" : "in_w_up", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "605", "SubInstance" : "MLP_tiled_oc_U0", "Port" : "gmem1"}]},
			{"Name" : "in_w_down", "Type" : "None", "Direction" : "I"},
			{"Name" : "bn0_mul_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "BatchNorm_tiled_0_U0", "Port" : "bn0_mul_1"}]},
			{"Name" : "bn0_add_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "BatchNorm_tiled_0_U0", "Port" : "bn0_add_1"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MultiHeadAttention_tiled_U0", "Port" : "bias_q_0_V"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MultiHeadAttention_tiled_U0", "Port" : "bias_k_0_V"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MultiHeadAttention_tiled_U0", "Port" : "bias_v_0_V"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MultiHeadAttention_tiled_U0", "Port" : "exp_lut_V"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MultiHeadAttention_tiled_U0", "Port" : "bias_h_0_V"}]},
			{"Name" : "bn1_mul_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "600", "SubInstance" : "BatchNorm_tiled_1_U0", "Port" : "bn1_mul_1"}]},
			{"Name" : "bn1_add_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "600", "SubInstance" : "BatchNorm_tiled_1_U0", "Port" : "bn1_add_1"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "605", "SubInstance" : "MLP_tiled_oc_U0", "Port" : "bias_1_0_V"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "605", "SubInstance" : "MLP_tiled_oc_U0", "Port" : "bias_2_0_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicate_stream_ap_int_8_17_192_1_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "duplicate_stream_ap_int_8_17_192_1_s",
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
		"Port" : [
			{"Name" : "input_stream1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "input_stream1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["592"], "DependentChan" : "655", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["3","4"], "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x13_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicate_stream_ap_int_8_17_192_1_U0.flow_control_loop_pipe_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0", "Parent" : "0", "Child" : ["4"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_BatchNorm_tiled_0_U0_U",
		"InputProcess" : [
			{"ID" : "4", "Name" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0"}],
		"Port" : [
			{"Name" : "x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0", "Port" : "x13"}]},
			{"Name" : "norm_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0", "Port" : "norm_out4"}]},
			{"Name" : "bn0_mul_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0", "Port" : "bn0_mul_1"}]},
			{"Name" : "bn0_add_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0", "Port" : "bn0_add_1"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0", "Parent" : "3", "Child" : ["5", "6", "7", "8"],
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
			{"Name" : "x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "656", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bn0_mul_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bn0_add_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_1_VITIS_LOOP_186_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.bn0_mul_1_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.bn0_add_1_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.mul_mul_15ns_8s_23_4_1_U13", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.flow_control_loop_pipe_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triplicate_stream_ap_int_8_17_192_1_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "triplicate_stream_ap_int_8_17_192_1_s",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_triplicate_stream_ap_int_8_17_192_1_U0_U",
		"Port" : [
			{"Name" : "norm_out4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3","4"], "DependentChan" : "657", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11","12","18"], "DependentChan" : "658", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_in5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11","31","37"], "DependentChan" : "659", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_in6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11","50","56"], "DependentChan" : "660", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_in7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.triplicate_stream_ap_int_8_17_192_1_U0.flow_control_loop_pipe_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0", "Parent" : "0", "Child" : ["12", "31", "50", "69", "71", "73", "75", "134", "155", "158", "186", "245", "266", "269", "297", "356", "377", "380", "408", "467", "488", "491", "519", "521", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591"],
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
			{"ID" : "12", "Name" : "Q_linear_tiled_U0"},
			{"ID" : "31", "Name" : "K_linear_tiled_U0"},
			{"ID" : "50", "Name" : "V_linear_tiled_U0"},
			{"ID" : "521", "Name" : "Out_linear_tiled_U0"}],
		"OutputProcess" : [
			{"ID" : "521", "Name" : "Out_linear_tiled_U0"}],
		"Port" : [
			{"Name" : "Q", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "Q_linear_tiled_U0", "Port" : "Q"}]},
			{"Name" : "in_q", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "K_linear_tiled_U0", "Port" : "K"}]},
			{"Name" : "in_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "V_linear_tiled_U0", "Port" : "V"}]},
			{"Name" : "in_v", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_M", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "521", "SubInstance" : "Out_linear_tiled_U0", "Port" : "OUT_M"}]},
			{"Name" : "in_o", "Type" : "None", "Direction" : "I"},
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "658", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "Q_linear_tiled_U0", "Port" : "Q_in5"}]},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "659", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "K_linear_tiled_U0", "Port" : "K_in6"}]},
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "660", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "V_linear_tiled_U0", "Port" : "V_in7"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["595"], "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "521", "SubInstance" : "Out_linear_tiled_U0", "Port" : "out_mha8"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "Q_linear_tiled_U0", "Port" : "bias_q_0_V"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "K_linear_tiled_U0", "Port" : "bias_k_0_V"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "V_linear_tiled_U0", "Port" : "bias_v_0_V"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "SOFTMAX_tile_5_U0", "Port" : "exp_lut_V"},
					{"ID" : "134", "SubInstance" : "SOFTMAX_tile_U0", "Port" : "exp_lut_V"},
					{"ID" : "467", "SubInstance" : "SOFTMAX_tile_13_U0", "Port" : "exp_lut_V"},
					{"ID" : "356", "SubInstance" : "SOFTMAX_tile_9_U0", "Port" : "exp_lut_V"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "521", "SubInstance" : "Out_linear_tiled_U0", "Port" : "bias_h_0_V"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0", "Parent" : "11", "Child" : ["13", "18", "29", "30"],
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
			{"ID" : "13", "Name" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "18", "Name" : "Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "Q", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0", "Port" : "Q"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "658", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0", "Port" : "Q_in5"}]},
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0", "Port" : "q_lin1"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_q_0_V"}]}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0", "Parent" : "12", "Child" : ["14", "15", "17"],
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
					{"ID" : "14", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_112", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "29", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_112", "Parent" : "13",
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Parent" : "13", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.burst_reads_fifo_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "12", "Child" : ["19", "20", "23", "26"],
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
		"StartSource" : "13",
		"StartFifo" : "start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "658", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_in5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_96", "Port" : "q_lin1", "Inst_start_state" : "4", "Inst_end_state" : "7"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "29", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1_fu_103", "Port" : "out_w1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_89", "Port" : "bias_q_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_89", "Parent" : "18", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_89.bias_q_0_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_96", "Parent" : "18", "Child" : ["24", "25"],
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
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_96.mul_32s_8ns_40_1_1_U41", "Parent" : "23"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1_fu_103", "Parent" : "18", "Child" : ["27", "28"],
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
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1_fu_103.mac_muladd_8s_8s_32s_32_4_1_U36", "Parent" : "26"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.out_w_U", "Parent" : "12"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "12"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0", "Parent" : "11", "Child" : ["32", "37", "48", "49"],
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
			{"ID" : "32", "Name" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0"}],
		"OutputProcess" : [
			{"ID" : "37", "Name" : "Linear_Layer_4_U0"}],
		"Port" : [
			{"Name" : "K", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0", "Port" : "K"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "659", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "Linear_Layer_4_U0", "Port" : "K_in6"}]},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["71"], "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "Linear_Layer_4_U0", "Port" : "k_lin2"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "Linear_Layer_4_U0", "Port" : "bias_k_0_V"}]}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0", "Parent" : "31", "Child" : ["33", "34", "36"],
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
					{"ID" : "33", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_112", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["37"], "DependentChan" : "48", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.grp_burst_read_beats_1_ap_int_8_s_fu_112", "Parent" : "32",
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
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Parent" : "32", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.burst_reads_fifo_U", "Parent" : "32"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0", "Parent" : "31", "Child" : ["38", "39", "42", "45"],
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
		"StartSource" : "32",
		"StartFifo" : "start_for_Linear_Layer_4_U0_U",
		"Port" : [
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "659", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_in6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["71"], "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17_fu_96", "Port" : "k_lin2", "Inst_start_state" : "4", "Inst_end_state" : "7"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["32"], "DependentChan" : "48", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9_fu_103", "Port" : "out_w1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2_fu_89", "Port" : "bias_k_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.C_tile_V_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2_fu_89", "Parent" : "37", "Child" : ["40", "41"],
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
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2_fu_89.bias_k_0_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17_fu_96", "Parent" : "37", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17_fu_96.mul_32s_9ns_41_1_1_U65", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9_fu_103", "Parent" : "37", "Child" : ["46", "47"],
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
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9_fu_103.mac_muladd_8s_8s_32s_32_4_1_U61", "Parent" : "45"},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.out_w_U", "Parent" : "31"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.start_for_Linear_Layer_4_U0_U", "Parent" : "31"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0", "Parent" : "11", "Child" : ["51", "56", "67", "68"],
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
			{"ID" : "51", "Name" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0"}],
		"OutputProcess" : [
			{"ID" : "56", "Name" : "Linear_Layer_3_U0"}],
		"Port" : [
			{"Name" : "V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0", "Port" : "V"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "660", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "Linear_Layer_3_U0", "Port" : "V_in7"}]},
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["73"], "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "Linear_Layer_3_U0", "Port" : "v_lin3"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "Linear_Layer_3_U0", "Port" : "bias_v_0_V"}]}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0", "Parent" : "50", "Child" : ["52", "53", "55"],
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
					{"ID" : "52", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_112", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["56"], "DependentChan" : "67", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.grp_burst_read_beats_1_ap_int_8_s_fu_112", "Parent" : "51",
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
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Parent" : "51", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.burst_reads_fifo_U", "Parent" : "51"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0", "Parent" : "50", "Child" : ["57", "58", "61", "64"],
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
		"StartSource" : "51",
		"StartFifo" : "start_for_Linear_Layer_3_U0_U",
		"Port" : [
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "660", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_in7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["73"], "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17_fu_96", "Port" : "v_lin3", "Inst_start_state" : "4", "Inst_end_state" : "7"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["51"], "DependentChan" : "67", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9_fu_103", "Port" : "out_w1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2_fu_89", "Port" : "bias_v_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.C_tile_V_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2_fu_89", "Parent" : "56", "Child" : ["59", "60"],
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
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2_fu_89.bias_v_0_V_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17_fu_96", "Parent" : "56", "Child" : ["62", "63"],
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17_fu_96.mul_32s_9ns_41_1_1_U88", "Parent" : "61"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9_fu_103", "Parent" : "56", "Child" : ["65", "66"],
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
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9_fu_103.mac_muladd_8s_8s_32s_32_4_1_U84", "Parent" : "64"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.out_w_U", "Parent" : "50"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.start_for_Linear_Layer_3_U0_U", "Parent" : "50"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_U0", "Parent" : "11", "Child" : ["70"],
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
		"StartSource" : "12",
		"StartFifo" : "start_for_split_heads_U0_U",
		"Port" : [
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12","18"], "DependentChan" : "540", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "q_lin1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75","76"], "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["186","187"], "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["297","298"], "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["408","409"], "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_U0.flow_control_loop_pipe_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_2_U0", "Parent" : "11", "Child" : ["72"],
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
		"StartSource" : "31",
		"StartFifo" : "start_for_split_heads_2_U0_U",
		"Port" : [
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["31","37"], "DependentChan" : "541", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k_lin2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75","76"], "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["186","187"], "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["297","298"], "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["408","409"], "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_2_U0.flow_control_loop_pipe_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_3_U0", "Parent" : "11", "Child" : ["74"],
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
		"StartSource" : "50",
		"StartFifo" : "start_for_split_heads_3_U0_U",
		"Port" : [
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["50","56"], "DependentChan" : "542", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_lin3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["158","159"], "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["269","270"], "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["380","381"], "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["491","492"], "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_3_U0.flow_control_loop_pipe_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0", "Parent" : "11", "Child" : ["76"],
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
		"StartSource" : "69",
		"StartFifo" : "start_for_MM_tiled_U0_U",
		"InputProcess" : [
			{"ID" : "76", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0"}],
		"Port" : [
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0", "Port" : "Q_1_0"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0", "Port" : "K_1_0"}]},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["134"], "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0", "Port" : "A_0"}]}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0", "Parent" : "75", "Child" : ["77", "78", "79", "81", "83"],
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
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "543", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "547", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["134"], "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.buff_K_V_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.tile_Q_V_0_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "76", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "76", "Child" : ["82"],
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
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "76", "Child" : ["84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133"],
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
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U119", "Parent" : "83"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U120", "Parent" : "83"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U121", "Parent" : "83"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U122", "Parent" : "83"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U123", "Parent" : "83"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U124", "Parent" : "83"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U125", "Parent" : "83"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U126", "Parent" : "83"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U127", "Parent" : "83"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U128", "Parent" : "83"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U129", "Parent" : "83"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U130", "Parent" : "83"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U131", "Parent" : "83"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U132", "Parent" : "83"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U133", "Parent" : "83"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U134", "Parent" : "83"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U135", "Parent" : "83"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U136", "Parent" : "83"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U137", "Parent" : "83"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U138", "Parent" : "83"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U139", "Parent" : "83"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U140", "Parent" : "83"},
	{"ID" : "106", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U141", "Parent" : "83"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U142", "Parent" : "83"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U143", "Parent" : "83"},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U144", "Parent" : "83"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U145", "Parent" : "83"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U146", "Parent" : "83"},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U147", "Parent" : "83"},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U148", "Parent" : "83"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U149", "Parent" : "83"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U150", "Parent" : "83"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U151", "Parent" : "83"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U152", "Parent" : "83"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U153", "Parent" : "83"},
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U154", "Parent" : "83"},
	{"ID" : "120", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U155", "Parent" : "83"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U156", "Parent" : "83"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U157", "Parent" : "83"},
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U158", "Parent" : "83"},
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U159", "Parent" : "83"},
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U160", "Parent" : "83"},
	{"ID" : "126", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U161", "Parent" : "83"},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U162", "Parent" : "83"},
	{"ID" : "128", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U163", "Parent" : "83"},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_18s_19_4_1_U164", "Parent" : "83"},
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_19s_20_4_1_U165", "Parent" : "83"},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_20s_21_4_1_U166", "Parent" : "83"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_mul_21s_8ns_30_4_1_U167", "Parent" : "83"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0", "Parent" : "11", "Child" : ["135"],
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
		"StartSource" : "75",
		"StartFifo" : "start_for_SOFTMAX_tile_U0_U",
		"Port" : [
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["75","76"], "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["155"], "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "134", "Child" : ["136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154"],
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
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "135"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "135"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "135"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "135"},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "135"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "135"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "135"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "135"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "135"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "135"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "135"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "135"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "135"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U200", "Parent" : "135"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U201", "Parent" : "135"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U202", "Parent" : "135"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U203", "Parent" : "135"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "135"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0", "Parent" : "11", "Child" : ["156", "157"],
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
		"StartSource" : "134",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0_U",
		"Port" : [
			{"Name" : "A_s_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["134"], "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["158","159"], "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0.mul_mul_8s_18ns_27_4_1_U210", "Parent" : "155"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0.flow_control_loop_pipe_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0", "Parent" : "11", "Child" : ["159"],
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
		"StartSource" : "73",
		"StartFifo" : "start_for_MM1_tiled_U0_U",
		"InputProcess" : [
			{"ID" : "159", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0"}],
		"OutputProcess" : [
			{"ID" : "159", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0"}],
		"Port" : [
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["155"], "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0", "Port" : "A_sx_0"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0", "Port" : "V_1_0"}]},
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["519"], "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0", "Port" : "head_out_0"}]}]},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0", "Parent" : "158", "Child" : ["160", "161", "162", "164", "166"],
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
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["155"], "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "551", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "162", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["519"], "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.buff_B_V_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.tile_A_V_0_U", "Parent" : "159"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "159", "Child" : ["163"],
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
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "162"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "159", "Child" : ["165"],
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
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "159", "Child" : ["167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185"],
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
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U218", "Parent" : "166"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U219", "Parent" : "166"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U220", "Parent" : "166"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U221", "Parent" : "166"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U222", "Parent" : "166"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U223", "Parent" : "166"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U224", "Parent" : "166"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U225", "Parent" : "166"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U226", "Parent" : "166"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U227", "Parent" : "166"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U228", "Parent" : "166"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U229", "Parent" : "166"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U230", "Parent" : "166"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U231", "Parent" : "166"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U232", "Parent" : "166"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U233", "Parent" : "166"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U234", "Parent" : "166"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U235", "Parent" : "166"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "166"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0", "Parent" : "11", "Child" : ["187"],
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
		"StartSource" : "69",
		"StartFifo" : "start_for_MM_tiled_4_U0_U",
		"InputProcess" : [
			{"ID" : "187", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0"}],
		"OutputProcess" : [
			{"ID" : "187", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0"}],
		"Port" : [
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0", "Port" : "Q_1_1"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0", "Port" : "K_1_1"}]},
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["245"], "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0", "Port" : "A_1"}]}]},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0", "Parent" : "186", "Child" : ["188", "189", "190", "192", "194"],
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
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "544", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "548", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["245"], "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.buff_K_V_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.tile_Q_V_0_U", "Parent" : "187"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "187", "Child" : ["191"],
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
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "187", "Child" : ["193"],
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
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "187", "Child" : ["195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244"],
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
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U268", "Parent" : "194"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U269", "Parent" : "194"},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U270", "Parent" : "194"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U271", "Parent" : "194"},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U272", "Parent" : "194"},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U273", "Parent" : "194"},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U274", "Parent" : "194"},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U275", "Parent" : "194"},
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U276", "Parent" : "194"},
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U277", "Parent" : "194"},
	{"ID" : "205", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U278", "Parent" : "194"},
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U279", "Parent" : "194"},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U280", "Parent" : "194"},
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U281", "Parent" : "194"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U282", "Parent" : "194"},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U283", "Parent" : "194"},
	{"ID" : "211", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U284", "Parent" : "194"},
	{"ID" : "212", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U285", "Parent" : "194"},
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U286", "Parent" : "194"},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U287", "Parent" : "194"},
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U288", "Parent" : "194"},
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U289", "Parent" : "194"},
	{"ID" : "217", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U290", "Parent" : "194"},
	{"ID" : "218", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U291", "Parent" : "194"},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U292", "Parent" : "194"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U293", "Parent" : "194"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U294", "Parent" : "194"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U295", "Parent" : "194"},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U296", "Parent" : "194"},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U297", "Parent" : "194"},
	{"ID" : "225", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U298", "Parent" : "194"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U299", "Parent" : "194"},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U300", "Parent" : "194"},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U301", "Parent" : "194"},
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U302", "Parent" : "194"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U303", "Parent" : "194"},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U304", "Parent" : "194"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U305", "Parent" : "194"},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U306", "Parent" : "194"},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U307", "Parent" : "194"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U308", "Parent" : "194"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U309", "Parent" : "194"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U310", "Parent" : "194"},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U311", "Parent" : "194"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U312", "Parent" : "194"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_18s_19_4_1_U313", "Parent" : "194"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_19s_20_4_1_U314", "Parent" : "194"},
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_20s_21_4_1_U315", "Parent" : "194"},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_mul_21s_8ns_30_4_1_U316", "Parent" : "194"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "194"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0", "Parent" : "11", "Child" : ["246"],
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
		"StartSource" : "186",
		"StartFifo" : "start_for_SOFTMAX_tile_5_U0_U",
		"Port" : [
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["186","187"], "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["266"], "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "245", "Child" : ["247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265"],
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
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "246"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "246"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "246"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "246"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "246"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "246"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "246"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "246"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "246"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "246"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "246"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "246"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "246"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "246"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U200", "Parent" : "246"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U201", "Parent" : "246"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U202", "Parent" : "246"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U203", "Parent" : "246"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "246"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0", "Parent" : "11", "Child" : ["267", "268"],
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
		"StartSource" : "245",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0_U",
		"Port" : [
			{"Name" : "A_s_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["245"], "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["269","270"], "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0.mul_mul_8s_18ns_27_4_1_U330", "Parent" : "266"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0.flow_control_loop_pipe_U", "Parent" : "266"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0", "Parent" : "11", "Child" : ["270"],
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
		"StartSource" : "73",
		"StartFifo" : "start_for_MM1_tiled_7_U0_U",
		"InputProcess" : [
			{"ID" : "270", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0"}],
		"OutputProcess" : [
			{"ID" : "270", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0"}],
		"Port" : [
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["266"], "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0", "Port" : "A_sx_1"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0", "Port" : "V_1_1"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["519"], "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0", "Port" : "head_out_1"}]}]},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0", "Parent" : "269", "Child" : ["271", "272", "273", "275", "277"],
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
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["266"], "DependentChan" : "561", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["519"], "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.buff_B_V_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.tile_A_V_0_U", "Parent" : "270"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "270", "Child" : ["274"],
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
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "270", "Child" : ["276"],
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
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "270", "Child" : ["278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296"],
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
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U337", "Parent" : "277"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U338", "Parent" : "277"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U339", "Parent" : "277"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U340", "Parent" : "277"},
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U341", "Parent" : "277"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U342", "Parent" : "277"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U343", "Parent" : "277"},
	{"ID" : "285", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U344", "Parent" : "277"},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U345", "Parent" : "277"},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U346", "Parent" : "277"},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U347", "Parent" : "277"},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U348", "Parent" : "277"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U349", "Parent" : "277"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U350", "Parent" : "277"},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U351", "Parent" : "277"},
	{"ID" : "293", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U352", "Parent" : "277"},
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U353", "Parent" : "277"},
	{"ID" : "295", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U354", "Parent" : "277"},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0", "Parent" : "11", "Child" : ["298"],
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
		"StartSource" : "69",
		"StartFifo" : "start_for_MM_tiled_8_U0_U",
		"InputProcess" : [
			{"ID" : "298", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0"}],
		"OutputProcess" : [
			{"ID" : "298", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0"}],
		"Port" : [
			{"Name" : "Q_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0", "Port" : "Q_1_2"}]},
			{"Name" : "K_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0", "Port" : "K_1_2"}]},
			{"Name" : "A_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["356"], "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0", "Port" : "A_2"}]}]},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0", "Parent" : "297", "Child" : ["299", "300", "301", "303", "305"],
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
			{"Name" : "Q_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "545", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "303", "SubInstance" : "grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "549", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["356"], "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.buff_K_V_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.tile_Q_V_0_U", "Parent" : "298"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "298", "Child" : ["302"],
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
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "301"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "298", "Child" : ["304"],
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
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "303"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "298", "Child" : ["306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355"],
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
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U385", "Parent" : "305"},
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U386", "Parent" : "305"},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U387", "Parent" : "305"},
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U388", "Parent" : "305"},
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U389", "Parent" : "305"},
	{"ID" : "311", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U390", "Parent" : "305"},
	{"ID" : "312", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U391", "Parent" : "305"},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U392", "Parent" : "305"},
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U393", "Parent" : "305"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U394", "Parent" : "305"},
	{"ID" : "316", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U395", "Parent" : "305"},
	{"ID" : "317", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U396", "Parent" : "305"},
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U397", "Parent" : "305"},
	{"ID" : "319", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U398", "Parent" : "305"},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U399", "Parent" : "305"},
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U400", "Parent" : "305"},
	{"ID" : "322", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U401", "Parent" : "305"},
	{"ID" : "323", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U402", "Parent" : "305"},
	{"ID" : "324", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U403", "Parent" : "305"},
	{"ID" : "325", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U404", "Parent" : "305"},
	{"ID" : "326", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U405", "Parent" : "305"},
	{"ID" : "327", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U406", "Parent" : "305"},
	{"ID" : "328", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U407", "Parent" : "305"},
	{"ID" : "329", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U408", "Parent" : "305"},
	{"ID" : "330", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U409", "Parent" : "305"},
	{"ID" : "331", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U410", "Parent" : "305"},
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U411", "Parent" : "305"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U412", "Parent" : "305"},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U413", "Parent" : "305"},
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U414", "Parent" : "305"},
	{"ID" : "336", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U415", "Parent" : "305"},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U416", "Parent" : "305"},
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U417", "Parent" : "305"},
	{"ID" : "339", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U418", "Parent" : "305"},
	{"ID" : "340", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U419", "Parent" : "305"},
	{"ID" : "341", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U420", "Parent" : "305"},
	{"ID" : "342", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U421", "Parent" : "305"},
	{"ID" : "343", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U422", "Parent" : "305"},
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U423", "Parent" : "305"},
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U424", "Parent" : "305"},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U425", "Parent" : "305"},
	{"ID" : "347", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U426", "Parent" : "305"},
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U427", "Parent" : "305"},
	{"ID" : "349", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U428", "Parent" : "305"},
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U429", "Parent" : "305"},
	{"ID" : "351", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_18s_19_4_1_U430", "Parent" : "305"},
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_19s_20_4_1_U431", "Parent" : "305"},
	{"ID" : "353", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_20s_21_4_1_U432", "Parent" : "305"},
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_mul_21s_8ns_30_4_1_U433", "Parent" : "305"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "305"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0", "Parent" : "11", "Child" : ["357"],
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
		"StartSource" : "297",
		"StartFifo" : "start_for_SOFTMAX_tile_9_U0_U",
		"Port" : [
			{"Name" : "A_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["297","298"], "DependentChan" : "563", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["377"], "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "356", "Child" : ["358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376"],
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
	{"ID" : "358", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "357"},
	{"ID" : "359", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "357"},
	{"ID" : "360", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "357"},
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "357"},
	{"ID" : "362", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "357"},
	{"ID" : "363", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "357"},
	{"ID" : "364", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "357"},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "357"},
	{"ID" : "366", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "357"},
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "357"},
	{"ID" : "368", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "357"},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "357"},
	{"ID" : "370", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "357"},
	{"ID" : "371", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "357"},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U200", "Parent" : "357"},
	{"ID" : "373", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U201", "Parent" : "357"},
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U202", "Parent" : "357"},
	{"ID" : "375", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U203", "Parent" : "357"},
	{"ID" : "376", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "357"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0", "Parent" : "11", "Child" : ["378", "379"],
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
		"StartSource" : "356",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0_U",
		"Port" : [
			{"Name" : "A_s_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["356"], "DependentChan" : "564", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["380","381"], "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0.mul_mul_8s_18ns_27_4_1_U447", "Parent" : "377"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0.flow_control_loop_pipe_U", "Parent" : "377"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0", "Parent" : "11", "Child" : ["381"],
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
		"StartSource" : "73",
		"StartFifo" : "start_for_MM1_tiled_11_U0_U",
		"InputProcess" : [
			{"ID" : "381", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0"}],
		"OutputProcess" : [
			{"ID" : "381", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0"}],
		"Port" : [
			{"Name" : "A_sx_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["377"], "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "381", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0", "Port" : "A_sx_2"}]},
			{"Name" : "V_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "381", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0", "Port" : "V_1_2"}]},
			{"Name" : "head_out_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["519"], "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "381", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0", "Port" : "head_out_2"}]}]},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0", "Parent" : "380", "Child" : ["382", "383", "384", "386", "388"],
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
			{"Name" : "A_sx_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["377"], "DependentChan" : "565", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "386", "SubInstance" : "grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "384", "SubInstance" : "grp_MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["519"], "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_2", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.buff_B_V_U", "Parent" : "381"},
	{"ID" : "383", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.tile_A_V_0_U", "Parent" : "381"},
	{"ID" : "384", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "381", "Child" : ["385"],
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
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "381", "Child" : ["387"],
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
	{"ID" : "387", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "381", "Child" : ["389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407"],
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
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U454", "Parent" : "388"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U455", "Parent" : "388"},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U456", "Parent" : "388"},
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U457", "Parent" : "388"},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U458", "Parent" : "388"},
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U459", "Parent" : "388"},
	{"ID" : "395", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U460", "Parent" : "388"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U461", "Parent" : "388"},
	{"ID" : "397", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U462", "Parent" : "388"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U463", "Parent" : "388"},
	{"ID" : "399", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U464", "Parent" : "388"},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U465", "Parent" : "388"},
	{"ID" : "401", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U466", "Parent" : "388"},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U467", "Parent" : "388"},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U468", "Parent" : "388"},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U469", "Parent" : "388"},
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U470", "Parent" : "388"},
	{"ID" : "406", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U471", "Parent" : "388"},
	{"ID" : "407", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "388"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0", "Parent" : "11", "Child" : ["409"],
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
		"StartSource" : "69",
		"StartFifo" : "start_for_MM_tiled_12_U0_U",
		"InputProcess" : [
			{"ID" : "409", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0"}],
		"OutputProcess" : [
			{"ID" : "409", "Name" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0"}],
		"Port" : [
			{"Name" : "Q_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0", "Port" : "Q_1_3"}]},
			{"Name" : "K_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0", "Port" : "K_1_3"}]},
			{"Name" : "A_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["467"], "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0", "Port" : "A_3"}]}]},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0", "Parent" : "408", "Child" : ["410", "411", "412", "414", "416"],
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
			{"Name" : "Q_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "546", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "414", "SubInstance" : "grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "550", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "412", "SubInstance" : "grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["467"], "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.buff_K_V_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.tile_Q_V_0_U", "Parent" : "409"},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "409", "Child" : ["413"],
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
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "412"},
	{"ID" : "414", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "409", "Child" : ["415"],
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
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "409", "Child" : ["417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466"],
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
	{"ID" : "417", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U502", "Parent" : "416"},
	{"ID" : "418", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U503", "Parent" : "416"},
	{"ID" : "419", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U504", "Parent" : "416"},
	{"ID" : "420", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U505", "Parent" : "416"},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U506", "Parent" : "416"},
	{"ID" : "422", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U507", "Parent" : "416"},
	{"ID" : "423", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U508", "Parent" : "416"},
	{"ID" : "424", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U509", "Parent" : "416"},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U510", "Parent" : "416"},
	{"ID" : "426", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U511", "Parent" : "416"},
	{"ID" : "427", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U512", "Parent" : "416"},
	{"ID" : "428", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U513", "Parent" : "416"},
	{"ID" : "429", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U514", "Parent" : "416"},
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U515", "Parent" : "416"},
	{"ID" : "431", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U516", "Parent" : "416"},
	{"ID" : "432", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U517", "Parent" : "416"},
	{"ID" : "433", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U518", "Parent" : "416"},
	{"ID" : "434", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U519", "Parent" : "416"},
	{"ID" : "435", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U520", "Parent" : "416"},
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U521", "Parent" : "416"},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U522", "Parent" : "416"},
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U523", "Parent" : "416"},
	{"ID" : "439", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U524", "Parent" : "416"},
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U525", "Parent" : "416"},
	{"ID" : "441", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U526", "Parent" : "416"},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U527", "Parent" : "416"},
	{"ID" : "443", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U528", "Parent" : "416"},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U529", "Parent" : "416"},
	{"ID" : "445", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U530", "Parent" : "416"},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U531", "Parent" : "416"},
	{"ID" : "447", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U532", "Parent" : "416"},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U533", "Parent" : "416"},
	{"ID" : "449", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U534", "Parent" : "416"},
	{"ID" : "450", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U535", "Parent" : "416"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U536", "Parent" : "416"},
	{"ID" : "452", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U537", "Parent" : "416"},
	{"ID" : "453", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U538", "Parent" : "416"},
	{"ID" : "454", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U539", "Parent" : "416"},
	{"ID" : "455", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U540", "Parent" : "416"},
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U541", "Parent" : "416"},
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U542", "Parent" : "416"},
	{"ID" : "458", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U543", "Parent" : "416"},
	{"ID" : "459", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U544", "Parent" : "416"},
	{"ID" : "460", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U545", "Parent" : "416"},
	{"ID" : "461", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U546", "Parent" : "416"},
	{"ID" : "462", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_18s_19_4_1_U547", "Parent" : "416"},
	{"ID" : "463", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_19s_20_4_1_U548", "Parent" : "416"},
	{"ID" : "464", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_20s_21_4_1_U549", "Parent" : "416"},
	{"ID" : "465", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_mul_21s_8ns_30_4_1_U550", "Parent" : "416"},
	{"ID" : "466", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "416"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0", "Parent" : "11", "Child" : ["468"],
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
		"StartSource" : "408",
		"StartFifo" : "start_for_SOFTMAX_tile_13_U0_U",
		"Port" : [
			{"Name" : "A_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["408","409"], "DependentChan" : "567", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "468", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["488"], "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "468", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "468", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "467", "Child" : ["469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487"],
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
	{"ID" : "469", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "468"},
	{"ID" : "470", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "468"},
	{"ID" : "471", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "468"},
	{"ID" : "472", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "468"},
	{"ID" : "473", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "468"},
	{"ID" : "474", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "468"},
	{"ID" : "475", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "468"},
	{"ID" : "476", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "468"},
	{"ID" : "477", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "468"},
	{"ID" : "478", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "468"},
	{"ID" : "479", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "468"},
	{"ID" : "480", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "468"},
	{"ID" : "481", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "468"},
	{"ID" : "482", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "468"},
	{"ID" : "483", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U200", "Parent" : "468"},
	{"ID" : "484", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U201", "Parent" : "468"},
	{"ID" : "485", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U202", "Parent" : "468"},
	{"ID" : "486", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U203", "Parent" : "468"},
	{"ID" : "487", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "468"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0", "Parent" : "11", "Child" : ["489", "490"],
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
		"StartSource" : "467",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0_U",
		"Port" : [
			{"Name" : "A_s_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["467"], "DependentChan" : "568", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["491","492"], "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0.mul_mul_8s_18ns_27_4_1_U564", "Parent" : "488"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0.flow_control_loop_pipe_U", "Parent" : "488"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0", "Parent" : "11", "Child" : ["492"],
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
		"StartSource" : "73",
		"StartFifo" : "start_for_MM1_tiled_15_U0_U",
		"InputProcess" : [
			{"ID" : "492", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0"}],
		"OutputProcess" : [
			{"ID" : "492", "Name" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0"}],
		"Port" : [
			{"Name" : "A_sx_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["488"], "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "492", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0", "Port" : "A_sx_3"}]},
			{"Name" : "V_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "492", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0", "Port" : "V_1_3"}]},
			{"Name" : "head_out_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["519"], "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "492", "SubInstance" : "MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0", "Port" : "head_out_3"}]}]},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0", "Parent" : "491", "Child" : ["493", "494", "495", "497", "499"],
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
			{"Name" : "A_sx_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["488"], "DependentChan" : "569", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "497", "SubInstance" : "grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "495", "SubInstance" : "grp_MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["519"], "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "499", "SubInstance" : "grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_3", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "493", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.buff_B_V_U", "Parent" : "492"},
	{"ID" : "494", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.tile_A_V_0_U", "Parent" : "492"},
	{"ID" : "495", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "492", "Child" : ["496"],
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
	{"ID" : "496", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "495"},
	{"ID" : "497", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "492", "Child" : ["498"],
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
	{"ID" : "498", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "497"},
	{"ID" : "499", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "492", "Child" : ["500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518"],
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
	{"ID" : "500", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U571", "Parent" : "499"},
	{"ID" : "501", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U572", "Parent" : "499"},
	{"ID" : "502", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U573", "Parent" : "499"},
	{"ID" : "503", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U574", "Parent" : "499"},
	{"ID" : "504", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U575", "Parent" : "499"},
	{"ID" : "505", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U576", "Parent" : "499"},
	{"ID" : "506", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U577", "Parent" : "499"},
	{"ID" : "507", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U578", "Parent" : "499"},
	{"ID" : "508", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U579", "Parent" : "499"},
	{"ID" : "509", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U580", "Parent" : "499"},
	{"ID" : "510", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U581", "Parent" : "499"},
	{"ID" : "511", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U582", "Parent" : "499"},
	{"ID" : "512", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U583", "Parent" : "499"},
	{"ID" : "513", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U584", "Parent" : "499"},
	{"ID" : "514", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U585", "Parent" : "499"},
	{"ID" : "515", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U586", "Parent" : "499"},
	{"ID" : "516", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U587", "Parent" : "499"},
	{"ID" : "517", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U588", "Parent" : "499"},
	{"ID" : "518", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "499"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.merge_heads_U0", "Parent" : "11", "Child" : ["520"],
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
		"StartSource" : "158",
		"StartFifo" : "start_for_merge_heads_U0_U",
		"Port" : [
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["158","159"], "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["269","270"], "DependentChan" : "562", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "head_out_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["380","381"], "DependentChan" : "566", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "head_out_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["491","492"], "DependentChan" : "570", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["521","527"], "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_linear4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1_VITIS_LOOP_179_2_VITIS_LOOP_180_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.merge_heads_U0.flow_control_loop_pipe_U", "Parent" : "519"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0", "Parent" : "11", "Child" : ["522", "527", "538", "539"],
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
			{"ID" : "522", "Name" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0"}],
		"OutputProcess" : [
			{"ID" : "527", "Name" : "Linear_Layer_2_U0"}],
		"Port" : [
			{"Name" : "OUT_M", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "522", "SubInstance" : "WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0", "Port" : "OUT_M"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["519"], "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "527", "SubInstance" : "Linear_Layer_2_U0", "Port" : "out_linear4"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["595"], "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "527", "SubInstance" : "Linear_Layer_2_U0", "Port" : "out_mha8"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "527", "SubInstance" : "Linear_Layer_2_U0", "Port" : "bias_h_0_V"}]}]},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0", "Parent" : "521", "Child" : ["523", "524", "526"],
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
					{"ID" : "523", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_112", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["527"], "DependentChan" : "538", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "524", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "523", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.grp_burst_read_beats_1_ap_int_8_s_fu_112", "Parent" : "522",
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
	{"ID" : "524", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120", "Parent" : "522", "Child" : ["525"],
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
	{"ID" : "525", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "524"},
	{"ID" : "526", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.burst_reads_fifo_U", "Parent" : "522"},
	{"ID" : "527", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0", "Parent" : "521", "Child" : ["528", "529", "532", "535"],
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
		"StartSource" : "522",
		"StartFifo" : "start_for_Linear_Layer_2_U0_U",
		"Port" : [
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["519"], "DependentChan" : "571", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_linear4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["595"], "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "532", "SubInstance" : "grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96", "Port" : "out_mha8", "Inst_start_state" : "4", "Inst_end_state" : "7"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["522"], "DependentChan" : "538", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "535", "SubInstance" : "grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9_fu_103", "Port" : "out_w1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "529", "SubInstance" : "grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2_fu_89", "Port" : "bias_h_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "528", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.C_tile_V_U", "Parent" : "527"},
	{"ID" : "529", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2_fu_89", "Parent" : "527", "Child" : ["530", "531"],
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
	{"ID" : "530", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2_fu_89.bias_h_0_V_U", "Parent" : "529"},
	{"ID" : "531", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "529"},
	{"ID" : "532", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96", "Parent" : "527", "Child" : ["533", "534"],
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
	{"ID" : "533", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96.mul_32s_9ns_41_1_1_U630", "Parent" : "532"},
	{"ID" : "534", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "532"},
	{"ID" : "535", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9_fu_103", "Parent" : "527", "Child" : ["536", "537"],
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
	{"ID" : "536", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9_fu_103.mac_muladd_8s_8s_32s_32_4_1_U626", "Parent" : "535"},
	{"ID" : "537", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "535"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.out_w_U", "Parent" : "521"},
	{"ID" : "539", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.start_for_Linear_Layer_2_U0_U", "Parent" : "521"},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.q_lin_U", "Parent" : "11"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.k_lin_U", "Parent" : "11"},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.v_lin_U", "Parent" : "11"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_1_0_U", "Parent" : "11"},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_1_1_U", "Parent" : "11"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_1_2_U", "Parent" : "11"},
	{"ID" : "546", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_1_3_U", "Parent" : "11"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_1_0_U", "Parent" : "11"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_1_1_U", "Parent" : "11"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_1_2_U", "Parent" : "11"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_1_3_U", "Parent" : "11"},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_1_0_U", "Parent" : "11"},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_1_1_U", "Parent" : "11"},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_1_2_U", "Parent" : "11"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_1_3_U", "Parent" : "11"},
	{"ID" : "555", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_0_U", "Parent" : "11"},
	{"ID" : "556", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_s_0_U", "Parent" : "11"},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_sx_0_U", "Parent" : "11"},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.head_out_0_U", "Parent" : "11"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_1_U", "Parent" : "11"},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_s_1_U", "Parent" : "11"},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_sx_1_U", "Parent" : "11"},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.head_out_1_U", "Parent" : "11"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_2_U", "Parent" : "11"},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_s_2_U", "Parent" : "11"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_sx_2_U", "Parent" : "11"},
	{"ID" : "566", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.head_out_2_U", "Parent" : "11"},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_3_U", "Parent" : "11"},
	{"ID" : "568", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_s_3_U", "Parent" : "11"},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_sx_3_U", "Parent" : "11"},
	{"ID" : "570", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.head_out_3_U", "Parent" : "11"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.out_linear_U", "Parent" : "11"},
	{"ID" : "572", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_split_heads_U0_U", "Parent" : "11"},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_split_heads_2_U0_U", "Parent" : "11"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_split_heads_3_U0_U", "Parent" : "11"},
	{"ID" : "575", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM_tiled_U0_U", "Parent" : "11"},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM_tiled_4_U0_U", "Parent" : "11"},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM_tiled_8_U0_U", "Parent" : "11"},
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM_tiled_12_U0_U", "Parent" : "11"},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_U0_U", "Parent" : "11"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_7_U0_U", "Parent" : "11"},
	{"ID" : "581", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_11_U0_U", "Parent" : "11"},
	{"ID" : "582", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_15_U0_U", "Parent" : "11"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_U0_U", "Parent" : "11"},
	{"ID" : "584", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0_U", "Parent" : "11"},
	{"ID" : "585", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_merge_heads_U0_U", "Parent" : "11"},
	{"ID" : "586", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_5_U0_U", "Parent" : "11"},
	{"ID" : "587", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0_U", "Parent" : "11"},
	{"ID" : "588", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_9_U0_U", "Parent" : "11"},
	{"ID" : "589", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0_U", "Parent" : "11"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_13_U0_U", "Parent" : "11"},
	{"ID" : "591", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0_U", "Parent" : "11"},
	{"ID" : "592", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0", "Parent" : "0", "Child" : ["593", "594"],
		"CDFG" : "requant_ap_int_8_ap_int_8_17_192_23553_16_1_s",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0_U",
		"Port" : [
			{"Name" : "res1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "655", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_rq2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["595"], "DependentChan" : "662", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_rq2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "593", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0.mul_mul_8s_15ns_24_4_1_U706", "Parent" : "592"},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0.flow_control_loop_pipe_U", "Parent" : "592"},
	{"ID" : "595", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0", "Parent" : "0", "Child" : ["596", "597"],
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
		"StartSource" : "11",
		"StartFifo" : "start_for_ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0_U",
		"Port" : [
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11","521","527"], "DependentChan" : "661", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_mha8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_rq2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["592"], "DependentChan" : "662", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_rq2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_res_09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["598"], "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_res_09_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_802_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "596", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.am_addmul_8s_8s_16ns_26_4_1_U710", "Parent" : "595"},
	{"ID" : "597", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.flow_control_loop_pipe_U", "Parent" : "595"},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicate_stream_ap_int_8_17_192_1_1_U0", "Parent" : "0", "Child" : ["599"],
		"CDFG" : "duplicate_stream_ap_int_8_17_192_1_1",
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
		"StartSource" : "595",
		"StartFifo" : "start_for_duplicate_stream_ap_int_8_17_192_1_1_U0_U",
		"Port" : [
			{"Name" : "out_res_09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["595"], "DependentChan" : "663", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_res_09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["649"], "DependentChan" : "664", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["600"], "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x212_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicate_stream_ap_int_8_17_192_1_1_U0.flow_control_loop_pipe_U", "Parent" : "598"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_1_U0", "Parent" : "0", "Child" : ["601", "602", "603", "604"],
		"CDFG" : "BatchNorm_tiled_1",
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
		"StartSource" : "598",
		"StartFifo" : "start_for_BatchNorm_tiled_1_U0_U",
		"Port" : [
			{"Name" : "x212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["598"], "DependentChan" : "665", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["605","606","612"], "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm_out_113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bn1_mul_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bn1_add_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_1_VITIS_LOOP_186_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "601", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_1_U0.bn1_mul_1_U", "Parent" : "600"},
	{"ID" : "602", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_1_U0.bn1_add_1_U", "Parent" : "600"},
	{"ID" : "603", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_1_U0.mul_mul_16ns_8s_24_4_1_U718", "Parent" : "600"},
	{"ID" : "604", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_1_U0.flow_control_loop_pipe_U", "Parent" : "600"},
	{"ID" : "605", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0", "Parent" : "0", "Child" : ["606", "625", "627", "646", "647", "648"],
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
			{"ID" : "606", "Name" : "FC1_tiled_oc_2_U0"},
			{"ID" : "627", "Name" : "FC2_tiled_oc_2_U0"}],
		"OutputProcess" : [
			{"ID" : "627", "Name" : "FC2_tiled_oc_2_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "606", "SubInstance" : "FC1_tiled_oc_2_U0", "Port" : "gmem0"}]},
			{"Name" : "in_w_up", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "627", "SubInstance" : "FC2_tiled_oc_2_U0", "Port" : "gmem1"}]},
			{"Name" : "in_w_down", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["600"], "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "606", "SubInstance" : "FC1_tiled_oc_2_U0", "Port" : "norm_out_113"}]},
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["652"], "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "627", "SubInstance" : "FC2_tiled_oc_2_U0", "Port" : "mlp_out14"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "606", "SubInstance" : "FC1_tiled_oc_2_U0", "Port" : "bias_1_0_V"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "627", "SubInstance" : "FC2_tiled_oc_2_U0", "Port" : "bias_2_0_V"}]}]},
	{"ID" : "606", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0", "Parent" : "605", "Child" : ["607", "612", "623", "624"],
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
			{"ID" : "607", "Name" : "WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "612", "Name" : "Linear_Layer_1_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "607", "SubInstance" : "WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0", "Port" : "gmem0"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["600"], "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "Linear_Layer_1_U0", "Port" : "norm_out_113"}]},
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["625"], "DependentChan" : "646", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "Linear_Layer_1_U0", "Port" : "fc11"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "Linear_Layer_1_U0", "Port" : "bias_1_0_V"}]}]},
	{"ID" : "607", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0", "Parent" : "606", "Child" : ["608", "609", "611"],
		"CDFG" : "WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_s",
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
					{"ID" : "608", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_118", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["612"], "DependentChan" : "623", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "609", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_126", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "608", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_118", "Parent" : "607",
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
	{"ID" : "609", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_126", "Parent" : "607", "Child" : ["610"],
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
	{"ID" : "610", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "609"},
	{"ID" : "611", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0.burst_reads_fifo_U", "Parent" : "607"},
	{"ID" : "612", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0", "Parent" : "606", "Child" : ["613", "614", "617", "620"],
		"CDFG" : "Linear_Layer_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2559130", "EstimateLatencyMax" : "2559130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "607",
		"StartFifo" : "start_for_Linear_Layer_1_U0_U",
		"Port" : [
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["600"], "DependentChan" : "666", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm_out_113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["625"], "DependentChan" : "646", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1588_17_fu_96", "Port" : "fc11", "Inst_start_state" : "4", "Inst_end_state" : "7"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["607"], "DependentChan" : "623", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "620", "SubInstance" : "grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1540_9_fu_103", "Port" : "out_w1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "614", "SubInstance" : "grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1512_2_fu_89", "Port" : "bias_1_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "613", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.C_tile_V_U", "Parent" : "612"},
	{"ID" : "614", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1512_2_fu_89", "Parent" : "612", "Child" : ["615", "616"],
		"CDFG" : "Linear_Layer_1_Pipeline_VITIS_LOOP_1512_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "770", "EstimateLatencyMax" : "770",
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
	{"ID" : "615", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1512_2_fu_89.bias_1_0_V_U", "Parent" : "614"},
	{"ID" : "616", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1512_2_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "614"},
	{"ID" : "617", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1588_17_fu_96", "Parent" : "612", "Child" : ["618", "619"],
		"CDFG" : "Linear_Layer_1_Pipeline_VITIS_LOOP_1588_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "771", "EstimateLatencyMax" : "771",
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
	{"ID" : "618", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1588_17_fu_96.mul_32s_9ns_41_1_1_U734", "Parent" : "617"},
	{"ID" : "619", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1588_17_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "617"},
	{"ID" : "620", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1540_9_fu_103", "Parent" : "612", "Child" : ["621", "622"],
		"CDFG" : "Linear_Layer_1_Pipeline_VITIS_LOOP_1540_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "773", "EstimateLatencyMax" : "773",
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
	{"ID" : "621", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1540_9_fu_103.mac_muladd_8s_8s_32s_32_4_1_U730", "Parent" : "620"},
	{"ID" : "622", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1540_9_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "620"},
	{"ID" : "623", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.out_w_U", "Parent" : "606"},
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.start_for_Linear_Layer_1_U0_U", "Parent" : "606"},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.Relu_tiled_oc_U0", "Parent" : "605", "Child" : ["626"],
		"CDFG" : "Relu_tiled_oc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13058", "EstimateLatencyMax" : "13058",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "606",
		"StartFifo" : "start_for_Relu_tiled_oc_U0_U",
		"Port" : [
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["606","612"], "DependentChan" : "646", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fc11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "relu2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["627","633"], "DependentChan" : "647", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "relu2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_502_1_VITIS_LOOP_504_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.Relu_tiled_oc_U0.flow_control_loop_pipe_U", "Parent" : "625"},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0", "Parent" : "605", "Child" : ["628", "633", "644", "645"],
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
			{"ID" : "628", "Name" : "WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "633", "Name" : "Linear_Layer_U0"}],
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "628", "SubInstance" : "WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0", "Port" : "gmem1"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["625"], "DependentChan" : "647", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "633", "SubInstance" : "Linear_Layer_U0", "Port" : "relu2"}]},
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["652"], "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "633", "SubInstance" : "Linear_Layer_U0", "Port" : "mlp_out14"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "633", "SubInstance" : "Linear_Layer_U0", "Port" : "bias_2_0_V"}]}]},
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0", "Parent" : "627", "Child" : ["629", "630", "632"],
		"CDFG" : "WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_s",
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
					{"ID" : "629", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_120", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["633"], "DependentChan" : "644", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "630", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_128", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "629", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_120", "Parent" : "628",
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
	{"ID" : "630", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_128", "Parent" : "628", "Child" : ["631"],
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
	{"ID" : "631", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "630"},
	{"ID" : "632", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0.burst_reads_fifo_U", "Parent" : "628"},
	{"ID" : "633", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0", "Parent" : "627", "Child" : ["634", "635", "638", "641"],
		"CDFG" : "Linear_Layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2617882", "EstimateLatencyMax" : "2617882",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "628",
		"StartFifo" : "start_for_Linear_Layer_U0_U",
		"Port" : [
			{"Name" : "relu2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["625"], "DependentChan" : "647", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "relu2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["652"], "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "638", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_96", "Port" : "mlp_out14", "Inst_start_state" : "4", "Inst_end_state" : "7"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["628"], "DependentChan" : "644", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "641", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_fu_103", "Port" : "out_w1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "635", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_89", "Port" : "bias_2_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1525_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "634", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.C_tile_V_U", "Parent" : "633"},
	{"ID" : "635", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_89", "Parent" : "633", "Child" : ["636", "637"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1512_2",
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
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1512_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "636", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_89.bias_2_0_V_U", "Parent" : "635"},
	{"ID" : "637", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "635"},
	{"ID" : "638", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_96", "Parent" : "633", "Child" : ["639", "640"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1588_17",
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
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mlp_out14_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1588_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "639", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_96.mul_32s_10ns_42_1_1_U759", "Parent" : "638"},
	{"ID" : "640", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "638"},
	{"ID" : "641", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_fu_103", "Parent" : "633", "Child" : ["642", "643"],
		"CDFG" : "Linear_Layer_Pipeline_VITIS_LOOP_1540_9",
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
	{"ID" : "642", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_fu_103.mac_muladd_8s_8s_32s_32_4_1_U755", "Parent" : "641"},
	{"ID" : "643", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "641"},
	{"ID" : "644", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.out_w_U", "Parent" : "627"},
	{"ID" : "645", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.start_for_Linear_Layer_U0_U", "Parent" : "627"},
	{"ID" : "646", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.fc1_U", "Parent" : "605"},
	{"ID" : "647", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.relu_U", "Parent" : "605"},
	{"ID" : "648", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.start_for_Relu_tiled_oc_U0_U", "Parent" : "605"},
	{"ID" : "649", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0", "Parent" : "0", "Child" : ["650", "651"],
		"CDFG" : "requant_ap_int_8_ap_int_8_17_192_68366_16_1_s",
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
		"StartSource" : "598",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0_U",
		"Port" : [
			{"Name" : "res_110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["598"], "DependentChan" : "664", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_1_rq11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["652"], "DependentChan" : "668", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_1_rq11_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "650", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0.mul_mul_8s_17ns_26_4_1_U781", "Parent" : "649"},
	{"ID" : "651", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0.flow_control_loop_pipe_U", "Parent" : "649"},
	{"ID" : "652", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0", "Parent" : "0", "Child" : ["653", "654"],
		"CDFG" : "ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_s",
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
		"StartSource" : "605",
		"StartFifo" : "start_for_ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0_U",
		"Port" : [
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["605","627","633"], "DependentChan" : "667", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_out14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_1_rq11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["649"], "DependentChan" : "668", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_1_rq11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_stream2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "output_stream2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_802_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "653", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0.am_addmul_8s_8s_16ns_26_4_1_U785", "Parent" : "652"},
	{"ID" : "654", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0.flow_control_loop_pipe_U", "Parent" : "652"},
	{"ID" : "655", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_U", "Parent" : "0"},
	{"ID" : "656", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x1_U", "Parent" : "0"},
	{"ID" : "657", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.norm_out_U", "Parent" : "0"},
	{"ID" : "658", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_in_U", "Parent" : "0"},
	{"ID" : "659", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_in_U", "Parent" : "0"},
	{"ID" : "660", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_in_U", "Parent" : "0"},
	{"ID" : "661", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_mha_U", "Parent" : "0"},
	{"ID" : "662", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_rq_U", "Parent" : "0"},
	{"ID" : "663", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_res_0_U", "Parent" : "0"},
	{"ID" : "664", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_1_U", "Parent" : "0"},
	{"ID" : "665", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x2_U", "Parent" : "0"},
	{"ID" : "666", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.norm_out_1_U", "Parent" : "0"},
	{"ID" : "667", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_out_U", "Parent" : "0"},
	{"ID" : "668", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_1_rq_U", "Parent" : "0"},
	{"ID" : "669", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_BatchNorm_tiled_0_U0_U", "Parent" : "0"},
	{"ID" : "670", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0_U", "Parent" : "0"},
	{"ID" : "671", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_triplicate_stream_ap_int_8_17_192_1_U0_U", "Parent" : "0"},
	{"ID" : "672", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0_U", "Parent" : "0"},
	{"ID" : "673", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_duplicate_stream_ap_int_8_17_192_1_1_U0_U", "Parent" : "0"},
	{"ID" : "674", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_BatchNorm_tiled_1_U0_U", "Parent" : "0"},
	{"ID" : "675", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0_U", "Parent" : "0"},
	{"ID" : "676", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ViT_Block_Core {
		input_stream1 {Type I LastRead 0 FirstWrite -1}
		output_stream2 {Type O LastRead -1 FirstWrite 4}
		Q {Type I LastRead 7 FirstWrite -1}
		in_q {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead 7 FirstWrite -1}
		in_k {Type I LastRead 6 FirstWrite -1}
		V {Type I LastRead 7 FirstWrite -1}
		in_v {Type I LastRead 6 FirstWrite -1}
		OUT_M {Type I LastRead 7 FirstWrite -1}
		in_o {Type I LastRead 6 FirstWrite -1}
		gmem0 {Type I LastRead 7 FirstWrite -1}
		in_w_up {Type I LastRead 14 FirstWrite -1}
		gmem1 {Type I LastRead 7 FirstWrite -1}
		in_w_down {Type I LastRead 14 FirstWrite -1}
		bn0_mul_1 {Type I LastRead -1 FirstWrite -1}
		bn0_add_1 {Type I LastRead -1 FirstWrite -1}
		bias_q_0_V {Type I LastRead -1 FirstWrite -1}
		bias_k_0_V {Type I LastRead -1 FirstWrite -1}
		bias_v_0_V {Type I LastRead -1 FirstWrite -1}
		exp_lut_V {Type I LastRead -1 FirstWrite -1}
		bias_h_0_V {Type I LastRead -1 FirstWrite -1}
		bn1_mul_1 {Type I LastRead -1 FirstWrite -1}
		bn1_add_1 {Type I LastRead -1 FirstWrite -1}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}
		bias_2_0_V {Type I LastRead -1 FirstWrite -1}}
	duplicate_stream_ap_int_8_17_192_1_s {
		input_stream1 {Type I LastRead 0 FirstWrite -1}
		res1 {Type O LastRead -1 FirstWrite 1}
		x13 {Type O LastRead -1 FirstWrite 1}}
	BatchNorm_tiled_0 {
		x13 {Type I LastRead 0 FirstWrite -1}
		norm_out4 {Type O LastRead -1 FirstWrite 4}
		bn0_mul_1 {Type I LastRead -1 FirstWrite -1}
		bn0_add_1 {Type I LastRead -1 FirstWrite -1}}
	BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_s {
		x13 {Type I LastRead 0 FirstWrite -1}
		norm_out4 {Type O LastRead -1 FirstWrite 4}
		bn0_mul_1 {Type I LastRead -1 FirstWrite -1}
		bn0_add_1 {Type I LastRead -1 FirstWrite -1}}
	triplicate_stream_ap_int_8_17_192_1_s {
		norm_out4 {Type I LastRead 1 FirstWrite -1}
		Q_in5 {Type O LastRead -1 FirstWrite 1}
		K_in6 {Type O LastRead -1 FirstWrite 1}
		V_in7 {Type O LastRead -1 FirstWrite 1}}
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
		lhs {Type I LastRead 0 FirstWrite -1}}
	requant_ap_int_8_ap_int_8_17_192_23553_16_1_s {
		res1 {Type I LastRead 1 FirstWrite -1}
		res_rq2 {Type O LastRead -1 FirstWrite 4}}
	ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_s {
		out_mha8 {Type I LastRead 1 FirstWrite -1}
		res_rq2 {Type I LastRead 1 FirstWrite -1}
		out_res_09 {Type O LastRead -1 FirstWrite 4}}
	duplicate_stream_ap_int_8_17_192_1_1 {
		out_res_09 {Type I LastRead 1 FirstWrite -1}
		res_110 {Type O LastRead -1 FirstWrite 1}
		x212 {Type O LastRead -1 FirstWrite 1}}
	BatchNorm_tiled_1 {
		x212 {Type I LastRead 1 FirstWrite -1}
		norm_out_113 {Type O LastRead -1 FirstWrite 4}
		bn1_mul_1 {Type I LastRead -1 FirstWrite -1}
		bn1_add_1 {Type I LastRead -1 FirstWrite -1}}
	MLP_tiled_oc {
		gmem0 {Type I LastRead 7 FirstWrite -1}
		in_w_up {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 7 FirstWrite -1}
		in_w_down {Type I LastRead 4 FirstWrite -1}
		norm_out_113 {Type I LastRead 3 FirstWrite -1}
		mlp_out14 {Type O LastRead -1 FirstWrite 2}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}
		bias_2_0_V {Type I LastRead -1 FirstWrite -1}}
	FC1_tiled_oc_2 {
		gmem0 {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		norm_out_113 {Type I LastRead 3 FirstWrite -1}
		fc11 {Type O LastRead -1 FirstWrite 2}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_s {
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
	Linear_Layer_1 {
		norm_out_113 {Type I LastRead 3 FirstWrite -1}
		fc11 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_1_Pipeline_VITIS_LOOP_1512_2 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_1_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_1_Pipeline_VITIS_LOOP_1588_17 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		fc11 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_1_Pipeline_VITIS_LOOP_1540_9 {
		C_tile_V {Type IO LastRead 2 FirstWrite 4}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		lhs {Type I LastRead 0 FirstWrite -1}}
	Relu_tiled_oc {
		fc11 {Type I LastRead 1 FirstWrite -1}
		relu2 {Type O LastRead -1 FirstWrite 1}}
	FC2_tiled_oc_2 {
		gmem1 {Type I LastRead 7 FirstWrite -1}
		in_w {Type I LastRead 0 FirstWrite -1}
		relu2 {Type I LastRead 3 FirstWrite -1}
		mlp_out14 {Type O LastRead -1 FirstWrite 2}
		bias_2_0_V {Type I LastRead -1 FirstWrite -1}}
	WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_s {
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
	Linear_Layer {
		relu2 {Type I LastRead 3 FirstWrite -1}
		mlp_out14 {Type O LastRead -1 FirstWrite 2}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		bias_2_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1512_2 {
		C_tile_V {Type O LastRead -1 FirstWrite 1}
		bias_2_0_V {Type I LastRead -1 FirstWrite -1}}
	Linear_Layer_Pipeline_VITIS_LOOP_1588_17 {
		C_tile_V {Type I LastRead 0 FirstWrite -1}
		mlp_out14 {Type O LastRead -1 FirstWrite 2}}
	Linear_Layer_Pipeline_VITIS_LOOP_1540_9 {
		C_tile_V {Type IO LastRead 2 FirstWrite 4}
		out_w1 {Type I LastRead 1 FirstWrite -1}
		lhs {Type I LastRead 0 FirstWrite -1}}
	requant_ap_int_8_ap_int_8_17_192_68366_16_1_s {
		res_110 {Type I LastRead 1 FirstWrite -1}
		res_1_rq11 {Type O LastRead -1 FirstWrite 4}}
	ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_s {
		mlp_out14 {Type I LastRead 1 FirstWrite -1}
		res_1_rq11 {Type I LastRead 1 FirstWrite -1}
		output_stream2 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_stream1 { ap_fifo {  { input_stream1_dout fifo_port_we 0 8 }  { input_stream1_empty_n fifo_status 0 1 }  { input_stream1_read fifo_data 1 1 } } }
	output_stream2 { ap_fifo {  { output_stream2_din fifo_port_we 1 8 }  { output_stream2_full_n fifo_status 0 1 }  { output_stream2_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_Q_AWVALID VALID 1 1 }  { m_axi_Q_AWREADY READY 0 1 }  { m_axi_Q_AWADDR ADDR 1 64 }  { m_axi_Q_AWID ID 1 1 }  { m_axi_Q_AWLEN SIZE 1 32 }  { m_axi_Q_AWSIZE BURST 1 3 }  { m_axi_Q_AWBURST LOCK 1 2 }  { m_axi_Q_AWLOCK CACHE 1 2 }  { m_axi_Q_AWCACHE PROT 1 4 }  { m_axi_Q_AWPROT QOS 1 3 }  { m_axi_Q_AWQOS REGION 1 4 }  { m_axi_Q_AWREGION USER 1 4 }  { m_axi_Q_AWUSER DATA 1 1 }  { m_axi_Q_WVALID VALID 1 1 }  { m_axi_Q_WREADY READY 0 1 }  { m_axi_Q_WDATA FIFONUM 1 8 }  { m_axi_Q_WSTRB STRB 1 1 }  { m_axi_Q_WLAST LAST 1 1 }  { m_axi_Q_WID ID 1 1 }  { m_axi_Q_WUSER DATA 1 1 }  { m_axi_Q_ARVALID VALID 1 1 }  { m_axi_Q_ARREADY READY 0 1 }  { m_axi_Q_ARADDR ADDR 1 64 }  { m_axi_Q_ARID ID 1 1 }  { m_axi_Q_ARLEN SIZE 1 32 }  { m_axi_Q_ARSIZE BURST 1 3 }  { m_axi_Q_ARBURST LOCK 1 2 }  { m_axi_Q_ARLOCK CACHE 1 2 }  { m_axi_Q_ARCACHE PROT 1 4 }  { m_axi_Q_ARPROT QOS 1 3 }  { m_axi_Q_ARQOS REGION 1 4 }  { m_axi_Q_ARREGION USER 1 4 }  { m_axi_Q_ARUSER DATA 1 1 }  { m_axi_Q_RVALID VALID 0 1 }  { m_axi_Q_RREADY READY 1 1 }  { m_axi_Q_RDATA FIFONUM 0 8 }  { m_axi_Q_RLAST LAST 0 1 }  { m_axi_Q_RID ID 0 1 }  { m_axi_Q_RFIFONUM LEN 0 13 }  { m_axi_Q_RUSER DATA 0 1 }  { m_axi_Q_RRESP RESP 0 2 }  { m_axi_Q_BVALID VALID 0 1 }  { m_axi_Q_BREADY READY 1 1 }  { m_axi_Q_BRESP RESP 0 2 }  { m_axi_Q_BID ID 0 1 }  { m_axi_Q_BUSER DATA 0 1 } } }
	in_q { ap_none {  { in_q in_data 0 64 }  { in_q_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_K_AWVALID VALID 1 1 }  { m_axi_K_AWREADY READY 0 1 }  { m_axi_K_AWADDR ADDR 1 64 }  { m_axi_K_AWID ID 1 1 }  { m_axi_K_AWLEN SIZE 1 32 }  { m_axi_K_AWSIZE BURST 1 3 }  { m_axi_K_AWBURST LOCK 1 2 }  { m_axi_K_AWLOCK CACHE 1 2 }  { m_axi_K_AWCACHE PROT 1 4 }  { m_axi_K_AWPROT QOS 1 3 }  { m_axi_K_AWQOS REGION 1 4 }  { m_axi_K_AWREGION USER 1 4 }  { m_axi_K_AWUSER DATA 1 1 }  { m_axi_K_WVALID VALID 1 1 }  { m_axi_K_WREADY READY 0 1 }  { m_axi_K_WDATA FIFONUM 1 8 }  { m_axi_K_WSTRB STRB 1 1 }  { m_axi_K_WLAST LAST 1 1 }  { m_axi_K_WID ID 1 1 }  { m_axi_K_WUSER DATA 1 1 }  { m_axi_K_ARVALID VALID 1 1 }  { m_axi_K_ARREADY READY 0 1 }  { m_axi_K_ARADDR ADDR 1 64 }  { m_axi_K_ARID ID 1 1 }  { m_axi_K_ARLEN SIZE 1 32 }  { m_axi_K_ARSIZE BURST 1 3 }  { m_axi_K_ARBURST LOCK 1 2 }  { m_axi_K_ARLOCK CACHE 1 2 }  { m_axi_K_ARCACHE PROT 1 4 }  { m_axi_K_ARPROT QOS 1 3 }  { m_axi_K_ARQOS REGION 1 4 }  { m_axi_K_ARREGION USER 1 4 }  { m_axi_K_ARUSER DATA 1 1 }  { m_axi_K_RVALID VALID 0 1 }  { m_axi_K_RREADY READY 1 1 }  { m_axi_K_RDATA FIFONUM 0 8 }  { m_axi_K_RLAST LAST 0 1 }  { m_axi_K_RID ID 0 1 }  { m_axi_K_RFIFONUM LEN 0 13 }  { m_axi_K_RUSER DATA 0 1 }  { m_axi_K_RRESP RESP 0 2 }  { m_axi_K_BVALID VALID 0 1 }  { m_axi_K_BREADY READY 1 1 }  { m_axi_K_BRESP RESP 0 2 }  { m_axi_K_BID ID 0 1 }  { m_axi_K_BUSER DATA 0 1 } } }
	in_k { ap_none {  { in_k in_data 0 64 }  { in_k_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_V_AWVALID VALID 1 1 }  { m_axi_V_AWREADY READY 0 1 }  { m_axi_V_AWADDR ADDR 1 64 }  { m_axi_V_AWID ID 1 1 }  { m_axi_V_AWLEN SIZE 1 32 }  { m_axi_V_AWSIZE BURST 1 3 }  { m_axi_V_AWBURST LOCK 1 2 }  { m_axi_V_AWLOCK CACHE 1 2 }  { m_axi_V_AWCACHE PROT 1 4 }  { m_axi_V_AWPROT QOS 1 3 }  { m_axi_V_AWQOS REGION 1 4 }  { m_axi_V_AWREGION USER 1 4 }  { m_axi_V_AWUSER DATA 1 1 }  { m_axi_V_WVALID VALID 1 1 }  { m_axi_V_WREADY READY 0 1 }  { m_axi_V_WDATA FIFONUM 1 8 }  { m_axi_V_WSTRB STRB 1 1 }  { m_axi_V_WLAST LAST 1 1 }  { m_axi_V_WID ID 1 1 }  { m_axi_V_WUSER DATA 1 1 }  { m_axi_V_ARVALID VALID 1 1 }  { m_axi_V_ARREADY READY 0 1 }  { m_axi_V_ARADDR ADDR 1 64 }  { m_axi_V_ARID ID 1 1 }  { m_axi_V_ARLEN SIZE 1 32 }  { m_axi_V_ARSIZE BURST 1 3 }  { m_axi_V_ARBURST LOCK 1 2 }  { m_axi_V_ARLOCK CACHE 1 2 }  { m_axi_V_ARCACHE PROT 1 4 }  { m_axi_V_ARPROT QOS 1 3 }  { m_axi_V_ARQOS REGION 1 4 }  { m_axi_V_ARREGION USER 1 4 }  { m_axi_V_ARUSER DATA 1 1 }  { m_axi_V_RVALID VALID 0 1 }  { m_axi_V_RREADY READY 1 1 }  { m_axi_V_RDATA FIFONUM 0 8 }  { m_axi_V_RLAST LAST 0 1 }  { m_axi_V_RID ID 0 1 }  { m_axi_V_RFIFONUM LEN 0 13 }  { m_axi_V_RUSER DATA 0 1 }  { m_axi_V_RRESP RESP 0 2 }  { m_axi_V_BVALID VALID 0 1 }  { m_axi_V_BREADY READY 1 1 }  { m_axi_V_BRESP RESP 0 2 }  { m_axi_V_BID ID 0 1 }  { m_axi_V_BUSER DATA 0 1 } } }
	in_v { ap_none {  { in_v in_data 0 64 }  { in_v_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_OUT_M_AWVALID VALID 1 1 }  { m_axi_OUT_M_AWREADY READY 0 1 }  { m_axi_OUT_M_AWADDR ADDR 1 64 }  { m_axi_OUT_M_AWID ID 1 1 }  { m_axi_OUT_M_AWLEN SIZE 1 32 }  { m_axi_OUT_M_AWSIZE BURST 1 3 }  { m_axi_OUT_M_AWBURST LOCK 1 2 }  { m_axi_OUT_M_AWLOCK CACHE 1 2 }  { m_axi_OUT_M_AWCACHE PROT 1 4 }  { m_axi_OUT_M_AWPROT QOS 1 3 }  { m_axi_OUT_M_AWQOS REGION 1 4 }  { m_axi_OUT_M_AWREGION USER 1 4 }  { m_axi_OUT_M_AWUSER DATA 1 1 }  { m_axi_OUT_M_WVALID VALID 1 1 }  { m_axi_OUT_M_WREADY READY 0 1 }  { m_axi_OUT_M_WDATA FIFONUM 1 8 }  { m_axi_OUT_M_WSTRB STRB 1 1 }  { m_axi_OUT_M_WLAST LAST 1 1 }  { m_axi_OUT_M_WID ID 1 1 }  { m_axi_OUT_M_WUSER DATA 1 1 }  { m_axi_OUT_M_ARVALID VALID 1 1 }  { m_axi_OUT_M_ARREADY READY 0 1 }  { m_axi_OUT_M_ARADDR ADDR 1 64 }  { m_axi_OUT_M_ARID ID 1 1 }  { m_axi_OUT_M_ARLEN SIZE 1 32 }  { m_axi_OUT_M_ARSIZE BURST 1 3 }  { m_axi_OUT_M_ARBURST LOCK 1 2 }  { m_axi_OUT_M_ARLOCK CACHE 1 2 }  { m_axi_OUT_M_ARCACHE PROT 1 4 }  { m_axi_OUT_M_ARPROT QOS 1 3 }  { m_axi_OUT_M_ARQOS REGION 1 4 }  { m_axi_OUT_M_ARREGION USER 1 4 }  { m_axi_OUT_M_ARUSER DATA 1 1 }  { m_axi_OUT_M_RVALID VALID 0 1 }  { m_axi_OUT_M_RREADY READY 1 1 }  { m_axi_OUT_M_RDATA FIFONUM 0 8 }  { m_axi_OUT_M_RLAST LAST 0 1 }  { m_axi_OUT_M_RID ID 0 1 }  { m_axi_OUT_M_RFIFONUM LEN 0 13 }  { m_axi_OUT_M_RUSER DATA 0 1 }  { m_axi_OUT_M_RRESP RESP 0 2 }  { m_axi_OUT_M_BVALID VALID 0 1 }  { m_axi_OUT_M_BREADY READY 1 1 }  { m_axi_OUT_M_BRESP RESP 0 2 }  { m_axi_OUT_M_BID ID 0 1 }  { m_axi_OUT_M_BUSER DATA 0 1 } } }
	in_o { ap_none {  { in_o in_data 0 64 }  { in_o_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 8 }  { m_axi_gmem0_WSTRB STRB 1 1 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 8 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 13 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	in_w_up { ap_none {  { in_w_up in_data 0 64 }  { in_w_up_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 8 }  { m_axi_gmem1_WSTRB STRB 1 1 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 8 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 13 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	in_w_down { ap_none {  { in_w_down in_data 0 64 }  { in_w_down_ap_vld in_vld 0 1 } } }
}
