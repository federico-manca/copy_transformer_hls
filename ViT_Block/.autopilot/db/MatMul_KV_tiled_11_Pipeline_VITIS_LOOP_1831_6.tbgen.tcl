set moduleName MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6
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
set C_modelName {MatMul_KV_tiled.11_Pipeline_VITIS_LOOP_1831_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ buff_B_V int 8 regular {array 136 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 } 1 1 }  }
	{ sext_ln186 int 8 regular  }
	{ sext_ln186_2 int 8 regular  }
	{ sext_ln186_4 int 8 regular  }
	{ sext_ln186_6 int 8 regular  }
	{ sext_ln186_8 int 8 regular  }
	{ sext_ln186_10 int 8 regular  }
	{ sext_ln186_12 int 8 regular  }
	{ sext_ln186_14 int 8 regular  }
	{ sext_ln186_16 int 8 regular  }
	{ sext_ln186_18 int 8 regular  }
	{ sext_ln186_20 int 8 regular  }
	{ sext_ln186_22 int 8 regular  }
	{ sext_ln186_24 int 8 regular  }
	{ sext_ln186_26 int 8 regular  }
	{ sext_ln186_28 int 8 regular  }
	{ sext_ln186_30 int 8 regular  }
	{ sext_ln186_32 int 8 regular  }
	{ head_out_1 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buff_B_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_16", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_18", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_20", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_22", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_24", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_26", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_28", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_30", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_32", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "head_out_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 79
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ head_out_1_din sc_out sc_lv 8 signal 18 } 
	{ head_out_1_num_data_valid sc_in sc_lv 2 signal 18 } 
	{ head_out_1_fifo_cap sc_in sc_lv 2 signal 18 } 
	{ head_out_1_full_n sc_in sc_logic 1 signal 18 } 
	{ head_out_1_write sc_out sc_logic 1 signal 18 } 
	{ buff_B_V_address0 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q0 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address1 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q1 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address2 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce2 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q2 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address3 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce3 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q3 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address4 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce4 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q4 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address5 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce5 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q5 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address6 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce6 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q6 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address7 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce7 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q7 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address8 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce8 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q8 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address9 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce9 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q9 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address10 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce10 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q10 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address11 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce11 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q11 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address12 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce12 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q12 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address13 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce13 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q13 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address14 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce14 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q14 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address15 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce15 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q15 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address16 sc_out sc_lv 8 signal 0 } 
	{ buff_B_V_ce16 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q16 sc_in sc_lv 8 signal 0 } 
	{ sext_ln186 sc_in sc_lv 8 signal 1 } 
	{ sext_ln186_2 sc_in sc_lv 8 signal 2 } 
	{ sext_ln186_4 sc_in sc_lv 8 signal 3 } 
	{ sext_ln186_6 sc_in sc_lv 8 signal 4 } 
	{ sext_ln186_8 sc_in sc_lv 8 signal 5 } 
	{ sext_ln186_10 sc_in sc_lv 8 signal 6 } 
	{ sext_ln186_12 sc_in sc_lv 8 signal 7 } 
	{ sext_ln186_14 sc_in sc_lv 8 signal 8 } 
	{ sext_ln186_16 sc_in sc_lv 8 signal 9 } 
	{ sext_ln186_18 sc_in sc_lv 8 signal 10 } 
	{ sext_ln186_20 sc_in sc_lv 8 signal 11 } 
	{ sext_ln186_22 sc_in sc_lv 8 signal 12 } 
	{ sext_ln186_24 sc_in sc_lv 8 signal 13 } 
	{ sext_ln186_26 sc_in sc_lv 8 signal 14 } 
	{ sext_ln186_28 sc_in sc_lv 8 signal 15 } 
	{ sext_ln186_30 sc_in sc_lv 8 signal 16 } 
	{ sext_ln186_32 sc_in sc_lv 8 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "head_out_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "head_out_1", "role": "din" }} , 
 	{ "name": "head_out_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "head_out_1", "role": "num_data_valid" }} , 
 	{ "name": "head_out_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "head_out_1", "role": "fifo_cap" }} , 
 	{ "name": "head_out_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "head_out_1", "role": "full_n" }} , 
 	{ "name": "head_out_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "head_out_1", "role": "write" }} , 
 	{ "name": "buff_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address0" }} , 
 	{ "name": "buff_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce0" }} , 
 	{ "name": "buff_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q0" }} , 
 	{ "name": "buff_B_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address1" }} , 
 	{ "name": "buff_B_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce1" }} , 
 	{ "name": "buff_B_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q1" }} , 
 	{ "name": "buff_B_V_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address2" }} , 
 	{ "name": "buff_B_V_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce2" }} , 
 	{ "name": "buff_B_V_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q2" }} , 
 	{ "name": "buff_B_V_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address3" }} , 
 	{ "name": "buff_B_V_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce3" }} , 
 	{ "name": "buff_B_V_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q3" }} , 
 	{ "name": "buff_B_V_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address4" }} , 
 	{ "name": "buff_B_V_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce4" }} , 
 	{ "name": "buff_B_V_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q4" }} , 
 	{ "name": "buff_B_V_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address5" }} , 
 	{ "name": "buff_B_V_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce5" }} , 
 	{ "name": "buff_B_V_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q5" }} , 
 	{ "name": "buff_B_V_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address6" }} , 
 	{ "name": "buff_B_V_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce6" }} , 
 	{ "name": "buff_B_V_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q6" }} , 
 	{ "name": "buff_B_V_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address7" }} , 
 	{ "name": "buff_B_V_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce7" }} , 
 	{ "name": "buff_B_V_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q7" }} , 
 	{ "name": "buff_B_V_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address8" }} , 
 	{ "name": "buff_B_V_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce8" }} , 
 	{ "name": "buff_B_V_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q8" }} , 
 	{ "name": "buff_B_V_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address9" }} , 
 	{ "name": "buff_B_V_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce9" }} , 
 	{ "name": "buff_B_V_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q9" }} , 
 	{ "name": "buff_B_V_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address10" }} , 
 	{ "name": "buff_B_V_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce10" }} , 
 	{ "name": "buff_B_V_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q10" }} , 
 	{ "name": "buff_B_V_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address11" }} , 
 	{ "name": "buff_B_V_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce11" }} , 
 	{ "name": "buff_B_V_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q11" }} , 
 	{ "name": "buff_B_V_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address12" }} , 
 	{ "name": "buff_B_V_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce12" }} , 
 	{ "name": "buff_B_V_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q12" }} , 
 	{ "name": "buff_B_V_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address13" }} , 
 	{ "name": "buff_B_V_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce13" }} , 
 	{ "name": "buff_B_V_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q13" }} , 
 	{ "name": "buff_B_V_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address14" }} , 
 	{ "name": "buff_B_V_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce14" }} , 
 	{ "name": "buff_B_V_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q14" }} , 
 	{ "name": "buff_B_V_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address15" }} , 
 	{ "name": "buff_B_V_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce15" }} , 
 	{ "name": "buff_B_V_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q15" }} , 
 	{ "name": "buff_B_V_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address16" }} , 
 	{ "name": "buff_B_V_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce16" }} , 
 	{ "name": "buff_B_V_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q16" }} , 
 	{ "name": "sext_ln186", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186", "role": "default" }} , 
 	{ "name": "sext_ln186_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_2", "role": "default" }} , 
 	{ "name": "sext_ln186_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_4", "role": "default" }} , 
 	{ "name": "sext_ln186_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_6", "role": "default" }} , 
 	{ "name": "sext_ln186_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_8", "role": "default" }} , 
 	{ "name": "sext_ln186_10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_10", "role": "default" }} , 
 	{ "name": "sext_ln186_12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_12", "role": "default" }} , 
 	{ "name": "sext_ln186_14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_14", "role": "default" }} , 
 	{ "name": "sext_ln186_16", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_16", "role": "default" }} , 
 	{ "name": "sext_ln186_18", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_18", "role": "default" }} , 
 	{ "name": "sext_ln186_20", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_20", "role": "default" }} , 
 	{ "name": "sext_ln186_22", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_22", "role": "default" }} , 
 	{ "name": "sext_ln186_24", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_24", "role": "default" }} , 
 	{ "name": "sext_ln186_26", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_26", "role": "default" }} , 
 	{ "name": "sext_ln186_28", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_28", "role": "default" }} , 
 	{ "name": "sext_ln186_30", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_30", "role": "default" }} , 
 	{ "name": "sext_ln186_32", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_32", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U294", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U295", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U296", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U297", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U298", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U299", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U300", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U301", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U302", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U303", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U304", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U305", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U306", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U307", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U308", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_4_1_U309", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_19_4_1_U310", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_17s_19s_9ns_30_4_1_U311", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		head_out_1 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "19"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buff_B_V { ap_memory {  { buff_B_V_address0 mem_address 1 8 }  { buff_B_V_ce0 mem_ce 1 1 }  { buff_B_V_q0 in_data 0 8 }  { buff_B_V_address1 MemPortADDR2 1 8 }  { buff_B_V_ce1 MemPortCE2 1 1 }  { buff_B_V_q1 MemPortDOUT2 0 8 }  { buff_B_V_address2 MemPortADDR2 1 8 }  { buff_B_V_ce2 MemPortCE2 1 1 }  { buff_B_V_q2 in_data 0 8 }  { buff_B_V_address3 MemPortADDR2 1 8 }  { buff_B_V_ce3 MemPortCE2 1 1 }  { buff_B_V_q3 MemPortDOUT2 0 8 }  { buff_B_V_address4 MemPortADDR2 1 8 }  { buff_B_V_ce4 MemPortCE2 1 1 }  { buff_B_V_q4 MemPortDOUT2 0 8 }  { buff_B_V_address5 MemPortADDR2 1 8 }  { buff_B_V_ce5 MemPortCE2 1 1 }  { buff_B_V_q5 in_data 0 8 }  { buff_B_V_address6 MemPortADDR2 1 8 }  { buff_B_V_ce6 MemPortCE2 1 1 }  { buff_B_V_q6 MemPortDOUT2 0 8 }  { buff_B_V_address7 MemPortADDR2 1 8 }  { buff_B_V_ce7 MemPortCE2 1 1 }  { buff_B_V_q7 in_data 0 8 }  { buff_B_V_address8 MemPortADDR2 1 8 }  { buff_B_V_ce8 MemPortCE2 1 1 }  { buff_B_V_q8 MemPortDOUT2 0 8 }  { buff_B_V_address9 MemPortADDR2 1 8 }  { buff_B_V_ce9 MemPortCE2 1 1 }  { buff_B_V_q9 MemPortDOUT2 0 8 }  { buff_B_V_address10 MemPortADDR2 1 8 }  { buff_B_V_ce10 MemPortCE2 1 1 }  { buff_B_V_q10 in_data 0 8 }  { buff_B_V_address11 MemPortADDR2 1 8 }  { buff_B_V_ce11 MemPortCE2 1 1 }  { buff_B_V_q11 MemPortDOUT2 0 8 }  { buff_B_V_address12 MemPortADDR2 1 8 }  { buff_B_V_ce12 MemPortCE2 1 1 }  { buff_B_V_q12 MemPortDOUT2 0 8 }  { buff_B_V_address13 MemPortADDR2 1 8 }  { buff_B_V_ce13 MemPortCE2 1 1 }  { buff_B_V_q13 MemPortDOUT2 0 8 }  { buff_B_V_address14 MemPortADDR2 1 8 }  { buff_B_V_ce14 MemPortCE2 1 1 }  { buff_B_V_q14 in_data 0 8 }  { buff_B_V_address15 MemPortADDR2 1 8 }  { buff_B_V_ce15 MemPortCE2 1 1 }  { buff_B_V_q15 MemPortDOUT2 0 8 }  { buff_B_V_address16 MemPortADDR2 1 8 }  { buff_B_V_ce16 MemPortCE2 1 1 }  { buff_B_V_q16 MemPortDOUT2 0 8 } } }
	sext_ln186 { ap_none {  { sext_ln186 in_data 0 8 } } }
	sext_ln186_2 { ap_none {  { sext_ln186_2 in_data 0 8 } } }
	sext_ln186_4 { ap_none {  { sext_ln186_4 in_data 0 8 } } }
	sext_ln186_6 { ap_none {  { sext_ln186_6 in_data 0 8 } } }
	sext_ln186_8 { ap_none {  { sext_ln186_8 in_data 0 8 } } }
	sext_ln186_10 { ap_none {  { sext_ln186_10 in_data 0 8 } } }
	sext_ln186_12 { ap_none {  { sext_ln186_12 in_data 0 8 } } }
	sext_ln186_14 { ap_none {  { sext_ln186_14 in_data 0 8 } } }
	sext_ln186_16 { ap_none {  { sext_ln186_16 in_data 0 8 } } }
	sext_ln186_18 { ap_none {  { sext_ln186_18 in_data 0 8 } } }
	sext_ln186_20 { ap_none {  { sext_ln186_20 in_data 0 8 } } }
	sext_ln186_22 { ap_none {  { sext_ln186_22 in_data 0 8 } } }
	sext_ln186_24 { ap_none {  { sext_ln186_24 in_data 0 8 } } }
	sext_ln186_26 { ap_none {  { sext_ln186_26 in_data 0 8 } } }
	sext_ln186_28 { ap_none {  { sext_ln186_28 in_data 0 8 } } }
	sext_ln186_30 { ap_none {  { sext_ln186_30 in_data 0 8 } } }
	sext_ln186_32 { ap_none {  { sext_ln186_32 in_data 0 8 } } }
	head_out_1 { ap_fifo {  { head_out_1_din fifo_port_we 1 8 }  { head_out_1_num_data_valid fifo_status_num_data_valid 0 2 }  { head_out_1_fifo_cap fifo_update 0 2 }  { head_out_1_full_n fifo_status 0 1 }  { head_out_1_write fifo_data 1 1 } } }
}
