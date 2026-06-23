// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      ViT_Block
`define AUTOTB_DUT_INST AESL_inst_ViT_Block
`define AUTOTB_TOP      apatb_ViT_Block_top
`define AUTOTB_LAT_RESULT_FILE "ViT_Block.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "ViT_Block.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_ViT_Block_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_Q 1
`define AESL_DEPTH_K 1
`define AESL_DEPTH_V 1
`define AESL_DEPTH_Out_r 1
`define AESL_DEPTH_gmem0 1
`define AESL_DEPTH_gmem1 1
`define AESL_DEPTH_in_r_V_data_V 1
`define AESL_DEPTH_in_r_V_keep_V 1
`define AESL_DEPTH_in_r_V_strb_V 1
`define AESL_DEPTH_in_r_V_last_V 1
`define AESL_DEPTH_out_r_V_data_V 1
`define AESL_DEPTH_out_r_V_keep_V 1
`define AESL_DEPTH_out_r_V_strb_V 1
`define AESL_DEPTH_out_r_V_last_V 1
`define AESL_DEPTH_in_q 1
`define AESL_DEPTH_in_k 1
`define AESL_DEPTH_in_v 1
`define AESL_DEPTH_in_o 1
`define AESL_DEPTH_in_w_up 1
`define AESL_DEPTH_in_w_down 1
`define AUTOTB_TVIN_Q  "../tv/cdatafile/c.ViT_Block.autotvin_Q.dat"
`define AUTOTB_TVIN_K  "../tv/cdatafile/c.ViT_Block.autotvin_K.dat"
`define AUTOTB_TVIN_V  "../tv/cdatafile/c.ViT_Block.autotvin_V.dat"
`define AUTOTB_TVIN_Out_r  "../tv/cdatafile/c.ViT_Block.autotvin_Out_r.dat"
`define AUTOTB_TVIN_gmem0  "../tv/cdatafile/c.ViT_Block.autotvin_gmem0.dat"
`define AUTOTB_TVIN_gmem1  "../tv/cdatafile/c.ViT_Block.autotvin_gmem1.dat"
`define AUTOTB_TVIN_in_r_V_data_V  "../tv/cdatafile/c.ViT_Block.autotvin_in_r_V_data_V.dat"
`define AUTOTB_TVIN_in_r_V_keep_V  "../tv/cdatafile/c.ViT_Block.autotvin_in_r_V_keep_V.dat"
`define AUTOTB_TVIN_in_r_V_strb_V  "../tv/cdatafile/c.ViT_Block.autotvin_in_r_V_strb_V.dat"
`define AUTOTB_TVIN_in_r_V_last_V  "../tv/cdatafile/c.ViT_Block.autotvin_in_r_V_last_V.dat"
`define AUTOTB_TVIN_in_q  "../tv/cdatafile/c.ViT_Block.autotvin_in_q.dat"
`define AUTOTB_TVIN_in_k  "../tv/cdatafile/c.ViT_Block.autotvin_in_k.dat"
`define AUTOTB_TVIN_in_v  "../tv/cdatafile/c.ViT_Block.autotvin_in_v.dat"
`define AUTOTB_TVIN_in_o  "../tv/cdatafile/c.ViT_Block.autotvin_in_o.dat"
`define AUTOTB_TVIN_in_w_up  "../tv/cdatafile/c.ViT_Block.autotvin_in_w_up.dat"
`define AUTOTB_TVIN_in_w_down  "../tv/cdatafile/c.ViT_Block.autotvin_in_w_down.dat"
`define AUTOTB_TVIN_Q_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_Q.dat"
`define AUTOTB_TVIN_K_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_K.dat"
`define AUTOTB_TVIN_V_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_V.dat"
`define AUTOTB_TVIN_Out_r_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_Out_r.dat"
`define AUTOTB_TVIN_gmem0_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_gmem0.dat"
`define AUTOTB_TVIN_gmem1_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_gmem1.dat"
`define AUTOTB_TVIN_in_r_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_in_r_V_data_V.dat"
`define AUTOTB_TVIN_in_r_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_in_r_V_keep_V.dat"
`define AUTOTB_TVIN_in_r_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_in_r_V_strb_V.dat"
`define AUTOTB_TVIN_in_r_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_in_r_V_last_V.dat"
`define AUTOTB_TVIN_in_q_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_in_q.dat"
`define AUTOTB_TVIN_in_k_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_in_k.dat"
`define AUTOTB_TVIN_in_v_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_in_v.dat"
`define AUTOTB_TVIN_in_o_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_in_o.dat"
`define AUTOTB_TVIN_in_w_up_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_in_w_up.dat"
`define AUTOTB_TVIN_in_w_down_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvin_in_w_down.dat"
`define AUTOTB_TVOUT_out_r_V_data_V  "../tv/cdatafile/c.ViT_Block.autotvout_out_r_V_data_V.dat"
`define AUTOTB_TVOUT_out_r_V_keep_V  "../tv/cdatafile/c.ViT_Block.autotvout_out_r_V_keep_V.dat"
`define AUTOTB_TVOUT_out_r_V_strb_V  "../tv/cdatafile/c.ViT_Block.autotvout_out_r_V_strb_V.dat"
`define AUTOTB_TVOUT_out_r_V_last_V  "../tv/cdatafile/c.ViT_Block.autotvout_out_r_V_last_V.dat"
`define AUTOTB_TVOUT_out_r_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvout_out_r_V_data_V.dat"
`define AUTOTB_TVOUT_out_r_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvout_out_r_V_keep_V.dat"
`define AUTOTB_TVOUT_out_r_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvout_out_r_V_strb_V.dat"
`define AUTOTB_TVOUT_out_r_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.ViT_Block.autotvout_out_r_V_last_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_K = 256;
parameter LENGTH_Out_r = 256;
parameter LENGTH_Q = 256;
parameter LENGTH_V = 256;
parameter LENGTH_gmem0 = 1024;
parameter LENGTH_gmem1 = 1024;
parameter LENGTH_in_k = 1;
parameter LENGTH_in_o = 1;
parameter LENGTH_in_q = 1;
parameter LENGTH_in_r_V_data_V = 272;
parameter LENGTH_in_r_V_keep_V = 272;
parameter LENGTH_in_r_V_last_V = 272;
parameter LENGTH_in_r_V_strb_V = 272;
parameter LENGTH_in_v = 1;
parameter LENGTH_in_w_down = 1;
parameter LENGTH_in_w_up = 1;
parameter LENGTH_out_r_V_data_V = 272;
parameter LENGTH_out_r_V_keep_V = 272;
parameter LENGTH_out_r_V_last_V = 272;
parameter LENGTH_out_r_V_strb_V = 272;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [6 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [6 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  control_INTERRUPT;
wire  K_AWVALID;
wire  K_AWREADY;
wire [63 : 0] K_AWADDR;
wire [0 : 0] K_AWID;
wire [7 : 0] K_AWLEN;
wire [2 : 0] K_AWSIZE;
wire [1 : 0] K_AWBURST;
wire [1 : 0] K_AWLOCK;
wire [3 : 0] K_AWCACHE;
wire [2 : 0] K_AWPROT;
wire [3 : 0] K_AWQOS;
wire [3 : 0] K_AWREGION;
wire [0 : 0] K_AWUSER;
wire  K_WVALID;
wire  K_WREADY;
wire [31 : 0] K_WDATA;
wire [3 : 0] K_WSTRB;
wire  K_WLAST;
wire [0 : 0] K_WID;
wire [0 : 0] K_WUSER;
wire  K_ARVALID;
wire  K_ARREADY;
wire [63 : 0] K_ARADDR;
wire [0 : 0] K_ARID;
wire [7 : 0] K_ARLEN;
wire [2 : 0] K_ARSIZE;
wire [1 : 0] K_ARBURST;
wire [1 : 0] K_ARLOCK;
wire [3 : 0] K_ARCACHE;
wire [2 : 0] K_ARPROT;
wire [3 : 0] K_ARQOS;
wire [3 : 0] K_ARREGION;
wire [0 : 0] K_ARUSER;
wire  K_RVALID;
wire  K_RREADY;
wire [31 : 0] K_RDATA;
wire  K_RLAST;
wire [0 : 0] K_RID;
wire [0 : 0] K_RUSER;
wire [1 : 0] K_RRESP;
wire  K_BVALID;
wire  K_BREADY;
wire [1 : 0] K_BRESP;
wire [0 : 0] K_BID;
wire [0 : 0] K_BUSER;
wire  Out_r_AWVALID;
wire  Out_r_AWREADY;
wire [63 : 0] Out_r_AWADDR;
wire [0 : 0] Out_r_AWID;
wire [7 : 0] Out_r_AWLEN;
wire [2 : 0] Out_r_AWSIZE;
wire [1 : 0] Out_r_AWBURST;
wire [1 : 0] Out_r_AWLOCK;
wire [3 : 0] Out_r_AWCACHE;
wire [2 : 0] Out_r_AWPROT;
wire [3 : 0] Out_r_AWQOS;
wire [3 : 0] Out_r_AWREGION;
wire [0 : 0] Out_r_AWUSER;
wire  Out_r_WVALID;
wire  Out_r_WREADY;
wire [31 : 0] Out_r_WDATA;
wire [3 : 0] Out_r_WSTRB;
wire  Out_r_WLAST;
wire [0 : 0] Out_r_WID;
wire [0 : 0] Out_r_WUSER;
wire  Out_r_ARVALID;
wire  Out_r_ARREADY;
wire [63 : 0] Out_r_ARADDR;
wire [0 : 0] Out_r_ARID;
wire [7 : 0] Out_r_ARLEN;
wire [2 : 0] Out_r_ARSIZE;
wire [1 : 0] Out_r_ARBURST;
wire [1 : 0] Out_r_ARLOCK;
wire [3 : 0] Out_r_ARCACHE;
wire [2 : 0] Out_r_ARPROT;
wire [3 : 0] Out_r_ARQOS;
wire [3 : 0] Out_r_ARREGION;
wire [0 : 0] Out_r_ARUSER;
wire  Out_r_RVALID;
wire  Out_r_RREADY;
wire [31 : 0] Out_r_RDATA;
wire  Out_r_RLAST;
wire [0 : 0] Out_r_RID;
wire [0 : 0] Out_r_RUSER;
wire [1 : 0] Out_r_RRESP;
wire  Out_r_BVALID;
wire  Out_r_BREADY;
wire [1 : 0] Out_r_BRESP;
wire [0 : 0] Out_r_BID;
wire [0 : 0] Out_r_BUSER;
wire  Q_AWVALID;
wire  Q_AWREADY;
wire [63 : 0] Q_AWADDR;
wire [0 : 0] Q_AWID;
wire [7 : 0] Q_AWLEN;
wire [2 : 0] Q_AWSIZE;
wire [1 : 0] Q_AWBURST;
wire [1 : 0] Q_AWLOCK;
wire [3 : 0] Q_AWCACHE;
wire [2 : 0] Q_AWPROT;
wire [3 : 0] Q_AWQOS;
wire [3 : 0] Q_AWREGION;
wire [0 : 0] Q_AWUSER;
wire  Q_WVALID;
wire  Q_WREADY;
wire [31 : 0] Q_WDATA;
wire [3 : 0] Q_WSTRB;
wire  Q_WLAST;
wire [0 : 0] Q_WID;
wire [0 : 0] Q_WUSER;
wire  Q_ARVALID;
wire  Q_ARREADY;
wire [63 : 0] Q_ARADDR;
wire [0 : 0] Q_ARID;
wire [7 : 0] Q_ARLEN;
wire [2 : 0] Q_ARSIZE;
wire [1 : 0] Q_ARBURST;
wire [1 : 0] Q_ARLOCK;
wire [3 : 0] Q_ARCACHE;
wire [2 : 0] Q_ARPROT;
wire [3 : 0] Q_ARQOS;
wire [3 : 0] Q_ARREGION;
wire [0 : 0] Q_ARUSER;
wire  Q_RVALID;
wire  Q_RREADY;
wire [31 : 0] Q_RDATA;
wire  Q_RLAST;
wire [0 : 0] Q_RID;
wire [0 : 0] Q_RUSER;
wire [1 : 0] Q_RRESP;
wire  Q_BVALID;
wire  Q_BREADY;
wire [1 : 0] Q_BRESP;
wire [0 : 0] Q_BID;
wire [0 : 0] Q_BUSER;
wire  V_AWVALID;
wire  V_AWREADY;
wire [63 : 0] V_AWADDR;
wire [0 : 0] V_AWID;
wire [7 : 0] V_AWLEN;
wire [2 : 0] V_AWSIZE;
wire [1 : 0] V_AWBURST;
wire [1 : 0] V_AWLOCK;
wire [3 : 0] V_AWCACHE;
wire [2 : 0] V_AWPROT;
wire [3 : 0] V_AWQOS;
wire [3 : 0] V_AWREGION;
wire [0 : 0] V_AWUSER;
wire  V_WVALID;
wire  V_WREADY;
wire [31 : 0] V_WDATA;
wire [3 : 0] V_WSTRB;
wire  V_WLAST;
wire [0 : 0] V_WID;
wire [0 : 0] V_WUSER;
wire  V_ARVALID;
wire  V_ARREADY;
wire [63 : 0] V_ARADDR;
wire [0 : 0] V_ARID;
wire [7 : 0] V_ARLEN;
wire [2 : 0] V_ARSIZE;
wire [1 : 0] V_ARBURST;
wire [1 : 0] V_ARLOCK;
wire [3 : 0] V_ARCACHE;
wire [2 : 0] V_ARPROT;
wire [3 : 0] V_ARQOS;
wire [3 : 0] V_ARREGION;
wire [0 : 0] V_ARUSER;
wire  V_RVALID;
wire  V_RREADY;
wire [31 : 0] V_RDATA;
wire  V_RLAST;
wire [0 : 0] V_RID;
wire [0 : 0] V_RUSER;
wire [1 : 0] V_RRESP;
wire  V_BVALID;
wire  V_BREADY;
wire [1 : 0] V_BRESP;
wire [0 : 0] V_BID;
wire [0 : 0] V_BUSER;
wire  gmem0_AWVALID;
wire  gmem0_AWREADY;
wire [63 : 0] gmem0_AWADDR;
wire [0 : 0] gmem0_AWID;
wire [7 : 0] gmem0_AWLEN;
wire [2 : 0] gmem0_AWSIZE;
wire [1 : 0] gmem0_AWBURST;
wire [1 : 0] gmem0_AWLOCK;
wire [3 : 0] gmem0_AWCACHE;
wire [2 : 0] gmem0_AWPROT;
wire [3 : 0] gmem0_AWQOS;
wire [3 : 0] gmem0_AWREGION;
wire [0 : 0] gmem0_AWUSER;
wire  gmem0_WVALID;
wire  gmem0_WREADY;
wire [31 : 0] gmem0_WDATA;
wire [3 : 0] gmem0_WSTRB;
wire  gmem0_WLAST;
wire [0 : 0] gmem0_WID;
wire [0 : 0] gmem0_WUSER;
wire  gmem0_ARVALID;
wire  gmem0_ARREADY;
wire [63 : 0] gmem0_ARADDR;
wire [0 : 0] gmem0_ARID;
wire [7 : 0] gmem0_ARLEN;
wire [2 : 0] gmem0_ARSIZE;
wire [1 : 0] gmem0_ARBURST;
wire [1 : 0] gmem0_ARLOCK;
wire [3 : 0] gmem0_ARCACHE;
wire [2 : 0] gmem0_ARPROT;
wire [3 : 0] gmem0_ARQOS;
wire [3 : 0] gmem0_ARREGION;
wire [0 : 0] gmem0_ARUSER;
wire  gmem0_RVALID;
wire  gmem0_RREADY;
wire [31 : 0] gmem0_RDATA;
wire  gmem0_RLAST;
wire [0 : 0] gmem0_RID;
wire [0 : 0] gmem0_RUSER;
wire [1 : 0] gmem0_RRESP;
wire  gmem0_BVALID;
wire  gmem0_BREADY;
wire [1 : 0] gmem0_BRESP;
wire [0 : 0] gmem0_BID;
wire [0 : 0] gmem0_BUSER;
wire  gmem1_AWVALID;
wire  gmem1_AWREADY;
wire [63 : 0] gmem1_AWADDR;
wire [0 : 0] gmem1_AWID;
wire [7 : 0] gmem1_AWLEN;
wire [2 : 0] gmem1_AWSIZE;
wire [1 : 0] gmem1_AWBURST;
wire [1 : 0] gmem1_AWLOCK;
wire [3 : 0] gmem1_AWCACHE;
wire [2 : 0] gmem1_AWPROT;
wire [3 : 0] gmem1_AWQOS;
wire [3 : 0] gmem1_AWREGION;
wire [0 : 0] gmem1_AWUSER;
wire  gmem1_WVALID;
wire  gmem1_WREADY;
wire [31 : 0] gmem1_WDATA;
wire [3 : 0] gmem1_WSTRB;
wire  gmem1_WLAST;
wire [0 : 0] gmem1_WID;
wire [0 : 0] gmem1_WUSER;
wire  gmem1_ARVALID;
wire  gmem1_ARREADY;
wire [63 : 0] gmem1_ARADDR;
wire [0 : 0] gmem1_ARID;
wire [7 : 0] gmem1_ARLEN;
wire [2 : 0] gmem1_ARSIZE;
wire [1 : 0] gmem1_ARBURST;
wire [1 : 0] gmem1_ARLOCK;
wire [3 : 0] gmem1_ARCACHE;
wire [2 : 0] gmem1_ARPROT;
wire [3 : 0] gmem1_ARQOS;
wire [3 : 0] gmem1_ARREGION;
wire [0 : 0] gmem1_ARUSER;
wire  gmem1_RVALID;
wire  gmem1_RREADY;
wire [31 : 0] gmem1_RDATA;
wire  gmem1_RLAST;
wire [0 : 0] gmem1_RID;
wire [0 : 0] gmem1_RUSER;
wire [1 : 0] gmem1_RRESP;
wire  gmem1_BVALID;
wire  gmem1_BREADY;
wire [1 : 0] gmem1_BRESP;
wire [0 : 0] gmem1_BID;
wire [0 : 0] gmem1_BUSER;
wire [7 : 0] in_r_TDATA;
wire [0 : 0] in_r_TKEEP;
wire [0 : 0] in_r_TSTRB;
wire [0 : 0] in_r_TLAST;
wire [7 : 0] out_r_TDATA;
wire [0 : 0] out_r_TKEEP;
wire [0 : 0] out_r_TSTRB;
wire [0 : 0] out_r_TLAST;
wire  in_r_TVALID;
wire  in_r_TREADY;
wire  out_r_TVALID;
wire  out_r_TREADY;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .interrupt(control_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_K_AWVALID(K_AWVALID),
    .m_axi_K_AWREADY(K_AWREADY),
    .m_axi_K_AWADDR(K_AWADDR),
    .m_axi_K_AWID(K_AWID),
    .m_axi_K_AWLEN(K_AWLEN),
    .m_axi_K_AWSIZE(K_AWSIZE),
    .m_axi_K_AWBURST(K_AWBURST),
    .m_axi_K_AWLOCK(K_AWLOCK),
    .m_axi_K_AWCACHE(K_AWCACHE),
    .m_axi_K_AWPROT(K_AWPROT),
    .m_axi_K_AWQOS(K_AWQOS),
    .m_axi_K_AWREGION(K_AWREGION),
    .m_axi_K_AWUSER(K_AWUSER),
    .m_axi_K_WVALID(K_WVALID),
    .m_axi_K_WREADY(K_WREADY),
    .m_axi_K_WDATA(K_WDATA),
    .m_axi_K_WSTRB(K_WSTRB),
    .m_axi_K_WLAST(K_WLAST),
    .m_axi_K_WID(K_WID),
    .m_axi_K_WUSER(K_WUSER),
    .m_axi_K_ARVALID(K_ARVALID),
    .m_axi_K_ARREADY(K_ARREADY),
    .m_axi_K_ARADDR(K_ARADDR),
    .m_axi_K_ARID(K_ARID),
    .m_axi_K_ARLEN(K_ARLEN),
    .m_axi_K_ARSIZE(K_ARSIZE),
    .m_axi_K_ARBURST(K_ARBURST),
    .m_axi_K_ARLOCK(K_ARLOCK),
    .m_axi_K_ARCACHE(K_ARCACHE),
    .m_axi_K_ARPROT(K_ARPROT),
    .m_axi_K_ARQOS(K_ARQOS),
    .m_axi_K_ARREGION(K_ARREGION),
    .m_axi_K_ARUSER(K_ARUSER),
    .m_axi_K_RVALID(K_RVALID),
    .m_axi_K_RREADY(K_RREADY),
    .m_axi_K_RDATA(K_RDATA),
    .m_axi_K_RLAST(K_RLAST),
    .m_axi_K_RID(K_RID),
    .m_axi_K_RUSER(K_RUSER),
    .m_axi_K_RRESP(K_RRESP),
    .m_axi_K_BVALID(K_BVALID),
    .m_axi_K_BREADY(K_BREADY),
    .m_axi_K_BRESP(K_BRESP),
    .m_axi_K_BID(K_BID),
    .m_axi_K_BUSER(K_BUSER),
    .m_axi_Out_r_AWVALID(Out_r_AWVALID),
    .m_axi_Out_r_AWREADY(Out_r_AWREADY),
    .m_axi_Out_r_AWADDR(Out_r_AWADDR),
    .m_axi_Out_r_AWID(Out_r_AWID),
    .m_axi_Out_r_AWLEN(Out_r_AWLEN),
    .m_axi_Out_r_AWSIZE(Out_r_AWSIZE),
    .m_axi_Out_r_AWBURST(Out_r_AWBURST),
    .m_axi_Out_r_AWLOCK(Out_r_AWLOCK),
    .m_axi_Out_r_AWCACHE(Out_r_AWCACHE),
    .m_axi_Out_r_AWPROT(Out_r_AWPROT),
    .m_axi_Out_r_AWQOS(Out_r_AWQOS),
    .m_axi_Out_r_AWREGION(Out_r_AWREGION),
    .m_axi_Out_r_AWUSER(Out_r_AWUSER),
    .m_axi_Out_r_WVALID(Out_r_WVALID),
    .m_axi_Out_r_WREADY(Out_r_WREADY),
    .m_axi_Out_r_WDATA(Out_r_WDATA),
    .m_axi_Out_r_WSTRB(Out_r_WSTRB),
    .m_axi_Out_r_WLAST(Out_r_WLAST),
    .m_axi_Out_r_WID(Out_r_WID),
    .m_axi_Out_r_WUSER(Out_r_WUSER),
    .m_axi_Out_r_ARVALID(Out_r_ARVALID),
    .m_axi_Out_r_ARREADY(Out_r_ARREADY),
    .m_axi_Out_r_ARADDR(Out_r_ARADDR),
    .m_axi_Out_r_ARID(Out_r_ARID),
    .m_axi_Out_r_ARLEN(Out_r_ARLEN),
    .m_axi_Out_r_ARSIZE(Out_r_ARSIZE),
    .m_axi_Out_r_ARBURST(Out_r_ARBURST),
    .m_axi_Out_r_ARLOCK(Out_r_ARLOCK),
    .m_axi_Out_r_ARCACHE(Out_r_ARCACHE),
    .m_axi_Out_r_ARPROT(Out_r_ARPROT),
    .m_axi_Out_r_ARQOS(Out_r_ARQOS),
    .m_axi_Out_r_ARREGION(Out_r_ARREGION),
    .m_axi_Out_r_ARUSER(Out_r_ARUSER),
    .m_axi_Out_r_RVALID(Out_r_RVALID),
    .m_axi_Out_r_RREADY(Out_r_RREADY),
    .m_axi_Out_r_RDATA(Out_r_RDATA),
    .m_axi_Out_r_RLAST(Out_r_RLAST),
    .m_axi_Out_r_RID(Out_r_RID),
    .m_axi_Out_r_RUSER(Out_r_RUSER),
    .m_axi_Out_r_RRESP(Out_r_RRESP),
    .m_axi_Out_r_BVALID(Out_r_BVALID),
    .m_axi_Out_r_BREADY(Out_r_BREADY),
    .m_axi_Out_r_BRESP(Out_r_BRESP),
    .m_axi_Out_r_BID(Out_r_BID),
    .m_axi_Out_r_BUSER(Out_r_BUSER),
    .m_axi_Q_AWVALID(Q_AWVALID),
    .m_axi_Q_AWREADY(Q_AWREADY),
    .m_axi_Q_AWADDR(Q_AWADDR),
    .m_axi_Q_AWID(Q_AWID),
    .m_axi_Q_AWLEN(Q_AWLEN),
    .m_axi_Q_AWSIZE(Q_AWSIZE),
    .m_axi_Q_AWBURST(Q_AWBURST),
    .m_axi_Q_AWLOCK(Q_AWLOCK),
    .m_axi_Q_AWCACHE(Q_AWCACHE),
    .m_axi_Q_AWPROT(Q_AWPROT),
    .m_axi_Q_AWQOS(Q_AWQOS),
    .m_axi_Q_AWREGION(Q_AWREGION),
    .m_axi_Q_AWUSER(Q_AWUSER),
    .m_axi_Q_WVALID(Q_WVALID),
    .m_axi_Q_WREADY(Q_WREADY),
    .m_axi_Q_WDATA(Q_WDATA),
    .m_axi_Q_WSTRB(Q_WSTRB),
    .m_axi_Q_WLAST(Q_WLAST),
    .m_axi_Q_WID(Q_WID),
    .m_axi_Q_WUSER(Q_WUSER),
    .m_axi_Q_ARVALID(Q_ARVALID),
    .m_axi_Q_ARREADY(Q_ARREADY),
    .m_axi_Q_ARADDR(Q_ARADDR),
    .m_axi_Q_ARID(Q_ARID),
    .m_axi_Q_ARLEN(Q_ARLEN),
    .m_axi_Q_ARSIZE(Q_ARSIZE),
    .m_axi_Q_ARBURST(Q_ARBURST),
    .m_axi_Q_ARLOCK(Q_ARLOCK),
    .m_axi_Q_ARCACHE(Q_ARCACHE),
    .m_axi_Q_ARPROT(Q_ARPROT),
    .m_axi_Q_ARQOS(Q_ARQOS),
    .m_axi_Q_ARREGION(Q_ARREGION),
    .m_axi_Q_ARUSER(Q_ARUSER),
    .m_axi_Q_RVALID(Q_RVALID),
    .m_axi_Q_RREADY(Q_RREADY),
    .m_axi_Q_RDATA(Q_RDATA),
    .m_axi_Q_RLAST(Q_RLAST),
    .m_axi_Q_RID(Q_RID),
    .m_axi_Q_RUSER(Q_RUSER),
    .m_axi_Q_RRESP(Q_RRESP),
    .m_axi_Q_BVALID(Q_BVALID),
    .m_axi_Q_BREADY(Q_BREADY),
    .m_axi_Q_BRESP(Q_BRESP),
    .m_axi_Q_BID(Q_BID),
    .m_axi_Q_BUSER(Q_BUSER),
    .m_axi_V_AWVALID(V_AWVALID),
    .m_axi_V_AWREADY(V_AWREADY),
    .m_axi_V_AWADDR(V_AWADDR),
    .m_axi_V_AWID(V_AWID),
    .m_axi_V_AWLEN(V_AWLEN),
    .m_axi_V_AWSIZE(V_AWSIZE),
    .m_axi_V_AWBURST(V_AWBURST),
    .m_axi_V_AWLOCK(V_AWLOCK),
    .m_axi_V_AWCACHE(V_AWCACHE),
    .m_axi_V_AWPROT(V_AWPROT),
    .m_axi_V_AWQOS(V_AWQOS),
    .m_axi_V_AWREGION(V_AWREGION),
    .m_axi_V_AWUSER(V_AWUSER),
    .m_axi_V_WVALID(V_WVALID),
    .m_axi_V_WREADY(V_WREADY),
    .m_axi_V_WDATA(V_WDATA),
    .m_axi_V_WSTRB(V_WSTRB),
    .m_axi_V_WLAST(V_WLAST),
    .m_axi_V_WID(V_WID),
    .m_axi_V_WUSER(V_WUSER),
    .m_axi_V_ARVALID(V_ARVALID),
    .m_axi_V_ARREADY(V_ARREADY),
    .m_axi_V_ARADDR(V_ARADDR),
    .m_axi_V_ARID(V_ARID),
    .m_axi_V_ARLEN(V_ARLEN),
    .m_axi_V_ARSIZE(V_ARSIZE),
    .m_axi_V_ARBURST(V_ARBURST),
    .m_axi_V_ARLOCK(V_ARLOCK),
    .m_axi_V_ARCACHE(V_ARCACHE),
    .m_axi_V_ARPROT(V_ARPROT),
    .m_axi_V_ARQOS(V_ARQOS),
    .m_axi_V_ARREGION(V_ARREGION),
    .m_axi_V_ARUSER(V_ARUSER),
    .m_axi_V_RVALID(V_RVALID),
    .m_axi_V_RREADY(V_RREADY),
    .m_axi_V_RDATA(V_RDATA),
    .m_axi_V_RLAST(V_RLAST),
    .m_axi_V_RID(V_RID),
    .m_axi_V_RUSER(V_RUSER),
    .m_axi_V_RRESP(V_RRESP),
    .m_axi_V_BVALID(V_BVALID),
    .m_axi_V_BREADY(V_BREADY),
    .m_axi_V_BRESP(V_BRESP),
    .m_axi_V_BID(V_BID),
    .m_axi_V_BUSER(V_BUSER),
    .m_axi_gmem0_AWVALID(gmem0_AWVALID),
    .m_axi_gmem0_AWREADY(gmem0_AWREADY),
    .m_axi_gmem0_AWADDR(gmem0_AWADDR),
    .m_axi_gmem0_AWID(gmem0_AWID),
    .m_axi_gmem0_AWLEN(gmem0_AWLEN),
    .m_axi_gmem0_AWSIZE(gmem0_AWSIZE),
    .m_axi_gmem0_AWBURST(gmem0_AWBURST),
    .m_axi_gmem0_AWLOCK(gmem0_AWLOCK),
    .m_axi_gmem0_AWCACHE(gmem0_AWCACHE),
    .m_axi_gmem0_AWPROT(gmem0_AWPROT),
    .m_axi_gmem0_AWQOS(gmem0_AWQOS),
    .m_axi_gmem0_AWREGION(gmem0_AWREGION),
    .m_axi_gmem0_AWUSER(gmem0_AWUSER),
    .m_axi_gmem0_WVALID(gmem0_WVALID),
    .m_axi_gmem0_WREADY(gmem0_WREADY),
    .m_axi_gmem0_WDATA(gmem0_WDATA),
    .m_axi_gmem0_WSTRB(gmem0_WSTRB),
    .m_axi_gmem0_WLAST(gmem0_WLAST),
    .m_axi_gmem0_WID(gmem0_WID),
    .m_axi_gmem0_WUSER(gmem0_WUSER),
    .m_axi_gmem0_ARVALID(gmem0_ARVALID),
    .m_axi_gmem0_ARREADY(gmem0_ARREADY),
    .m_axi_gmem0_ARADDR(gmem0_ARADDR),
    .m_axi_gmem0_ARID(gmem0_ARID),
    .m_axi_gmem0_ARLEN(gmem0_ARLEN),
    .m_axi_gmem0_ARSIZE(gmem0_ARSIZE),
    .m_axi_gmem0_ARBURST(gmem0_ARBURST),
    .m_axi_gmem0_ARLOCK(gmem0_ARLOCK),
    .m_axi_gmem0_ARCACHE(gmem0_ARCACHE),
    .m_axi_gmem0_ARPROT(gmem0_ARPROT),
    .m_axi_gmem0_ARQOS(gmem0_ARQOS),
    .m_axi_gmem0_ARREGION(gmem0_ARREGION),
    .m_axi_gmem0_ARUSER(gmem0_ARUSER),
    .m_axi_gmem0_RVALID(gmem0_RVALID),
    .m_axi_gmem0_RREADY(gmem0_RREADY),
    .m_axi_gmem0_RDATA(gmem0_RDATA),
    .m_axi_gmem0_RLAST(gmem0_RLAST),
    .m_axi_gmem0_RID(gmem0_RID),
    .m_axi_gmem0_RUSER(gmem0_RUSER),
    .m_axi_gmem0_RRESP(gmem0_RRESP),
    .m_axi_gmem0_BVALID(gmem0_BVALID),
    .m_axi_gmem0_BREADY(gmem0_BREADY),
    .m_axi_gmem0_BRESP(gmem0_BRESP),
    .m_axi_gmem0_BID(gmem0_BID),
    .m_axi_gmem0_BUSER(gmem0_BUSER),
    .m_axi_gmem1_AWVALID(gmem1_AWVALID),
    .m_axi_gmem1_AWREADY(gmem1_AWREADY),
    .m_axi_gmem1_AWADDR(gmem1_AWADDR),
    .m_axi_gmem1_AWID(gmem1_AWID),
    .m_axi_gmem1_AWLEN(gmem1_AWLEN),
    .m_axi_gmem1_AWSIZE(gmem1_AWSIZE),
    .m_axi_gmem1_AWBURST(gmem1_AWBURST),
    .m_axi_gmem1_AWLOCK(gmem1_AWLOCK),
    .m_axi_gmem1_AWCACHE(gmem1_AWCACHE),
    .m_axi_gmem1_AWPROT(gmem1_AWPROT),
    .m_axi_gmem1_AWQOS(gmem1_AWQOS),
    .m_axi_gmem1_AWREGION(gmem1_AWREGION),
    .m_axi_gmem1_AWUSER(gmem1_AWUSER),
    .m_axi_gmem1_WVALID(gmem1_WVALID),
    .m_axi_gmem1_WREADY(gmem1_WREADY),
    .m_axi_gmem1_WDATA(gmem1_WDATA),
    .m_axi_gmem1_WSTRB(gmem1_WSTRB),
    .m_axi_gmem1_WLAST(gmem1_WLAST),
    .m_axi_gmem1_WID(gmem1_WID),
    .m_axi_gmem1_WUSER(gmem1_WUSER),
    .m_axi_gmem1_ARVALID(gmem1_ARVALID),
    .m_axi_gmem1_ARREADY(gmem1_ARREADY),
    .m_axi_gmem1_ARADDR(gmem1_ARADDR),
    .m_axi_gmem1_ARID(gmem1_ARID),
    .m_axi_gmem1_ARLEN(gmem1_ARLEN),
    .m_axi_gmem1_ARSIZE(gmem1_ARSIZE),
    .m_axi_gmem1_ARBURST(gmem1_ARBURST),
    .m_axi_gmem1_ARLOCK(gmem1_ARLOCK),
    .m_axi_gmem1_ARCACHE(gmem1_ARCACHE),
    .m_axi_gmem1_ARPROT(gmem1_ARPROT),
    .m_axi_gmem1_ARQOS(gmem1_ARQOS),
    .m_axi_gmem1_ARREGION(gmem1_ARREGION),
    .m_axi_gmem1_ARUSER(gmem1_ARUSER),
    .m_axi_gmem1_RVALID(gmem1_RVALID),
    .m_axi_gmem1_RREADY(gmem1_RREADY),
    .m_axi_gmem1_RDATA(gmem1_RDATA),
    .m_axi_gmem1_RLAST(gmem1_RLAST),
    .m_axi_gmem1_RID(gmem1_RID),
    .m_axi_gmem1_RUSER(gmem1_RUSER),
    .m_axi_gmem1_RRESP(gmem1_RRESP),
    .m_axi_gmem1_BVALID(gmem1_BVALID),
    .m_axi_gmem1_BREADY(gmem1_BREADY),
    .m_axi_gmem1_BRESP(gmem1_BRESP),
    .m_axi_gmem1_BID(gmem1_BID),
    .m_axi_gmem1_BUSER(gmem1_BUSER),
    .in_r_TDATA(in_r_TDATA),
    .in_r_TKEEP(in_r_TKEEP),
    .in_r_TSTRB(in_r_TSTRB),
    .in_r_TLAST(in_r_TLAST),
    .out_r_TDATA(out_r_TDATA),
    .out_r_TKEEP(out_r_TKEEP),
    .out_r_TSTRB(out_r_TSTRB),
    .out_r_TLAST(out_r_TLAST),
    .in_r_TVALID(in_r_TVALID),
    .in_r_TREADY(in_r_TREADY),
    .out_r_TVALID(out_r_TVALID),
    .out_r_TREADY(out_r_TREADY));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end




















reg [31:0] ap_c_n_tvin_trans_num_in_r_V_data_V;

reg in_r_ready_reg; // for self-sync

wire in_r_ready;
wire in_r_done;
wire [31:0] in_r_transaction;
wire axi_s_in_r_TVALID;
wire axi_s_in_r_TREADY;

AESL_axi_s_in_r AESL_AXI_S_in_r(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in_r_TDATA(in_r_TDATA),
    .TRAN_in_r_TKEEP(in_r_TKEEP),
    .TRAN_in_r_TSTRB(in_r_TSTRB),
    .TRAN_in_r_TLAST(in_r_TLAST),
    .TRAN_in_r_TVALID(axi_s_in_r_TVALID),
    .TRAN_in_r_TREADY(axi_s_in_r_TREADY),
    .ready(in_r_ready),
    .done(in_r_done),
    .transaction(in_r_transaction));

assign in_r_ready = in_r_ready_reg | ready_initial;
assign in_r_done = 0;

assign in_r_TVALID = axi_s_in_r_TVALID;

assign axi_s_in_r_TREADY = in_r_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_out_r_V_data_V;

reg out_r_ready_reg; // for self-sync

wire out_r_ready;
wire out_r_done;
wire [31:0] out_r_transaction;
wire axi_s_out_r_TVALID;
wire axi_s_out_r_TREADY;

AESL_axi_s_out_r AESL_AXI_S_out_r(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_out_r_TDATA(out_r_TDATA),
    .TRAN_out_r_TKEEP(out_r_TKEEP),
    .TRAN_out_r_TSTRB(out_r_TSTRB),
    .TRAN_out_r_TLAST(out_r_TLAST),
    .TRAN_out_r_TVALID(axi_s_out_r_TVALID),
    .TRAN_out_r_TREADY(axi_s_out_r_TREADY),
    .ready(out_r_ready),
    .done(out_r_done),
    .transaction(out_r_transaction));

assign out_r_ready = 0;
assign out_r_done = AESL_done;

assign axi_s_out_r_TVALID = out_r_TVALID;

reg reg_out_r_TREADY;
initial begin : gen_reg_out_r_TREADY_process
    integer proc_rand;
    reg_out_r_TREADY = axi_s_out_r_TREADY;
    while(1)
    begin
        @(axi_s_out_r_TREADY);
        reg_out_r_TREADY = axi_s_out_r_TREADY;
    end
end


assign out_r_TREADY = reg_out_r_TREADY;

wire    AESL_axi_master_Q_ready;
wire    AESL_axi_master_Q_done;
AESL_axi_master_Q AESL_AXI_MASTER_Q(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_Q_AWVALID (Q_AWVALID),
    .TRAN_Q_AWREADY (Q_AWREADY),
    .TRAN_Q_AWADDR (Q_AWADDR),
    .TRAN_Q_AWID (Q_AWID),
    .TRAN_Q_AWLEN (Q_AWLEN),
    .TRAN_Q_AWSIZE (Q_AWSIZE),
    .TRAN_Q_AWBURST (Q_AWBURST),
    .TRAN_Q_AWLOCK (Q_AWLOCK),
    .TRAN_Q_AWCACHE (Q_AWCACHE),
    .TRAN_Q_AWPROT (Q_AWPROT),
    .TRAN_Q_AWQOS (Q_AWQOS),
    .TRAN_Q_AWREGION (Q_AWREGION),
    .TRAN_Q_AWUSER (Q_AWUSER),
    .TRAN_Q_WVALID (Q_WVALID),
    .TRAN_Q_WREADY (Q_WREADY),
    .TRAN_Q_WDATA (Q_WDATA),
    .TRAN_Q_WSTRB (Q_WSTRB),
    .TRAN_Q_WLAST (Q_WLAST),
    .TRAN_Q_WID (Q_WID),
    .TRAN_Q_WUSER (Q_WUSER),
    .TRAN_Q_ARVALID (Q_ARVALID),
    .TRAN_Q_ARREADY (Q_ARREADY),
    .TRAN_Q_ARADDR (Q_ARADDR),
    .TRAN_Q_ARID (Q_ARID),
    .TRAN_Q_ARLEN (Q_ARLEN),
    .TRAN_Q_ARSIZE (Q_ARSIZE),
    .TRAN_Q_ARBURST (Q_ARBURST),
    .TRAN_Q_ARLOCK (Q_ARLOCK),
    .TRAN_Q_ARCACHE (Q_ARCACHE),
    .TRAN_Q_ARPROT (Q_ARPROT),
    .TRAN_Q_ARQOS (Q_ARQOS),
    .TRAN_Q_ARREGION (Q_ARREGION),
    .TRAN_Q_ARUSER (Q_ARUSER),
    .TRAN_Q_RVALID (Q_RVALID),
    .TRAN_Q_RREADY (Q_RREADY),
    .TRAN_Q_RDATA (Q_RDATA),
    .TRAN_Q_RLAST (Q_RLAST),
    .TRAN_Q_RID (Q_RID),
    .TRAN_Q_RUSER (Q_RUSER),
    .TRAN_Q_RRESP (Q_RRESP),
    .TRAN_Q_BVALID (Q_BVALID),
    .TRAN_Q_BREADY (Q_BREADY),
    .TRAN_Q_BRESP (Q_BRESP),
    .TRAN_Q_BID (Q_BID),
    .TRAN_Q_BUSER (Q_BUSER),
    .ready (AESL_axi_master_Q_ready),
    .done  (AESL_axi_master_Q_done)
);
assign    AESL_axi_master_Q_ready    =   ready;
assign    AESL_axi_master_Q_done    =   AESL_done_delay;
wire    AESL_axi_master_K_ready;
wire    AESL_axi_master_K_done;
AESL_axi_master_K AESL_AXI_MASTER_K(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_K_AWVALID (K_AWVALID),
    .TRAN_K_AWREADY (K_AWREADY),
    .TRAN_K_AWADDR (K_AWADDR),
    .TRAN_K_AWID (K_AWID),
    .TRAN_K_AWLEN (K_AWLEN),
    .TRAN_K_AWSIZE (K_AWSIZE),
    .TRAN_K_AWBURST (K_AWBURST),
    .TRAN_K_AWLOCK (K_AWLOCK),
    .TRAN_K_AWCACHE (K_AWCACHE),
    .TRAN_K_AWPROT (K_AWPROT),
    .TRAN_K_AWQOS (K_AWQOS),
    .TRAN_K_AWREGION (K_AWREGION),
    .TRAN_K_AWUSER (K_AWUSER),
    .TRAN_K_WVALID (K_WVALID),
    .TRAN_K_WREADY (K_WREADY),
    .TRAN_K_WDATA (K_WDATA),
    .TRAN_K_WSTRB (K_WSTRB),
    .TRAN_K_WLAST (K_WLAST),
    .TRAN_K_WID (K_WID),
    .TRAN_K_WUSER (K_WUSER),
    .TRAN_K_ARVALID (K_ARVALID),
    .TRAN_K_ARREADY (K_ARREADY),
    .TRAN_K_ARADDR (K_ARADDR),
    .TRAN_K_ARID (K_ARID),
    .TRAN_K_ARLEN (K_ARLEN),
    .TRAN_K_ARSIZE (K_ARSIZE),
    .TRAN_K_ARBURST (K_ARBURST),
    .TRAN_K_ARLOCK (K_ARLOCK),
    .TRAN_K_ARCACHE (K_ARCACHE),
    .TRAN_K_ARPROT (K_ARPROT),
    .TRAN_K_ARQOS (K_ARQOS),
    .TRAN_K_ARREGION (K_ARREGION),
    .TRAN_K_ARUSER (K_ARUSER),
    .TRAN_K_RVALID (K_RVALID),
    .TRAN_K_RREADY (K_RREADY),
    .TRAN_K_RDATA (K_RDATA),
    .TRAN_K_RLAST (K_RLAST),
    .TRAN_K_RID (K_RID),
    .TRAN_K_RUSER (K_RUSER),
    .TRAN_K_RRESP (K_RRESP),
    .TRAN_K_BVALID (K_BVALID),
    .TRAN_K_BREADY (K_BREADY),
    .TRAN_K_BRESP (K_BRESP),
    .TRAN_K_BID (K_BID),
    .TRAN_K_BUSER (K_BUSER),
    .ready (AESL_axi_master_K_ready),
    .done  (AESL_axi_master_K_done)
);
assign    AESL_axi_master_K_ready    =   ready;
assign    AESL_axi_master_K_done    =   AESL_done_delay;
wire    AESL_axi_master_V_ready;
wire    AESL_axi_master_V_done;
AESL_axi_master_V AESL_AXI_MASTER_V(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_V_AWVALID (V_AWVALID),
    .TRAN_V_AWREADY (V_AWREADY),
    .TRAN_V_AWADDR (V_AWADDR),
    .TRAN_V_AWID (V_AWID),
    .TRAN_V_AWLEN (V_AWLEN),
    .TRAN_V_AWSIZE (V_AWSIZE),
    .TRAN_V_AWBURST (V_AWBURST),
    .TRAN_V_AWLOCK (V_AWLOCK),
    .TRAN_V_AWCACHE (V_AWCACHE),
    .TRAN_V_AWPROT (V_AWPROT),
    .TRAN_V_AWQOS (V_AWQOS),
    .TRAN_V_AWREGION (V_AWREGION),
    .TRAN_V_AWUSER (V_AWUSER),
    .TRAN_V_WVALID (V_WVALID),
    .TRAN_V_WREADY (V_WREADY),
    .TRAN_V_WDATA (V_WDATA),
    .TRAN_V_WSTRB (V_WSTRB),
    .TRAN_V_WLAST (V_WLAST),
    .TRAN_V_WID (V_WID),
    .TRAN_V_WUSER (V_WUSER),
    .TRAN_V_ARVALID (V_ARVALID),
    .TRAN_V_ARREADY (V_ARREADY),
    .TRAN_V_ARADDR (V_ARADDR),
    .TRAN_V_ARID (V_ARID),
    .TRAN_V_ARLEN (V_ARLEN),
    .TRAN_V_ARSIZE (V_ARSIZE),
    .TRAN_V_ARBURST (V_ARBURST),
    .TRAN_V_ARLOCK (V_ARLOCK),
    .TRAN_V_ARCACHE (V_ARCACHE),
    .TRAN_V_ARPROT (V_ARPROT),
    .TRAN_V_ARQOS (V_ARQOS),
    .TRAN_V_ARREGION (V_ARREGION),
    .TRAN_V_ARUSER (V_ARUSER),
    .TRAN_V_RVALID (V_RVALID),
    .TRAN_V_RREADY (V_RREADY),
    .TRAN_V_RDATA (V_RDATA),
    .TRAN_V_RLAST (V_RLAST),
    .TRAN_V_RID (V_RID),
    .TRAN_V_RUSER (V_RUSER),
    .TRAN_V_RRESP (V_RRESP),
    .TRAN_V_BVALID (V_BVALID),
    .TRAN_V_BREADY (V_BREADY),
    .TRAN_V_BRESP (V_BRESP),
    .TRAN_V_BID (V_BID),
    .TRAN_V_BUSER (V_BUSER),
    .ready (AESL_axi_master_V_ready),
    .done  (AESL_axi_master_V_done)
);
assign    AESL_axi_master_V_ready    =   ready;
assign    AESL_axi_master_V_done    =   AESL_done_delay;
wire    AESL_axi_master_Out_r_ready;
wire    AESL_axi_master_Out_r_done;
AESL_axi_master_Out_r AESL_AXI_MASTER_Out_r(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_Out_r_AWVALID (Out_r_AWVALID),
    .TRAN_Out_r_AWREADY (Out_r_AWREADY),
    .TRAN_Out_r_AWADDR (Out_r_AWADDR),
    .TRAN_Out_r_AWID (Out_r_AWID),
    .TRAN_Out_r_AWLEN (Out_r_AWLEN),
    .TRAN_Out_r_AWSIZE (Out_r_AWSIZE),
    .TRAN_Out_r_AWBURST (Out_r_AWBURST),
    .TRAN_Out_r_AWLOCK (Out_r_AWLOCK),
    .TRAN_Out_r_AWCACHE (Out_r_AWCACHE),
    .TRAN_Out_r_AWPROT (Out_r_AWPROT),
    .TRAN_Out_r_AWQOS (Out_r_AWQOS),
    .TRAN_Out_r_AWREGION (Out_r_AWREGION),
    .TRAN_Out_r_AWUSER (Out_r_AWUSER),
    .TRAN_Out_r_WVALID (Out_r_WVALID),
    .TRAN_Out_r_WREADY (Out_r_WREADY),
    .TRAN_Out_r_WDATA (Out_r_WDATA),
    .TRAN_Out_r_WSTRB (Out_r_WSTRB),
    .TRAN_Out_r_WLAST (Out_r_WLAST),
    .TRAN_Out_r_WID (Out_r_WID),
    .TRAN_Out_r_WUSER (Out_r_WUSER),
    .TRAN_Out_r_ARVALID (Out_r_ARVALID),
    .TRAN_Out_r_ARREADY (Out_r_ARREADY),
    .TRAN_Out_r_ARADDR (Out_r_ARADDR),
    .TRAN_Out_r_ARID (Out_r_ARID),
    .TRAN_Out_r_ARLEN (Out_r_ARLEN),
    .TRAN_Out_r_ARSIZE (Out_r_ARSIZE),
    .TRAN_Out_r_ARBURST (Out_r_ARBURST),
    .TRAN_Out_r_ARLOCK (Out_r_ARLOCK),
    .TRAN_Out_r_ARCACHE (Out_r_ARCACHE),
    .TRAN_Out_r_ARPROT (Out_r_ARPROT),
    .TRAN_Out_r_ARQOS (Out_r_ARQOS),
    .TRAN_Out_r_ARREGION (Out_r_ARREGION),
    .TRAN_Out_r_ARUSER (Out_r_ARUSER),
    .TRAN_Out_r_RVALID (Out_r_RVALID),
    .TRAN_Out_r_RREADY (Out_r_RREADY),
    .TRAN_Out_r_RDATA (Out_r_RDATA),
    .TRAN_Out_r_RLAST (Out_r_RLAST),
    .TRAN_Out_r_RID (Out_r_RID),
    .TRAN_Out_r_RUSER (Out_r_RUSER),
    .TRAN_Out_r_RRESP (Out_r_RRESP),
    .TRAN_Out_r_BVALID (Out_r_BVALID),
    .TRAN_Out_r_BREADY (Out_r_BREADY),
    .TRAN_Out_r_BRESP (Out_r_BRESP),
    .TRAN_Out_r_BID (Out_r_BID),
    .TRAN_Out_r_BUSER (Out_r_BUSER),
    .ready (AESL_axi_master_Out_r_ready),
    .done  (AESL_axi_master_Out_r_done)
);
assign    AESL_axi_master_Out_r_ready    =   ready;
assign    AESL_axi_master_Out_r_done    =   AESL_done_delay;
wire    AESL_axi_master_gmem0_ready;
wire    AESL_axi_master_gmem0_done;
AESL_axi_master_gmem0 AESL_AXI_MASTER_gmem0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem0_AWVALID (gmem0_AWVALID),
    .TRAN_gmem0_AWREADY (gmem0_AWREADY),
    .TRAN_gmem0_AWADDR (gmem0_AWADDR),
    .TRAN_gmem0_AWID (gmem0_AWID),
    .TRAN_gmem0_AWLEN (gmem0_AWLEN),
    .TRAN_gmem0_AWSIZE (gmem0_AWSIZE),
    .TRAN_gmem0_AWBURST (gmem0_AWBURST),
    .TRAN_gmem0_AWLOCK (gmem0_AWLOCK),
    .TRAN_gmem0_AWCACHE (gmem0_AWCACHE),
    .TRAN_gmem0_AWPROT (gmem0_AWPROT),
    .TRAN_gmem0_AWQOS (gmem0_AWQOS),
    .TRAN_gmem0_AWREGION (gmem0_AWREGION),
    .TRAN_gmem0_AWUSER (gmem0_AWUSER),
    .TRAN_gmem0_WVALID (gmem0_WVALID),
    .TRAN_gmem0_WREADY (gmem0_WREADY),
    .TRAN_gmem0_WDATA (gmem0_WDATA),
    .TRAN_gmem0_WSTRB (gmem0_WSTRB),
    .TRAN_gmem0_WLAST (gmem0_WLAST),
    .TRAN_gmem0_WID (gmem0_WID),
    .TRAN_gmem0_WUSER (gmem0_WUSER),
    .TRAN_gmem0_ARVALID (gmem0_ARVALID),
    .TRAN_gmem0_ARREADY (gmem0_ARREADY),
    .TRAN_gmem0_ARADDR (gmem0_ARADDR),
    .TRAN_gmem0_ARID (gmem0_ARID),
    .TRAN_gmem0_ARLEN (gmem0_ARLEN),
    .TRAN_gmem0_ARSIZE (gmem0_ARSIZE),
    .TRAN_gmem0_ARBURST (gmem0_ARBURST),
    .TRAN_gmem0_ARLOCK (gmem0_ARLOCK),
    .TRAN_gmem0_ARCACHE (gmem0_ARCACHE),
    .TRAN_gmem0_ARPROT (gmem0_ARPROT),
    .TRAN_gmem0_ARQOS (gmem0_ARQOS),
    .TRAN_gmem0_ARREGION (gmem0_ARREGION),
    .TRAN_gmem0_ARUSER (gmem0_ARUSER),
    .TRAN_gmem0_RVALID (gmem0_RVALID),
    .TRAN_gmem0_RREADY (gmem0_RREADY),
    .TRAN_gmem0_RDATA (gmem0_RDATA),
    .TRAN_gmem0_RLAST (gmem0_RLAST),
    .TRAN_gmem0_RID (gmem0_RID),
    .TRAN_gmem0_RUSER (gmem0_RUSER),
    .TRAN_gmem0_RRESP (gmem0_RRESP),
    .TRAN_gmem0_BVALID (gmem0_BVALID),
    .TRAN_gmem0_BREADY (gmem0_BREADY),
    .TRAN_gmem0_BRESP (gmem0_BRESP),
    .TRAN_gmem0_BID (gmem0_BID),
    .TRAN_gmem0_BUSER (gmem0_BUSER),
    .ready (AESL_axi_master_gmem0_ready),
    .done  (AESL_axi_master_gmem0_done)
);
assign    AESL_axi_master_gmem0_ready    =   ready;
assign    AESL_axi_master_gmem0_done    =   AESL_done_delay;
wire    AESL_axi_master_gmem1_ready;
wire    AESL_axi_master_gmem1_done;
AESL_axi_master_gmem1 AESL_AXI_MASTER_gmem1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_gmem1_AWVALID (gmem1_AWVALID),
    .TRAN_gmem1_AWREADY (gmem1_AWREADY),
    .TRAN_gmem1_AWADDR (gmem1_AWADDR),
    .TRAN_gmem1_AWID (gmem1_AWID),
    .TRAN_gmem1_AWLEN (gmem1_AWLEN),
    .TRAN_gmem1_AWSIZE (gmem1_AWSIZE),
    .TRAN_gmem1_AWBURST (gmem1_AWBURST),
    .TRAN_gmem1_AWLOCK (gmem1_AWLOCK),
    .TRAN_gmem1_AWCACHE (gmem1_AWCACHE),
    .TRAN_gmem1_AWPROT (gmem1_AWPROT),
    .TRAN_gmem1_AWQOS (gmem1_AWQOS),
    .TRAN_gmem1_AWREGION (gmem1_AWREGION),
    .TRAN_gmem1_AWUSER (gmem1_AWUSER),
    .TRAN_gmem1_WVALID (gmem1_WVALID),
    .TRAN_gmem1_WREADY (gmem1_WREADY),
    .TRAN_gmem1_WDATA (gmem1_WDATA),
    .TRAN_gmem1_WSTRB (gmem1_WSTRB),
    .TRAN_gmem1_WLAST (gmem1_WLAST),
    .TRAN_gmem1_WID (gmem1_WID),
    .TRAN_gmem1_WUSER (gmem1_WUSER),
    .TRAN_gmem1_ARVALID (gmem1_ARVALID),
    .TRAN_gmem1_ARREADY (gmem1_ARREADY),
    .TRAN_gmem1_ARADDR (gmem1_ARADDR),
    .TRAN_gmem1_ARID (gmem1_ARID),
    .TRAN_gmem1_ARLEN (gmem1_ARLEN),
    .TRAN_gmem1_ARSIZE (gmem1_ARSIZE),
    .TRAN_gmem1_ARBURST (gmem1_ARBURST),
    .TRAN_gmem1_ARLOCK (gmem1_ARLOCK),
    .TRAN_gmem1_ARCACHE (gmem1_ARCACHE),
    .TRAN_gmem1_ARPROT (gmem1_ARPROT),
    .TRAN_gmem1_ARQOS (gmem1_ARQOS),
    .TRAN_gmem1_ARREGION (gmem1_ARREGION),
    .TRAN_gmem1_ARUSER (gmem1_ARUSER),
    .TRAN_gmem1_RVALID (gmem1_RVALID),
    .TRAN_gmem1_RREADY (gmem1_RREADY),
    .TRAN_gmem1_RDATA (gmem1_RDATA),
    .TRAN_gmem1_RLAST (gmem1_RLAST),
    .TRAN_gmem1_RID (gmem1_RID),
    .TRAN_gmem1_RUSER (gmem1_RUSER),
    .TRAN_gmem1_RRESP (gmem1_RRESP),
    .TRAN_gmem1_BVALID (gmem1_BVALID),
    .TRAN_gmem1_BREADY (gmem1_BREADY),
    .TRAN_gmem1_BRESP (gmem1_BRESP),
    .TRAN_gmem1_BID (gmem1_BID),
    .TRAN_gmem1_BUSER (gmem1_BUSER),
    .ready (AESL_axi_master_gmem1_ready),
    .done  (AESL_axi_master_gmem1_done)
);
assign    AESL_axi_master_gmem1_ready    =   ready;
assign    AESL_axi_master_gmem1_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_interrupt (control_INTERRUPT),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_out (AESL_ready),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_out (AESL_slave_output_done),
    .TRAN_control_idle_out (AESL_idle),
    .TRAN_control_write_start_in     (AESL_slave_write_start_in),
    .TRAN_control_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_Q;
reg [31:0] size_Q;
reg [31:0] size_Q_backup;
reg end_K;
reg [31:0] size_K;
reg [31:0] size_K_backup;
reg end_V;
reg [31:0] size_V;
reg [31:0] size_V_backup;
reg end_Out_r;
reg [31:0] size_Out_r;
reg [31:0] size_Out_r_backup;
reg end_gmem0;
reg [31:0] size_gmem0;
reg [31:0] size_gmem0_backup;
reg end_gmem1;
reg [31:0] size_gmem1;
reg [31:0] size_gmem1_backup;
reg end_in_r_V_data_V;
reg [31:0] size_in_r_V_data_V;
reg [31:0] size_in_r_V_data_V_backup;
reg end_in_r_V_keep_V;
reg [31:0] size_in_r_V_keep_V;
reg [31:0] size_in_r_V_keep_V_backup;
reg end_in_r_V_strb_V;
reg [31:0] size_in_r_V_strb_V;
reg [31:0] size_in_r_V_strb_V_backup;
reg end_in_r_V_last_V;
reg [31:0] size_in_r_V_last_V;
reg [31:0] size_in_r_V_last_V_backup;
reg end_in_q;
reg [31:0] size_in_q;
reg [31:0] size_in_q_backup;
reg end_in_k;
reg [31:0] size_in_k;
reg [31:0] size_in_k_backup;
reg end_in_v;
reg [31:0] size_in_v;
reg [31:0] size_in_v_backup;
reg end_in_o;
reg [31:0] size_in_o;
reg [31:0] size_in_o_backup;
reg end_in_w_up;
reg [31:0] size_in_w_up;
reg [31:0] size_in_w_up_backup;
reg end_in_w_down;
reg [31:0] size_in_w_down;
reg [31:0] size_in_w_down_backup;
reg end_out_r_V_data_V;
reg [31:0] size_out_r_V_data_V;
reg [31:0] size_out_r_V_data_V_backup;
reg end_out_r_V_keep_V;
reg [31:0] size_out_r_V_keep_V;
reg [31:0] size_out_r_V_keep_V_backup;
reg end_out_r_V_strb_V;
reg [31:0] size_out_r_V_strb_V;
reg [31:0] size_out_r_V_strb_V_backup;
reg end_out_r_V_last_V;
reg [31:0] size_out_r_V_last_V;
reg [31:0] size_out_r_V_last_V_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_in_r
        in_r_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in_r_V_data_V or in_r_transaction);
            if (ap_c_n_tvin_trans_num_in_r_V_data_V > in_r_transaction) begin
                in_r_ready_reg = 1;
            end else begin
                in_r_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_in_r_V_data_V "../tv/stream_size/stream_size_in_in_r_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in_r_V_data_V
        integer fp_in_r_V_data_V;
        reg [127:0] token_in_r_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_in_r_V_data_V = 0;
        end_in_r_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_in_r_V_data_V = $fopen(`STREAM_SIZE_IN_in_r_V_data_V, "r");
        if(fp_in_r_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in_r_V_data_V);
            $finish;
        end
        read_token(fp_in_r_V_data_V, token_in_r_V_data_V); // should be [[[runtime]]]
        if (token_in_r_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_in_r_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_in_r_V_data_V = 0;
        size_in_r_V_data_V_backup = 0;
        while (size_in_r_V_data_V == 0 && end_in_r_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_in_r_V_data_V = ap_c_n_tvin_trans_num_in_r_V_data_V + 1;
            read_token(fp_in_r_V_data_V, token_in_r_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_in_r_V_data_V == "[[transaction]]") begin
                read_token(fp_in_r_V_data_V, token_in_r_V_data_V); // should be transaction number
                read_token(fp_in_r_V_data_V, token_in_r_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_in_r_V_data_V, "%d", size_in_r_V_data_V);
                if (size_in_r_V_data_V > 0) begin
                    size_in_r_V_data_V_backup = size_in_r_V_data_V;
                end
                read_token(fp_in_r_V_data_V, token_in_r_V_data_V); // should be [[/transaction]]
            end else if (token_in_r_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_in_r_V_data_V);
                end_in_r_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_in_r_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in_r_V_data_V == 0) begin
                if ((in_r_TREADY & in_r_TVALID) == 1) begin
                    if (size_in_r_V_data_V > 0) begin
                        size_in_r_V_data_V = size_in_r_V_data_V - 1;
                        while (size_in_r_V_data_V == 0 && end_in_r_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_in_r_V_data_V = ap_c_n_tvin_trans_num_in_r_V_data_V + 1;
                            read_token(fp_in_r_V_data_V, token_in_r_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in_r_V_data_V == "[[transaction]]") begin
                                read_token(fp_in_r_V_data_V, token_in_r_V_data_V); // should be transaction number
                                read_token(fp_in_r_V_data_V, token_in_r_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_in_r_V_data_V, "%d", size_in_r_V_data_V);
                                if (size_in_r_V_data_V > 0) begin
                                    size_in_r_V_data_V_backup = size_in_r_V_data_V;
                                end
                                read_token(fp_in_r_V_data_V, token_in_r_V_data_V); // should be [[/transaction]]
                            end else if (token_in_r_V_data_V == "[[[/runtime]]]") begin
                                size_in_r_V_data_V = size_in_r_V_data_V_backup;
                                $fclose(fp_in_r_V_data_V);
                                end_in_r_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_in_r_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in_r_TREADY & in_r_TVALID) == 1) begin
                    if (size_in_r_V_data_V > 0) begin
                        size_in_r_V_data_V = size_in_r_V_data_V - 1;
                        if (size_in_r_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_in_r_V_data_V = ap_c_n_tvin_trans_num_in_r_V_data_V + 1;
                            size_in_r_V_data_V = size_in_r_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_out_r_V_data_V;

initial begin : dump_tvout_runtime_sign_out_r_V_data_V
    integer fp;
    dump_tvout_finish_out_r_V_data_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_r_V_data_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_V_data_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_r_V_data_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_V_data_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_r_V_data_V = 1;
end


reg dump_tvout_finish_out_r_V_keep_V;

initial begin : dump_tvout_runtime_sign_out_r_V_keep_V
    integer fp;
    dump_tvout_finish_out_r_V_keep_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_r_V_keep_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_r_V_keep_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_r_V_keep_V = 1;
end


reg dump_tvout_finish_out_r_V_strb_V;

initial begin : dump_tvout_runtime_sign_out_r_V_strb_V
    integer fp;
    dump_tvout_finish_out_r_V_strb_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_r_V_strb_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_r_V_strb_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_r_V_strb_V = 1;
end


reg dump_tvout_finish_out_r_V_last_V;

initial begin : dump_tvout_runtime_sign_out_r_V_last_V
    integer fp;
    dump_tvout_finish_out_r_V_last_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_r_V_last_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_r_V_last_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_r_V_last_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_detector deadlock_detector(
    .dl_reset(AESL_reset),
    .all_finish(all_finish),
    .dl_clock(AESL_clock));


AESL_deadlock_kernel_monitor_top kernel_monitor_top(
    .kernel_monitor_reset(~AESL_reset),
    .kernel_monitor_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
