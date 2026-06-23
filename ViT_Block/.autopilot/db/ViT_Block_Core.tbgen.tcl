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
	{ Out_r int 8 regular {axi_master 0}  }
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
 	{ "Name" : "Out_r", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_o","offset": { "type": "dynamic","port_name": "in_o","bundle": "control"},"direction": "READONLY"}]}]} , 
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
	{ m_axi_Out_r_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_Out_r_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_Out_r_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_Out_r_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_Out_r_AWLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_Out_r_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_Out_r_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_Out_r_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_Out_r_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_Out_r_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_Out_r_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_Out_r_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_Out_r_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_Out_r_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_Out_r_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_Out_r_WDATA sc_out sc_lv 8 signal 8 } 
	{ m_axi_Out_r_WSTRB sc_out sc_lv 1 signal 8 } 
	{ m_axi_Out_r_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_Out_r_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_Out_r_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_Out_r_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_Out_r_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_Out_r_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_Out_r_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_Out_r_ARLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_Out_r_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_Out_r_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_Out_r_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_Out_r_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_Out_r_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_Out_r_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_Out_r_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_Out_r_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_Out_r_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_Out_r_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_Out_r_RDATA sc_in sc_lv 8 signal 8 } 
	{ m_axi_Out_r_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_Out_r_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_Out_r_RFIFONUM sc_in sc_lv 13 signal 8 } 
	{ m_axi_Out_r_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_Out_r_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_Out_r_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_Out_r_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_Out_r_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_Out_r_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_Out_r_BUSER sc_in sc_lv 1 signal 8 } 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "9", "11", "328", "331", "334", "336", "341", "463", "466", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490"],
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
			{"ID" : "1", "Name" : "duplicate_stream_ap_int_8_17_16_1_U0"},
			{"ID" : "11", "Name" : "MultiHeadAttention_tiled_U0"},
			{"ID" : "341", "Name" : "MLP_tiled_oc_U0"}],
		"OutputProcess" : [
			{"ID" : "466", "Name" : "ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0"}],
		"Port" : [
			{"Name" : "input_stream1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "duplicate_stream_ap_int_8_17_16_1_U0", "Port" : "input_stream1"}]},
			{"Name" : "output_stream2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "466", "SubInstance" : "ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0", "Port" : "output_stream2"}]},
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
			{"Name" : "Out_r", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "MultiHeadAttention_tiled_U0", "Port" : "Out_r"}]},
			{"Name" : "in_o", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "MLP_tiled_oc_U0", "Port" : "gmem0"}]},
			{"Name" : "in_w_up", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "MLP_tiled_oc_U0", "Port" : "gmem1"}]},
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
					{"ID" : "336", "SubInstance" : "BatchNorm_tiled_1_U0", "Port" : "bn1_mul_1"}]},
			{"Name" : "bn1_add_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "BatchNorm_tiled_1_U0", "Port" : "bn1_add_1"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "MLP_tiled_oc_U0", "Port" : "bias_1_0_V"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "MLP_tiled_oc_U0", "Port" : "bias_2_0_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicate_stream_ap_int_8_17_16_1_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "duplicate_stream_ap_int_8_17_16_1_s",
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
		"Port" : [
			{"Name" : "input_stream1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "input_stream1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["328"], "DependentChan" : "469", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["3","4"], "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x13_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicate_stream_ap_int_8_17_16_1_U0.flow_control_loop_pipe_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "BatchNorm_tiled_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "277", "EstimateLatencyMax" : "277",
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
			{"ID" : "4", "Name" : "BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0"}],
		"Port" : [
			{"Name" : "x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0", "Port" : "x13"}]},
			{"Name" : "norm_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0", "Port" : "norm_out4"}]},
			{"Name" : "bn0_mul_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0", "Port" : "bn0_mul_1"}]},
			{"Name" : "bn0_add_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0", "Port" : "bn0_add_1"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0", "Parent" : "3", "Child" : ["5", "6", "7", "8"],
		"CDFG" : "BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "277", "EstimateLatencyMax" : "277",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bn0_mul_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bn0_add_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_1_VITIS_LOOP_186_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0.bn0_mul_1_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0.bn0_add_1_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0.mul_mul_15ns_8s_23_4_1_U13", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0.flow_control_loop_pipe_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.triplicate_stream_ap_int_8_17_16_1_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "triplicate_stream_ap_int_8_17_16_1_s",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_triplicate_stream_ap_int_8_17_16_1_U0_U",
		"Port" : [
			{"Name" : "norm_out4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3","4"], "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11","12","18"], "DependentChan" : "472", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_in5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11","46","52"], "DependentChan" : "473", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_in6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11","80","86"], "DependentChan" : "474", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_in7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.triplicate_stream_ap_int_8_17_16_1_U0.flow_control_loop_pipe_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0", "Parent" : "0", "Child" : ["12", "46", "80", "114", "116", "118", "120", "139", "160", "163", "191", "210", "231", "234", "262", "264", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327"],
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
			{"ID" : "46", "Name" : "K_linear_tiled_U0"},
			{"ID" : "80", "Name" : "V_linear_tiled_U0"},
			{"ID" : "264", "Name" : "Out_linear_tiled_U0"}],
		"OutputProcess" : [
			{"ID" : "264", "Name" : "Out_linear_tiled_U0"}],
		"Port" : [
			{"Name" : "Q", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "Q_linear_tiled_U0", "Port" : "Q"}]},
			{"Name" : "in_q", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "K_linear_tiled_U0", "Port" : "K"}]},
			{"Name" : "in_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "V_linear_tiled_U0", "Port" : "V"}]},
			{"Name" : "in_v", "Type" : "None", "Direction" : "I"},
			{"Name" : "Out_r", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "Out_linear_tiled_U0", "Port" : "Out_r"}]},
			{"Name" : "in_o", "Type" : "None", "Direction" : "I"},
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "472", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "Q_linear_tiled_U0", "Port" : "Q_in5"}]},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "473", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "K_linear_tiled_U0", "Port" : "K_in6"}]},
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "474", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "V_linear_tiled_U0", "Port" : "V_in7"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["331"], "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "Out_linear_tiled_U0", "Port" : "out_mha8"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "Q_linear_tiled_U0", "Port" : "bias_q_0_V"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "K_linear_tiled_U0", "Port" : "bias_k_0_V"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "V_linear_tiled_U0", "Port" : "bias_v_0_V"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "SOFTMAX_tile_U0", "Port" : "exp_lut_V"},
					{"ID" : "210", "SubInstance" : "SOFTMAX_tile_5_U0", "Port" : "exp_lut_V"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "Out_linear_tiled_U0", "Port" : "bias_h_0_V"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0", "Parent" : "11", "Child" : ["13", "18", "44", "45"],
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
			{"ID" : "13", "Name" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "18", "Name" : "Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "Q", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0", "Port" : "Q"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "472", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0", "Port" : "Q_in5"}]},
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["114"], "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0", "Port" : "q_lin1"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_q_0_V"}]}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0", "Parent" : "12", "Child" : ["14", "15", "17"],
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
					{"ID" : "14", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_106", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "44", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_106", "Parent" : "13",
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Parent" : "13", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.burst_reads_fifo_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "12", "Child" : ["19", "20", "23", "41"],
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
		"StartSource" : "13",
		"StartFifo" : "start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "Q_in5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "472", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67", "Port" : "Q_in5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["114"], "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4_fu_76", "Port" : "q_lin1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "44", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_q_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4_fu_60", "Port" : "bias_q_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4_fu_60", "Parent" : "18", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4_fu_60.bias_q_0_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67", "Parent" : "18", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
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
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U36", "Parent" : "23"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U37", "Parent" : "23"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U38", "Parent" : "23"},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U39", "Parent" : "23"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U40", "Parent" : "23"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U41", "Parent" : "23"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U42", "Parent" : "23"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U43", "Parent" : "23"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U44", "Parent" : "23"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U45", "Parent" : "23"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U46", "Parent" : "23"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U47", "Parent" : "23"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U48", "Parent" : "23"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U49", "Parent" : "23"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U50", "Parent" : "23"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.mac_muladd_8s_8s_32s_32_4_1_U51", "Parent" : "23"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4_fu_76", "Parent" : "18", "Child" : ["42", "43"],
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
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4_fu_76.mul_32s_10ns_42_1_1_U56", "Parent" : "41"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.out_w_U", "Parent" : "12"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "12"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0", "Parent" : "11", "Child" : ["47", "52", "78", "79"],
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
			{"ID" : "47", "Name" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0"}],
		"OutputProcess" : [
			{"ID" : "52", "Name" : "Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "K", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0", "Port" : "K"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "473", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0", "Port" : "K_in6"}]},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["116"], "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0", "Port" : "k_lin2"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_k_0_V"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0", "Parent" : "46", "Child" : ["48", "49", "51"],
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
					{"ID" : "48", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_106", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "78", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_106", "Parent" : "47",
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
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Parent" : "47", "Child" : ["50"],
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
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.burst_reads_fifo_U", "Parent" : "47"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "46", "Child" : ["53", "54", "57", "75"],
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
		"StartSource" : "47",
		"StartFifo" : "start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "K_in6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "473", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67", "Port" : "K_in6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["116"], "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76", "Port" : "k_lin2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["47"], "DependentChan" : "78", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_k_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60", "Port" : "bias_k_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60", "Parent" : "52", "Child" : ["55", "56"],
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
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60.bias_k_0_V_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67", "Parent" : "52", "Child" : ["58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
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
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U76", "Parent" : "57"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U77", "Parent" : "57"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U78", "Parent" : "57"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U79", "Parent" : "57"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U80", "Parent" : "57"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U81", "Parent" : "57"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U82", "Parent" : "57"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U83", "Parent" : "57"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U84", "Parent" : "57"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U85", "Parent" : "57"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U86", "Parent" : "57"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U87", "Parent" : "57"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U88", "Parent" : "57"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U89", "Parent" : "57"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U90", "Parent" : "57"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.mac_muladd_8s_8s_32s_32_4_1_U91", "Parent" : "57"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76", "Parent" : "52", "Child" : ["76", "77"],
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
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76.mul_32s_9ns_41_1_1_U95", "Parent" : "75"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.out_w_U", "Parent" : "46"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "46"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0", "Parent" : "11", "Child" : ["81", "86", "112", "113"],
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
			{"ID" : "81", "Name" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0"}],
		"OutputProcess" : [
			{"ID" : "86", "Name" : "Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0", "Port" : "V"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "474", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0", "Port" : "V_in7"}]},
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["118"], "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0", "Port" : "v_lin3"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_v_0_V"}]}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0", "Parent" : "80", "Child" : ["82", "83", "85"],
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
					{"ID" : "82", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_106", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["86"], "DependentChan" : "112", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.grp_burst_read_beats_1_ap_int_8_s_fu_106", "Parent" : "81",
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
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Parent" : "81", "Child" : ["84"],
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
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.burst_reads_fifo_U", "Parent" : "81"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "80", "Child" : ["87", "88", "91", "109"],
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
		"StartSource" : "81",
		"StartFifo" : "start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "V_in7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "474", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67", "Port" : "V_in7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["118"], "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3_fu_76", "Port" : "v_lin3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["81"], "DependentChan" : "112", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_v_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3_fu_60", "Port" : "bias_v_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3_fu_60", "Parent" : "86", "Child" : ["89", "90"],
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
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3_fu_60.bias_v_0_V_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67", "Parent" : "86", "Child" : ["92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108"],
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
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U114", "Parent" : "91"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U115", "Parent" : "91"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U116", "Parent" : "91"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U117", "Parent" : "91"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U118", "Parent" : "91"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U119", "Parent" : "91"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U120", "Parent" : "91"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U121", "Parent" : "91"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U122", "Parent" : "91"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U123", "Parent" : "91"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U124", "Parent" : "91"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U125", "Parent" : "91"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U126", "Parent" : "91"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U127", "Parent" : "91"},
	{"ID" : "106", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U128", "Parent" : "91"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.mac_muladd_8s_8s_32s_32_4_1_U129", "Parent" : "91"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "91"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3_fu_76", "Parent" : "86", "Child" : ["110", "111"],
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
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3_fu_76.mul_32s_10ns_42_1_1_U133", "Parent" : "109"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.out_w_U", "Parent" : "80"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "80"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_U0", "Parent" : "11", "Child" : ["115"],
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
		"StartSource" : "12",
		"StartFifo" : "start_for_split_heads_U0_U",
		"Port" : [
			{"Name" : "q_lin1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12","18"], "DependentChan" : "298", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "q_lin1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["120","121"], "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["191","192"], "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "Q_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_U0.flow_control_loop_pipe_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_2_U0", "Parent" : "11", "Child" : ["117"],
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
		"StartSource" : "46",
		"StartFifo" : "start_for_split_heads_2_U0_U",
		"Port" : [
			{"Name" : "k_lin2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["46","52"], "DependentChan" : "299", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k_lin2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["120","121"], "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["191","192"], "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "K_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_2_U0.flow_control_loop_pipe_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_3_U0", "Parent" : "11", "Child" : ["119"],
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
		"StartSource" : "80",
		"StartFifo" : "start_for_split_heads_3_U0_U",
		"Port" : [
			{"Name" : "v_lin3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["80","86"], "DependentChan" : "300", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_lin3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["163","164"], "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["234","235"], "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "V_1_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.split_heads_3_U0.flow_control_loop_pipe_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0", "Parent" : "11", "Child" : ["121"],
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
		"StartSource" : "114",
		"StartFifo" : "start_for_MM_tiled_U0_U",
		"InputProcess" : [
			{"ID" : "121", "Name" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0"}],
		"OutputProcess" : [
			{"ID" : "121", "Name" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0"}],
		"Port" : [
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["114"], "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0", "Port" : "Q_1_0"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["116"], "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0", "Port" : "K_1_0"}]},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["139"], "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0", "Port" : "A_0"}]}]},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0", "Parent" : "120", "Child" : ["122", "123", "124", "126", "128"],
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
			{"Name" : "Q_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["114"], "DependentChan" : "301", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["116"], "DependentChan" : "303", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["139"], "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.buff_K_V_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.tile_Q_V_0_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "121", "Child" : ["125"],
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
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "121", "Child" : ["127"],
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
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "121", "Child" : ["129", "130", "131", "132", "133", "134", "135", "136", "137", "138"],
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
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U158", "Parent" : "128"},
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U159", "Parent" : "128"},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U160", "Parent" : "128"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U161", "Parent" : "128"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U162", "Parent" : "128"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U163", "Parent" : "128"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U164", "Parent" : "128"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U165", "Parent" : "128"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.am_addmul_18s_16s_10ns_30_4_1_U166", "Parent" : "128"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0", "Parent" : "11", "Child" : ["140"],
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
		"StartSource" : "120",
		"StartFifo" : "start_for_SOFTMAX_tile_U0_U",
		"Port" : [
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["120","121"], "DependentChan" : "307", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["160"], "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "139", "Child" : ["141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159"],
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
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U183", "Parent" : "140"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U184", "Parent" : "140"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U185", "Parent" : "140"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U186", "Parent" : "140"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "140"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "140"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "140"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "140"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "140"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "140"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "140"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "140"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "140"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "140"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "140"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "140"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "140"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "140"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0", "Parent" : "11", "Child" : ["161", "162"],
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
		"StartSource" : "139",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0_U",
		"Port" : [
			{"Name" : "A_s_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["139"], "DependentChan" : "308", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["163","164"], "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0.mul_mul_8s_18ns_27_4_1_U206", "Parent" : "160"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0.flow_control_loop_pipe_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0", "Parent" : "11", "Child" : ["164"],
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
		"StartSource" : "118",
		"StartFifo" : "start_for_MM1_tiled_U0_U",
		"InputProcess" : [
			{"ID" : "164", "Name" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0"}],
		"OutputProcess" : [
			{"ID" : "164", "Name" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0"}],
		"Port" : [
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["160"], "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0", "Port" : "A_sx_0"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["118"], "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0", "Port" : "V_1_0"}]},
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["262"], "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0", "Port" : "head_out_0"}]}]},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0", "Parent" : "163", "Child" : ["165", "166", "167", "169", "171"],
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
			{"Name" : "A_sx_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["160"], "DependentChan" : "309", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["118"], "DependentChan" : "305", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["262"], "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_0", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.buff_B_V_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.tile_A_V_0_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "164", "Child" : ["168"],
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
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "164", "Child" : ["170"],
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
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "164", "Child" : ["172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190"],
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
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U214", "Parent" : "171"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U215", "Parent" : "171"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U216", "Parent" : "171"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U217", "Parent" : "171"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U218", "Parent" : "171"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U219", "Parent" : "171"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U220", "Parent" : "171"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U221", "Parent" : "171"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U222", "Parent" : "171"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U223", "Parent" : "171"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U224", "Parent" : "171"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U225", "Parent" : "171"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U226", "Parent" : "171"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U227", "Parent" : "171"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U228", "Parent" : "171"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U229", "Parent" : "171"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U230", "Parent" : "171"},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U231", "Parent" : "171"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "171"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0", "Parent" : "11", "Child" : ["192"],
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
		"StartSource" : "114",
		"StartFifo" : "start_for_MM_tiled_4_U0_U",
		"InputProcess" : [
			{"ID" : "192", "Name" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0"}],
		"OutputProcess" : [
			{"ID" : "192", "Name" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0"}],
		"Port" : [
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["114"], "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0", "Port" : "Q_1_1"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["116"], "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0", "Port" : "K_1_1"}]},
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["210"], "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0", "Port" : "A_1"}]}]},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0", "Parent" : "191", "Child" : ["193", "194", "195", "197", "199"],
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
			{"Name" : "Q_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["114"], "DependentChan" : "302", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1682_6_fu_62", "Port" : "Q_1_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "K_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["116"], "DependentChan" : "304", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Port" : "K_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["210"], "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "199", "SubInstance" : "grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69", "Port" : "A_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1678_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.buff_K_V_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.tile_Q_V_0_U", "Parent" : "192"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54", "Parent" : "192", "Child" : ["196"],
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
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1682_6_fu_62", "Parent" : "192", "Child" : ["198"],
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
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1682_6_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69", "Parent" : "192", "Child" : ["200", "201", "202", "203", "204", "205", "206", "207", "208", "209"],
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
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U265", "Parent" : "199"},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U266", "Parent" : "199"},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mul_8s_8s_16_1_1_U267", "Parent" : "199"},
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U268", "Parent" : "199"},
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_16s_17_4_1_U269", "Parent" : "199"},
	{"ID" : "205", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U270", "Parent" : "199"},
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_17_4_1_U271", "Parent" : "199"},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.mac_muladd_8s_8s_17s_18_4_1_U272", "Parent" : "199"},
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.am_addmul_18s_16s_10ns_30_4_1_U273", "Parent" : "199"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.grp_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "199"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0", "Parent" : "11", "Child" : ["211"],
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
		"StartSource" : "191",
		"StartFifo" : "start_for_SOFTMAX_tile_5_U0_U",
		"Port" : [
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["191","192"], "DependentChan" : "311", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "A_s_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["231"], "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "A_s_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_lut_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Port" : "exp_lut_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18", "Parent" : "210", "Child" : ["212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230"],
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
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.exp_lut_V_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U183", "Parent" : "211"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U184", "Parent" : "211"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U185", "Parent" : "211"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U186", "Parent" : "211"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U187", "Parent" : "211"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U188", "Parent" : "211"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U189", "Parent" : "211"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U190", "Parent" : "211"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U191", "Parent" : "211"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U192", "Parent" : "211"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U193", "Parent" : "211"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U194", "Parent" : "211"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U195", "Parent" : "211"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U196", "Parent" : "211"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U197", "Parent" : "211"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U198", "Parent" : "211"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.udiv_24s_13ns_8_28_1_U199", "Parent" : "211"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "211"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0", "Parent" : "11", "Child" : ["232", "233"],
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
		"StartSource" : "210",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0_U",
		"Port" : [
			{"Name" : "A_s_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["210"], "DependentChan" : "312", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_s_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["234","235"], "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "A_sx_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0.mul_mul_8s_18ns_27_4_1_U287", "Parent" : "231"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0.flow_control_loop_pipe_U", "Parent" : "231"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0", "Parent" : "11", "Child" : ["235"],
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
		"StartSource" : "118",
		"StartFifo" : "start_for_MM1_tiled_7_U0_U",
		"InputProcess" : [
			{"ID" : "235", "Name" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0"}],
		"OutputProcess" : [
			{"ID" : "235", "Name" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0"}],
		"Port" : [
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["231"], "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0", "Port" : "A_sx_1"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["118"], "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0", "Port" : "V_1_1"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["262"], "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0", "Port" : "head_out_1"}]}]},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0", "Parent" : "234", "Child" : ["236", "237", "238", "240", "242"],
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
			{"Name" : "A_sx_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["231"], "DependentChan" : "313", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5_fu_222", "Port" : "A_sx_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "V_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["118"], "DependentChan" : "306", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "238", "SubInstance" : "grp_MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Port" : "V_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["262"], "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "242", "SubInstance" : "grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229", "Port" : "head_out_1", "Inst_start_state" : "15", "Inst_end_state" : "16"}]}],
		"Loop" : [
			{"Name" : "matmul_core", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.buff_B_V_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.tile_A_V_0_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214", "Parent" : "235", "Child" : ["239"],
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
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5_fu_222", "Parent" : "235", "Child" : ["241"],
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
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229", "Parent" : "235", "Child" : ["243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261"],
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
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U294", "Parent" : "242"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U295", "Parent" : "242"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U296", "Parent" : "242"},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U297", "Parent" : "242"},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U298", "Parent" : "242"},
	{"ID" : "248", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mul_8s_8s_16_1_1_U299", "Parent" : "242"},
	{"ID" : "249", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U300", "Parent" : "242"},
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U301", "Parent" : "242"},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U302", "Parent" : "242"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U303", "Parent" : "242"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U304", "Parent" : "242"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_16s_17_4_1_U305", "Parent" : "242"},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U306", "Parent" : "242"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U307", "Parent" : "242"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_17_4_1_U308", "Parent" : "242"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_17s_18_4_1_U309", "Parent" : "242"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.mac_muladd_8s_8s_18s_19_4_1_U310", "Parent" : "242"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.am_addmul_17s_19s_9ns_30_4_1_U311", "Parent" : "242"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.grp_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6_fu_229.flow_control_loop_pipe_sequential_init_U", "Parent" : "242"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.merge_heads_U0", "Parent" : "11", "Child" : ["263"],
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
		"StartSource" : "163",
		"StartFifo" : "start_for_merge_heads_U0_U",
		"Port" : [
			{"Name" : "head_out_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["163","164"], "DependentChan" : "310", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "head_out_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["234","235"], "DependentChan" : "314", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "head_out_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["264","270"], "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_linear4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1_VITIS_LOOP_179_2_VITIS_LOOP_180_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.merge_heads_U0.flow_control_loop_pipe_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0", "Parent" : "11", "Child" : ["265", "270", "296", "297"],
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
			{"ID" : "265", "Name" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0"}],
		"OutputProcess" : [
			{"ID" : "270", "Name" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "Out_r", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0", "Port" : "Out_r"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["262"], "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Port" : "out_linear4"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["331"], "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Port" : "out_mha8"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_h_0_V"}]}]},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0", "Parent" : "264", "Child" : ["266", "267", "269"],
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
					{"ID" : "266", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_106", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["270"], "DependentChan" : "296", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.grp_burst_read_beats_1_ap_int_8_s_fu_106", "Parent" : "265",
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
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114", "Parent" : "265", "Child" : ["268"],
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
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.burst_reads_fifo_U", "Parent" : "265"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "264", "Child" : ["271", "272", "275", "293"],
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
		"StartSource" : "265",
		"StartFifo" : "start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "out_linear4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["262"], "DependentChan" : "315", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67", "Port" : "out_linear4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["331"], "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76", "Port" : "out_mha8", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["265"], "DependentChan" : "296", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_h_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60", "Port" : "bias_h_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60", "Parent" : "270", "Child" : ["273", "274"],
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
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60.bias_h_0_V_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67", "Parent" : "270", "Child" : ["276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292"],
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
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U347", "Parent" : "275"},
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U348", "Parent" : "275"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U349", "Parent" : "275"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U350", "Parent" : "275"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U351", "Parent" : "275"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U352", "Parent" : "275"},
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U353", "Parent" : "275"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U354", "Parent" : "275"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U355", "Parent" : "275"},
	{"ID" : "285", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U356", "Parent" : "275"},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U357", "Parent" : "275"},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U358", "Parent" : "275"},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U359", "Parent" : "275"},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U360", "Parent" : "275"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U361", "Parent" : "275"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.mac_muladd_8s_8s_32s_32_4_1_U362", "Parent" : "275"},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76", "Parent" : "270", "Child" : ["294", "295"],
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
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76.mul_32s_11ns_43_1_1_U366", "Parent" : "293"},
	{"ID" : "295", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "293"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.out_w_U", "Parent" : "264"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "264"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.q_lin_U", "Parent" : "11"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.k_lin_U", "Parent" : "11"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.v_lin_U", "Parent" : "11"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_1_0_U", "Parent" : "11"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.Q_1_1_U", "Parent" : "11"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_1_0_U", "Parent" : "11"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.K_1_1_U", "Parent" : "11"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_1_0_U", "Parent" : "11"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.V_1_1_U", "Parent" : "11"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_0_U", "Parent" : "11"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_s_0_U", "Parent" : "11"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_sx_0_U", "Parent" : "11"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.head_out_0_U", "Parent" : "11"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_1_U", "Parent" : "11"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_s_1_U", "Parent" : "11"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.A_sx_1_U", "Parent" : "11"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.head_out_1_U", "Parent" : "11"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.out_linear_U", "Parent" : "11"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_split_heads_U0_U", "Parent" : "11"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_split_heads_2_U0_U", "Parent" : "11"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_split_heads_3_U0_U", "Parent" : "11"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM_tiled_U0_U", "Parent" : "11"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM_tiled_4_U0_U", "Parent" : "11"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_U0_U", "Parent" : "11"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_7_U0_U", "Parent" : "11"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_U0_U", "Parent" : "11"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0_U", "Parent" : "11"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_merge_heads_U0_U", "Parent" : "11"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_5_U0_U", "Parent" : "11"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0_U", "Parent" : "11"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0", "Parent" : "0", "Child" : ["329", "330"],
		"CDFG" : "requant_ap_int_8_ap_int_8_17_16_21351_16_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "277", "EstimateLatencyMax" : "277",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0_U",
		"Port" : [
			{"Name" : "res1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "469", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_rq2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["331"], "DependentChan" : "476", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_rq2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0.mul_mul_8s_15ns_24_4_1_U421", "Parent" : "328"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0.flow_control_loop_pipe_U", "Parent" : "328"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0", "Parent" : "0", "Child" : ["332", "333"],
		"CDFG" : "ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "277", "EstimateLatencyMax" : "277",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "11",
		"StartFifo" : "start_for_ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0_U",
		"Port" : [
			{"Name" : "out_mha8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11","264","270"], "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_mha8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_rq2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["328"], "DependentChan" : "476", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_rq2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_res_09", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["334"], "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_res_09_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_802_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0.am_addmul_8s_8s_16ns_26_4_1_U425", "Parent" : "331"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0.flow_control_loop_pipe_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.duplicate_stream_ap_int_8_17_16_1_1_U0", "Parent" : "0", "Child" : ["335"],
		"CDFG" : "duplicate_stream_ap_int_8_17_16_1_1",
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
		"StartSource" : "331",
		"StartFifo" : "start_for_duplicate_stream_ap_int_8_17_16_1_1_U0_U",
		"Port" : [
			{"Name" : "out_res_09", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["331"], "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "out_res_09_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_110", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["463"], "DependentChan" : "478", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x212", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["336"], "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x212_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.duplicate_stream_ap_int_8_17_16_1_1_U0.flow_control_loop_pipe_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_1_U0", "Parent" : "0", "Child" : ["337", "338", "339", "340"],
		"CDFG" : "BatchNorm_tiled_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "277", "EstimateLatencyMax" : "277",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "334",
		"StartFifo" : "start_for_BatchNorm_tiled_1_U0_U",
		"Port" : [
			{"Name" : "x212", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["334"], "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x212_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["341","342","348"], "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm_out_113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bn1_mul_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bn1_add_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_1_VITIS_LOOP_186_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_1_U0.bn1_mul_1_U", "Parent" : "336"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_1_U0.bn1_add_1_U", "Parent" : "336"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_1_U0.mul_mul_17ns_8s_25_4_1_U433", "Parent" : "336"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.BatchNorm_tiled_1_U0.flow_control_loop_pipe_U", "Parent" : "336"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0", "Parent" : "0", "Child" : ["342", "424", "426", "460", "461", "462"],
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
			{"ID" : "342", "Name" : "FC1_tiled_oc_2_U0"},
			{"ID" : "426", "Name" : "FC2_tiled_oc_2_U0"}],
		"OutputProcess" : [
			{"ID" : "426", "Name" : "FC2_tiled_oc_2_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "342", "SubInstance" : "FC1_tiled_oc_2_U0", "Port" : "gmem0"}]},
			{"Name" : "in_w_up", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "426", "SubInstance" : "FC2_tiled_oc_2_U0", "Port" : "gmem1"}]},
			{"Name" : "in_w_down", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["336"], "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "342", "SubInstance" : "FC1_tiled_oc_2_U0", "Port" : "norm_out_113"}]},
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["466"], "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "426", "SubInstance" : "FC2_tiled_oc_2_U0", "Port" : "mlp_out14"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "342", "SubInstance" : "FC1_tiled_oc_2_U0", "Port" : "bias_1_0_V"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "426", "SubInstance" : "FC2_tiled_oc_2_U0", "Port" : "bias_2_0_V"}]}]},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0", "Parent" : "341", "Child" : ["343", "348", "422", "423"],
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
			{"ID" : "343", "Name" : "WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "348", "Name" : "Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0", "Port" : "gmem0"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["336"], "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0", "Port" : "norm_out_113"}]},
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["424"], "DependentChan" : "460", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0", "Port" : "fc11"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_1_0_V"}]}]},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0", "Parent" : "342", "Child" : ["344", "345", "347"],
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
					{"ID" : "344", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_114", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["348"], "DependentChan" : "422", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_114", "Parent" : "343",
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
	{"ID" : "345", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122", "Parent" : "343", "Child" : ["346"],
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
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.burst_reads_fifo_U", "Parent" : "343"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "342", "Child" : ["349", "350", "353", "419"],
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
		"StartSource" : "343",
		"StartFifo" : "start_for_Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "norm_out_113", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["336"], "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67", "Port" : "norm_out_113", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["424"], "DependentChan" : "460", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "419", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76", "Port" : "fc11", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["343"], "DependentChan" : "422", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_1_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60", "Port" : "bias_1_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "348"},
	{"ID" : "350", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60", "Parent" : "348", "Child" : ["351", "352"],
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
	{"ID" : "351", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60.bias_1_0_V_U", "Parent" : "350"},
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "350"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67", "Parent" : "348", "Child" : ["354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418"],
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
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U445", "Parent" : "353"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U446", "Parent" : "353"},
	{"ID" : "356", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U447", "Parent" : "353"},
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U448", "Parent" : "353"},
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U449", "Parent" : "353"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U450", "Parent" : "353"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U451", "Parent" : "353"},
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U452", "Parent" : "353"},
	{"ID" : "362", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U453", "Parent" : "353"},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U454", "Parent" : "353"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U455", "Parent" : "353"},
	{"ID" : "365", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U456", "Parent" : "353"},
	{"ID" : "366", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U457", "Parent" : "353"},
	{"ID" : "367", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U458", "Parent" : "353"},
	{"ID" : "368", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U459", "Parent" : "353"},
	{"ID" : "369", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U460", "Parent" : "353"},
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U461", "Parent" : "353"},
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U462", "Parent" : "353"},
	{"ID" : "372", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U463", "Parent" : "353"},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U464", "Parent" : "353"},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U465", "Parent" : "353"},
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U466", "Parent" : "353"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U467", "Parent" : "353"},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U468", "Parent" : "353"},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U469", "Parent" : "353"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U470", "Parent" : "353"},
	{"ID" : "380", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U471", "Parent" : "353"},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U472", "Parent" : "353"},
	{"ID" : "382", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U473", "Parent" : "353"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U474", "Parent" : "353"},
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U475", "Parent" : "353"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U476", "Parent" : "353"},
	{"ID" : "386", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U477", "Parent" : "353"},
	{"ID" : "387", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U478", "Parent" : "353"},
	{"ID" : "388", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U479", "Parent" : "353"},
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U480", "Parent" : "353"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U481", "Parent" : "353"},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U482", "Parent" : "353"},
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U483", "Parent" : "353"},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U484", "Parent" : "353"},
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U485", "Parent" : "353"},
	{"ID" : "395", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U486", "Parent" : "353"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U487", "Parent" : "353"},
	{"ID" : "397", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U488", "Parent" : "353"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U489", "Parent" : "353"},
	{"ID" : "399", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U490", "Parent" : "353"},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U491", "Parent" : "353"},
	{"ID" : "401", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U492", "Parent" : "353"},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U493", "Parent" : "353"},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U494", "Parent" : "353"},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U495", "Parent" : "353"},
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U496", "Parent" : "353"},
	{"ID" : "406", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U497", "Parent" : "353"},
	{"ID" : "407", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U498", "Parent" : "353"},
	{"ID" : "408", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U499", "Parent" : "353"},
	{"ID" : "409", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U500", "Parent" : "353"},
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U501", "Parent" : "353"},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U502", "Parent" : "353"},
	{"ID" : "412", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U503", "Parent" : "353"},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U504", "Parent" : "353"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U505", "Parent" : "353"},
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U506", "Parent" : "353"},
	{"ID" : "416", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U507", "Parent" : "353"},
	{"ID" : "417", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.mac_muladd_8s_8s_32s_32_4_1_U508", "Parent" : "353"},
	{"ID" : "418", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "353"},
	{"ID" : "419", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76", "Parent" : "348", "Child" : ["420", "421"],
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
	{"ID" : "420", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76.mul_32s_10ns_42_1_1_U512", "Parent" : "419"},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "419"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.out_w_U", "Parent" : "342"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.start_for_Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "342"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.Relu_tiled_oc_U0", "Parent" : "341", "Child" : ["425"],
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
		"StartSource" : "342",
		"StartFifo" : "start_for_Relu_tiled_oc_U0_U",
		"Port" : [
			{"Name" : "fc11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["342","348"], "DependentChan" : "460", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fc11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "relu2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["426","432"], "DependentChan" : "461", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "relu2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_502_1_VITIS_LOOP_504_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.Relu_tiled_oc_U0.flow_control_loop_pipe_U", "Parent" : "424"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0", "Parent" : "341", "Child" : ["427", "432", "458", "459"],
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
			{"ID" : "427", "Name" : "WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0"}],
		"OutputProcess" : [
			{"ID" : "432", "Name" : "Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0"}],
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "427", "SubInstance" : "WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0", "Port" : "gmem1"}]},
			{"Name" : "in_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["424"], "DependentChan" : "461", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0", "Port" : "relu2"}]},
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["466"], "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0", "Port" : "mlp_out14"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0", "Port" : "bias_2_0_V"}]}]},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0", "Parent" : "426", "Child" : ["428", "429", "431"],
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
					{"ID" : "428", "SubInstance" : "grp_burst_read_beats_1_ap_int_8_s_fu_114", "Port" : "gmem1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "W_ddr_tile", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["432"], "DependentChan" : "458", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122", "Port" : "out_w1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1239_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1238_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1237_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.grp_burst_read_beats_1_ap_int_8_s_fu_114", "Parent" : "427",
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
	{"ID" : "429", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122", "Parent" : "427", "Child" : ["430"],
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
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.burst_reads_fifo_U", "Parent" : "427"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0", "Parent" : "426", "Child" : ["433", "434", "437", "455"],
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
		"StartSource" : "427",
		"StartFifo" : "start_for_Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0_U",
		"Port" : [
			{"Name" : "relu2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["424"], "DependentChan" : "461", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "437", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67", "Port" : "relu2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["466"], "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "455", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_76", "Port" : "mlp_out14", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_w1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["427"], "DependentChan" : "458", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "437", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67", "Port" : "out_w1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "bias_2_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "434", "SubInstance" : "grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_60", "Port" : "bias_2_0_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1509_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "433", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.C_tile_V_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_60", "Parent" : "432", "Child" : ["435", "436"],
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
	{"ID" : "435", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_60.bias_2_0_V_U", "Parent" : "434"},
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "434"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67", "Parent" : "432", "Child" : ["438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454"],
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
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U533", "Parent" : "437"},
	{"ID" : "439", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U534", "Parent" : "437"},
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U535", "Parent" : "437"},
	{"ID" : "441", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U536", "Parent" : "437"},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U537", "Parent" : "437"},
	{"ID" : "443", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U538", "Parent" : "437"},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U539", "Parent" : "437"},
	{"ID" : "445", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U540", "Parent" : "437"},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U541", "Parent" : "437"},
	{"ID" : "447", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U542", "Parent" : "437"},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U543", "Parent" : "437"},
	{"ID" : "449", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U544", "Parent" : "437"},
	{"ID" : "450", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U545", "Parent" : "437"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U546", "Parent" : "437"},
	{"ID" : "452", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U547", "Parent" : "437"},
	{"ID" : "453", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.mac_muladd_8s_8s_32s_32_4_1_U548", "Parent" : "437"},
	{"ID" : "454", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "437"},
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_76", "Parent" : "432", "Child" : ["456", "457"],
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
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_76.mul_32s_11ns_43_1_1_U552", "Parent" : "455"},
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "455"},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.out_w_U", "Parent" : "426"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.start_for_Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0_U", "Parent" : "426"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.fc1_U", "Parent" : "341"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.relu_U", "Parent" : "341"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MLP_tiled_oc_U0.start_for_Relu_tiled_oc_U0_U", "Parent" : "341"},
	{"ID" : "463", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0", "Parent" : "0", "Child" : ["464", "465"],
		"CDFG" : "requant_ap_int_8_ap_int_8_17_16_84995_16_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "277", "EstimateLatencyMax" : "277",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "334",
		"StartFifo" : "start_for_requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0_U",
		"Port" : [
			{"Name" : "res_110", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["334"], "DependentChan" : "478", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_110_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_1_rq11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["466"], "DependentChan" : "482", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_1_rq11_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0.mul_mul_8s_17ns_26_4_1_U573", "Parent" : "463"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0.flow_control_loop_pipe_U", "Parent" : "463"},
	{"ID" : "466", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0", "Parent" : "0", "Child" : ["467", "468"],
		"CDFG" : "ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "277", "EstimateLatencyMax" : "277",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "341",
		"StartFifo" : "start_for_ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0_U",
		"Port" : [
			{"Name" : "mlp_out14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["341","426","432"], "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_out14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_1_rq11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["463"], "DependentChan" : "482", "DependentChanDepth" : "3072", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "res_1_rq11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_stream2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "output_stream2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_802_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.am_addmul_8s_8s_16ns_26_4_1_U577", "Parent" : "466"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.flow_control_loop_pipe_U", "Parent" : "466"},
	{"ID" : "469", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_U", "Parent" : "0"},
	{"ID" : "470", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x1_U", "Parent" : "0"},
	{"ID" : "471", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.norm_out_U", "Parent" : "0"},
	{"ID" : "472", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Q_in_U", "Parent" : "0"},
	{"ID" : "473", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_in_U", "Parent" : "0"},
	{"ID" : "474", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_in_U", "Parent" : "0"},
	{"ID" : "475", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_mha_U", "Parent" : "0"},
	{"ID" : "476", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_rq_U", "Parent" : "0"},
	{"ID" : "477", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_res_0_U", "Parent" : "0"},
	{"ID" : "478", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_1_U", "Parent" : "0"},
	{"ID" : "479", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x2_U", "Parent" : "0"},
	{"ID" : "480", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.norm_out_1_U", "Parent" : "0"},
	{"ID" : "481", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_out_U", "Parent" : "0"},
	{"ID" : "482", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_1_rq_U", "Parent" : "0"},
	{"ID" : "483", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_BatchNorm_tiled_0_U0_U", "Parent" : "0"},
	{"ID" : "484", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0_U", "Parent" : "0"},
	{"ID" : "485", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_triplicate_stream_ap_int_8_17_16_1_U0_U", "Parent" : "0"},
	{"ID" : "486", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0_U", "Parent" : "0"},
	{"ID" : "487", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_duplicate_stream_ap_int_8_17_16_1_1_U0_U", "Parent" : "0"},
	{"ID" : "488", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_BatchNorm_tiled_1_U0_U", "Parent" : "0"},
	{"ID" : "489", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0_U", "Parent" : "0"},
	{"ID" : "490", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0_U", "Parent" : "0"}]}


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
		Out_r {Type I LastRead 7 FirstWrite -1}
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
	duplicate_stream_ap_int_8_17_16_1_s {
		input_stream1 {Type I LastRead 0 FirstWrite -1}
		res1 {Type O LastRead -1 FirstWrite 1}
		x13 {Type O LastRead -1 FirstWrite 1}}
	BatchNorm_tiled_0 {
		x13 {Type I LastRead 0 FirstWrite -1}
		norm_out4 {Type O LastRead -1 FirstWrite 4}
		bn0_mul_1 {Type I LastRead -1 FirstWrite -1}
		bn0_add_1 {Type I LastRead -1 FirstWrite -1}}
	BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_s {
		x13 {Type I LastRead 0 FirstWrite -1}
		norm_out4 {Type O LastRead -1 FirstWrite 4}
		bn0_mul_1 {Type I LastRead -1 FirstWrite -1}
		bn0_add_1 {Type I LastRead -1 FirstWrite -1}}
	triplicate_stream_ap_int_8_17_16_1_s {
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
		out_mha8 {Type O LastRead -1 FirstWrite 2}}
	requant_ap_int_8_ap_int_8_17_16_21351_16_1_s {
		res1 {Type I LastRead 1 FirstWrite -1}
		res_rq2 {Type O LastRead -1 FirstWrite 4}}
	ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_s {
		out_mha8 {Type I LastRead 1 FirstWrite -1}
		res_rq2 {Type I LastRead 1 FirstWrite -1}
		out_res_09 {Type O LastRead -1 FirstWrite 4}}
	duplicate_stream_ap_int_8_17_16_1_1 {
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
		mlp_out14 {Type O LastRead -1 FirstWrite 2}}
	requant_ap_int_8_ap_int_8_17_16_84995_16_1_s {
		res_110 {Type I LastRead 1 FirstWrite -1}
		res_1_rq11 {Type O LastRead -1 FirstWrite 4}}
	ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_s {
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
	 { m_axi {  { m_axi_Out_r_AWVALID VALID 1 1 }  { m_axi_Out_r_AWREADY READY 0 1 }  { m_axi_Out_r_AWADDR ADDR 1 64 }  { m_axi_Out_r_AWID ID 1 1 }  { m_axi_Out_r_AWLEN SIZE 1 32 }  { m_axi_Out_r_AWSIZE BURST 1 3 }  { m_axi_Out_r_AWBURST LOCK 1 2 }  { m_axi_Out_r_AWLOCK CACHE 1 2 }  { m_axi_Out_r_AWCACHE PROT 1 4 }  { m_axi_Out_r_AWPROT QOS 1 3 }  { m_axi_Out_r_AWQOS REGION 1 4 }  { m_axi_Out_r_AWREGION USER 1 4 }  { m_axi_Out_r_AWUSER DATA 1 1 }  { m_axi_Out_r_WVALID VALID 1 1 }  { m_axi_Out_r_WREADY READY 0 1 }  { m_axi_Out_r_WDATA FIFONUM 1 8 }  { m_axi_Out_r_WSTRB STRB 1 1 }  { m_axi_Out_r_WLAST LAST 1 1 }  { m_axi_Out_r_WID ID 1 1 }  { m_axi_Out_r_WUSER DATA 1 1 }  { m_axi_Out_r_ARVALID VALID 1 1 }  { m_axi_Out_r_ARREADY READY 0 1 }  { m_axi_Out_r_ARADDR ADDR 1 64 }  { m_axi_Out_r_ARID ID 1 1 }  { m_axi_Out_r_ARLEN SIZE 1 32 }  { m_axi_Out_r_ARSIZE BURST 1 3 }  { m_axi_Out_r_ARBURST LOCK 1 2 }  { m_axi_Out_r_ARLOCK CACHE 1 2 }  { m_axi_Out_r_ARCACHE PROT 1 4 }  { m_axi_Out_r_ARPROT QOS 1 3 }  { m_axi_Out_r_ARQOS REGION 1 4 }  { m_axi_Out_r_ARREGION USER 1 4 }  { m_axi_Out_r_ARUSER DATA 1 1 }  { m_axi_Out_r_RVALID VALID 0 1 }  { m_axi_Out_r_RREADY READY 1 1 }  { m_axi_Out_r_RDATA FIFONUM 0 8 }  { m_axi_Out_r_RLAST LAST 0 1 }  { m_axi_Out_r_RID ID 0 1 }  { m_axi_Out_r_RFIFONUM LEN 0 13 }  { m_axi_Out_r_RUSER DATA 0 1 }  { m_axi_Out_r_RRESP RESP 0 2 }  { m_axi_Out_r_BVALID VALID 0 1 }  { m_axi_Out_r_BREADY READY 1 1 }  { m_axi_Out_r_BRESP RESP 0 2 }  { m_axi_Out_r_BID ID 0 1 }  { m_axi_Out_r_BUSER DATA 0 1 } } }
	in_o { ap_none {  { in_o in_data 0 64 }  { in_o_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 8 }  { m_axi_gmem0_WSTRB STRB 1 1 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 8 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 13 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	in_w_up { ap_none {  { in_w_up in_data 0 64 }  { in_w_up_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 8 }  { m_axi_gmem1_WSTRB STRB 1 1 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 8 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 13 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	in_w_down { ap_none {  { in_w_down in_data 0 64 }  { in_w_down_ap_vld in_vld 0 1 } } }
}
