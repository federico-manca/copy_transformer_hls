set moduleName MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6
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
set C_modelName {MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ buff_B_V int 8 regular {array 816 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 } 1 1 }  }
	{ sext_ln186 int 8 regular  }
	{ sext_ln186_100 int 8 regular  }
	{ sext_ln186_101 int 8 regular  }
	{ sext_ln186_102 int 8 regular  }
	{ sext_ln186_104 int 8 regular  }
	{ sext_ln186_106 int 8 regular  }
	{ sext_ln186_108 int 8 regular  }
	{ sext_ln186_110 int 8 regular  }
	{ sext_ln186_112 int 8 regular  }
	{ sext_ln186_114 int 8 regular  }
	{ sext_ln186_116 int 8 regular  }
	{ sext_ln186_118 int 8 regular  }
	{ sext_ln186_120 int 8 regular  }
	{ sext_ln186_122 int 8 regular  }
	{ sext_ln186_124 int 8 regular  }
	{ sext_ln186_126 int 8 regular  }
	{ sext_ln186_128 int 8 regular  }
	{ head_out_0 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buff_B_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_100", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_101", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_102", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_104", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_106", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_108", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_110", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_112", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_114", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_116", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_118", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_120", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_122", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_124", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_126", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_128", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "head_out_0", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 79
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ head_out_0_din sc_out sc_lv 8 signal 18 } 
	{ head_out_0_num_data_valid sc_in sc_lv 2 signal 18 } 
	{ head_out_0_fifo_cap sc_in sc_lv 2 signal 18 } 
	{ head_out_0_full_n sc_in sc_logic 1 signal 18 } 
	{ head_out_0_write sc_out sc_logic 1 signal 18 } 
	{ buff_B_V_address0 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q0 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address1 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q1 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address2 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce2 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q2 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address3 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce3 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q3 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address4 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce4 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q4 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address5 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce5 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q5 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address6 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce6 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q6 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address7 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce7 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q7 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address8 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce8 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q8 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address9 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce9 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q9 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address10 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce10 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q10 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address11 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce11 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q11 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address12 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce12 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q12 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address13 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce13 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q13 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address14 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce14 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q14 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address15 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce15 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q15 sc_in sc_lv 8 signal 0 } 
	{ buff_B_V_address16 sc_out sc_lv 10 signal 0 } 
	{ buff_B_V_ce16 sc_out sc_logic 1 signal 0 } 
	{ buff_B_V_q16 sc_in sc_lv 8 signal 0 } 
	{ sext_ln186 sc_in sc_lv 8 signal 1 } 
	{ sext_ln186_100 sc_in sc_lv 8 signal 2 } 
	{ sext_ln186_101 sc_in sc_lv 8 signal 3 } 
	{ sext_ln186_102 sc_in sc_lv 8 signal 4 } 
	{ sext_ln186_104 sc_in sc_lv 8 signal 5 } 
	{ sext_ln186_106 sc_in sc_lv 8 signal 6 } 
	{ sext_ln186_108 sc_in sc_lv 8 signal 7 } 
	{ sext_ln186_110 sc_in sc_lv 8 signal 8 } 
	{ sext_ln186_112 sc_in sc_lv 8 signal 9 } 
	{ sext_ln186_114 sc_in sc_lv 8 signal 10 } 
	{ sext_ln186_116 sc_in sc_lv 8 signal 11 } 
	{ sext_ln186_118 sc_in sc_lv 8 signal 12 } 
	{ sext_ln186_120 sc_in sc_lv 8 signal 13 } 
	{ sext_ln186_122 sc_in sc_lv 8 signal 14 } 
	{ sext_ln186_124 sc_in sc_lv 8 signal 15 } 
	{ sext_ln186_126 sc_in sc_lv 8 signal 16 } 
	{ sext_ln186_128 sc_in sc_lv 8 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "head_out_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "head_out_0", "role": "din" }} , 
 	{ "name": "head_out_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "head_out_0", "role": "num_data_valid" }} , 
 	{ "name": "head_out_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "head_out_0", "role": "fifo_cap" }} , 
 	{ "name": "head_out_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "head_out_0", "role": "full_n" }} , 
 	{ "name": "head_out_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "head_out_0", "role": "write" }} , 
 	{ "name": "buff_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address0" }} , 
 	{ "name": "buff_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce0" }} , 
 	{ "name": "buff_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q0" }} , 
 	{ "name": "buff_B_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address1" }} , 
 	{ "name": "buff_B_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce1" }} , 
 	{ "name": "buff_B_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q1" }} , 
 	{ "name": "buff_B_V_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address2" }} , 
 	{ "name": "buff_B_V_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce2" }} , 
 	{ "name": "buff_B_V_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q2" }} , 
 	{ "name": "buff_B_V_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address3" }} , 
 	{ "name": "buff_B_V_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce3" }} , 
 	{ "name": "buff_B_V_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q3" }} , 
 	{ "name": "buff_B_V_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address4" }} , 
 	{ "name": "buff_B_V_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce4" }} , 
 	{ "name": "buff_B_V_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q4" }} , 
 	{ "name": "buff_B_V_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address5" }} , 
 	{ "name": "buff_B_V_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce5" }} , 
 	{ "name": "buff_B_V_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q5" }} , 
 	{ "name": "buff_B_V_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address6" }} , 
 	{ "name": "buff_B_V_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce6" }} , 
 	{ "name": "buff_B_V_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q6" }} , 
 	{ "name": "buff_B_V_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address7" }} , 
 	{ "name": "buff_B_V_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce7" }} , 
 	{ "name": "buff_B_V_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q7" }} , 
 	{ "name": "buff_B_V_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address8" }} , 
 	{ "name": "buff_B_V_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce8" }} , 
 	{ "name": "buff_B_V_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q8" }} , 
 	{ "name": "buff_B_V_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address9" }} , 
 	{ "name": "buff_B_V_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce9" }} , 
 	{ "name": "buff_B_V_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q9" }} , 
 	{ "name": "buff_B_V_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address10" }} , 
 	{ "name": "buff_B_V_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce10" }} , 
 	{ "name": "buff_B_V_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q10" }} , 
 	{ "name": "buff_B_V_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address11" }} , 
 	{ "name": "buff_B_V_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce11" }} , 
 	{ "name": "buff_B_V_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q11" }} , 
 	{ "name": "buff_B_V_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address12" }} , 
 	{ "name": "buff_B_V_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce12" }} , 
 	{ "name": "buff_B_V_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q12" }} , 
 	{ "name": "buff_B_V_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address13" }} , 
 	{ "name": "buff_B_V_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce13" }} , 
 	{ "name": "buff_B_V_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q13" }} , 
 	{ "name": "buff_B_V_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address14" }} , 
 	{ "name": "buff_B_V_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce14" }} , 
 	{ "name": "buff_B_V_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q14" }} , 
 	{ "name": "buff_B_V_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address15" }} , 
 	{ "name": "buff_B_V_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce15" }} , 
 	{ "name": "buff_B_V_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q15" }} , 
 	{ "name": "buff_B_V_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buff_B_V", "role": "address16" }} , 
 	{ "name": "buff_B_V_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_V", "role": "ce16" }} , 
 	{ "name": "buff_B_V_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buff_B_V", "role": "q16" }} , 
 	{ "name": "sext_ln186", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186", "role": "default" }} , 
 	{ "name": "sext_ln186_100", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_100", "role": "default" }} , 
 	{ "name": "sext_ln186_101", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_101", "role": "default" }} , 
 	{ "name": "sext_ln186_102", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_102", "role": "default" }} , 
 	{ "name": "sext_ln186_104", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_104", "role": "default" }} , 
 	{ "name": "sext_ln186_106", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_106", "role": "default" }} , 
 	{ "name": "sext_ln186_108", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_108", "role": "default" }} , 
 	{ "name": "sext_ln186_110", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_110", "role": "default" }} , 
 	{ "name": "sext_ln186_112", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_112", "role": "default" }} , 
 	{ "name": "sext_ln186_114", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_114", "role": "default" }} , 
 	{ "name": "sext_ln186_116", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_116", "role": "default" }} , 
 	{ "name": "sext_ln186_118", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_118", "role": "default" }} , 
 	{ "name": "sext_ln186_120", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_120", "role": "default" }} , 
 	{ "name": "sext_ln186_122", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_122", "role": "default" }} , 
 	{ "name": "sext_ln186_124", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_124", "role": "default" }} , 
 	{ "name": "sext_ln186_126", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_126", "role": "default" }} , 
 	{ "name": "sext_ln186_128", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_128", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U218", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U219", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U220", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U221", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U222", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U223", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U224", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U225", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U226", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U227", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U228", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_4_1_U229", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U230", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U231", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_17_4_1_U232", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_4_1_U233", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_19_4_1_U234", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_17s_19s_9ns_30_4_1_U235", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		head_out_0 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "59", "Max" : "59"}
	, {"Name" : "Interval", "Min" : "59", "Max" : "59"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buff_B_V { ap_memory {  { buff_B_V_address0 mem_address 1 10 }  { buff_B_V_ce0 mem_ce 1 1 }  { buff_B_V_q0 in_data 0 8 }  { buff_B_V_address1 MemPortADDR2 1 10 }  { buff_B_V_ce1 MemPortCE2 1 1 }  { buff_B_V_q1 MemPortDOUT2 0 8 }  { buff_B_V_address2 MemPortADDR2 1 10 }  { buff_B_V_ce2 MemPortCE2 1 1 }  { buff_B_V_q2 in_data 0 8 }  { buff_B_V_address3 MemPortADDR2 1 10 }  { buff_B_V_ce3 MemPortCE2 1 1 }  { buff_B_V_q3 MemPortDOUT2 0 8 }  { buff_B_V_address4 MemPortADDR2 1 10 }  { buff_B_V_ce4 MemPortCE2 1 1 }  { buff_B_V_q4 MemPortDOUT2 0 8 }  { buff_B_V_address5 MemPortADDR2 1 10 }  { buff_B_V_ce5 MemPortCE2 1 1 }  { buff_B_V_q5 in_data 0 8 }  { buff_B_V_address6 MemPortADDR2 1 10 }  { buff_B_V_ce6 MemPortCE2 1 1 }  { buff_B_V_q6 MemPortDOUT2 0 8 }  { buff_B_V_address7 MemPortADDR2 1 10 }  { buff_B_V_ce7 MemPortCE2 1 1 }  { buff_B_V_q7 in_data 0 8 }  { buff_B_V_address8 MemPortADDR2 1 10 }  { buff_B_V_ce8 MemPortCE2 1 1 }  { buff_B_V_q8 MemPortDOUT2 0 8 }  { buff_B_V_address9 MemPortADDR2 1 10 }  { buff_B_V_ce9 MemPortCE2 1 1 }  { buff_B_V_q9 MemPortDOUT2 0 8 }  { buff_B_V_address10 MemPortADDR2 1 10 }  { buff_B_V_ce10 MemPortCE2 1 1 }  { buff_B_V_q10 in_data 0 8 }  { buff_B_V_address11 MemPortADDR2 1 10 }  { buff_B_V_ce11 MemPortCE2 1 1 }  { buff_B_V_q11 MemPortDOUT2 0 8 }  { buff_B_V_address12 MemPortADDR2 1 10 }  { buff_B_V_ce12 MemPortCE2 1 1 }  { buff_B_V_q12 MemPortDOUT2 0 8 }  { buff_B_V_address13 MemPortADDR2 1 10 }  { buff_B_V_ce13 MemPortCE2 1 1 }  { buff_B_V_q13 MemPortDOUT2 0 8 }  { buff_B_V_address14 MemPortADDR2 1 10 }  { buff_B_V_ce14 MemPortCE2 1 1 }  { buff_B_V_q14 in_data 0 8 }  { buff_B_V_address15 MemPortADDR2 1 10 }  { buff_B_V_ce15 MemPortCE2 1 1 }  { buff_B_V_q15 MemPortDOUT2 0 8 }  { buff_B_V_address16 MemPortADDR2 1 10 }  { buff_B_V_ce16 MemPortCE2 1 1 }  { buff_B_V_q16 MemPortDOUT2 0 8 } } }
	sext_ln186 { ap_none {  { sext_ln186 in_data 0 8 } } }
	sext_ln186_100 { ap_none {  { sext_ln186_100 in_data 0 8 } } }
	sext_ln186_101 { ap_none {  { sext_ln186_101 in_data 0 8 } } }
	sext_ln186_102 { ap_none {  { sext_ln186_102 in_data 0 8 } } }
	sext_ln186_104 { ap_none {  { sext_ln186_104 in_data 0 8 } } }
	sext_ln186_106 { ap_none {  { sext_ln186_106 in_data 0 8 } } }
	sext_ln186_108 { ap_none {  { sext_ln186_108 in_data 0 8 } } }
	sext_ln186_110 { ap_none {  { sext_ln186_110 in_data 0 8 } } }
	sext_ln186_112 { ap_none {  { sext_ln186_112 in_data 0 8 } } }
	sext_ln186_114 { ap_none {  { sext_ln186_114 in_data 0 8 } } }
	sext_ln186_116 { ap_none {  { sext_ln186_116 in_data 0 8 } } }
	sext_ln186_118 { ap_none {  { sext_ln186_118 in_data 0 8 } } }
	sext_ln186_120 { ap_none {  { sext_ln186_120 in_data 0 8 } } }
	sext_ln186_122 { ap_none {  { sext_ln186_122 in_data 0 8 } } }
	sext_ln186_124 { ap_none {  { sext_ln186_124 in_data 0 8 } } }
	sext_ln186_126 { ap_none {  { sext_ln186_126 in_data 0 8 } } }
	sext_ln186_128 { ap_none {  { sext_ln186_128 in_data 0 8 } } }
	head_out_0 { ap_fifo {  { head_out_0_din fifo_port_we 1 8 }  { head_out_0_num_data_valid fifo_status_num_data_valid 0 2 }  { head_out_0_fifo_cap fifo_update 0 2 }  { head_out_0_full_n fifo_status 0 1 }  { head_out_0_write fifo_data 1 1 } } }
}
