set moduleName MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8
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
set C_modelName {MatMul_QK_tiled.22_Pipeline_VITIS_LOOP_1701_8}
set C_modelType { void 0 }
set C_modelArgList {
	{ tile_Q_V_0 int 8 regular {array 48 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
	{ buff_K_V int 8 regular {array 816 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
	{ A_3 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tile_Q_V_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buff_K_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 107
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tile_Q_V_0_address0 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q0 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address1 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q1 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address2 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce2 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q2 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address3 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce3 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q3 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address4 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce4 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q4 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address5 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce5 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q5 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address6 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce6 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q6 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address7 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce7 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q7 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address8 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce8 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q8 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address9 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce9 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q9 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address10 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce10 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q10 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address11 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce11 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q11 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address12 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce12 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q12 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address13 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce13 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q13 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address14 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce14 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q14 sc_in sc_lv 8 signal 0 } 
	{ tile_Q_V_0_address15 sc_out sc_lv 6 signal 0 } 
	{ tile_Q_V_0_ce15 sc_out sc_logic 1 signal 0 } 
	{ tile_Q_V_0_q15 sc_in sc_lv 8 signal 0 } 
	{ buff_K_V_address0 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q0 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address1 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q1 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address2 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce2 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q2 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address3 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce3 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q3 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address4 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce4 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q4 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address5 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce5 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q5 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address6 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce6 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q6 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address7 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce7 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q7 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address8 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce8 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q8 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address9 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce9 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q9 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address10 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce10 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q10 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address11 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce11 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q11 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address12 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce12 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q12 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address13 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce13 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q13 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address14 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce14 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q14 sc_in sc_lv 8 signal 1 } 
	{ buff_K_V_address15 sc_out sc_lv 10 signal 1 } 
	{ buff_K_V_ce15 sc_out sc_logic 1 signal 1 } 
	{ buff_K_V_q15 sc_in sc_lv 8 signal 1 } 
	{ A_3_din sc_out sc_lv 8 signal 2 } 
	{ A_3_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ A_3_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ A_3_full_n sc_in sc_logic 1 signal 2 } 
	{ A_3_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tile_Q_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address0" }} , 
 	{ "name": "tile_Q_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce0" }} , 
 	{ "name": "tile_Q_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q0" }} , 
 	{ "name": "tile_Q_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address1" }} , 
 	{ "name": "tile_Q_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce1" }} , 
 	{ "name": "tile_Q_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q1" }} , 
 	{ "name": "tile_Q_V_0_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address2" }} , 
 	{ "name": "tile_Q_V_0_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce2" }} , 
 	{ "name": "tile_Q_V_0_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q2" }} , 
 	{ "name": "tile_Q_V_0_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address3" }} , 
 	{ "name": "tile_Q_V_0_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce3" }} , 
 	{ "name": "tile_Q_V_0_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q3" }} , 
 	{ "name": "tile_Q_V_0_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address4" }} , 
 	{ "name": "tile_Q_V_0_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce4" }} , 
 	{ "name": "tile_Q_V_0_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q4" }} , 
 	{ "name": "tile_Q_V_0_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address5" }} , 
 	{ "name": "tile_Q_V_0_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce5" }} , 
 	{ "name": "tile_Q_V_0_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q5" }} , 
 	{ "name": "tile_Q_V_0_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address6" }} , 
 	{ "name": "tile_Q_V_0_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce6" }} , 
 	{ "name": "tile_Q_V_0_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q6" }} , 
 	{ "name": "tile_Q_V_0_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address7" }} , 
 	{ "name": "tile_Q_V_0_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce7" }} , 
 	{ "name": "tile_Q_V_0_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q7" }} , 
 	{ "name": "tile_Q_V_0_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address8" }} , 
 	{ "name": "tile_Q_V_0_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce8" }} , 
 	{ "name": "tile_Q_V_0_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q8" }} , 
 	{ "name": "tile_Q_V_0_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address9" }} , 
 	{ "name": "tile_Q_V_0_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce9" }} , 
 	{ "name": "tile_Q_V_0_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q9" }} , 
 	{ "name": "tile_Q_V_0_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address10" }} , 
 	{ "name": "tile_Q_V_0_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce10" }} , 
 	{ "name": "tile_Q_V_0_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q10" }} , 
 	{ "name": "tile_Q_V_0_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address11" }} , 
 	{ "name": "tile_Q_V_0_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce11" }} , 
 	{ "name": "tile_Q_V_0_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q11" }} , 
 	{ "name": "tile_Q_V_0_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address12" }} , 
 	{ "name": "tile_Q_V_0_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce12" }} , 
 	{ "name": "tile_Q_V_0_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q12" }} , 
 	{ "name": "tile_Q_V_0_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address13" }} , 
 	{ "name": "tile_Q_V_0_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce13" }} , 
 	{ "name": "tile_Q_V_0_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q13" }} , 
 	{ "name": "tile_Q_V_0_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address14" }} , 
 	{ "name": "tile_Q_V_0_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce14" }} , 
 	{ "name": "tile_Q_V_0_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q14" }} , 
 	{ "name": "tile_Q_V_0_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "address15" }} , 
 	{ "name": "tile_Q_V_0_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "ce15" }} , 
 	{ "name": "tile_Q_V_0_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tile_Q_V_0", "role": "q15" }} , 
 	{ "name": "buff_K_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address0" }} , 
 	{ "name": "buff_K_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce0" }} , 
 	{ "name": "buff_K_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q0" }} , 
 	{ "name": "buff_K_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address1" }} , 
 	{ "name": "buff_K_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce1" }} , 
 	{ "name": "buff_K_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q1" }} , 
 	{ "name": "buff_K_V_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address2" }} , 
 	{ "name": "buff_K_V_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce2" }} , 
 	{ "name": "buff_K_V_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q2" }} , 
 	{ "name": "buff_K_V_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address3" }} , 
 	{ "name": "buff_K_V_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce3" }} , 
 	{ "name": "buff_K_V_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q3" }} , 
 	{ "name": "buff_K_V_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address4" }} , 
 	{ "name": "buff_K_V_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce4" }} , 
 	{ "name": "buff_K_V_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q4" }} , 
 	{ "name": "buff_K_V_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address5" }} , 
 	{ "name": "buff_K_V_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce5" }} , 
 	{ "name": "buff_K_V_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q5" }} , 
 	{ "name": "buff_K_V_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address6" }} , 
 	{ "name": "buff_K_V_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce6" }} , 
 	{ "name": "buff_K_V_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q6" }} , 
 	{ "name": "buff_K_V_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address7" }} , 
 	{ "name": "buff_K_V_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce7" }} , 
 	{ "name": "buff_K_V_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q7" }} , 
 	{ "name": "buff_K_V_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address8" }} , 
 	{ "name": "buff_K_V_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce8" }} , 
 	{ "name": "buff_K_V_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q8" }} , 
 	{ "name": "buff_K_V_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address9" }} , 
 	{ "name": "buff_K_V_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce9" }} , 
 	{ "name": "buff_K_V_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q9" }} , 
 	{ "name": "buff_K_V_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address10" }} , 
 	{ "name": "buff_K_V_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce10" }} , 
 	{ "name": "buff_K_V_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q10" }} , 
 	{ "name": "buff_K_V_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address11" }} , 
 	{ "name": "buff_K_V_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce11" }} , 
 	{ "name": "buff_K_V_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q11" }} , 
 	{ "name": "buff_K_V_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address12" }} , 
 	{ "name": "buff_K_V_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce12" }} , 
 	{ "name": "buff_K_V_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q12" }} , 
 	{ "name": "buff_K_V_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address13" }} , 
 	{ "name": "buff_K_V_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce13" }} , 
 	{ "name": "buff_K_V_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q13" }} , 
 	{ "name": "buff_K_V_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address14" }} , 
 	{ "name": "buff_K_V_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce14" }} , 
 	{ "name": "buff_K_V_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q14" }} , 
 	{ "name": "buff_K_V_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_K_V", "role": "address15" }} , 
 	{ "name": "buff_K_V_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_K_V", "role": "ce15" }} , 
 	{ "name": "buff_K_V_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_K_V", "role": "q15" }} , 
 	{ "name": "A_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_3", "role": "din" }} , 
 	{ "name": "A_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_3", "role": "num_data_valid" }} , 
 	{ "name": "A_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_3", "role": "fifo_cap" }} , 
 	{ "name": "A_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "full_n" }} , 
 	{ "name": "A_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U502", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U503", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U504", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U505", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U506", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U507", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U508", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U509", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U510", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U511", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U512", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U513", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U514", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U515", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U516", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U517", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U518", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U519", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U520", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U521", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U522", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U523", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U524", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U525", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U526", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U527", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U528", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U529", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U530", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U531", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U532", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U533", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U534", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U535", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U536", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U537", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_4_1_U538", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U539", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U540", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U541", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U542", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U543", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U544", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U545", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U546", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_19_4_1_U547", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_19s_20_4_1_U548", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_20s_21_4_1_U549", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_21s_8ns_30_4_1_U550", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8 {
		tile_Q_V_0 {Type I LastRead 3 FirstWrite -1}
		buff_K_V {Type I LastRead 3 FirstWrite -1}
		A_3 {Type O LastRead -1 FirstWrite 15}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65", "Max" : "65"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tile_Q_V_0 { ap_memory {  { tile_Q_V_0_address0 mem_address 1 6 }  { tile_Q_V_0_ce0 mem_ce 1 1 }  { tile_Q_V_0_q0 in_data 0 8 }  { tile_Q_V_0_address1 MemPortADDR2 1 6 }  { tile_Q_V_0_ce1 MemPortCE2 1 1 }  { tile_Q_V_0_q1 in_data 0 8 }  { tile_Q_V_0_address2 MemPortADDR2 1 6 }  { tile_Q_V_0_ce2 MemPortCE2 1 1 }  { tile_Q_V_0_q2 in_data 0 8 }  { tile_Q_V_0_address3 MemPortADDR2 1 6 }  { tile_Q_V_0_ce3 MemPortCE2 1 1 }  { tile_Q_V_0_q3 in_data 0 8 }  { tile_Q_V_0_address4 MemPortADDR2 1 6 }  { tile_Q_V_0_ce4 MemPortCE2 1 1 }  { tile_Q_V_0_q4 in_data 0 8 }  { tile_Q_V_0_address5 MemPortADDR2 1 6 }  { tile_Q_V_0_ce5 MemPortCE2 1 1 }  { tile_Q_V_0_q5 MemPortDOUT2 0 8 }  { tile_Q_V_0_address6 MemPortADDR2 1 6 }  { tile_Q_V_0_ce6 MemPortCE2 1 1 }  { tile_Q_V_0_q6 in_data 0 8 }  { tile_Q_V_0_address7 MemPortADDR2 1 6 }  { tile_Q_V_0_ce7 MemPortCE2 1 1 }  { tile_Q_V_0_q7 in_data 0 8 }  { tile_Q_V_0_address8 MemPortADDR2 1 6 }  { tile_Q_V_0_ce8 MemPortCE2 1 1 }  { tile_Q_V_0_q8 MemPortDOUT2 0 8 }  { tile_Q_V_0_address9 MemPortADDR2 1 6 }  { tile_Q_V_0_ce9 MemPortCE2 1 1 }  { tile_Q_V_0_q9 in_data 0 8 }  { tile_Q_V_0_address10 MemPortADDR2 1 6 }  { tile_Q_V_0_ce10 MemPortCE2 1 1 }  { tile_Q_V_0_q10 in_data 0 8 }  { tile_Q_V_0_address11 MemPortADDR2 1 6 }  { tile_Q_V_0_ce11 MemPortCE2 1 1 }  { tile_Q_V_0_q11 in_data 0 8 }  { tile_Q_V_0_address12 MemPortADDR2 1 6 }  { tile_Q_V_0_ce12 MemPortCE2 1 1 }  { tile_Q_V_0_q12 in_data 0 8 }  { tile_Q_V_0_address13 MemPortADDR2 1 6 }  { tile_Q_V_0_ce13 MemPortCE2 1 1 }  { tile_Q_V_0_q13 in_data 0 8 }  { tile_Q_V_0_address14 MemPortADDR2 1 6 }  { tile_Q_V_0_ce14 MemPortCE2 1 1 }  { tile_Q_V_0_q14 in_data 0 8 }  { tile_Q_V_0_address15 MemPortADDR2 1 6 }  { tile_Q_V_0_ce15 MemPortCE2 1 1 }  { tile_Q_V_0_q15 in_data 0 8 } } }
	buff_K_V { ap_memory {  { buff_K_V_address0 mem_address 1 10 }  { buff_K_V_ce0 mem_ce 1 1 }  { buff_K_V_q0 in_data 0 8 }  { buff_K_V_address1 MemPortADDR2 1 10 }  { buff_K_V_ce1 MemPortCE2 1 1 }  { buff_K_V_q1 in_data 0 8 }  { buff_K_V_address2 MemPortADDR2 1 10 }  { buff_K_V_ce2 MemPortCE2 1 1 }  { buff_K_V_q2 in_data 0 8 }  { buff_K_V_address3 MemPortADDR2 1 10 }  { buff_K_V_ce3 MemPortCE2 1 1 }  { buff_K_V_q3 in_data 0 8 }  { buff_K_V_address4 MemPortADDR2 1 10 }  { buff_K_V_ce4 MemPortCE2 1 1 }  { buff_K_V_q4 in_data 0 8 }  { buff_K_V_address5 MemPortADDR2 1 10 }  { buff_K_V_ce5 MemPortCE2 1 1 }  { buff_K_V_q5 MemPortDOUT2 0 8 }  { buff_K_V_address6 MemPortADDR2 1 10 }  { buff_K_V_ce6 MemPortCE2 1 1 }  { buff_K_V_q6 in_data 0 8 }  { buff_K_V_address7 MemPortADDR2 1 10 }  { buff_K_V_ce7 MemPortCE2 1 1 }  { buff_K_V_q7 in_data 0 8 }  { buff_K_V_address8 MemPortADDR2 1 10 }  { buff_K_V_ce8 MemPortCE2 1 1 }  { buff_K_V_q8 MemPortDOUT2 0 8 }  { buff_K_V_address9 MemPortADDR2 1 10 }  { buff_K_V_ce9 MemPortCE2 1 1 }  { buff_K_V_q9 in_data 0 8 }  { buff_K_V_address10 MemPortADDR2 1 10 }  { buff_K_V_ce10 MemPortCE2 1 1 }  { buff_K_V_q10 in_data 0 8 }  { buff_K_V_address11 MemPortADDR2 1 10 }  { buff_K_V_ce11 MemPortCE2 1 1 }  { buff_K_V_q11 in_data 0 8 }  { buff_K_V_address12 MemPortADDR2 1 10 }  { buff_K_V_ce12 MemPortCE2 1 1 }  { buff_K_V_q12 in_data 0 8 }  { buff_K_V_address13 MemPortADDR2 1 10 }  { buff_K_V_ce13 MemPortCE2 1 1 }  { buff_K_V_q13 in_data 0 8 }  { buff_K_V_address14 MemPortADDR2 1 10 }  { buff_K_V_ce14 MemPortCE2 1 1 }  { buff_K_V_q14 in_data 0 8 }  { buff_K_V_address15 MemPortADDR2 1 10 }  { buff_K_V_ce15 MemPortCE2 1 1 }  { buff_K_V_q15 in_data 0 8 } } }
	A_3 { ap_fifo {  { A_3_din fifo_port_we 1 8 }  { A_3_num_data_valid fifo_status_num_data_valid 0 2 }  { A_3_fifo_cap fifo_update 0 2 }  { A_3_full_n fifo_status 0 1 }  { A_3_write fifo_data 1 1 } } }
}
