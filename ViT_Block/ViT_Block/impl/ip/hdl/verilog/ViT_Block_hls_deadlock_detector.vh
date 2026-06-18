
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [1:0] proc_0_data_FIFO_blk;
    wire [1:0] proc_0_data_PIPO_blk;
    wire [1:0] proc_0_start_FIFO_blk;
    wire [1:0] proc_0_TLF_FIFO_blk;
    wire [1:0] proc_0_input_sync_blk;
    wire [1:0] proc_0_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_0;
    reg [1:0] proc_dep_vld_vec_0_reg;
    wire [1:0] in_chan_dep_vld_vec_0;
    wire [123:0] in_chan_dep_data_vec_0;
    wire [1:0] token_in_vec_0;
    wire [1:0] out_chan_dep_vld_vec_0;
    wire [61:0] out_chan_dep_data_0;
    wire [1:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [61:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [61:0] dep_chan_data_2_0;
    wire token_2_0;
    wire [1:0] proc_1_data_FIFO_blk;
    wire [1:0] proc_1_data_PIPO_blk;
    wire [1:0] proc_1_start_FIFO_blk;
    wire [1:0] proc_1_TLF_FIFO_blk;
    wire [1:0] proc_1_input_sync_blk;
    wire [1:0] proc_1_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_1;
    reg [1:0] proc_dep_vld_vec_1_reg;
    wire [1:0] in_chan_dep_vld_vec_1;
    wire [123:0] in_chan_dep_data_vec_1;
    wire [1:0] token_in_vec_1;
    wire [1:0] out_chan_dep_vld_vec_1;
    wire [61:0] out_chan_dep_data_1;
    wire [1:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [61:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_61_1;
    wire [61:0] dep_chan_data_61_1;
    wire token_61_1;
    wire [5:0] proc_2_data_FIFO_blk;
    wire [5:0] proc_2_data_PIPO_blk;
    wire [5:0] proc_2_start_FIFO_blk;
    wire [5:0] proc_2_TLF_FIFO_blk;
    wire [5:0] proc_2_input_sync_blk;
    wire [5:0] proc_2_output_sync_blk;
    wire [5:0] proc_dep_vld_vec_2;
    reg [5:0] proc_dep_vld_vec_2_reg;
    wire [5:0] in_chan_dep_vld_vec_2;
    wire [371:0] in_chan_dep_data_vec_2;
    wire [5:0] token_in_vec_2;
    wire [5:0] out_chan_dep_vld_vec_2;
    wire [61:0] out_chan_dep_data_2;
    wire [5:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [61:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_3_2;
    wire [61:0] dep_chan_data_3_2;
    wire token_3_2;
    wire dep_chan_vld_4_2;
    wire [61:0] dep_chan_data_4_2;
    wire token_4_2;
    wire dep_chan_vld_6_2;
    wire [61:0] dep_chan_data_6_2;
    wire token_6_2;
    wire dep_chan_vld_47_2;
    wire [61:0] dep_chan_data_47_2;
    wire token_47_2;
    wire dep_chan_vld_51_2;
    wire [61:0] dep_chan_data_51_2;
    wire token_51_2;
    wire [1:0] proc_3_data_FIFO_blk;
    wire [1:0] proc_3_data_PIPO_blk;
    wire [1:0] proc_3_start_FIFO_blk;
    wire [1:0] proc_3_TLF_FIFO_blk;
    wire [1:0] proc_3_input_sync_blk;
    wire [1:0] proc_3_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_3;
    reg [1:0] proc_dep_vld_vec_3_reg;
    wire [1:0] in_chan_dep_vld_vec_3;
    wire [123:0] in_chan_dep_data_vec_3;
    wire [1:0] token_in_vec_3;
    wire [1:0] out_chan_dep_vld_vec_3;
    wire [61:0] out_chan_dep_data_3;
    wire [1:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_2_3;
    wire [61:0] dep_chan_data_2_3;
    wire token_2_3;
    wire dep_chan_vld_5_3;
    wire [61:0] dep_chan_data_5_3;
    wire token_5_3;
    wire [1:0] proc_4_data_FIFO_blk;
    wire [1:0] proc_4_data_PIPO_blk;
    wire [1:0] proc_4_start_FIFO_blk;
    wire [1:0] proc_4_TLF_FIFO_blk;
    wire [1:0] proc_4_input_sync_blk;
    wire [1:0] proc_4_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_4;
    reg [1:0] proc_dep_vld_vec_4_reg;
    wire [1:0] in_chan_dep_vld_vec_4;
    wire [123:0] in_chan_dep_data_vec_4;
    wire [1:0] token_in_vec_4;
    wire [1:0] out_chan_dep_vld_vec_4;
    wire [61:0] out_chan_dep_data_4;
    wire [1:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_2_4;
    wire [61:0] dep_chan_data_2_4;
    wire token_2_4;
    wire dep_chan_vld_5_4;
    wire [61:0] dep_chan_data_5_4;
    wire token_5_4;
    wire [8:0] proc_5_data_FIFO_blk;
    wire [8:0] proc_5_data_PIPO_blk;
    wire [8:0] proc_5_start_FIFO_blk;
    wire [8:0] proc_5_TLF_FIFO_blk;
    wire [8:0] proc_5_input_sync_blk;
    wire [8:0] proc_5_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_5;
    reg [8:0] proc_dep_vld_vec_5_reg;
    wire [8:0] in_chan_dep_vld_vec_5;
    wire [557:0] in_chan_dep_data_vec_5;
    wire [8:0] token_in_vec_5;
    wire [8:0] out_chan_dep_vld_vec_5;
    wire [61:0] out_chan_dep_data_5;
    wire [8:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_3_5;
    wire [61:0] dep_chan_data_3_5;
    wire token_3_5;
    wire dep_chan_vld_4_5;
    wire [61:0] dep_chan_data_4_5;
    wire token_4_5;
    wire dep_chan_vld_6_5;
    wire [61:0] dep_chan_data_6_5;
    wire token_6_5;
    wire dep_chan_vld_7_5;
    wire [61:0] dep_chan_data_7_5;
    wire token_7_5;
    wire dep_chan_vld_9_5;
    wire [61:0] dep_chan_data_9_5;
    wire token_9_5;
    wire dep_chan_vld_10_5;
    wire [61:0] dep_chan_data_10_5;
    wire token_10_5;
    wire dep_chan_vld_12_5;
    wire [61:0] dep_chan_data_12_5;
    wire token_12_5;
    wire dep_chan_vld_13_5;
    wire [61:0] dep_chan_data_13_5;
    wire token_13_5;
    wire dep_chan_vld_15_5;
    wire [61:0] dep_chan_data_15_5;
    wire token_15_5;
    wire [3:0] proc_6_data_FIFO_blk;
    wire [3:0] proc_6_data_PIPO_blk;
    wire [3:0] proc_6_start_FIFO_blk;
    wire [3:0] proc_6_TLF_FIFO_blk;
    wire [3:0] proc_6_input_sync_blk;
    wire [3:0] proc_6_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_6;
    reg [3:0] proc_dep_vld_vec_6_reg;
    wire [3:0] in_chan_dep_vld_vec_6;
    wire [247:0] in_chan_dep_data_vec_6;
    wire [3:0] token_in_vec_6;
    wire [3:0] out_chan_dep_vld_vec_6;
    wire [61:0] out_chan_dep_data_6;
    wire [3:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_2_6;
    wire [61:0] dep_chan_data_2_6;
    wire token_2_6;
    wire dep_chan_vld_5_6;
    wire [61:0] dep_chan_data_5_6;
    wire token_5_6;
    wire dep_chan_vld_48_6;
    wire [61:0] dep_chan_data_48_6;
    wire token_48_6;
    wire dep_chan_vld_51_6;
    wire [61:0] dep_chan_data_51_6;
    wire token_51_6;
    wire [4:0] proc_7_data_FIFO_blk;
    wire [4:0] proc_7_data_PIPO_blk;
    wire [4:0] proc_7_start_FIFO_blk;
    wire [4:0] proc_7_TLF_FIFO_blk;
    wire [4:0] proc_7_input_sync_blk;
    wire [4:0] proc_7_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_7;
    reg [4:0] proc_dep_vld_vec_7_reg;
    wire [4:0] in_chan_dep_vld_vec_7;
    wire [309:0] in_chan_dep_data_vec_7;
    wire [4:0] token_in_vec_7;
    wire [4:0] out_chan_dep_vld_vec_7;
    wire [61:0] out_chan_dep_data_7;
    wire [4:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_5_7;
    wire [61:0] dep_chan_data_5_7;
    wire token_5_7;
    wire dep_chan_vld_10_7;
    wire [61:0] dep_chan_data_10_7;
    wire token_10_7;
    wire dep_chan_vld_13_7;
    wire [61:0] dep_chan_data_13_7;
    wire token_13_7;
    wire dep_chan_vld_16_7;
    wire [61:0] dep_chan_data_16_7;
    wire token_16_7;
    wire dep_chan_vld_44_7;
    wire [61:0] dep_chan_data_44_7;
    wire token_44_7;
    wire [0:0] proc_8_data_FIFO_blk;
    wire [0:0] proc_8_data_PIPO_blk;
    wire [0:0] proc_8_start_FIFO_blk;
    wire [0:0] proc_8_TLF_FIFO_blk;
    wire [0:0] proc_8_input_sync_blk;
    wire [0:0] proc_8_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_8;
    reg [0:0] proc_dep_vld_vec_8_reg;
    wire [0:0] in_chan_dep_vld_vec_8;
    wire [61:0] in_chan_dep_data_vec_8;
    wire [0:0] token_in_vec_8;
    wire [0:0] out_chan_dep_vld_vec_8;
    wire [61:0] out_chan_dep_data_8;
    wire [0:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_9_8;
    wire [61:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [2:0] proc_9_data_FIFO_blk;
    wire [2:0] proc_9_data_PIPO_blk;
    wire [2:0] proc_9_start_FIFO_blk;
    wire [2:0] proc_9_TLF_FIFO_blk;
    wire [2:0] proc_9_input_sync_blk;
    wire [2:0] proc_9_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_9;
    reg [2:0] proc_dep_vld_vec_9_reg;
    wire [2:0] in_chan_dep_vld_vec_9;
    wire [185:0] in_chan_dep_data_vec_9;
    wire [2:0] token_in_vec_9;
    wire [2:0] out_chan_dep_vld_vec_9;
    wire [61:0] out_chan_dep_data_9;
    wire [2:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_5_9;
    wire [61:0] dep_chan_data_5_9;
    wire token_5_9;
    wire dep_chan_vld_8_9;
    wire [61:0] dep_chan_data_8_9;
    wire token_8_9;
    wire dep_chan_vld_16_9;
    wire [61:0] dep_chan_data_16_9;
    wire token_16_9;
    wire [4:0] proc_10_data_FIFO_blk;
    wire [4:0] proc_10_data_PIPO_blk;
    wire [4:0] proc_10_start_FIFO_blk;
    wire [4:0] proc_10_TLF_FIFO_blk;
    wire [4:0] proc_10_input_sync_blk;
    wire [4:0] proc_10_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_10;
    reg [4:0] proc_dep_vld_vec_10_reg;
    wire [4:0] in_chan_dep_vld_vec_10;
    wire [309:0] in_chan_dep_data_vec_10;
    wire [4:0] token_in_vec_10;
    wire [4:0] out_chan_dep_vld_vec_10;
    wire [61:0] out_chan_dep_data_10;
    wire [4:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_5_10;
    wire [61:0] dep_chan_data_5_10;
    wire token_5_10;
    wire dep_chan_vld_7_10;
    wire [61:0] dep_chan_data_7_10;
    wire token_7_10;
    wire dep_chan_vld_13_10;
    wire [61:0] dep_chan_data_13_10;
    wire token_13_10;
    wire dep_chan_vld_17_10;
    wire [61:0] dep_chan_data_17_10;
    wire token_17_10;
    wire dep_chan_vld_44_10;
    wire [61:0] dep_chan_data_44_10;
    wire token_44_10;
    wire [0:0] proc_11_data_FIFO_blk;
    wire [0:0] proc_11_data_PIPO_blk;
    wire [0:0] proc_11_start_FIFO_blk;
    wire [0:0] proc_11_TLF_FIFO_blk;
    wire [0:0] proc_11_input_sync_blk;
    wire [0:0] proc_11_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_11;
    reg [0:0] proc_dep_vld_vec_11_reg;
    wire [0:0] in_chan_dep_vld_vec_11;
    wire [61:0] in_chan_dep_data_vec_11;
    wire [0:0] token_in_vec_11;
    wire [0:0] out_chan_dep_vld_vec_11;
    wire [61:0] out_chan_dep_data_11;
    wire [0:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_12_11;
    wire [61:0] dep_chan_data_12_11;
    wire token_12_11;
    wire [2:0] proc_12_data_FIFO_blk;
    wire [2:0] proc_12_data_PIPO_blk;
    wire [2:0] proc_12_start_FIFO_blk;
    wire [2:0] proc_12_TLF_FIFO_blk;
    wire [2:0] proc_12_input_sync_blk;
    wire [2:0] proc_12_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_12;
    reg [2:0] proc_dep_vld_vec_12_reg;
    wire [2:0] in_chan_dep_vld_vec_12;
    wire [185:0] in_chan_dep_data_vec_12;
    wire [2:0] token_in_vec_12;
    wire [2:0] out_chan_dep_vld_vec_12;
    wire [61:0] out_chan_dep_data_12;
    wire [2:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_5_12;
    wire [61:0] dep_chan_data_5_12;
    wire token_5_12;
    wire dep_chan_vld_11_12;
    wire [61:0] dep_chan_data_11_12;
    wire token_11_12;
    wire dep_chan_vld_17_12;
    wire [61:0] dep_chan_data_17_12;
    wire token_17_12;
    wire [4:0] proc_13_data_FIFO_blk;
    wire [4:0] proc_13_data_PIPO_blk;
    wire [4:0] proc_13_start_FIFO_blk;
    wire [4:0] proc_13_TLF_FIFO_blk;
    wire [4:0] proc_13_input_sync_blk;
    wire [4:0] proc_13_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_13;
    reg [4:0] proc_dep_vld_vec_13_reg;
    wire [4:0] in_chan_dep_vld_vec_13;
    wire [309:0] in_chan_dep_data_vec_13;
    wire [4:0] token_in_vec_13;
    wire [4:0] out_chan_dep_vld_vec_13;
    wire [61:0] out_chan_dep_data_13;
    wire [4:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_5_13;
    wire [61:0] dep_chan_data_5_13;
    wire token_5_13;
    wire dep_chan_vld_7_13;
    wire [61:0] dep_chan_data_7_13;
    wire token_7_13;
    wire dep_chan_vld_10_13;
    wire [61:0] dep_chan_data_10_13;
    wire token_10_13;
    wire dep_chan_vld_18_13;
    wire [61:0] dep_chan_data_18_13;
    wire token_18_13;
    wire dep_chan_vld_44_13;
    wire [61:0] dep_chan_data_44_13;
    wire token_44_13;
    wire [0:0] proc_14_data_FIFO_blk;
    wire [0:0] proc_14_data_PIPO_blk;
    wire [0:0] proc_14_start_FIFO_blk;
    wire [0:0] proc_14_TLF_FIFO_blk;
    wire [0:0] proc_14_input_sync_blk;
    wire [0:0] proc_14_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_14;
    reg [0:0] proc_dep_vld_vec_14_reg;
    wire [0:0] in_chan_dep_vld_vec_14;
    wire [61:0] in_chan_dep_data_vec_14;
    wire [0:0] token_in_vec_14;
    wire [0:0] out_chan_dep_vld_vec_14;
    wire [61:0] out_chan_dep_data_14;
    wire [0:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_15_14;
    wire [61:0] dep_chan_data_15_14;
    wire token_15_14;
    wire [2:0] proc_15_data_FIFO_blk;
    wire [2:0] proc_15_data_PIPO_blk;
    wire [2:0] proc_15_start_FIFO_blk;
    wire [2:0] proc_15_TLF_FIFO_blk;
    wire [2:0] proc_15_input_sync_blk;
    wire [2:0] proc_15_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_15;
    reg [2:0] proc_dep_vld_vec_15_reg;
    wire [2:0] in_chan_dep_vld_vec_15;
    wire [185:0] in_chan_dep_data_vec_15;
    wire [2:0] token_in_vec_15;
    wire [2:0] out_chan_dep_vld_vec_15;
    wire [61:0] out_chan_dep_data_15;
    wire [2:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_5_15;
    wire [61:0] dep_chan_data_5_15;
    wire token_5_15;
    wire dep_chan_vld_14_15;
    wire [61:0] dep_chan_data_14_15;
    wire token_14_15;
    wire dep_chan_vld_18_15;
    wire [61:0] dep_chan_data_18_15;
    wire token_18_15;
    wire [9:0] proc_16_data_FIFO_blk;
    wire [9:0] proc_16_data_PIPO_blk;
    wire [9:0] proc_16_start_FIFO_blk;
    wire [9:0] proc_16_TLF_FIFO_blk;
    wire [9:0] proc_16_input_sync_blk;
    wire [9:0] proc_16_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_16;
    reg [9:0] proc_dep_vld_vec_16_reg;
    wire [9:0] in_chan_dep_vld_vec_16;
    wire [619:0] in_chan_dep_data_vec_16;
    wire [9:0] token_in_vec_16;
    wire [9:0] out_chan_dep_vld_vec_16;
    wire [61:0] out_chan_dep_data_16;
    wire [9:0] token_out_vec_16;
    wire dl_detect_out_16;
    wire dep_chan_vld_7_16;
    wire [61:0] dep_chan_data_7_16;
    wire token_7_16;
    wire dep_chan_vld_9_16;
    wire [61:0] dep_chan_data_9_16;
    wire token_9_16;
    wire dep_chan_vld_19_16;
    wire [61:0] dep_chan_data_19_16;
    wire token_19_16;
    wire dep_chan_vld_20_16;
    wire [61:0] dep_chan_data_20_16;
    wire token_20_16;
    wire dep_chan_vld_25_16;
    wire [61:0] dep_chan_data_25_16;
    wire token_25_16;
    wire dep_chan_vld_26_16;
    wire [61:0] dep_chan_data_26_16;
    wire token_26_16;
    wire dep_chan_vld_31_16;
    wire [61:0] dep_chan_data_31_16;
    wire token_31_16;
    wire dep_chan_vld_32_16;
    wire [61:0] dep_chan_data_32_16;
    wire token_32_16;
    wire dep_chan_vld_37_16;
    wire [61:0] dep_chan_data_37_16;
    wire token_37_16;
    wire dep_chan_vld_38_16;
    wire [61:0] dep_chan_data_38_16;
    wire token_38_16;
    wire [9:0] proc_17_data_FIFO_blk;
    wire [9:0] proc_17_data_PIPO_blk;
    wire [9:0] proc_17_start_FIFO_blk;
    wire [9:0] proc_17_TLF_FIFO_blk;
    wire [9:0] proc_17_input_sync_blk;
    wire [9:0] proc_17_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_17;
    reg [9:0] proc_dep_vld_vec_17_reg;
    wire [9:0] in_chan_dep_vld_vec_17;
    wire [619:0] in_chan_dep_data_vec_17;
    wire [9:0] token_in_vec_17;
    wire [9:0] out_chan_dep_vld_vec_17;
    wire [61:0] out_chan_dep_data_17;
    wire [9:0] token_out_vec_17;
    wire dl_detect_out_17;
    wire dep_chan_vld_10_17;
    wire [61:0] dep_chan_data_10_17;
    wire token_10_17;
    wire dep_chan_vld_12_17;
    wire [61:0] dep_chan_data_12_17;
    wire token_12_17;
    wire dep_chan_vld_19_17;
    wire [61:0] dep_chan_data_19_17;
    wire token_19_17;
    wire dep_chan_vld_20_17;
    wire [61:0] dep_chan_data_20_17;
    wire token_20_17;
    wire dep_chan_vld_25_17;
    wire [61:0] dep_chan_data_25_17;
    wire token_25_17;
    wire dep_chan_vld_26_17;
    wire [61:0] dep_chan_data_26_17;
    wire token_26_17;
    wire dep_chan_vld_31_17;
    wire [61:0] dep_chan_data_31_17;
    wire token_31_17;
    wire dep_chan_vld_32_17;
    wire [61:0] dep_chan_data_32_17;
    wire token_32_17;
    wire dep_chan_vld_37_17;
    wire [61:0] dep_chan_data_37_17;
    wire token_37_17;
    wire dep_chan_vld_38_17;
    wire [61:0] dep_chan_data_38_17;
    wire token_38_17;
    wire [9:0] proc_18_data_FIFO_blk;
    wire [9:0] proc_18_data_PIPO_blk;
    wire [9:0] proc_18_start_FIFO_blk;
    wire [9:0] proc_18_TLF_FIFO_blk;
    wire [9:0] proc_18_input_sync_blk;
    wire [9:0] proc_18_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_18;
    reg [9:0] proc_dep_vld_vec_18_reg;
    wire [9:0] in_chan_dep_vld_vec_18;
    wire [619:0] in_chan_dep_data_vec_18;
    wire [9:0] token_in_vec_18;
    wire [9:0] out_chan_dep_vld_vec_18;
    wire [61:0] out_chan_dep_data_18;
    wire [9:0] token_out_vec_18;
    wire dl_detect_out_18;
    wire dep_chan_vld_13_18;
    wire [61:0] dep_chan_data_13_18;
    wire token_13_18;
    wire dep_chan_vld_15_18;
    wire [61:0] dep_chan_data_15_18;
    wire token_15_18;
    wire dep_chan_vld_23_18;
    wire [61:0] dep_chan_data_23_18;
    wire token_23_18;
    wire dep_chan_vld_24_18;
    wire [61:0] dep_chan_data_24_18;
    wire token_24_18;
    wire dep_chan_vld_29_18;
    wire [61:0] dep_chan_data_29_18;
    wire token_29_18;
    wire dep_chan_vld_30_18;
    wire [61:0] dep_chan_data_30_18;
    wire token_30_18;
    wire dep_chan_vld_35_18;
    wire [61:0] dep_chan_data_35_18;
    wire token_35_18;
    wire dep_chan_vld_36_18;
    wire [61:0] dep_chan_data_36_18;
    wire token_36_18;
    wire dep_chan_vld_41_18;
    wire [61:0] dep_chan_data_41_18;
    wire token_41_18;
    wire dep_chan_vld_42_18;
    wire [61:0] dep_chan_data_42_18;
    wire token_42_18;
    wire [2:0] proc_19_data_FIFO_blk;
    wire [2:0] proc_19_data_PIPO_blk;
    wire [2:0] proc_19_start_FIFO_blk;
    wire [2:0] proc_19_TLF_FIFO_blk;
    wire [2:0] proc_19_input_sync_blk;
    wire [2:0] proc_19_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_19;
    reg [2:0] proc_dep_vld_vec_19_reg;
    wire [2:0] in_chan_dep_vld_vec_19;
    wire [185:0] in_chan_dep_data_vec_19;
    wire [2:0] token_in_vec_19;
    wire [2:0] out_chan_dep_vld_vec_19;
    wire [61:0] out_chan_dep_data_19;
    wire [2:0] token_out_vec_19;
    wire dl_detect_out_19;
    wire dep_chan_vld_16_19;
    wire [61:0] dep_chan_data_16_19;
    wire token_16_19;
    wire dep_chan_vld_17_19;
    wire [61:0] dep_chan_data_17_19;
    wire token_17_19;
    wire dep_chan_vld_21_19;
    wire [61:0] dep_chan_data_21_19;
    wire token_21_19;
    wire [2:0] proc_20_data_FIFO_blk;
    wire [2:0] proc_20_data_PIPO_blk;
    wire [2:0] proc_20_start_FIFO_blk;
    wire [2:0] proc_20_TLF_FIFO_blk;
    wire [2:0] proc_20_input_sync_blk;
    wire [2:0] proc_20_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_20;
    reg [2:0] proc_dep_vld_vec_20_reg;
    wire [2:0] in_chan_dep_vld_vec_20;
    wire [185:0] in_chan_dep_data_vec_20;
    wire [2:0] token_in_vec_20;
    wire [2:0] out_chan_dep_vld_vec_20;
    wire [61:0] out_chan_dep_data_20;
    wire [2:0] token_out_vec_20;
    wire dl_detect_out_20;
    wire dep_chan_vld_16_20;
    wire [61:0] dep_chan_data_16_20;
    wire token_16_20;
    wire dep_chan_vld_17_20;
    wire [61:0] dep_chan_data_17_20;
    wire token_17_20;
    wire dep_chan_vld_21_20;
    wire [61:0] dep_chan_data_21_20;
    wire token_21_20;
    wire [2:0] proc_21_data_FIFO_blk;
    wire [2:0] proc_21_data_PIPO_blk;
    wire [2:0] proc_21_start_FIFO_blk;
    wire [2:0] proc_21_TLF_FIFO_blk;
    wire [2:0] proc_21_input_sync_blk;
    wire [2:0] proc_21_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_21;
    reg [2:0] proc_dep_vld_vec_21_reg;
    wire [2:0] in_chan_dep_vld_vec_21;
    wire [185:0] in_chan_dep_data_vec_21;
    wire [2:0] token_in_vec_21;
    wire [2:0] out_chan_dep_vld_vec_21;
    wire [61:0] out_chan_dep_data_21;
    wire [2:0] token_out_vec_21;
    wire dl_detect_out_21;
    wire dep_chan_vld_19_21;
    wire [61:0] dep_chan_data_19_21;
    wire token_19_21;
    wire dep_chan_vld_20_21;
    wire [61:0] dep_chan_data_20_21;
    wire token_20_21;
    wire dep_chan_vld_22_21;
    wire [61:0] dep_chan_data_22_21;
    wire token_22_21;
    wire [2:0] proc_22_data_FIFO_blk;
    wire [2:0] proc_22_data_PIPO_blk;
    wire [2:0] proc_22_start_FIFO_blk;
    wire [2:0] proc_22_TLF_FIFO_blk;
    wire [2:0] proc_22_input_sync_blk;
    wire [2:0] proc_22_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_22;
    reg [2:0] proc_dep_vld_vec_22_reg;
    wire [2:0] in_chan_dep_vld_vec_22;
    wire [185:0] in_chan_dep_data_vec_22;
    wire [2:0] token_in_vec_22;
    wire [2:0] out_chan_dep_vld_vec_22;
    wire [61:0] out_chan_dep_data_22;
    wire [2:0] token_out_vec_22;
    wire dl_detect_out_22;
    wire dep_chan_vld_21_22;
    wire [61:0] dep_chan_data_21_22;
    wire token_21_22;
    wire dep_chan_vld_23_22;
    wire [61:0] dep_chan_data_23_22;
    wire token_23_22;
    wire dep_chan_vld_24_22;
    wire [61:0] dep_chan_data_24_22;
    wire token_24_22;
    wire [2:0] proc_23_data_FIFO_blk;
    wire [2:0] proc_23_data_PIPO_blk;
    wire [2:0] proc_23_start_FIFO_blk;
    wire [2:0] proc_23_TLF_FIFO_blk;
    wire [2:0] proc_23_input_sync_blk;
    wire [2:0] proc_23_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_23;
    reg [2:0] proc_dep_vld_vec_23_reg;
    wire [2:0] in_chan_dep_vld_vec_23;
    wire [185:0] in_chan_dep_data_vec_23;
    wire [2:0] token_in_vec_23;
    wire [2:0] out_chan_dep_vld_vec_23;
    wire [61:0] out_chan_dep_data_23;
    wire [2:0] token_out_vec_23;
    wire dl_detect_out_23;
    wire dep_chan_vld_18_23;
    wire [61:0] dep_chan_data_18_23;
    wire token_18_23;
    wire dep_chan_vld_22_23;
    wire [61:0] dep_chan_data_22_23;
    wire token_22_23;
    wire dep_chan_vld_43_23;
    wire [61:0] dep_chan_data_43_23;
    wire token_43_23;
    wire [2:0] proc_24_data_FIFO_blk;
    wire [2:0] proc_24_data_PIPO_blk;
    wire [2:0] proc_24_start_FIFO_blk;
    wire [2:0] proc_24_TLF_FIFO_blk;
    wire [2:0] proc_24_input_sync_blk;
    wire [2:0] proc_24_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_24;
    reg [2:0] proc_dep_vld_vec_24_reg;
    wire [2:0] in_chan_dep_vld_vec_24;
    wire [185:0] in_chan_dep_data_vec_24;
    wire [2:0] token_in_vec_24;
    wire [2:0] out_chan_dep_vld_vec_24;
    wire [61:0] out_chan_dep_data_24;
    wire [2:0] token_out_vec_24;
    wire dl_detect_out_24;
    wire dep_chan_vld_18_24;
    wire [61:0] dep_chan_data_18_24;
    wire token_18_24;
    wire dep_chan_vld_22_24;
    wire [61:0] dep_chan_data_22_24;
    wire token_22_24;
    wire dep_chan_vld_43_24;
    wire [61:0] dep_chan_data_43_24;
    wire token_43_24;
    wire [2:0] proc_25_data_FIFO_blk;
    wire [2:0] proc_25_data_PIPO_blk;
    wire [2:0] proc_25_start_FIFO_blk;
    wire [2:0] proc_25_TLF_FIFO_blk;
    wire [2:0] proc_25_input_sync_blk;
    wire [2:0] proc_25_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_25;
    reg [2:0] proc_dep_vld_vec_25_reg;
    wire [2:0] in_chan_dep_vld_vec_25;
    wire [185:0] in_chan_dep_data_vec_25;
    wire [2:0] token_in_vec_25;
    wire [2:0] out_chan_dep_vld_vec_25;
    wire [61:0] out_chan_dep_data_25;
    wire [2:0] token_out_vec_25;
    wire dl_detect_out_25;
    wire dep_chan_vld_16_25;
    wire [61:0] dep_chan_data_16_25;
    wire token_16_25;
    wire dep_chan_vld_17_25;
    wire [61:0] dep_chan_data_17_25;
    wire token_17_25;
    wire dep_chan_vld_27_25;
    wire [61:0] dep_chan_data_27_25;
    wire token_27_25;
    wire [2:0] proc_26_data_FIFO_blk;
    wire [2:0] proc_26_data_PIPO_blk;
    wire [2:0] proc_26_start_FIFO_blk;
    wire [2:0] proc_26_TLF_FIFO_blk;
    wire [2:0] proc_26_input_sync_blk;
    wire [2:0] proc_26_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_26;
    reg [2:0] proc_dep_vld_vec_26_reg;
    wire [2:0] in_chan_dep_vld_vec_26;
    wire [185:0] in_chan_dep_data_vec_26;
    wire [2:0] token_in_vec_26;
    wire [2:0] out_chan_dep_vld_vec_26;
    wire [61:0] out_chan_dep_data_26;
    wire [2:0] token_out_vec_26;
    wire dl_detect_out_26;
    wire dep_chan_vld_16_26;
    wire [61:0] dep_chan_data_16_26;
    wire token_16_26;
    wire dep_chan_vld_17_26;
    wire [61:0] dep_chan_data_17_26;
    wire token_17_26;
    wire dep_chan_vld_27_26;
    wire [61:0] dep_chan_data_27_26;
    wire token_27_26;
    wire [2:0] proc_27_data_FIFO_blk;
    wire [2:0] proc_27_data_PIPO_blk;
    wire [2:0] proc_27_start_FIFO_blk;
    wire [2:0] proc_27_TLF_FIFO_blk;
    wire [2:0] proc_27_input_sync_blk;
    wire [2:0] proc_27_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_27;
    reg [2:0] proc_dep_vld_vec_27_reg;
    wire [2:0] in_chan_dep_vld_vec_27;
    wire [185:0] in_chan_dep_data_vec_27;
    wire [2:0] token_in_vec_27;
    wire [2:0] out_chan_dep_vld_vec_27;
    wire [61:0] out_chan_dep_data_27;
    wire [2:0] token_out_vec_27;
    wire dl_detect_out_27;
    wire dep_chan_vld_25_27;
    wire [61:0] dep_chan_data_25_27;
    wire token_25_27;
    wire dep_chan_vld_26_27;
    wire [61:0] dep_chan_data_26_27;
    wire token_26_27;
    wire dep_chan_vld_28_27;
    wire [61:0] dep_chan_data_28_27;
    wire token_28_27;
    wire [2:0] proc_28_data_FIFO_blk;
    wire [2:0] proc_28_data_PIPO_blk;
    wire [2:0] proc_28_start_FIFO_blk;
    wire [2:0] proc_28_TLF_FIFO_blk;
    wire [2:0] proc_28_input_sync_blk;
    wire [2:0] proc_28_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_28;
    reg [2:0] proc_dep_vld_vec_28_reg;
    wire [2:0] in_chan_dep_vld_vec_28;
    wire [185:0] in_chan_dep_data_vec_28;
    wire [2:0] token_in_vec_28;
    wire [2:0] out_chan_dep_vld_vec_28;
    wire [61:0] out_chan_dep_data_28;
    wire [2:0] token_out_vec_28;
    wire dl_detect_out_28;
    wire dep_chan_vld_27_28;
    wire [61:0] dep_chan_data_27_28;
    wire token_27_28;
    wire dep_chan_vld_29_28;
    wire [61:0] dep_chan_data_29_28;
    wire token_29_28;
    wire dep_chan_vld_30_28;
    wire [61:0] dep_chan_data_30_28;
    wire token_30_28;
    wire [2:0] proc_29_data_FIFO_blk;
    wire [2:0] proc_29_data_PIPO_blk;
    wire [2:0] proc_29_start_FIFO_blk;
    wire [2:0] proc_29_TLF_FIFO_blk;
    wire [2:0] proc_29_input_sync_blk;
    wire [2:0] proc_29_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_29;
    reg [2:0] proc_dep_vld_vec_29_reg;
    wire [2:0] in_chan_dep_vld_vec_29;
    wire [185:0] in_chan_dep_data_vec_29;
    wire [2:0] token_in_vec_29;
    wire [2:0] out_chan_dep_vld_vec_29;
    wire [61:0] out_chan_dep_data_29;
    wire [2:0] token_out_vec_29;
    wire dl_detect_out_29;
    wire dep_chan_vld_18_29;
    wire [61:0] dep_chan_data_18_29;
    wire token_18_29;
    wire dep_chan_vld_28_29;
    wire [61:0] dep_chan_data_28_29;
    wire token_28_29;
    wire dep_chan_vld_43_29;
    wire [61:0] dep_chan_data_43_29;
    wire token_43_29;
    wire [2:0] proc_30_data_FIFO_blk;
    wire [2:0] proc_30_data_PIPO_blk;
    wire [2:0] proc_30_start_FIFO_blk;
    wire [2:0] proc_30_TLF_FIFO_blk;
    wire [2:0] proc_30_input_sync_blk;
    wire [2:0] proc_30_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_30;
    reg [2:0] proc_dep_vld_vec_30_reg;
    wire [2:0] in_chan_dep_vld_vec_30;
    wire [185:0] in_chan_dep_data_vec_30;
    wire [2:0] token_in_vec_30;
    wire [2:0] out_chan_dep_vld_vec_30;
    wire [61:0] out_chan_dep_data_30;
    wire [2:0] token_out_vec_30;
    wire dl_detect_out_30;
    wire dep_chan_vld_18_30;
    wire [61:0] dep_chan_data_18_30;
    wire token_18_30;
    wire dep_chan_vld_28_30;
    wire [61:0] dep_chan_data_28_30;
    wire token_28_30;
    wire dep_chan_vld_43_30;
    wire [61:0] dep_chan_data_43_30;
    wire token_43_30;
    wire [2:0] proc_31_data_FIFO_blk;
    wire [2:0] proc_31_data_PIPO_blk;
    wire [2:0] proc_31_start_FIFO_blk;
    wire [2:0] proc_31_TLF_FIFO_blk;
    wire [2:0] proc_31_input_sync_blk;
    wire [2:0] proc_31_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_31;
    reg [2:0] proc_dep_vld_vec_31_reg;
    wire [2:0] in_chan_dep_vld_vec_31;
    wire [185:0] in_chan_dep_data_vec_31;
    wire [2:0] token_in_vec_31;
    wire [2:0] out_chan_dep_vld_vec_31;
    wire [61:0] out_chan_dep_data_31;
    wire [2:0] token_out_vec_31;
    wire dl_detect_out_31;
    wire dep_chan_vld_16_31;
    wire [61:0] dep_chan_data_16_31;
    wire token_16_31;
    wire dep_chan_vld_17_31;
    wire [61:0] dep_chan_data_17_31;
    wire token_17_31;
    wire dep_chan_vld_33_31;
    wire [61:0] dep_chan_data_33_31;
    wire token_33_31;
    wire [2:0] proc_32_data_FIFO_blk;
    wire [2:0] proc_32_data_PIPO_blk;
    wire [2:0] proc_32_start_FIFO_blk;
    wire [2:0] proc_32_TLF_FIFO_blk;
    wire [2:0] proc_32_input_sync_blk;
    wire [2:0] proc_32_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_32;
    reg [2:0] proc_dep_vld_vec_32_reg;
    wire [2:0] in_chan_dep_vld_vec_32;
    wire [185:0] in_chan_dep_data_vec_32;
    wire [2:0] token_in_vec_32;
    wire [2:0] out_chan_dep_vld_vec_32;
    wire [61:0] out_chan_dep_data_32;
    wire [2:0] token_out_vec_32;
    wire dl_detect_out_32;
    wire dep_chan_vld_16_32;
    wire [61:0] dep_chan_data_16_32;
    wire token_16_32;
    wire dep_chan_vld_17_32;
    wire [61:0] dep_chan_data_17_32;
    wire token_17_32;
    wire dep_chan_vld_33_32;
    wire [61:0] dep_chan_data_33_32;
    wire token_33_32;
    wire [2:0] proc_33_data_FIFO_blk;
    wire [2:0] proc_33_data_PIPO_blk;
    wire [2:0] proc_33_start_FIFO_blk;
    wire [2:0] proc_33_TLF_FIFO_blk;
    wire [2:0] proc_33_input_sync_blk;
    wire [2:0] proc_33_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_33;
    reg [2:0] proc_dep_vld_vec_33_reg;
    wire [2:0] in_chan_dep_vld_vec_33;
    wire [185:0] in_chan_dep_data_vec_33;
    wire [2:0] token_in_vec_33;
    wire [2:0] out_chan_dep_vld_vec_33;
    wire [61:0] out_chan_dep_data_33;
    wire [2:0] token_out_vec_33;
    wire dl_detect_out_33;
    wire dep_chan_vld_31_33;
    wire [61:0] dep_chan_data_31_33;
    wire token_31_33;
    wire dep_chan_vld_32_33;
    wire [61:0] dep_chan_data_32_33;
    wire token_32_33;
    wire dep_chan_vld_34_33;
    wire [61:0] dep_chan_data_34_33;
    wire token_34_33;
    wire [2:0] proc_34_data_FIFO_blk;
    wire [2:0] proc_34_data_PIPO_blk;
    wire [2:0] proc_34_start_FIFO_blk;
    wire [2:0] proc_34_TLF_FIFO_blk;
    wire [2:0] proc_34_input_sync_blk;
    wire [2:0] proc_34_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_34;
    reg [2:0] proc_dep_vld_vec_34_reg;
    wire [2:0] in_chan_dep_vld_vec_34;
    wire [185:0] in_chan_dep_data_vec_34;
    wire [2:0] token_in_vec_34;
    wire [2:0] out_chan_dep_vld_vec_34;
    wire [61:0] out_chan_dep_data_34;
    wire [2:0] token_out_vec_34;
    wire dl_detect_out_34;
    wire dep_chan_vld_33_34;
    wire [61:0] dep_chan_data_33_34;
    wire token_33_34;
    wire dep_chan_vld_35_34;
    wire [61:0] dep_chan_data_35_34;
    wire token_35_34;
    wire dep_chan_vld_36_34;
    wire [61:0] dep_chan_data_36_34;
    wire token_36_34;
    wire [2:0] proc_35_data_FIFO_blk;
    wire [2:0] proc_35_data_PIPO_blk;
    wire [2:0] proc_35_start_FIFO_blk;
    wire [2:0] proc_35_TLF_FIFO_blk;
    wire [2:0] proc_35_input_sync_blk;
    wire [2:0] proc_35_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_35;
    reg [2:0] proc_dep_vld_vec_35_reg;
    wire [2:0] in_chan_dep_vld_vec_35;
    wire [185:0] in_chan_dep_data_vec_35;
    wire [2:0] token_in_vec_35;
    wire [2:0] out_chan_dep_vld_vec_35;
    wire [61:0] out_chan_dep_data_35;
    wire [2:0] token_out_vec_35;
    wire dl_detect_out_35;
    wire dep_chan_vld_18_35;
    wire [61:0] dep_chan_data_18_35;
    wire token_18_35;
    wire dep_chan_vld_34_35;
    wire [61:0] dep_chan_data_34_35;
    wire token_34_35;
    wire dep_chan_vld_43_35;
    wire [61:0] dep_chan_data_43_35;
    wire token_43_35;
    wire [2:0] proc_36_data_FIFO_blk;
    wire [2:0] proc_36_data_PIPO_blk;
    wire [2:0] proc_36_start_FIFO_blk;
    wire [2:0] proc_36_TLF_FIFO_blk;
    wire [2:0] proc_36_input_sync_blk;
    wire [2:0] proc_36_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_36;
    reg [2:0] proc_dep_vld_vec_36_reg;
    wire [2:0] in_chan_dep_vld_vec_36;
    wire [185:0] in_chan_dep_data_vec_36;
    wire [2:0] token_in_vec_36;
    wire [2:0] out_chan_dep_vld_vec_36;
    wire [61:0] out_chan_dep_data_36;
    wire [2:0] token_out_vec_36;
    wire dl_detect_out_36;
    wire dep_chan_vld_18_36;
    wire [61:0] dep_chan_data_18_36;
    wire token_18_36;
    wire dep_chan_vld_34_36;
    wire [61:0] dep_chan_data_34_36;
    wire token_34_36;
    wire dep_chan_vld_43_36;
    wire [61:0] dep_chan_data_43_36;
    wire token_43_36;
    wire [2:0] proc_37_data_FIFO_blk;
    wire [2:0] proc_37_data_PIPO_blk;
    wire [2:0] proc_37_start_FIFO_blk;
    wire [2:0] proc_37_TLF_FIFO_blk;
    wire [2:0] proc_37_input_sync_blk;
    wire [2:0] proc_37_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_37;
    reg [2:0] proc_dep_vld_vec_37_reg;
    wire [2:0] in_chan_dep_vld_vec_37;
    wire [185:0] in_chan_dep_data_vec_37;
    wire [2:0] token_in_vec_37;
    wire [2:0] out_chan_dep_vld_vec_37;
    wire [61:0] out_chan_dep_data_37;
    wire [2:0] token_out_vec_37;
    wire dl_detect_out_37;
    wire dep_chan_vld_16_37;
    wire [61:0] dep_chan_data_16_37;
    wire token_16_37;
    wire dep_chan_vld_17_37;
    wire [61:0] dep_chan_data_17_37;
    wire token_17_37;
    wire dep_chan_vld_39_37;
    wire [61:0] dep_chan_data_39_37;
    wire token_39_37;
    wire [2:0] proc_38_data_FIFO_blk;
    wire [2:0] proc_38_data_PIPO_blk;
    wire [2:0] proc_38_start_FIFO_blk;
    wire [2:0] proc_38_TLF_FIFO_blk;
    wire [2:0] proc_38_input_sync_blk;
    wire [2:0] proc_38_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_38;
    reg [2:0] proc_dep_vld_vec_38_reg;
    wire [2:0] in_chan_dep_vld_vec_38;
    wire [185:0] in_chan_dep_data_vec_38;
    wire [2:0] token_in_vec_38;
    wire [2:0] out_chan_dep_vld_vec_38;
    wire [61:0] out_chan_dep_data_38;
    wire [2:0] token_out_vec_38;
    wire dl_detect_out_38;
    wire dep_chan_vld_16_38;
    wire [61:0] dep_chan_data_16_38;
    wire token_16_38;
    wire dep_chan_vld_17_38;
    wire [61:0] dep_chan_data_17_38;
    wire token_17_38;
    wire dep_chan_vld_39_38;
    wire [61:0] dep_chan_data_39_38;
    wire token_39_38;
    wire [2:0] proc_39_data_FIFO_blk;
    wire [2:0] proc_39_data_PIPO_blk;
    wire [2:0] proc_39_start_FIFO_blk;
    wire [2:0] proc_39_TLF_FIFO_blk;
    wire [2:0] proc_39_input_sync_blk;
    wire [2:0] proc_39_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_39;
    reg [2:0] proc_dep_vld_vec_39_reg;
    wire [2:0] in_chan_dep_vld_vec_39;
    wire [185:0] in_chan_dep_data_vec_39;
    wire [2:0] token_in_vec_39;
    wire [2:0] out_chan_dep_vld_vec_39;
    wire [61:0] out_chan_dep_data_39;
    wire [2:0] token_out_vec_39;
    wire dl_detect_out_39;
    wire dep_chan_vld_37_39;
    wire [61:0] dep_chan_data_37_39;
    wire token_37_39;
    wire dep_chan_vld_38_39;
    wire [61:0] dep_chan_data_38_39;
    wire token_38_39;
    wire dep_chan_vld_40_39;
    wire [61:0] dep_chan_data_40_39;
    wire token_40_39;
    wire [2:0] proc_40_data_FIFO_blk;
    wire [2:0] proc_40_data_PIPO_blk;
    wire [2:0] proc_40_start_FIFO_blk;
    wire [2:0] proc_40_TLF_FIFO_blk;
    wire [2:0] proc_40_input_sync_blk;
    wire [2:0] proc_40_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_40;
    reg [2:0] proc_dep_vld_vec_40_reg;
    wire [2:0] in_chan_dep_vld_vec_40;
    wire [185:0] in_chan_dep_data_vec_40;
    wire [2:0] token_in_vec_40;
    wire [2:0] out_chan_dep_vld_vec_40;
    wire [61:0] out_chan_dep_data_40;
    wire [2:0] token_out_vec_40;
    wire dl_detect_out_40;
    wire dep_chan_vld_39_40;
    wire [61:0] dep_chan_data_39_40;
    wire token_39_40;
    wire dep_chan_vld_41_40;
    wire [61:0] dep_chan_data_41_40;
    wire token_41_40;
    wire dep_chan_vld_42_40;
    wire [61:0] dep_chan_data_42_40;
    wire token_42_40;
    wire [2:0] proc_41_data_FIFO_blk;
    wire [2:0] proc_41_data_PIPO_blk;
    wire [2:0] proc_41_start_FIFO_blk;
    wire [2:0] proc_41_TLF_FIFO_blk;
    wire [2:0] proc_41_input_sync_blk;
    wire [2:0] proc_41_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_41;
    reg [2:0] proc_dep_vld_vec_41_reg;
    wire [2:0] in_chan_dep_vld_vec_41;
    wire [185:0] in_chan_dep_data_vec_41;
    wire [2:0] token_in_vec_41;
    wire [2:0] out_chan_dep_vld_vec_41;
    wire [61:0] out_chan_dep_data_41;
    wire [2:0] token_out_vec_41;
    wire dl_detect_out_41;
    wire dep_chan_vld_18_41;
    wire [61:0] dep_chan_data_18_41;
    wire token_18_41;
    wire dep_chan_vld_40_41;
    wire [61:0] dep_chan_data_40_41;
    wire token_40_41;
    wire dep_chan_vld_43_41;
    wire [61:0] dep_chan_data_43_41;
    wire token_43_41;
    wire [2:0] proc_42_data_FIFO_blk;
    wire [2:0] proc_42_data_PIPO_blk;
    wire [2:0] proc_42_start_FIFO_blk;
    wire [2:0] proc_42_TLF_FIFO_blk;
    wire [2:0] proc_42_input_sync_blk;
    wire [2:0] proc_42_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_42;
    reg [2:0] proc_dep_vld_vec_42_reg;
    wire [2:0] in_chan_dep_vld_vec_42;
    wire [185:0] in_chan_dep_data_vec_42;
    wire [2:0] token_in_vec_42;
    wire [2:0] out_chan_dep_vld_vec_42;
    wire [61:0] out_chan_dep_data_42;
    wire [2:0] token_out_vec_42;
    wire dl_detect_out_42;
    wire dep_chan_vld_18_42;
    wire [61:0] dep_chan_data_18_42;
    wire token_18_42;
    wire dep_chan_vld_40_42;
    wire [61:0] dep_chan_data_40_42;
    wire token_40_42;
    wire dep_chan_vld_43_42;
    wire [61:0] dep_chan_data_43_42;
    wire token_43_42;
    wire [9:0] proc_43_data_FIFO_blk;
    wire [9:0] proc_43_data_PIPO_blk;
    wire [9:0] proc_43_start_FIFO_blk;
    wire [9:0] proc_43_TLF_FIFO_blk;
    wire [9:0] proc_43_input_sync_blk;
    wire [9:0] proc_43_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_43;
    reg [9:0] proc_dep_vld_vec_43_reg;
    wire [9:0] in_chan_dep_vld_vec_43;
    wire [619:0] in_chan_dep_data_vec_43;
    wire [9:0] token_in_vec_43;
    wire [9:0] out_chan_dep_vld_vec_43;
    wire [61:0] out_chan_dep_data_43;
    wire [9:0] token_out_vec_43;
    wire dl_detect_out_43;
    wire dep_chan_vld_23_43;
    wire [61:0] dep_chan_data_23_43;
    wire token_23_43;
    wire dep_chan_vld_24_43;
    wire [61:0] dep_chan_data_24_43;
    wire token_24_43;
    wire dep_chan_vld_29_43;
    wire [61:0] dep_chan_data_29_43;
    wire token_29_43;
    wire dep_chan_vld_30_43;
    wire [61:0] dep_chan_data_30_43;
    wire token_30_43;
    wire dep_chan_vld_35_43;
    wire [61:0] dep_chan_data_35_43;
    wire token_35_43;
    wire dep_chan_vld_36_43;
    wire [61:0] dep_chan_data_36_43;
    wire token_36_43;
    wire dep_chan_vld_41_43;
    wire [61:0] dep_chan_data_41_43;
    wire token_41_43;
    wire dep_chan_vld_42_43;
    wire [61:0] dep_chan_data_42_43;
    wire token_42_43;
    wire dep_chan_vld_44_43;
    wire [61:0] dep_chan_data_44_43;
    wire token_44_43;
    wire dep_chan_vld_46_43;
    wire [61:0] dep_chan_data_46_43;
    wire token_46_43;
    wire [4:0] proc_44_data_FIFO_blk;
    wire [4:0] proc_44_data_PIPO_blk;
    wire [4:0] proc_44_start_FIFO_blk;
    wire [4:0] proc_44_TLF_FIFO_blk;
    wire [4:0] proc_44_input_sync_blk;
    wire [4:0] proc_44_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_44;
    reg [4:0] proc_dep_vld_vec_44_reg;
    wire [4:0] in_chan_dep_vld_vec_44;
    wire [309:0] in_chan_dep_data_vec_44;
    wire [4:0] token_in_vec_44;
    wire [4:0] out_chan_dep_vld_vec_44;
    wire [61:0] out_chan_dep_data_44;
    wire [4:0] token_out_vec_44;
    wire dl_detect_out_44;
    wire dep_chan_vld_7_44;
    wire [61:0] dep_chan_data_7_44;
    wire token_7_44;
    wire dep_chan_vld_10_44;
    wire [61:0] dep_chan_data_10_44;
    wire token_10_44;
    wire dep_chan_vld_13_44;
    wire [61:0] dep_chan_data_13_44;
    wire token_13_44;
    wire dep_chan_vld_43_44;
    wire [61:0] dep_chan_data_43_44;
    wire token_43_44;
    wire dep_chan_vld_48_44;
    wire [61:0] dep_chan_data_48_44;
    wire token_48_44;
    wire [0:0] proc_45_data_FIFO_blk;
    wire [0:0] proc_45_data_PIPO_blk;
    wire [0:0] proc_45_start_FIFO_blk;
    wire [0:0] proc_45_TLF_FIFO_blk;
    wire [0:0] proc_45_input_sync_blk;
    wire [0:0] proc_45_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_45;
    reg [0:0] proc_dep_vld_vec_45_reg;
    wire [0:0] in_chan_dep_vld_vec_45;
    wire [61:0] in_chan_dep_data_vec_45;
    wire [0:0] token_in_vec_45;
    wire [0:0] out_chan_dep_vld_vec_45;
    wire [61:0] out_chan_dep_data_45;
    wire [0:0] token_out_vec_45;
    wire dl_detect_out_45;
    wire dep_chan_vld_46_45;
    wire [61:0] dep_chan_data_46_45;
    wire token_46_45;
    wire [2:0] proc_46_data_FIFO_blk;
    wire [2:0] proc_46_data_PIPO_blk;
    wire [2:0] proc_46_start_FIFO_blk;
    wire [2:0] proc_46_TLF_FIFO_blk;
    wire [2:0] proc_46_input_sync_blk;
    wire [2:0] proc_46_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_46;
    reg [2:0] proc_dep_vld_vec_46_reg;
    wire [2:0] in_chan_dep_vld_vec_46;
    wire [185:0] in_chan_dep_data_vec_46;
    wire [2:0] token_in_vec_46;
    wire [2:0] out_chan_dep_vld_vec_46;
    wire [61:0] out_chan_dep_data_46;
    wire [2:0] token_out_vec_46;
    wire dl_detect_out_46;
    wire dep_chan_vld_43_46;
    wire [61:0] dep_chan_data_43_46;
    wire token_43_46;
    wire dep_chan_vld_45_46;
    wire [61:0] dep_chan_data_45_46;
    wire token_45_46;
    wire dep_chan_vld_48_46;
    wire [61:0] dep_chan_data_48_46;
    wire token_48_46;
    wire [1:0] proc_47_data_FIFO_blk;
    wire [1:0] proc_47_data_PIPO_blk;
    wire [1:0] proc_47_start_FIFO_blk;
    wire [1:0] proc_47_TLF_FIFO_blk;
    wire [1:0] proc_47_input_sync_blk;
    wire [1:0] proc_47_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_47;
    reg [1:0] proc_dep_vld_vec_47_reg;
    wire [1:0] in_chan_dep_vld_vec_47;
    wire [123:0] in_chan_dep_data_vec_47;
    wire [1:0] token_in_vec_47;
    wire [1:0] out_chan_dep_vld_vec_47;
    wire [61:0] out_chan_dep_data_47;
    wire [1:0] token_out_vec_47;
    wire dl_detect_out_47;
    wire dep_chan_vld_2_47;
    wire [61:0] dep_chan_data_2_47;
    wire token_2_47;
    wire dep_chan_vld_48_47;
    wire [61:0] dep_chan_data_48_47;
    wire token_48_47;
    wire [4:0] proc_48_data_FIFO_blk;
    wire [4:0] proc_48_data_PIPO_blk;
    wire [4:0] proc_48_start_FIFO_blk;
    wire [4:0] proc_48_TLF_FIFO_blk;
    wire [4:0] proc_48_input_sync_blk;
    wire [4:0] proc_48_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_48;
    reg [4:0] proc_dep_vld_vec_48_reg;
    wire [4:0] in_chan_dep_vld_vec_48;
    wire [309:0] in_chan_dep_data_vec_48;
    wire [4:0] token_in_vec_48;
    wire [4:0] out_chan_dep_vld_vec_48;
    wire [61:0] out_chan_dep_data_48;
    wire [4:0] token_out_vec_48;
    wire dl_detect_out_48;
    wire dep_chan_vld_6_48;
    wire [61:0] dep_chan_data_6_48;
    wire token_6_48;
    wire dep_chan_vld_44_48;
    wire [61:0] dep_chan_data_44_48;
    wire token_44_48;
    wire dep_chan_vld_46_48;
    wire [61:0] dep_chan_data_46_48;
    wire token_46_48;
    wire dep_chan_vld_47_48;
    wire [61:0] dep_chan_data_47_48;
    wire token_47_48;
    wire dep_chan_vld_49_48;
    wire [61:0] dep_chan_data_49_48;
    wire token_49_48;
    wire [2:0] proc_49_data_FIFO_blk;
    wire [2:0] proc_49_data_PIPO_blk;
    wire [2:0] proc_49_start_FIFO_blk;
    wire [2:0] proc_49_TLF_FIFO_blk;
    wire [2:0] proc_49_input_sync_blk;
    wire [2:0] proc_49_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_49;
    reg [2:0] proc_dep_vld_vec_49_reg;
    wire [2:0] in_chan_dep_vld_vec_49;
    wire [185:0] in_chan_dep_data_vec_49;
    wire [2:0] token_in_vec_49;
    wire [2:0] out_chan_dep_vld_vec_49;
    wire [61:0] out_chan_dep_data_49;
    wire [2:0] token_out_vec_49;
    wire dl_detect_out_49;
    wire dep_chan_vld_48_49;
    wire [61:0] dep_chan_data_48_49;
    wire token_48_49;
    wire dep_chan_vld_50_49;
    wire [61:0] dep_chan_data_50_49;
    wire token_50_49;
    wire dep_chan_vld_59_49;
    wire [61:0] dep_chan_data_59_49;
    wire token_59_49;
    wire [3:0] proc_50_data_FIFO_blk;
    wire [3:0] proc_50_data_PIPO_blk;
    wire [3:0] proc_50_start_FIFO_blk;
    wire [3:0] proc_50_TLF_FIFO_blk;
    wire [3:0] proc_50_input_sync_blk;
    wire [3:0] proc_50_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_50;
    reg [3:0] proc_dep_vld_vec_50_reg;
    wire [3:0] in_chan_dep_vld_vec_50;
    wire [247:0] in_chan_dep_data_vec_50;
    wire [3:0] token_in_vec_50;
    wire [3:0] out_chan_dep_vld_vec_50;
    wire [61:0] out_chan_dep_data_50;
    wire [3:0] token_out_vec_50;
    wire dl_detect_out_50;
    wire dep_chan_vld_49_50;
    wire [61:0] dep_chan_data_49_50;
    wire token_49_50;
    wire dep_chan_vld_51_50;
    wire [61:0] dep_chan_data_51_50;
    wire token_51_50;
    wire dep_chan_vld_52_50;
    wire [61:0] dep_chan_data_52_50;
    wire token_52_50;
    wire dep_chan_vld_54_50;
    wire [61:0] dep_chan_data_54_50;
    wire token_54_50;
    wire [3:0] proc_51_data_FIFO_blk;
    wire [3:0] proc_51_data_PIPO_blk;
    wire [3:0] proc_51_start_FIFO_blk;
    wire [3:0] proc_51_TLF_FIFO_blk;
    wire [3:0] proc_51_input_sync_blk;
    wire [3:0] proc_51_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_51;
    reg [3:0] proc_dep_vld_vec_51_reg;
    wire [3:0] in_chan_dep_vld_vec_51;
    wire [247:0] in_chan_dep_data_vec_51;
    wire [3:0] token_in_vec_51;
    wire [3:0] out_chan_dep_vld_vec_51;
    wire [61:0] out_chan_dep_data_51;
    wire [3:0] token_out_vec_51;
    wire dl_detect_out_51;
    wire dep_chan_vld_2_51;
    wire [61:0] dep_chan_data_2_51;
    wire token_2_51;
    wire dep_chan_vld_6_51;
    wire [61:0] dep_chan_data_6_51;
    wire token_6_51;
    wire dep_chan_vld_50_51;
    wire [61:0] dep_chan_data_50_51;
    wire token_50_51;
    wire dep_chan_vld_60_51;
    wire [61:0] dep_chan_data_60_51;
    wire token_60_51;
    wire [2:0] proc_52_data_FIFO_blk;
    wire [2:0] proc_52_data_PIPO_blk;
    wire [2:0] proc_52_start_FIFO_blk;
    wire [2:0] proc_52_TLF_FIFO_blk;
    wire [2:0] proc_52_input_sync_blk;
    wire [2:0] proc_52_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_52;
    reg [2:0] proc_dep_vld_vec_52_reg;
    wire [2:0] in_chan_dep_vld_vec_52;
    wire [185:0] in_chan_dep_data_vec_52;
    wire [2:0] token_in_vec_52;
    wire [2:0] out_chan_dep_vld_vec_52;
    wire [61:0] out_chan_dep_data_52;
    wire [2:0] token_out_vec_52;
    wire dl_detect_out_52;
    wire dep_chan_vld_50_52;
    wire [61:0] dep_chan_data_50_52;
    wire token_50_52;
    wire dep_chan_vld_55_52;
    wire [61:0] dep_chan_data_55_52;
    wire token_55_52;
    wire dep_chan_vld_56_52;
    wire [61:0] dep_chan_data_56_52;
    wire token_56_52;
    wire [0:0] proc_53_data_FIFO_blk;
    wire [0:0] proc_53_data_PIPO_blk;
    wire [0:0] proc_53_start_FIFO_blk;
    wire [0:0] proc_53_TLF_FIFO_blk;
    wire [0:0] proc_53_input_sync_blk;
    wire [0:0] proc_53_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_53;
    reg [0:0] proc_dep_vld_vec_53_reg;
    wire [0:0] in_chan_dep_vld_vec_53;
    wire [61:0] in_chan_dep_data_vec_53;
    wire [0:0] token_in_vec_53;
    wire [0:0] out_chan_dep_vld_vec_53;
    wire [61:0] out_chan_dep_data_53;
    wire [0:0] token_out_vec_53;
    wire dl_detect_out_53;
    wire dep_chan_vld_54_53;
    wire [61:0] dep_chan_data_54_53;
    wire token_54_53;
    wire [2:0] proc_54_data_FIFO_blk;
    wire [2:0] proc_54_data_PIPO_blk;
    wire [2:0] proc_54_start_FIFO_blk;
    wire [2:0] proc_54_TLF_FIFO_blk;
    wire [2:0] proc_54_input_sync_blk;
    wire [2:0] proc_54_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_54;
    reg [2:0] proc_dep_vld_vec_54_reg;
    wire [2:0] in_chan_dep_vld_vec_54;
    wire [185:0] in_chan_dep_data_vec_54;
    wire [2:0] token_in_vec_54;
    wire [2:0] out_chan_dep_vld_vec_54;
    wire [61:0] out_chan_dep_data_54;
    wire [2:0] token_out_vec_54;
    wire dl_detect_out_54;
    wire dep_chan_vld_50_54;
    wire [61:0] dep_chan_data_50_54;
    wire token_50_54;
    wire dep_chan_vld_53_54;
    wire [61:0] dep_chan_data_53_54;
    wire token_53_54;
    wire dep_chan_vld_55_54;
    wire [61:0] dep_chan_data_55_54;
    wire token_55_54;
    wire [3:0] proc_55_data_FIFO_blk;
    wire [3:0] proc_55_data_PIPO_blk;
    wire [3:0] proc_55_start_FIFO_blk;
    wire [3:0] proc_55_TLF_FIFO_blk;
    wire [3:0] proc_55_input_sync_blk;
    wire [3:0] proc_55_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_55;
    reg [3:0] proc_dep_vld_vec_55_reg;
    wire [3:0] in_chan_dep_vld_vec_55;
    wire [247:0] in_chan_dep_data_vec_55;
    wire [3:0] token_in_vec_55;
    wire [3:0] out_chan_dep_vld_vec_55;
    wire [61:0] out_chan_dep_data_55;
    wire [3:0] token_out_vec_55;
    wire dl_detect_out_55;
    wire dep_chan_vld_52_55;
    wire [61:0] dep_chan_data_52_55;
    wire token_52_55;
    wire dep_chan_vld_54_55;
    wire [61:0] dep_chan_data_54_55;
    wire token_54_55;
    wire dep_chan_vld_56_55;
    wire [61:0] dep_chan_data_56_55;
    wire token_56_55;
    wire dep_chan_vld_58_55;
    wire [61:0] dep_chan_data_58_55;
    wire token_58_55;
    wire [2:0] proc_56_data_FIFO_blk;
    wire [2:0] proc_56_data_PIPO_blk;
    wire [2:0] proc_56_start_FIFO_blk;
    wire [2:0] proc_56_TLF_FIFO_blk;
    wire [2:0] proc_56_input_sync_blk;
    wire [2:0] proc_56_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_56;
    reg [2:0] proc_dep_vld_vec_56_reg;
    wire [2:0] in_chan_dep_vld_vec_56;
    wire [185:0] in_chan_dep_data_vec_56;
    wire [2:0] token_in_vec_56;
    wire [2:0] out_chan_dep_vld_vec_56;
    wire [61:0] out_chan_dep_data_56;
    wire [2:0] token_out_vec_56;
    wire dl_detect_out_56;
    wire dep_chan_vld_52_56;
    wire [61:0] dep_chan_data_52_56;
    wire token_52_56;
    wire dep_chan_vld_55_56;
    wire [61:0] dep_chan_data_55_56;
    wire token_55_56;
    wire dep_chan_vld_60_56;
    wire [61:0] dep_chan_data_60_56;
    wire token_60_56;
    wire [0:0] proc_57_data_FIFO_blk;
    wire [0:0] proc_57_data_PIPO_blk;
    wire [0:0] proc_57_start_FIFO_blk;
    wire [0:0] proc_57_TLF_FIFO_blk;
    wire [0:0] proc_57_input_sync_blk;
    wire [0:0] proc_57_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_57;
    reg [0:0] proc_dep_vld_vec_57_reg;
    wire [0:0] in_chan_dep_vld_vec_57;
    wire [61:0] in_chan_dep_data_vec_57;
    wire [0:0] token_in_vec_57;
    wire [0:0] out_chan_dep_vld_vec_57;
    wire [61:0] out_chan_dep_data_57;
    wire [0:0] token_out_vec_57;
    wire dl_detect_out_57;
    wire dep_chan_vld_58_57;
    wire [61:0] dep_chan_data_58_57;
    wire token_58_57;
    wire [2:0] proc_58_data_FIFO_blk;
    wire [2:0] proc_58_data_PIPO_blk;
    wire [2:0] proc_58_start_FIFO_blk;
    wire [2:0] proc_58_TLF_FIFO_blk;
    wire [2:0] proc_58_input_sync_blk;
    wire [2:0] proc_58_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_58;
    reg [2:0] proc_dep_vld_vec_58_reg;
    wire [2:0] in_chan_dep_vld_vec_58;
    wire [185:0] in_chan_dep_data_vec_58;
    wire [2:0] token_in_vec_58;
    wire [2:0] out_chan_dep_vld_vec_58;
    wire [61:0] out_chan_dep_data_58;
    wire [2:0] token_out_vec_58;
    wire dl_detect_out_58;
    wire dep_chan_vld_55_58;
    wire [61:0] dep_chan_data_55_58;
    wire token_55_58;
    wire dep_chan_vld_57_58;
    wire [61:0] dep_chan_data_57_58;
    wire token_57_58;
    wire dep_chan_vld_60_58;
    wire [61:0] dep_chan_data_60_58;
    wire token_60_58;
    wire [1:0] proc_59_data_FIFO_blk;
    wire [1:0] proc_59_data_PIPO_blk;
    wire [1:0] proc_59_start_FIFO_blk;
    wire [1:0] proc_59_TLF_FIFO_blk;
    wire [1:0] proc_59_input_sync_blk;
    wire [1:0] proc_59_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_59;
    reg [1:0] proc_dep_vld_vec_59_reg;
    wire [1:0] in_chan_dep_vld_vec_59;
    wire [123:0] in_chan_dep_data_vec_59;
    wire [1:0] token_in_vec_59;
    wire [1:0] out_chan_dep_vld_vec_59;
    wire [61:0] out_chan_dep_data_59;
    wire [1:0] token_out_vec_59;
    wire dl_detect_out_59;
    wire dep_chan_vld_49_59;
    wire [61:0] dep_chan_data_49_59;
    wire token_49_59;
    wire dep_chan_vld_60_59;
    wire [61:0] dep_chan_data_60_59;
    wire token_60_59;
    wire [4:0] proc_60_data_FIFO_blk;
    wire [4:0] proc_60_data_PIPO_blk;
    wire [4:0] proc_60_start_FIFO_blk;
    wire [4:0] proc_60_TLF_FIFO_blk;
    wire [4:0] proc_60_input_sync_blk;
    wire [4:0] proc_60_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_60;
    reg [4:0] proc_dep_vld_vec_60_reg;
    wire [4:0] in_chan_dep_vld_vec_60;
    wire [309:0] in_chan_dep_data_vec_60;
    wire [4:0] token_in_vec_60;
    wire [4:0] out_chan_dep_vld_vec_60;
    wire [61:0] out_chan_dep_data_60;
    wire [4:0] token_out_vec_60;
    wire dl_detect_out_60;
    wire dep_chan_vld_51_60;
    wire [61:0] dep_chan_data_51_60;
    wire token_51_60;
    wire dep_chan_vld_56_60;
    wire [61:0] dep_chan_data_56_60;
    wire token_56_60;
    wire dep_chan_vld_58_60;
    wire [61:0] dep_chan_data_58_60;
    wire token_58_60;
    wire dep_chan_vld_59_60;
    wire [61:0] dep_chan_data_59_60;
    wire token_59_60;
    wire dep_chan_vld_61_60;
    wire [61:0] dep_chan_data_61_60;
    wire token_61_60;
    wire [1:0] proc_61_data_FIFO_blk;
    wire [1:0] proc_61_data_PIPO_blk;
    wire [1:0] proc_61_start_FIFO_blk;
    wire [1:0] proc_61_TLF_FIFO_blk;
    wire [1:0] proc_61_input_sync_blk;
    wire [1:0] proc_61_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_61;
    reg [1:0] proc_dep_vld_vec_61_reg;
    wire [1:0] in_chan_dep_vld_vec_61;
    wire [123:0] in_chan_dep_data_vec_61;
    wire [1:0] token_in_vec_61;
    wire [1:0] out_chan_dep_vld_vec_61;
    wire [61:0] out_chan_dep_data_61;
    wire [1:0] token_out_vec_61;
    wire dl_detect_out_61;
    wire dep_chan_vld_1_61;
    wire [61:0] dep_chan_data_1_61;
    wire token_1_61;
    wire dep_chan_vld_60_61;
    wire [61:0] dep_chan_data_60_61;
    wire token_60_61;
    wire [61:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [61:0] origin;

reg [15:0] trans_in_cnt_0;// for process ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.ap_done == 1'b1 && ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process ViT_Block_Core_U0.BatchNorm_tiled_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.BatchNorm_tiled_0_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process ViT_Block_Core_U0.BatchNorm_tiled_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.BatchNorm_tiled_0_U0.ap_done == 1'b1 && ViT_Block_Core_U0.BatchNorm_tiled_0_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

reg [15:0] trans_in_cnt_2;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_2 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.start_write == 1'b1) begin
        trans_in_cnt_2 <= trans_in_cnt_2 + 16'h1;
    end
    else begin
        trans_in_cnt_2 <= trans_in_cnt_2;
    end
end

reg [15:0] trans_out_cnt_2;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_2 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.ap_continue == 1'b1) begin
        trans_out_cnt_2 <= trans_out_cnt_2 + 16'h1;
    end
    else begin
        trans_out_cnt_2 <= trans_out_cnt_2;
    end
end

reg [15:0] trans_in_cnt_3;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_3 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.start_write == 1'b1) begin
        trans_in_cnt_3 <= trans_in_cnt_3 + 16'h1;
    end
    else begin
        trans_in_cnt_3 <= trans_in_cnt_3;
    end
end

reg [15:0] trans_out_cnt_3;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_3 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.ap_continue == 1'b1) begin
        trans_out_cnt_3 <= trans_out_cnt_3 + 16'h1;
    end
    else begin
        trans_out_cnt_3 <= trans_out_cnt_3;
    end
end

reg [15:0] trans_in_cnt_4;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_4 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.start_write == 1'b1) begin
        trans_in_cnt_4 <= trans_in_cnt_4 + 16'h1;
    end
    else begin
        trans_in_cnt_4 <= trans_in_cnt_4;
    end
end

reg [15:0] trans_out_cnt_4;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_4 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.ap_continue == 1'b1) begin
        trans_out_cnt_4 <= trans_out_cnt_4 + 16'h1;
    end
    else begin
        trans_out_cnt_4 <= trans_out_cnt_4;
    end
end

reg [15:0] trans_in_cnt_5;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_5 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.start_write == 1'b1) begin
        trans_in_cnt_5 <= trans_in_cnt_5 + 16'h1;
    end
    else begin
        trans_in_cnt_5 <= trans_in_cnt_5;
    end
end

reg [15:0] trans_out_cnt_5;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_5 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_continue == 1'b1) begin
        trans_out_cnt_5 <= trans_out_cnt_5 + 16'h1;
    end
    else begin
        trans_out_cnt_5 <= trans_out_cnt_5;
    end
end

reg [15:0] trans_in_cnt_6;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_6 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.start_write == 1'b1) begin
        trans_in_cnt_6 <= trans_in_cnt_6 + 16'h1;
    end
    else begin
        trans_in_cnt_6 <= trans_in_cnt_6;
    end
end

reg [15:0] trans_out_cnt_6;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_6 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_continue == 1'b1) begin
        trans_out_cnt_6 <= trans_out_cnt_6 + 16'h1;
    end
    else begin
        trans_out_cnt_6 <= trans_out_cnt_6;
    end
end

reg [15:0] trans_in_cnt_7;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_7 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.start_write == 1'b1) begin
        trans_in_cnt_7 <= trans_in_cnt_7 + 16'h1;
    end
    else begin
        trans_in_cnt_7 <= trans_in_cnt_7;
    end
end

reg [15:0] trans_out_cnt_7;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_7 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_continue == 1'b1) begin
        trans_out_cnt_7 <= trans_out_cnt_7 + 16'h1;
    end
    else begin
        trans_out_cnt_7 <= trans_out_cnt_7;
    end
end

reg [15:0] trans_in_cnt_8;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_8 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.start_write == 1'b1) begin
        trans_in_cnt_8 <= trans_in_cnt_8 + 16'h1;
    end
    else begin
        trans_in_cnt_8 <= trans_in_cnt_8;
    end
end

reg [15:0] trans_out_cnt_8;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_8 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_continue == 1'b1) begin
        trans_out_cnt_8 <= trans_out_cnt_8 + 16'h1;
    end
    else begin
        trans_out_cnt_8 <= trans_out_cnt_8;
    end
end

reg [15:0] trans_in_cnt_9;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_9 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.start_write == 1'b1) begin
        trans_in_cnt_9 <= trans_in_cnt_9 + 16'h1;
    end
    else begin
        trans_in_cnt_9 <= trans_in_cnt_9;
    end
end

reg [15:0] trans_out_cnt_9;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_9 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.ap_continue == 1'b1) begin
        trans_out_cnt_9 <= trans_out_cnt_9 + 16'h1;
    end
    else begin
        trans_out_cnt_9 <= trans_out_cnt_9;
    end
end

reg [15:0] trans_in_cnt_10;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_10 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.start_write == 1'b1) begin
        trans_in_cnt_10 <= trans_in_cnt_10 + 16'h1;
    end
    else begin
        trans_in_cnt_10 <= trans_in_cnt_10;
    end
end

reg [15:0] trans_out_cnt_10;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_10 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.ap_continue == 1'b1) begin
        trans_out_cnt_10 <= trans_out_cnt_10 + 16'h1;
    end
    else begin
        trans_out_cnt_10 <= trans_out_cnt_10;
    end
end

reg [15:0] trans_in_cnt_11;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_11 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.start_write == 1'b1) begin
        trans_in_cnt_11 <= trans_in_cnt_11 + 16'h1;
    end
    else begin
        trans_in_cnt_11 <= trans_in_cnt_11;
    end
end

reg [15:0] trans_out_cnt_11;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_11 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_continue == 1'b1) begin
        trans_out_cnt_11 <= trans_out_cnt_11 + 16'h1;
    end
    else begin
        trans_out_cnt_11 <= trans_out_cnt_11;
    end
end

reg [15:0] trans_in_cnt_12;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_12 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.start_write == 1'b1) begin
        trans_in_cnt_12 <= trans_in_cnt_12 + 16'h1;
    end
    else begin
        trans_in_cnt_12 <= trans_in_cnt_12;
    end
end

reg [15:0] trans_out_cnt_12;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_12 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.ap_continue == 1'b1) begin
        trans_out_cnt_12 <= trans_out_cnt_12 + 16'h1;
    end
    else begin
        trans_out_cnt_12 <= trans_out_cnt_12;
    end
end

reg [15:0] trans_in_cnt_13;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_13 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.start_write == 1'b1) begin
        trans_in_cnt_13 <= trans_in_cnt_13 + 16'h1;
    end
    else begin
        trans_in_cnt_13 <= trans_in_cnt_13;
    end
end

reg [15:0] trans_out_cnt_13;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_13 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.ap_continue == 1'b1) begin
        trans_out_cnt_13 <= trans_out_cnt_13 + 16'h1;
    end
    else begin
        trans_out_cnt_13 <= trans_out_cnt_13;
    end
end

reg [15:0] trans_in_cnt_14;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_14 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.start_write == 1'b1) begin
        trans_in_cnt_14 <= trans_in_cnt_14 + 16'h1;
    end
    else begin
        trans_in_cnt_14 <= trans_in_cnt_14;
    end
end

reg [15:0] trans_out_cnt_14;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_14 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.ap_continue == 1'b1) begin
        trans_out_cnt_14 <= trans_out_cnt_14 + 16'h1;
    end
    else begin
        trans_out_cnt_14 <= trans_out_cnt_14;
    end
end

reg [15:0] trans_in_cnt_15;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_15 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.start_write == 1'b1) begin
        trans_in_cnt_15 <= trans_in_cnt_15 + 16'h1;
    end
    else begin
        trans_in_cnt_15 <= trans_in_cnt_15;
    end
end

reg [15:0] trans_out_cnt_15;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_15 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.ap_continue == 1'b1) begin
        trans_out_cnt_15 <= trans_out_cnt_15 + 16'h1;
    end
    else begin
        trans_out_cnt_15 <= trans_out_cnt_15;
    end
end

reg [15:0] trans_in_cnt_16;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_16 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.start_write == 1'b1) begin
        trans_in_cnt_16 <= trans_in_cnt_16 + 16'h1;
    end
    else begin
        trans_in_cnt_16 <= trans_in_cnt_16;
    end
end

reg [15:0] trans_out_cnt_16;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_16 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.ap_continue == 1'b1) begin
        trans_out_cnt_16 <= trans_out_cnt_16 + 16'h1;
    end
    else begin
        trans_out_cnt_16 <= trans_out_cnt_16;
    end
end

reg [15:0] trans_in_cnt_17;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_17 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.start_write == 1'b1) begin
        trans_in_cnt_17 <= trans_in_cnt_17 + 16'h1;
    end
    else begin
        trans_in_cnt_17 <= trans_in_cnt_17;
    end
end

reg [15:0] trans_out_cnt_17;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_17 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.ap_continue == 1'b1) begin
        trans_out_cnt_17 <= trans_out_cnt_17 + 16'h1;
    end
    else begin
        trans_out_cnt_17 <= trans_out_cnt_17;
    end
end

reg [15:0] trans_in_cnt_18;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_18 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.start_write == 1'b1) begin
        trans_in_cnt_18 <= trans_in_cnt_18 + 16'h1;
    end
    else begin
        trans_in_cnt_18 <= trans_in_cnt_18;
    end
end

reg [15:0] trans_out_cnt_18;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_18 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.ap_continue == 1'b1) begin
        trans_out_cnt_18 <= trans_out_cnt_18 + 16'h1;
    end
    else begin
        trans_out_cnt_18 <= trans_out_cnt_18;
    end
end

reg [15:0] trans_in_cnt_19;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_19 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.start_write == 1'b1) begin
        trans_in_cnt_19 <= trans_in_cnt_19 + 16'h1;
    end
    else begin
        trans_in_cnt_19 <= trans_in_cnt_19;
    end
end

reg [15:0] trans_out_cnt_19;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_19 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.ap_continue == 1'b1) begin
        trans_out_cnt_19 <= trans_out_cnt_19 + 16'h1;
    end
    else begin
        trans_out_cnt_19 <= trans_out_cnt_19;
    end
end

reg [15:0] trans_in_cnt_20;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_20 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_write == 1'b1) begin
        trans_in_cnt_20 <= trans_in_cnt_20 + 16'h1;
    end
    else begin
        trans_in_cnt_20 <= trans_in_cnt_20;
    end
end

reg [15:0] trans_out_cnt_20;// for process ViT_Block_Core_U0.MultiHeadAttention_tiled_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_20 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_continue == 1'b1) begin
        trans_out_cnt_20 <= trans_out_cnt_20 + 16'h1;
    end
    else begin
        trans_out_cnt_20 <= trans_out_cnt_20;
    end
end

reg [15:0] trans_in_cnt_21;// for process ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_21 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.start_write == 1'b1) begin
        trans_in_cnt_21 <= trans_in_cnt_21 + 16'h1;
    end
    else begin
        trans_in_cnt_21 <= trans_in_cnt_21;
    end
end

reg [15:0] trans_out_cnt_21;// for process ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_21 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.ap_done == 1'b1 && ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.ap_continue == 1'b1) begin
        trans_out_cnt_21 <= trans_out_cnt_21 + 16'h1;
    end
    else begin
        trans_out_cnt_21 <= trans_out_cnt_21;
    end
end

reg [15:0] trans_in_cnt_22;// for process ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_22 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.start_write == 1'b1) begin
        trans_in_cnt_22 <= trans_in_cnt_22 + 16'h1;
    end
    else begin
        trans_in_cnt_22 <= trans_in_cnt_22;
    end
end

reg [15:0] trans_out_cnt_22;// for process ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_22 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.ap_done == 1'b1 && ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.ap_continue == 1'b1) begin
        trans_out_cnt_22 <= trans_out_cnt_22 + 16'h1;
    end
    else begin
        trans_out_cnt_22 <= trans_out_cnt_22;
    end
end

reg [15:0] trans_in_cnt_23;// for process ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_23 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0.start_write == 1'b1) begin
        trans_in_cnt_23 <= trans_in_cnt_23 + 16'h1;
    end
    else begin
        trans_in_cnt_23 <= trans_in_cnt_23;
    end
end

reg [15:0] trans_out_cnt_23;// for process ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_23 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0.ap_continue == 1'b1) begin
        trans_out_cnt_23 <= trans_out_cnt_23 + 16'h1;
    end
    else begin
        trans_out_cnt_23 <= trans_out_cnt_23;
    end
end

reg [15:0] trans_in_cnt_24;// for process ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_24 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.start_write == 1'b1) begin
        trans_in_cnt_24 <= trans_in_cnt_24 + 16'h1;
    end
    else begin
        trans_in_cnt_24 <= trans_in_cnt_24;
    end
end

reg [15:0] trans_out_cnt_24;// for process ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_24 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.ap_continue == 1'b1) begin
        trans_out_cnt_24 <= trans_out_cnt_24 + 16'h1;
    end
    else begin
        trans_out_cnt_24 <= trans_out_cnt_24;
    end
end

reg [15:0] trans_in_cnt_25;// for process ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_25 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0.start_write == 1'b1) begin
        trans_in_cnt_25 <= trans_in_cnt_25 + 16'h1;
    end
    else begin
        trans_in_cnt_25 <= trans_in_cnt_25;
    end
end

reg [15:0] trans_out_cnt_25;// for process ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_25 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0.ap_continue == 1'b1) begin
        trans_out_cnt_25 <= trans_out_cnt_25 + 16'h1;
    end
    else begin
        trans_out_cnt_25 <= trans_out_cnt_25;
    end
end

reg [15:0] trans_in_cnt_26;// for process ViT_Block_Core_U0.MLP_tiled_oc_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_26 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MLP_tiled_oc_U0.start_write == 1'b1) begin
        trans_in_cnt_26 <= trans_in_cnt_26 + 16'h1;
    end
    else begin
        trans_in_cnt_26 <= trans_in_cnt_26;
    end
end

reg [15:0] trans_out_cnt_26;// for process ViT_Block_Core_U0.MLP_tiled_oc_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_26 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_done == 1'b1 && ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_continue == 1'b1) begin
        trans_out_cnt_26 <= trans_out_cnt_26 + 16'h1;
    end
    else begin
        trans_out_cnt_26 <= trans_out_cnt_26;
    end
end

reg [15:0] trans_in_cnt_27;// for process ViT_Block_Core_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_27 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.start_write == 1'b1) begin
        trans_in_cnt_27 <= trans_in_cnt_27 + 16'h1;
    end
    else begin
        trans_in_cnt_27 <= trans_in_cnt_27;
    end
end

reg [15:0] trans_out_cnt_27;// for process ViT_Block_Core_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_27 <= 16'h0;
    end
    else if (ViT_Block_Core_U0.ap_done == 1'b1 && ViT_Block_Core_U0.ap_continue == 1'b1) begin
        trans_out_cnt_27 <= trans_out_cnt_27 + 16'h1;
    end
    else begin
        trans_out_cnt_27 <= trans_out_cnt_27;
    end
end

    // Process: axis_to_apuint_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 0, 2, 2) ViT_Block_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~axis_to_apuint_U0.input_stream1_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0 | (ap_sync_axis_to_apuint_U0_ap_ready & axis_to_apuint_U0.ap_idle & ~ap_sync_ViT_Block_Core_U0_ap_ready);
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0 | (~axis_to_apuint_U0.input_stream1_blk_n);
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0;
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[61 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[123 : 62] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[1];

    // Process: ViT_Block_Core_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 1, 2, 2) ViT_Block_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.input_stream1_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0 | (ap_sync_ViT_Block_Core_U0_ap_ready & ViT_Block_Core_U0.ap_idle & ~ap_sync_axis_to_apuint_U0_ap_ready);
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0.output_stream2_blk_n);
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0 | (~start_for_apuint_to_axis_U0_U.if_full_n & ViT_Block_Core_U0.ap_start & ~ViT_Block_Core_U0.real_start & (trans_in_cnt_27 == trans_out_cnt_27) & ~start_for_apuint_to_axis_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[61 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_61_1;
    assign in_chan_dep_data_vec_1[123 : 62] = dep_chan_data_61_1;
    assign token_in_vec_1[1] = token_61_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_61 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_61 = out_chan_dep_data_1;
    assign token_1_61 = token_out_vec_1[1];

    // Process: ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 2, 6, 6) ViT_Block_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.input_stream1_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.res1_blk_n);
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.start_for_requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0_U.if_full_n & ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.ap_start & ~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~ViT_Block_Core_U0.start_for_requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0_U.if_read);
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.x13_blk_n);
    assign proc_2_data_PIPO_blk[2] = 1'b0;
    assign proc_2_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.start_for_BatchNorm_tiled_0_U0_U.if_full_n & ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.ap_start & ~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~ViT_Block_Core_U0.start_for_BatchNorm_tiled_0_U0_U.if_read);
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0;
    assign proc_2_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    assign proc_2_data_FIFO_blk[3] = 1'b0 | (~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.x13_blk_n);
    assign proc_2_data_PIPO_blk[3] = 1'b0;
    assign proc_2_start_FIFO_blk[3] = 1'b0;
    assign proc_2_TLF_FIFO_blk[3] = 1'b0;
    assign proc_2_input_sync_blk[3] = 1'b0;
    assign proc_2_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_2[3] = dl_detect_out ? proc_dep_vld_vec_2_reg[3] : (proc_2_data_FIFO_blk[3] | proc_2_data_PIPO_blk[3] | proc_2_start_FIFO_blk[3] | proc_2_TLF_FIFO_blk[3] | proc_2_input_sync_blk[3] | proc_2_output_sync_blk[3]);
    assign proc_2_data_FIFO_blk[4] = 1'b0;
    assign proc_2_data_PIPO_blk[4] = 1'b0;
    assign proc_2_start_FIFO_blk[4] = 1'b0;
    assign proc_2_TLF_FIFO_blk[4] = 1'b0;
    assign proc_2_input_sync_blk[4] = 1'b0 | (ViT_Block_Core_U0.ap_sync_duplicate_stream_ap_int_8_17_192_1_U0_ap_ready & ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.ap_idle & ~ViT_Block_Core_U0.ap_sync_MultiHeadAttention_tiled_U0_ap_ready);
    assign proc_2_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_2[4] = dl_detect_out ? proc_dep_vld_vec_2_reg[4] : (proc_2_data_FIFO_blk[4] | proc_2_data_PIPO_blk[4] | proc_2_start_FIFO_blk[4] | proc_2_TLF_FIFO_blk[4] | proc_2_input_sync_blk[4] | proc_2_output_sync_blk[4]);
    assign proc_2_data_FIFO_blk[5] = 1'b0;
    assign proc_2_data_PIPO_blk[5] = 1'b0;
    assign proc_2_start_FIFO_blk[5] = 1'b0;
    assign proc_2_TLF_FIFO_blk[5] = 1'b0;
    assign proc_2_input_sync_blk[5] = 1'b0 | (ViT_Block_Core_U0.ap_sync_duplicate_stream_ap_int_8_17_192_1_U0_ap_ready & ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_U0.ap_idle & ~ViT_Block_Core_U0.ap_sync_MLP_tiled_oc_U0_ap_ready);
    assign proc_2_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_2[5] = dl_detect_out ? proc_dep_vld_vec_2_reg[5] : (proc_2_data_FIFO_blk[5] | proc_2_data_PIPO_blk[5] | proc_2_start_FIFO_blk[5] | proc_2_TLF_FIFO_blk[5] | proc_2_input_sync_blk[5] | proc_2_output_sync_blk[5]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[61 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[123 : 62] = dep_chan_data_3_2;
    assign token_in_vec_2[1] = token_3_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_4_2;
    assign in_chan_dep_data_vec_2[185 : 124] = dep_chan_data_4_2;
    assign token_in_vec_2[2] = token_4_2;
    assign in_chan_dep_vld_vec_2[3] = dep_chan_vld_6_2;
    assign in_chan_dep_data_vec_2[247 : 186] = dep_chan_data_6_2;
    assign token_in_vec_2[3] = token_6_2;
    assign in_chan_dep_vld_vec_2[4] = dep_chan_vld_47_2;
    assign in_chan_dep_data_vec_2[309 : 248] = dep_chan_data_47_2;
    assign token_in_vec_2[4] = token_47_2;
    assign in_chan_dep_vld_vec_2[5] = dep_chan_vld_51_2;
    assign in_chan_dep_data_vec_2[371 : 310] = dep_chan_data_51_2;
    assign token_in_vec_2[5] = token_51_2;
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[0];
    assign dep_chan_vld_2_47 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_47 = out_chan_dep_data_2;
    assign token_2_47 = token_out_vec_2[1];
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[2];
    assign dep_chan_vld_2_4 = out_chan_dep_vld_vec_2[3];
    assign dep_chan_data_2_4 = out_chan_dep_data_2;
    assign token_2_4 = token_out_vec_2[3];
    assign dep_chan_vld_2_6 = out_chan_dep_vld_vec_2[4];
    assign dep_chan_data_2_6 = out_chan_dep_data_2;
    assign token_2_6 = token_out_vec_2[4];
    assign dep_chan_vld_2_51 = out_chan_dep_vld_vec_2[5];
    assign dep_chan_data_2_51 = out_chan_dep_data_2;
    assign token_2_51 = token_out_vec_2[5];

    // Process: ViT_Block_Core_U0.BatchNorm_tiled_0_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 3, 2, 2) ViT_Block_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.x13_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.start_for_BatchNorm_tiled_0_U0_U.if_empty_n & ViT_Block_Core_U0.BatchNorm_tiled_0_U0.ap_idle & ~ViT_Block_Core_U0.start_for_BatchNorm_tiled_0_U0_U.if_write);
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.norm_out4_blk_n);
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.start_for_triplicate_stream_ap_int_8_17_192_1_U0_U.if_full_n & ViT_Block_Core_U0.BatchNorm_tiled_0_U0.ap_start & ~ViT_Block_Core_U0.BatchNorm_tiled_0_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~ViT_Block_Core_U0.start_for_triplicate_stream_ap_int_8_17_192_1_U0_U.if_read);
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[61 : 0] = dep_chan_data_2_3;
    assign token_in_vec_3[0] = token_2_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_5_3;
    assign in_chan_dep_data_vec_3[123 : 62] = dep_chan_data_5_3;
    assign token_in_vec_3[1] = token_5_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];
    assign dep_chan_vld_3_5 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_5 = out_chan_dep_data_3;
    assign token_3_5 = token_out_vec_3[1];

    // Process: ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 4, 2, 2) ViT_Block_hls_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.x13_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_U0.norm_out4_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_2_4;
    assign in_chan_dep_data_vec_4[61 : 0] = dep_chan_data_2_4;
    assign token_in_vec_4[0] = token_2_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[123 : 62] = dep_chan_data_5_4;
    assign token_in_vec_4[1] = token_5_4;
    assign dep_chan_vld_4_2 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_2 = out_chan_dep_data_4;
    assign token_4_2 = token_out_vec_4[0];
    assign dep_chan_vld_4_5 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_5 = out_chan_dep_data_4;
    assign token_4_5 = token_out_vec_4[1];

    // Process: ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 5, 9, 9) ViT_Block_hls_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.norm_out4_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.start_for_triplicate_stream_ap_int_8_17_192_1_U0_U.if_empty_n & ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.ap_idle & ~ViT_Block_Core_U0.start_for_triplicate_stream_ap_int_8_17_192_1_U0_U.if_write);
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.norm_out4_blk_n);
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0;
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.Q_in5_blk_n) | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.K_in6_blk_n) | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.V_in7_blk_n);
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0;
    assign proc_5_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    assign proc_5_data_FIFO_blk[3] = 1'b0 | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.Q_in5_blk_n);
    assign proc_5_data_PIPO_blk[3] = 1'b0;
    assign proc_5_start_FIFO_blk[3] = 1'b0;
    assign proc_5_TLF_FIFO_blk[3] = 1'b0;
    assign proc_5_input_sync_blk[3] = 1'b0;
    assign proc_5_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_5[3] = dl_detect_out ? proc_dep_vld_vec_5_reg[3] : (proc_5_data_FIFO_blk[3] | proc_5_data_PIPO_blk[3] | proc_5_start_FIFO_blk[3] | proc_5_TLF_FIFO_blk[3] | proc_5_input_sync_blk[3] | proc_5_output_sync_blk[3]);
    assign proc_5_data_FIFO_blk[4] = 1'b0 | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.Q_in5_blk_n);
    assign proc_5_data_PIPO_blk[4] = 1'b0;
    assign proc_5_start_FIFO_blk[4] = 1'b0;
    assign proc_5_TLF_FIFO_blk[4] = 1'b0;
    assign proc_5_input_sync_blk[4] = 1'b0;
    assign proc_5_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_5[4] = dl_detect_out ? proc_dep_vld_vec_5_reg[4] : (proc_5_data_FIFO_blk[4] | proc_5_data_PIPO_blk[4] | proc_5_start_FIFO_blk[4] | proc_5_TLF_FIFO_blk[4] | proc_5_input_sync_blk[4] | proc_5_output_sync_blk[4]);
    assign proc_5_data_FIFO_blk[5] = 1'b0 | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.K_in6_blk_n);
    assign proc_5_data_PIPO_blk[5] = 1'b0;
    assign proc_5_start_FIFO_blk[5] = 1'b0;
    assign proc_5_TLF_FIFO_blk[5] = 1'b0;
    assign proc_5_input_sync_blk[5] = 1'b0;
    assign proc_5_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_5[5] = dl_detect_out ? proc_dep_vld_vec_5_reg[5] : (proc_5_data_FIFO_blk[5] | proc_5_data_PIPO_blk[5] | proc_5_start_FIFO_blk[5] | proc_5_TLF_FIFO_blk[5] | proc_5_input_sync_blk[5] | proc_5_output_sync_blk[5]);
    assign proc_5_data_FIFO_blk[6] = 1'b0 | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.K_in6_blk_n);
    assign proc_5_data_PIPO_blk[6] = 1'b0;
    assign proc_5_start_FIFO_blk[6] = 1'b0;
    assign proc_5_TLF_FIFO_blk[6] = 1'b0;
    assign proc_5_input_sync_blk[6] = 1'b0;
    assign proc_5_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_5[6] = dl_detect_out ? proc_dep_vld_vec_5_reg[6] : (proc_5_data_FIFO_blk[6] | proc_5_data_PIPO_blk[6] | proc_5_start_FIFO_blk[6] | proc_5_TLF_FIFO_blk[6] | proc_5_input_sync_blk[6] | proc_5_output_sync_blk[6]);
    assign proc_5_data_FIFO_blk[7] = 1'b0 | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.V_in7_blk_n);
    assign proc_5_data_PIPO_blk[7] = 1'b0;
    assign proc_5_start_FIFO_blk[7] = 1'b0;
    assign proc_5_TLF_FIFO_blk[7] = 1'b0;
    assign proc_5_input_sync_blk[7] = 1'b0;
    assign proc_5_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_5[7] = dl_detect_out ? proc_dep_vld_vec_5_reg[7] : (proc_5_data_FIFO_blk[7] | proc_5_data_PIPO_blk[7] | proc_5_start_FIFO_blk[7] | proc_5_TLF_FIFO_blk[7] | proc_5_input_sync_blk[7] | proc_5_output_sync_blk[7]);
    assign proc_5_data_FIFO_blk[8] = 1'b0 | (~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_192_1_U0.V_in7_blk_n);
    assign proc_5_data_PIPO_blk[8] = 1'b0;
    assign proc_5_start_FIFO_blk[8] = 1'b0;
    assign proc_5_TLF_FIFO_blk[8] = 1'b0;
    assign proc_5_input_sync_blk[8] = 1'b0;
    assign proc_5_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_5[8] = dl_detect_out ? proc_dep_vld_vec_5_reg[8] : (proc_5_data_FIFO_blk[8] | proc_5_data_PIPO_blk[8] | proc_5_start_FIFO_blk[8] | proc_5_TLF_FIFO_blk[8] | proc_5_input_sync_blk[8] | proc_5_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_3_5;
    assign in_chan_dep_data_vec_5[61 : 0] = dep_chan_data_3_5;
    assign token_in_vec_5[0] = token_3_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_4_5;
    assign in_chan_dep_data_vec_5[123 : 62] = dep_chan_data_4_5;
    assign token_in_vec_5[1] = token_4_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[185 : 124] = dep_chan_data_6_5;
    assign token_in_vec_5[2] = token_6_5;
    assign in_chan_dep_vld_vec_5[3] = dep_chan_vld_7_5;
    assign in_chan_dep_data_vec_5[247 : 186] = dep_chan_data_7_5;
    assign token_in_vec_5[3] = token_7_5;
    assign in_chan_dep_vld_vec_5[4] = dep_chan_vld_9_5;
    assign in_chan_dep_data_vec_5[309 : 248] = dep_chan_data_9_5;
    assign token_in_vec_5[4] = token_9_5;
    assign in_chan_dep_vld_vec_5[5] = dep_chan_vld_10_5;
    assign in_chan_dep_data_vec_5[371 : 310] = dep_chan_data_10_5;
    assign token_in_vec_5[5] = token_10_5;
    assign in_chan_dep_vld_vec_5[6] = dep_chan_vld_12_5;
    assign in_chan_dep_data_vec_5[433 : 372] = dep_chan_data_12_5;
    assign token_in_vec_5[6] = token_12_5;
    assign in_chan_dep_vld_vec_5[7] = dep_chan_vld_13_5;
    assign in_chan_dep_data_vec_5[495 : 434] = dep_chan_data_13_5;
    assign token_in_vec_5[7] = token_13_5;
    assign in_chan_dep_vld_vec_5[8] = dep_chan_vld_15_5;
    assign in_chan_dep_data_vec_5[557 : 496] = dep_chan_data_15_5;
    assign token_in_vec_5[8] = token_15_5;
    assign dep_chan_vld_5_3 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_3 = out_chan_dep_data_5;
    assign token_5_3 = token_out_vec_5[0];
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[1];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[2];
    assign dep_chan_vld_5_7 = out_chan_dep_vld_vec_5[3];
    assign dep_chan_data_5_7 = out_chan_dep_data_5;
    assign token_5_7 = token_out_vec_5[3];
    assign dep_chan_vld_5_9 = out_chan_dep_vld_vec_5[4];
    assign dep_chan_data_5_9 = out_chan_dep_data_5;
    assign token_5_9 = token_out_vec_5[4];
    assign dep_chan_vld_5_10 = out_chan_dep_vld_vec_5[5];
    assign dep_chan_data_5_10 = out_chan_dep_data_5;
    assign token_5_10 = token_out_vec_5[5];
    assign dep_chan_vld_5_12 = out_chan_dep_vld_vec_5[6];
    assign dep_chan_data_5_12 = out_chan_dep_data_5;
    assign token_5_12 = token_out_vec_5[6];
    assign dep_chan_vld_5_13 = out_chan_dep_vld_vec_5[7];
    assign dep_chan_data_5_13 = out_chan_dep_data_5;
    assign token_5_13 = token_out_vec_5[7];
    assign dep_chan_vld_5_15 = out_chan_dep_vld_vec_5[8];
    assign dep_chan_data_5_15 = out_chan_dep_data_5;
    assign token_5_15 = token_out_vec_5[8];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 6, 4, 4) ViT_Block_hls_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.Q_in5_blk_n) | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.K_in6_blk_n) | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.V_in7_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96.out_mha8_blk_n);
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.start_for_ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.real_start & (trans_in_cnt_20 == trans_out_cnt_20) & ~ViT_Block_Core_U0.start_for_ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0_U.if_read);
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0;
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    assign proc_6_data_FIFO_blk[2] = 1'b0;
    assign proc_6_data_PIPO_blk[2] = 1'b0;
    assign proc_6_start_FIFO_blk[2] = 1'b0;
    assign proc_6_TLF_FIFO_blk[2] = 1'b0;
    assign proc_6_input_sync_blk[2] = 1'b0 | (ViT_Block_Core_U0.ap_sync_MultiHeadAttention_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_idle & ~ViT_Block_Core_U0.ap_sync_duplicate_stream_ap_int_8_17_192_1_U0_ap_ready);
    assign proc_6_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_6[2] = dl_detect_out ? proc_dep_vld_vec_6_reg[2] : (proc_6_data_FIFO_blk[2] | proc_6_data_PIPO_blk[2] | proc_6_start_FIFO_blk[2] | proc_6_TLF_FIFO_blk[2] | proc_6_input_sync_blk[2] | proc_6_output_sync_blk[2]);
    assign proc_6_data_FIFO_blk[3] = 1'b0;
    assign proc_6_data_PIPO_blk[3] = 1'b0;
    assign proc_6_start_FIFO_blk[3] = 1'b0;
    assign proc_6_TLF_FIFO_blk[3] = 1'b0;
    assign proc_6_input_sync_blk[3] = 1'b0 | (ViT_Block_Core_U0.ap_sync_MultiHeadAttention_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_idle & ~ViT_Block_Core_U0.ap_sync_MLP_tiled_oc_U0_ap_ready);
    assign proc_6_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_6[3] = dl_detect_out ? proc_dep_vld_vec_6_reg[3] : (proc_6_data_FIFO_blk[3] | proc_6_data_PIPO_blk[3] | proc_6_start_FIFO_blk[3] | proc_6_TLF_FIFO_blk[3] | proc_6_input_sync_blk[3] | proc_6_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_2_6;
    assign in_chan_dep_data_vec_6[61 : 0] = dep_chan_data_2_6;
    assign token_in_vec_6[0] = token_2_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[123 : 62] = dep_chan_data_5_6;
    assign token_in_vec_6[1] = token_5_6;
    assign in_chan_dep_vld_vec_6[2] = dep_chan_vld_48_6;
    assign in_chan_dep_data_vec_6[185 : 124] = dep_chan_data_48_6;
    assign token_in_vec_6[2] = token_48_6;
    assign in_chan_dep_vld_vec_6[3] = dep_chan_vld_51_6;
    assign in_chan_dep_data_vec_6[247 : 186] = dep_chan_data_51_6;
    assign token_in_vec_6[3] = token_51_6;
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[0];
    assign dep_chan_vld_6_48 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_48 = out_chan_dep_data_6;
    assign token_6_48 = token_out_vec_6[1];
    assign dep_chan_vld_6_2 = out_chan_dep_vld_vec_6[2];
    assign dep_chan_data_6_2 = out_chan_dep_data_6;
    assign token_6_2 = token_out_vec_6[2];
    assign dep_chan_vld_6_51 = out_chan_dep_vld_vec_6[3];
    assign dep_chan_data_6_51 = out_chan_dep_data_6;
    assign token_6_51 = token_out_vec_6[3];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 7, 5, 5) ViT_Block_hls_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.Q_in5_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_96.q_lin1_blk_n);
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_U0_U.if_read);
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    assign proc_7_data_FIFO_blk[2] = 1'b0;
    assign proc_7_data_PIPO_blk[2] = 1'b0;
    assign proc_7_start_FIFO_blk[2] = 1'b0;
    assign proc_7_TLF_FIFO_blk[2] = 1'b0;
    assign proc_7_input_sync_blk[2] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Q_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_K_linear_tiled_U0_ap_ready);
    assign proc_7_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_7[2] = dl_detect_out ? proc_dep_vld_vec_7_reg[2] : (proc_7_data_FIFO_blk[2] | proc_7_data_PIPO_blk[2] | proc_7_start_FIFO_blk[2] | proc_7_TLF_FIFO_blk[2] | proc_7_input_sync_blk[2] | proc_7_output_sync_blk[2]);
    assign proc_7_data_FIFO_blk[3] = 1'b0;
    assign proc_7_data_PIPO_blk[3] = 1'b0;
    assign proc_7_start_FIFO_blk[3] = 1'b0;
    assign proc_7_TLF_FIFO_blk[3] = 1'b0;
    assign proc_7_input_sync_blk[3] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Q_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_V_linear_tiled_U0_ap_ready);
    assign proc_7_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_7[3] = dl_detect_out ? proc_dep_vld_vec_7_reg[3] : (proc_7_data_FIFO_blk[3] | proc_7_data_PIPO_blk[3] | proc_7_start_FIFO_blk[3] | proc_7_TLF_FIFO_blk[3] | proc_7_input_sync_blk[3] | proc_7_output_sync_blk[3]);
    assign proc_7_data_FIFO_blk[4] = 1'b0;
    assign proc_7_data_PIPO_blk[4] = 1'b0;
    assign proc_7_start_FIFO_blk[4] = 1'b0;
    assign proc_7_TLF_FIFO_blk[4] = 1'b0;
    assign proc_7_input_sync_blk[4] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Q_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Out_linear_tiled_U0_ap_ready);
    assign proc_7_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_7[4] = dl_detect_out ? proc_dep_vld_vec_7_reg[4] : (proc_7_data_FIFO_blk[4] | proc_7_data_PIPO_blk[4] | proc_7_start_FIFO_blk[4] | proc_7_TLF_FIFO_blk[4] | proc_7_input_sync_blk[4] | proc_7_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_5_7;
    assign in_chan_dep_data_vec_7[61 : 0] = dep_chan_data_5_7;
    assign token_in_vec_7[0] = token_5_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_10_7;
    assign in_chan_dep_data_vec_7[123 : 62] = dep_chan_data_10_7;
    assign token_in_vec_7[1] = token_10_7;
    assign in_chan_dep_vld_vec_7[2] = dep_chan_vld_13_7;
    assign in_chan_dep_data_vec_7[185 : 124] = dep_chan_data_13_7;
    assign token_in_vec_7[2] = token_13_7;
    assign in_chan_dep_vld_vec_7[3] = dep_chan_vld_16_7;
    assign in_chan_dep_data_vec_7[247 : 186] = dep_chan_data_16_7;
    assign token_in_vec_7[3] = token_16_7;
    assign in_chan_dep_vld_vec_7[4] = dep_chan_vld_44_7;
    assign in_chan_dep_data_vec_7[309 : 248] = dep_chan_data_44_7;
    assign token_in_vec_7[4] = token_44_7;
    assign dep_chan_vld_7_5 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_5 = out_chan_dep_data_7;
    assign token_7_5 = token_out_vec_7[0];
    assign dep_chan_vld_7_16 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_16 = out_chan_dep_data_7;
    assign token_7_16 = token_out_vec_7[1];
    assign dep_chan_vld_7_10 = out_chan_dep_vld_vec_7[2];
    assign dep_chan_data_7_10 = out_chan_dep_data_7;
    assign token_7_10 = token_out_vec_7[2];
    assign dep_chan_vld_7_13 = out_chan_dep_vld_vec_7[3];
    assign dep_chan_data_7_13 = out_chan_dep_data_7;
    assign token_7_13 = token_out_vec_7[3];
    assign dep_chan_vld_7_44 = out_chan_dep_vld_vec_7[4];
    assign dep_chan_data_7_44 = out_chan_dep_data_7;
    assign token_7_44 = token_out_vec_7[4];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 8, 1, 1) ViT_Block_hls_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.out_w1_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0_U.if_read);
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[61 : 0] = dep_chan_data_9_8;
    assign token_in_vec_8[0] = token_9_8;
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[0];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 9, 3, 3) ViT_Block_hls_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.Q_in5_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1_fu_96.q_lin1_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    assign proc_9_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1_fu_103.out_w1_blk_n);
    assign proc_9_data_PIPO_blk[2] = 1'b0;
    assign proc_9_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0_U.if_write);
    assign proc_9_TLF_FIFO_blk[2] = 1'b0;
    assign proc_9_input_sync_blk[2] = 1'b0;
    assign proc_9_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_9[2] = dl_detect_out ? proc_dep_vld_vec_9_reg[2] : (proc_9_data_FIFO_blk[2] | proc_9_data_PIPO_blk[2] | proc_9_start_FIFO_blk[2] | proc_9_TLF_FIFO_blk[2] | proc_9_input_sync_blk[2] | proc_9_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_5_9;
    assign in_chan_dep_data_vec_9[61 : 0] = dep_chan_data_5_9;
    assign token_in_vec_9[0] = token_5_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[123 : 62] = dep_chan_data_8_9;
    assign token_in_vec_9[1] = token_8_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_16_9;
    assign in_chan_dep_data_vec_9[185 : 124] = dep_chan_data_16_9;
    assign token_in_vec_9[2] = token_16_9;
    assign dep_chan_vld_9_5 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_5 = out_chan_dep_data_9;
    assign token_9_5 = token_out_vec_9[0];
    assign dep_chan_vld_9_16 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_16 = out_chan_dep_data_9;
    assign token_9_16 = token_out_vec_9[1];
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[2];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 10, 5, 5) ViT_Block_hls_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.K_in6_blk_n);
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17_fu_96.k_lin2_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_2_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.real_start & (trans_in_cnt_6 == trans_out_cnt_6) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_2_U0_U.if_read);
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    assign proc_10_data_FIFO_blk[2] = 1'b0;
    assign proc_10_data_PIPO_blk[2] = 1'b0;
    assign proc_10_start_FIFO_blk[2] = 1'b0;
    assign proc_10_TLF_FIFO_blk[2] = 1'b0;
    assign proc_10_input_sync_blk[2] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_K_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Q_linear_tiled_U0_ap_ready);
    assign proc_10_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_10[2] = dl_detect_out ? proc_dep_vld_vec_10_reg[2] : (proc_10_data_FIFO_blk[2] | proc_10_data_PIPO_blk[2] | proc_10_start_FIFO_blk[2] | proc_10_TLF_FIFO_blk[2] | proc_10_input_sync_blk[2] | proc_10_output_sync_blk[2]);
    assign proc_10_data_FIFO_blk[3] = 1'b0;
    assign proc_10_data_PIPO_blk[3] = 1'b0;
    assign proc_10_start_FIFO_blk[3] = 1'b0;
    assign proc_10_TLF_FIFO_blk[3] = 1'b0;
    assign proc_10_input_sync_blk[3] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_K_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_V_linear_tiled_U0_ap_ready);
    assign proc_10_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_10[3] = dl_detect_out ? proc_dep_vld_vec_10_reg[3] : (proc_10_data_FIFO_blk[3] | proc_10_data_PIPO_blk[3] | proc_10_start_FIFO_blk[3] | proc_10_TLF_FIFO_blk[3] | proc_10_input_sync_blk[3] | proc_10_output_sync_blk[3]);
    assign proc_10_data_FIFO_blk[4] = 1'b0;
    assign proc_10_data_PIPO_blk[4] = 1'b0;
    assign proc_10_start_FIFO_blk[4] = 1'b0;
    assign proc_10_TLF_FIFO_blk[4] = 1'b0;
    assign proc_10_input_sync_blk[4] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_K_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Out_linear_tiled_U0_ap_ready);
    assign proc_10_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_10[4] = dl_detect_out ? proc_dep_vld_vec_10_reg[4] : (proc_10_data_FIFO_blk[4] | proc_10_data_PIPO_blk[4] | proc_10_start_FIFO_blk[4] | proc_10_TLF_FIFO_blk[4] | proc_10_input_sync_blk[4] | proc_10_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_5_10;
    assign in_chan_dep_data_vec_10[61 : 0] = dep_chan_data_5_10;
    assign token_in_vec_10[0] = token_5_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_7_10;
    assign in_chan_dep_data_vec_10[123 : 62] = dep_chan_data_7_10;
    assign token_in_vec_10[1] = token_7_10;
    assign in_chan_dep_vld_vec_10[2] = dep_chan_vld_13_10;
    assign in_chan_dep_data_vec_10[185 : 124] = dep_chan_data_13_10;
    assign token_in_vec_10[2] = token_13_10;
    assign in_chan_dep_vld_vec_10[3] = dep_chan_vld_17_10;
    assign in_chan_dep_data_vec_10[247 : 186] = dep_chan_data_17_10;
    assign token_in_vec_10[3] = token_17_10;
    assign in_chan_dep_vld_vec_10[4] = dep_chan_vld_44_10;
    assign in_chan_dep_data_vec_10[309 : 248] = dep_chan_data_44_10;
    assign token_in_vec_10[4] = token_44_10;
    assign dep_chan_vld_10_5 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_5 = out_chan_dep_data_10;
    assign token_10_5 = token_out_vec_10[0];
    assign dep_chan_vld_10_17 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_17 = out_chan_dep_data_10;
    assign token_10_17 = token_out_vec_10[1];
    assign dep_chan_vld_10_7 = out_chan_dep_vld_vec_10[2];
    assign dep_chan_data_10_7 = out_chan_dep_data_10;
    assign token_10_7 = token_out_vec_10[2];
    assign dep_chan_vld_10_13 = out_chan_dep_vld_vec_10[3];
    assign dep_chan_data_10_13 = out_chan_dep_data_10;
    assign token_10_13 = token_out_vec_10[3];
    assign dep_chan_vld_10_44 = out_chan_dep_vld_vec_10[4];
    assign dep_chan_data_10_44 = out_chan_dep_data_10;
    assign token_10_44 = token_out_vec_10[4];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 11, 1, 1) ViT_Block_hls_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.out_w1_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.start_for_Linear_Layer_4_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.start_for_Linear_Layer_4_U0_U.if_read);
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_12_11;
    assign in_chan_dep_data_vec_11[61 : 0] = dep_chan_data_12_11;
    assign token_in_vec_11[0] = token_12_11;
    assign dep_chan_vld_11_12 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_12 = out_chan_dep_data_11;
    assign token_11_12 = token_out_vec_11[0];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 12, 3, 3) ViT_Block_hls_deadlock_detect_unit_12 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.K_in6_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0;
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17_fu_96.k_lin2_blk_n);
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0;
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0;
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.grp_Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9_fu_103.out_w1_blk_n);
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.start_for_Linear_Layer_4_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_4_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.start_for_Linear_Layer_4_U0_U.if_write);
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0;
    assign proc_12_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_5_12;
    assign in_chan_dep_data_vec_12[61 : 0] = dep_chan_data_5_12;
    assign token_in_vec_12[0] = token_5_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_11_12;
    assign in_chan_dep_data_vec_12[123 : 62] = dep_chan_data_11_12;
    assign token_in_vec_12[1] = token_11_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_17_12;
    assign in_chan_dep_data_vec_12[185 : 124] = dep_chan_data_17_12;
    assign token_in_vec_12[2] = token_17_12;
    assign dep_chan_vld_12_5 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_5 = out_chan_dep_data_12;
    assign token_12_5 = token_out_vec_12[0];
    assign dep_chan_vld_12_17 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_17 = out_chan_dep_data_12;
    assign token_12_17 = token_out_vec_12[1];
    assign dep_chan_vld_12_11 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_11 = out_chan_dep_data_12;
    assign token_12_11 = token_out_vec_12[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 13, 5, 5) ViT_Block_hls_deadlock_detect_unit_13 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.V_in7_blk_n);
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0;
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0;
    assign proc_13_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17_fu_96.v_lin3_blk_n);
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_3_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.real_start & (trans_in_cnt_7 == trans_out_cnt_7) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_3_U0_U.if_read);
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0;
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    assign proc_13_data_FIFO_blk[2] = 1'b0;
    assign proc_13_data_PIPO_blk[2] = 1'b0;
    assign proc_13_start_FIFO_blk[2] = 1'b0;
    assign proc_13_TLF_FIFO_blk[2] = 1'b0;
    assign proc_13_input_sync_blk[2] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_V_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Q_linear_tiled_U0_ap_ready);
    assign proc_13_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_13[2] = dl_detect_out ? proc_dep_vld_vec_13_reg[2] : (proc_13_data_FIFO_blk[2] | proc_13_data_PIPO_blk[2] | proc_13_start_FIFO_blk[2] | proc_13_TLF_FIFO_blk[2] | proc_13_input_sync_blk[2] | proc_13_output_sync_blk[2]);
    assign proc_13_data_FIFO_blk[3] = 1'b0;
    assign proc_13_data_PIPO_blk[3] = 1'b0;
    assign proc_13_start_FIFO_blk[3] = 1'b0;
    assign proc_13_TLF_FIFO_blk[3] = 1'b0;
    assign proc_13_input_sync_blk[3] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_V_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_K_linear_tiled_U0_ap_ready);
    assign proc_13_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_13[3] = dl_detect_out ? proc_dep_vld_vec_13_reg[3] : (proc_13_data_FIFO_blk[3] | proc_13_data_PIPO_blk[3] | proc_13_start_FIFO_blk[3] | proc_13_TLF_FIFO_blk[3] | proc_13_input_sync_blk[3] | proc_13_output_sync_blk[3]);
    assign proc_13_data_FIFO_blk[4] = 1'b0;
    assign proc_13_data_PIPO_blk[4] = 1'b0;
    assign proc_13_start_FIFO_blk[4] = 1'b0;
    assign proc_13_TLF_FIFO_blk[4] = 1'b0;
    assign proc_13_input_sync_blk[4] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_V_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Out_linear_tiled_U0_ap_ready);
    assign proc_13_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_13[4] = dl_detect_out ? proc_dep_vld_vec_13_reg[4] : (proc_13_data_FIFO_blk[4] | proc_13_data_PIPO_blk[4] | proc_13_start_FIFO_blk[4] | proc_13_TLF_FIFO_blk[4] | proc_13_input_sync_blk[4] | proc_13_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_5_13;
    assign in_chan_dep_data_vec_13[61 : 0] = dep_chan_data_5_13;
    assign token_in_vec_13[0] = token_5_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_7_13;
    assign in_chan_dep_data_vec_13[123 : 62] = dep_chan_data_7_13;
    assign token_in_vec_13[1] = token_7_13;
    assign in_chan_dep_vld_vec_13[2] = dep_chan_vld_10_13;
    assign in_chan_dep_data_vec_13[185 : 124] = dep_chan_data_10_13;
    assign token_in_vec_13[2] = token_10_13;
    assign in_chan_dep_vld_vec_13[3] = dep_chan_vld_18_13;
    assign in_chan_dep_data_vec_13[247 : 186] = dep_chan_data_18_13;
    assign token_in_vec_13[3] = token_18_13;
    assign in_chan_dep_vld_vec_13[4] = dep_chan_vld_44_13;
    assign in_chan_dep_data_vec_13[309 : 248] = dep_chan_data_44_13;
    assign token_in_vec_13[4] = token_44_13;
    assign dep_chan_vld_13_5 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_5 = out_chan_dep_data_13;
    assign token_13_5 = token_out_vec_13[0];
    assign dep_chan_vld_13_18 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_18 = out_chan_dep_data_13;
    assign token_13_18 = token_out_vec_13[1];
    assign dep_chan_vld_13_7 = out_chan_dep_vld_vec_13[2];
    assign dep_chan_data_13_7 = out_chan_dep_data_13;
    assign token_13_7 = token_out_vec_13[2];
    assign dep_chan_vld_13_10 = out_chan_dep_vld_vec_13[3];
    assign dep_chan_data_13_10 = out_chan_dep_data_13;
    assign token_13_10 = token_out_vec_13[3];
    assign dep_chan_vld_13_44 = out_chan_dep_vld_vec_13[4];
    assign dep_chan_data_13_44 = out_chan_dep_data_13;
    assign token_13_44 = token_out_vec_13[4];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 14, 1, 1) ViT_Block_hls_deadlock_detect_unit_14 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_14_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.out_w1_blk_n);
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.start_for_Linear_Layer_3_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.start_for_Linear_Layer_3_U0_U.if_read);
    assign proc_14_TLF_FIFO_blk[0] = 1'b0;
    assign proc_14_input_sync_blk[0] = 1'b0;
    assign proc_14_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_15_14;
    assign in_chan_dep_data_vec_14[61 : 0] = dep_chan_data_15_14;
    assign token_in_vec_14[0] = token_15_14;
    assign dep_chan_vld_14_15 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_15 = out_chan_dep_data_14;
    assign token_14_15 = token_out_vec_14[0];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 15, 3, 3) ViT_Block_hls_deadlock_detect_unit_15 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_15_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.V_in7_blk_n);
    assign proc_15_data_PIPO_blk[0] = 1'b0;
    assign proc_15_start_FIFO_blk[0] = 1'b0;
    assign proc_15_TLF_FIFO_blk[0] = 1'b0;
    assign proc_15_input_sync_blk[0] = 1'b0;
    assign proc_15_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (proc_15_data_FIFO_blk[0] | proc_15_data_PIPO_blk[0] | proc_15_start_FIFO_blk[0] | proc_15_TLF_FIFO_blk[0] | proc_15_input_sync_blk[0] | proc_15_output_sync_blk[0]);
    assign proc_15_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17_fu_96.v_lin3_blk_n);
    assign proc_15_data_PIPO_blk[1] = 1'b0;
    assign proc_15_start_FIFO_blk[1] = 1'b0;
    assign proc_15_TLF_FIFO_blk[1] = 1'b0;
    assign proc_15_input_sync_blk[1] = 1'b0;
    assign proc_15_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (proc_15_data_FIFO_blk[1] | proc_15_data_PIPO_blk[1] | proc_15_start_FIFO_blk[1] | proc_15_TLF_FIFO_blk[1] | proc_15_input_sync_blk[1] | proc_15_output_sync_blk[1]);
    assign proc_15_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.grp_Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9_fu_103.out_w1_blk_n);
    assign proc_15_data_PIPO_blk[2] = 1'b0;
    assign proc_15_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.start_for_Linear_Layer_3_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_3_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.start_for_Linear_Layer_3_U0_U.if_write);
    assign proc_15_TLF_FIFO_blk[2] = 1'b0;
    assign proc_15_input_sync_blk[2] = 1'b0;
    assign proc_15_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_15[2] = dl_detect_out ? proc_dep_vld_vec_15_reg[2] : (proc_15_data_FIFO_blk[2] | proc_15_data_PIPO_blk[2] | proc_15_start_FIFO_blk[2] | proc_15_TLF_FIFO_blk[2] | proc_15_input_sync_blk[2] | proc_15_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_5_15;
    assign in_chan_dep_data_vec_15[61 : 0] = dep_chan_data_5_15;
    assign token_in_vec_15[0] = token_5_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_14_15;
    assign in_chan_dep_data_vec_15[123 : 62] = dep_chan_data_14_15;
    assign token_in_vec_15[1] = token_14_15;
    assign in_chan_dep_vld_vec_15[2] = dep_chan_vld_18_15;
    assign in_chan_dep_data_vec_15[185 : 124] = dep_chan_data_18_15;
    assign token_in_vec_15[2] = token_18_15;
    assign dep_chan_vld_15_5 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_5 = out_chan_dep_data_15;
    assign token_15_5 = token_out_vec_15[0];
    assign dep_chan_vld_15_18 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_18 = out_chan_dep_data_15;
    assign token_15_18 = token_out_vec_15[1];
    assign dep_chan_vld_15_14 = out_chan_dep_vld_vec_15[2];
    assign dep_chan_data_15_14 = out_chan_dep_data_15;
    assign token_15_14 = token_out_vec_15[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 16, 10, 10) ViT_Block_hls_deadlock_detect_unit_16 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_16),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_16),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_16),
        .token_in_vec(token_in_vec_16),
        .dl_detect_in(dl_detect_out),
        .origin(origin[16]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_16),
        .out_chan_dep_data(out_chan_dep_data_16),
        .token_out_vec(token_out_vec_16),
        .dl_detect_out(dl_in_vec[16]));

    assign proc_16_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.q_lin1_blk_n);
    assign proc_16_data_PIPO_blk[0] = 1'b0;
    assign proc_16_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_U0_U.if_write);
    assign proc_16_TLF_FIFO_blk[0] = 1'b0;
    assign proc_16_input_sync_blk[0] = 1'b0;
    assign proc_16_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_16[0] = dl_detect_out ? proc_dep_vld_vec_16_reg[0] : (proc_16_data_FIFO_blk[0] | proc_16_data_PIPO_blk[0] | proc_16_start_FIFO_blk[0] | proc_16_TLF_FIFO_blk[0] | proc_16_input_sync_blk[0] | proc_16_output_sync_blk[0]);
    assign proc_16_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.q_lin1_blk_n);
    assign proc_16_data_PIPO_blk[1] = 1'b0;
    assign proc_16_start_FIFO_blk[1] = 1'b0;
    assign proc_16_TLF_FIFO_blk[1] = 1'b0;
    assign proc_16_input_sync_blk[1] = 1'b0;
    assign proc_16_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_16[1] = dl_detect_out ? proc_dep_vld_vec_16_reg[1] : (proc_16_data_FIFO_blk[1] | proc_16_data_PIPO_blk[1] | proc_16_start_FIFO_blk[1] | proc_16_TLF_FIFO_blk[1] | proc_16_input_sync_blk[1] | proc_16_output_sync_blk[1]);
    assign proc_16_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.Q_1_0_blk_n);
    assign proc_16_data_PIPO_blk[2] = 1'b0;
    assign proc_16_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_U0_U.if_read);
    assign proc_16_TLF_FIFO_blk[2] = 1'b0;
    assign proc_16_input_sync_blk[2] = 1'b0;
    assign proc_16_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_16[2] = dl_detect_out ? proc_dep_vld_vec_16_reg[2] : (proc_16_data_FIFO_blk[2] | proc_16_data_PIPO_blk[2] | proc_16_start_FIFO_blk[2] | proc_16_TLF_FIFO_blk[2] | proc_16_input_sync_blk[2] | proc_16_output_sync_blk[2]);
    assign proc_16_data_FIFO_blk[3] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.Q_1_0_blk_n);
    assign proc_16_data_PIPO_blk[3] = 1'b0;
    assign proc_16_start_FIFO_blk[3] = 1'b0;
    assign proc_16_TLF_FIFO_blk[3] = 1'b0;
    assign proc_16_input_sync_blk[3] = 1'b0;
    assign proc_16_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_16[3] = dl_detect_out ? proc_dep_vld_vec_16_reg[3] : (proc_16_data_FIFO_blk[3] | proc_16_data_PIPO_blk[3] | proc_16_start_FIFO_blk[3] | proc_16_TLF_FIFO_blk[3] | proc_16_input_sync_blk[3] | proc_16_output_sync_blk[3]);
    assign proc_16_data_FIFO_blk[4] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.Q_1_1_blk_n);
    assign proc_16_data_PIPO_blk[4] = 1'b0;
    assign proc_16_start_FIFO_blk[4] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_4_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_4_U0_U.if_read);
    assign proc_16_TLF_FIFO_blk[4] = 1'b0;
    assign proc_16_input_sync_blk[4] = 1'b0;
    assign proc_16_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_16[4] = dl_detect_out ? proc_dep_vld_vec_16_reg[4] : (proc_16_data_FIFO_blk[4] | proc_16_data_PIPO_blk[4] | proc_16_start_FIFO_blk[4] | proc_16_TLF_FIFO_blk[4] | proc_16_input_sync_blk[4] | proc_16_output_sync_blk[4]);
    assign proc_16_data_FIFO_blk[5] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.Q_1_1_blk_n);
    assign proc_16_data_PIPO_blk[5] = 1'b0;
    assign proc_16_start_FIFO_blk[5] = 1'b0;
    assign proc_16_TLF_FIFO_blk[5] = 1'b0;
    assign proc_16_input_sync_blk[5] = 1'b0;
    assign proc_16_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_16[5] = dl_detect_out ? proc_dep_vld_vec_16_reg[5] : (proc_16_data_FIFO_blk[5] | proc_16_data_PIPO_blk[5] | proc_16_start_FIFO_blk[5] | proc_16_TLF_FIFO_blk[5] | proc_16_input_sync_blk[5] | proc_16_output_sync_blk[5]);
    assign proc_16_data_FIFO_blk[6] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.Q_1_2_blk_n);
    assign proc_16_data_PIPO_blk[6] = 1'b0;
    assign proc_16_start_FIFO_blk[6] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_8_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_8_U0_U.if_read);
    assign proc_16_TLF_FIFO_blk[6] = 1'b0;
    assign proc_16_input_sync_blk[6] = 1'b0;
    assign proc_16_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_16[6] = dl_detect_out ? proc_dep_vld_vec_16_reg[6] : (proc_16_data_FIFO_blk[6] | proc_16_data_PIPO_blk[6] | proc_16_start_FIFO_blk[6] | proc_16_TLF_FIFO_blk[6] | proc_16_input_sync_blk[6] | proc_16_output_sync_blk[6]);
    assign proc_16_data_FIFO_blk[7] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.Q_1_2_blk_n);
    assign proc_16_data_PIPO_blk[7] = 1'b0;
    assign proc_16_start_FIFO_blk[7] = 1'b0;
    assign proc_16_TLF_FIFO_blk[7] = 1'b0;
    assign proc_16_input_sync_blk[7] = 1'b0;
    assign proc_16_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_16[7] = dl_detect_out ? proc_dep_vld_vec_16_reg[7] : (proc_16_data_FIFO_blk[7] | proc_16_data_PIPO_blk[7] | proc_16_start_FIFO_blk[7] | proc_16_TLF_FIFO_blk[7] | proc_16_input_sync_blk[7] | proc_16_output_sync_blk[7]);
    assign proc_16_data_FIFO_blk[8] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.Q_1_3_blk_n);
    assign proc_16_data_PIPO_blk[8] = 1'b0;
    assign proc_16_start_FIFO_blk[8] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_12_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_12_U0_U.if_read);
    assign proc_16_TLF_FIFO_blk[8] = 1'b0;
    assign proc_16_input_sync_blk[8] = 1'b0;
    assign proc_16_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_16[8] = dl_detect_out ? proc_dep_vld_vec_16_reg[8] : (proc_16_data_FIFO_blk[8] | proc_16_data_PIPO_blk[8] | proc_16_start_FIFO_blk[8] | proc_16_TLF_FIFO_blk[8] | proc_16_input_sync_blk[8] | proc_16_output_sync_blk[8]);
    assign proc_16_data_FIFO_blk[9] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.Q_1_3_blk_n);
    assign proc_16_data_PIPO_blk[9] = 1'b0;
    assign proc_16_start_FIFO_blk[9] = 1'b0;
    assign proc_16_TLF_FIFO_blk[9] = 1'b0;
    assign proc_16_input_sync_blk[9] = 1'b0;
    assign proc_16_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_16[9] = dl_detect_out ? proc_dep_vld_vec_16_reg[9] : (proc_16_data_FIFO_blk[9] | proc_16_data_PIPO_blk[9] | proc_16_start_FIFO_blk[9] | proc_16_TLF_FIFO_blk[9] | proc_16_input_sync_blk[9] | proc_16_output_sync_blk[9]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_16_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_16_reg <= proc_dep_vld_vec_16;
        end
    end
    assign in_chan_dep_vld_vec_16[0] = dep_chan_vld_7_16;
    assign in_chan_dep_data_vec_16[61 : 0] = dep_chan_data_7_16;
    assign token_in_vec_16[0] = token_7_16;
    assign in_chan_dep_vld_vec_16[1] = dep_chan_vld_9_16;
    assign in_chan_dep_data_vec_16[123 : 62] = dep_chan_data_9_16;
    assign token_in_vec_16[1] = token_9_16;
    assign in_chan_dep_vld_vec_16[2] = dep_chan_vld_19_16;
    assign in_chan_dep_data_vec_16[185 : 124] = dep_chan_data_19_16;
    assign token_in_vec_16[2] = token_19_16;
    assign in_chan_dep_vld_vec_16[3] = dep_chan_vld_20_16;
    assign in_chan_dep_data_vec_16[247 : 186] = dep_chan_data_20_16;
    assign token_in_vec_16[3] = token_20_16;
    assign in_chan_dep_vld_vec_16[4] = dep_chan_vld_25_16;
    assign in_chan_dep_data_vec_16[309 : 248] = dep_chan_data_25_16;
    assign token_in_vec_16[4] = token_25_16;
    assign in_chan_dep_vld_vec_16[5] = dep_chan_vld_26_16;
    assign in_chan_dep_data_vec_16[371 : 310] = dep_chan_data_26_16;
    assign token_in_vec_16[5] = token_26_16;
    assign in_chan_dep_vld_vec_16[6] = dep_chan_vld_31_16;
    assign in_chan_dep_data_vec_16[433 : 372] = dep_chan_data_31_16;
    assign token_in_vec_16[6] = token_31_16;
    assign in_chan_dep_vld_vec_16[7] = dep_chan_vld_32_16;
    assign in_chan_dep_data_vec_16[495 : 434] = dep_chan_data_32_16;
    assign token_in_vec_16[7] = token_32_16;
    assign in_chan_dep_vld_vec_16[8] = dep_chan_vld_37_16;
    assign in_chan_dep_data_vec_16[557 : 496] = dep_chan_data_37_16;
    assign token_in_vec_16[8] = token_37_16;
    assign in_chan_dep_vld_vec_16[9] = dep_chan_vld_38_16;
    assign in_chan_dep_data_vec_16[619 : 558] = dep_chan_data_38_16;
    assign token_in_vec_16[9] = token_38_16;
    assign dep_chan_vld_16_7 = out_chan_dep_vld_vec_16[0];
    assign dep_chan_data_16_7 = out_chan_dep_data_16;
    assign token_16_7 = token_out_vec_16[0];
    assign dep_chan_vld_16_9 = out_chan_dep_vld_vec_16[1];
    assign dep_chan_data_16_9 = out_chan_dep_data_16;
    assign token_16_9 = token_out_vec_16[1];
    assign dep_chan_vld_16_19 = out_chan_dep_vld_vec_16[2];
    assign dep_chan_data_16_19 = out_chan_dep_data_16;
    assign token_16_19 = token_out_vec_16[2];
    assign dep_chan_vld_16_20 = out_chan_dep_vld_vec_16[3];
    assign dep_chan_data_16_20 = out_chan_dep_data_16;
    assign token_16_20 = token_out_vec_16[3];
    assign dep_chan_vld_16_25 = out_chan_dep_vld_vec_16[4];
    assign dep_chan_data_16_25 = out_chan_dep_data_16;
    assign token_16_25 = token_out_vec_16[4];
    assign dep_chan_vld_16_26 = out_chan_dep_vld_vec_16[5];
    assign dep_chan_data_16_26 = out_chan_dep_data_16;
    assign token_16_26 = token_out_vec_16[5];
    assign dep_chan_vld_16_31 = out_chan_dep_vld_vec_16[6];
    assign dep_chan_data_16_31 = out_chan_dep_data_16;
    assign token_16_31 = token_out_vec_16[6];
    assign dep_chan_vld_16_32 = out_chan_dep_vld_vec_16[7];
    assign dep_chan_data_16_32 = out_chan_dep_data_16;
    assign token_16_32 = token_out_vec_16[7];
    assign dep_chan_vld_16_37 = out_chan_dep_vld_vec_16[8];
    assign dep_chan_data_16_37 = out_chan_dep_data_16;
    assign token_16_37 = token_out_vec_16[8];
    assign dep_chan_vld_16_38 = out_chan_dep_vld_vec_16[9];
    assign dep_chan_data_16_38 = out_chan_dep_data_16;
    assign token_16_38 = token_out_vec_16[9];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 17, 10, 10) ViT_Block_hls_deadlock_detect_unit_17 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_17),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_17),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_17),
        .token_in_vec(token_in_vec_17),
        .dl_detect_in(dl_detect_out),
        .origin(origin[17]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_17),
        .out_chan_dep_data(out_chan_dep_data_17),
        .token_out_vec(token_out_vec_17),
        .dl_detect_out(dl_in_vec[17]));

    assign proc_17_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.k_lin2_blk_n);
    assign proc_17_data_PIPO_blk[0] = 1'b0;
    assign proc_17_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_2_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_2_U0_U.if_write);
    assign proc_17_TLF_FIFO_blk[0] = 1'b0;
    assign proc_17_input_sync_blk[0] = 1'b0;
    assign proc_17_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_17[0] = dl_detect_out ? proc_dep_vld_vec_17_reg[0] : (proc_17_data_FIFO_blk[0] | proc_17_data_PIPO_blk[0] | proc_17_start_FIFO_blk[0] | proc_17_TLF_FIFO_blk[0] | proc_17_input_sync_blk[0] | proc_17_output_sync_blk[0]);
    assign proc_17_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.k_lin2_blk_n);
    assign proc_17_data_PIPO_blk[1] = 1'b0;
    assign proc_17_start_FIFO_blk[1] = 1'b0;
    assign proc_17_TLF_FIFO_blk[1] = 1'b0;
    assign proc_17_input_sync_blk[1] = 1'b0;
    assign proc_17_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_17[1] = dl_detect_out ? proc_dep_vld_vec_17_reg[1] : (proc_17_data_FIFO_blk[1] | proc_17_data_PIPO_blk[1] | proc_17_start_FIFO_blk[1] | proc_17_TLF_FIFO_blk[1] | proc_17_input_sync_blk[1] | proc_17_output_sync_blk[1]);
    assign proc_17_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.K_1_0_blk_n);
    assign proc_17_data_PIPO_blk[2] = 1'b0;
    assign proc_17_start_FIFO_blk[2] = 1'b0;
    assign proc_17_TLF_FIFO_blk[2] = 1'b0;
    assign proc_17_input_sync_blk[2] = 1'b0;
    assign proc_17_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_17[2] = dl_detect_out ? proc_dep_vld_vec_17_reg[2] : (proc_17_data_FIFO_blk[2] | proc_17_data_PIPO_blk[2] | proc_17_start_FIFO_blk[2] | proc_17_TLF_FIFO_blk[2] | proc_17_input_sync_blk[2] | proc_17_output_sync_blk[2]);
    assign proc_17_data_FIFO_blk[3] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.K_1_0_blk_n);
    assign proc_17_data_PIPO_blk[3] = 1'b0;
    assign proc_17_start_FIFO_blk[3] = 1'b0;
    assign proc_17_TLF_FIFO_blk[3] = 1'b0;
    assign proc_17_input_sync_blk[3] = 1'b0;
    assign proc_17_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_17[3] = dl_detect_out ? proc_dep_vld_vec_17_reg[3] : (proc_17_data_FIFO_blk[3] | proc_17_data_PIPO_blk[3] | proc_17_start_FIFO_blk[3] | proc_17_TLF_FIFO_blk[3] | proc_17_input_sync_blk[3] | proc_17_output_sync_blk[3]);
    assign proc_17_data_FIFO_blk[4] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.K_1_1_blk_n);
    assign proc_17_data_PIPO_blk[4] = 1'b0;
    assign proc_17_start_FIFO_blk[4] = 1'b0;
    assign proc_17_TLF_FIFO_blk[4] = 1'b0;
    assign proc_17_input_sync_blk[4] = 1'b0;
    assign proc_17_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_17[4] = dl_detect_out ? proc_dep_vld_vec_17_reg[4] : (proc_17_data_FIFO_blk[4] | proc_17_data_PIPO_blk[4] | proc_17_start_FIFO_blk[4] | proc_17_TLF_FIFO_blk[4] | proc_17_input_sync_blk[4] | proc_17_output_sync_blk[4]);
    assign proc_17_data_FIFO_blk[5] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.K_1_1_blk_n);
    assign proc_17_data_PIPO_blk[5] = 1'b0;
    assign proc_17_start_FIFO_blk[5] = 1'b0;
    assign proc_17_TLF_FIFO_blk[5] = 1'b0;
    assign proc_17_input_sync_blk[5] = 1'b0;
    assign proc_17_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_17[5] = dl_detect_out ? proc_dep_vld_vec_17_reg[5] : (proc_17_data_FIFO_blk[5] | proc_17_data_PIPO_blk[5] | proc_17_start_FIFO_blk[5] | proc_17_TLF_FIFO_blk[5] | proc_17_input_sync_blk[5] | proc_17_output_sync_blk[5]);
    assign proc_17_data_FIFO_blk[6] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.K_1_2_blk_n);
    assign proc_17_data_PIPO_blk[6] = 1'b0;
    assign proc_17_start_FIFO_blk[6] = 1'b0;
    assign proc_17_TLF_FIFO_blk[6] = 1'b0;
    assign proc_17_input_sync_blk[6] = 1'b0;
    assign proc_17_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_17[6] = dl_detect_out ? proc_dep_vld_vec_17_reg[6] : (proc_17_data_FIFO_blk[6] | proc_17_data_PIPO_blk[6] | proc_17_start_FIFO_blk[6] | proc_17_TLF_FIFO_blk[6] | proc_17_input_sync_blk[6] | proc_17_output_sync_blk[6]);
    assign proc_17_data_FIFO_blk[7] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.K_1_2_blk_n);
    assign proc_17_data_PIPO_blk[7] = 1'b0;
    assign proc_17_start_FIFO_blk[7] = 1'b0;
    assign proc_17_TLF_FIFO_blk[7] = 1'b0;
    assign proc_17_input_sync_blk[7] = 1'b0;
    assign proc_17_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_17[7] = dl_detect_out ? proc_dep_vld_vec_17_reg[7] : (proc_17_data_FIFO_blk[7] | proc_17_data_PIPO_blk[7] | proc_17_start_FIFO_blk[7] | proc_17_TLF_FIFO_blk[7] | proc_17_input_sync_blk[7] | proc_17_output_sync_blk[7]);
    assign proc_17_data_FIFO_blk[8] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.K_1_3_blk_n);
    assign proc_17_data_PIPO_blk[8] = 1'b0;
    assign proc_17_start_FIFO_blk[8] = 1'b0;
    assign proc_17_TLF_FIFO_blk[8] = 1'b0;
    assign proc_17_input_sync_blk[8] = 1'b0;
    assign proc_17_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_17[8] = dl_detect_out ? proc_dep_vld_vec_17_reg[8] : (proc_17_data_FIFO_blk[8] | proc_17_data_PIPO_blk[8] | proc_17_start_FIFO_blk[8] | proc_17_TLF_FIFO_blk[8] | proc_17_input_sync_blk[8] | proc_17_output_sync_blk[8]);
    assign proc_17_data_FIFO_blk[9] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.K_1_3_blk_n);
    assign proc_17_data_PIPO_blk[9] = 1'b0;
    assign proc_17_start_FIFO_blk[9] = 1'b0;
    assign proc_17_TLF_FIFO_blk[9] = 1'b0;
    assign proc_17_input_sync_blk[9] = 1'b0;
    assign proc_17_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_17[9] = dl_detect_out ? proc_dep_vld_vec_17_reg[9] : (proc_17_data_FIFO_blk[9] | proc_17_data_PIPO_blk[9] | proc_17_start_FIFO_blk[9] | proc_17_TLF_FIFO_blk[9] | proc_17_input_sync_blk[9] | proc_17_output_sync_blk[9]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_17_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_17_reg <= proc_dep_vld_vec_17;
        end
    end
    assign in_chan_dep_vld_vec_17[0] = dep_chan_vld_10_17;
    assign in_chan_dep_data_vec_17[61 : 0] = dep_chan_data_10_17;
    assign token_in_vec_17[0] = token_10_17;
    assign in_chan_dep_vld_vec_17[1] = dep_chan_vld_12_17;
    assign in_chan_dep_data_vec_17[123 : 62] = dep_chan_data_12_17;
    assign token_in_vec_17[1] = token_12_17;
    assign in_chan_dep_vld_vec_17[2] = dep_chan_vld_19_17;
    assign in_chan_dep_data_vec_17[185 : 124] = dep_chan_data_19_17;
    assign token_in_vec_17[2] = token_19_17;
    assign in_chan_dep_vld_vec_17[3] = dep_chan_vld_20_17;
    assign in_chan_dep_data_vec_17[247 : 186] = dep_chan_data_20_17;
    assign token_in_vec_17[3] = token_20_17;
    assign in_chan_dep_vld_vec_17[4] = dep_chan_vld_25_17;
    assign in_chan_dep_data_vec_17[309 : 248] = dep_chan_data_25_17;
    assign token_in_vec_17[4] = token_25_17;
    assign in_chan_dep_vld_vec_17[5] = dep_chan_vld_26_17;
    assign in_chan_dep_data_vec_17[371 : 310] = dep_chan_data_26_17;
    assign token_in_vec_17[5] = token_26_17;
    assign in_chan_dep_vld_vec_17[6] = dep_chan_vld_31_17;
    assign in_chan_dep_data_vec_17[433 : 372] = dep_chan_data_31_17;
    assign token_in_vec_17[6] = token_31_17;
    assign in_chan_dep_vld_vec_17[7] = dep_chan_vld_32_17;
    assign in_chan_dep_data_vec_17[495 : 434] = dep_chan_data_32_17;
    assign token_in_vec_17[7] = token_32_17;
    assign in_chan_dep_vld_vec_17[8] = dep_chan_vld_37_17;
    assign in_chan_dep_data_vec_17[557 : 496] = dep_chan_data_37_17;
    assign token_in_vec_17[8] = token_37_17;
    assign in_chan_dep_vld_vec_17[9] = dep_chan_vld_38_17;
    assign in_chan_dep_data_vec_17[619 : 558] = dep_chan_data_38_17;
    assign token_in_vec_17[9] = token_38_17;
    assign dep_chan_vld_17_10 = out_chan_dep_vld_vec_17[0];
    assign dep_chan_data_17_10 = out_chan_dep_data_17;
    assign token_17_10 = token_out_vec_17[0];
    assign dep_chan_vld_17_12 = out_chan_dep_vld_vec_17[1];
    assign dep_chan_data_17_12 = out_chan_dep_data_17;
    assign token_17_12 = token_out_vec_17[1];
    assign dep_chan_vld_17_19 = out_chan_dep_vld_vec_17[2];
    assign dep_chan_data_17_19 = out_chan_dep_data_17;
    assign token_17_19 = token_out_vec_17[2];
    assign dep_chan_vld_17_20 = out_chan_dep_vld_vec_17[3];
    assign dep_chan_data_17_20 = out_chan_dep_data_17;
    assign token_17_20 = token_out_vec_17[3];
    assign dep_chan_vld_17_25 = out_chan_dep_vld_vec_17[4];
    assign dep_chan_data_17_25 = out_chan_dep_data_17;
    assign token_17_25 = token_out_vec_17[4];
    assign dep_chan_vld_17_26 = out_chan_dep_vld_vec_17[5];
    assign dep_chan_data_17_26 = out_chan_dep_data_17;
    assign token_17_26 = token_out_vec_17[5];
    assign dep_chan_vld_17_31 = out_chan_dep_vld_vec_17[6];
    assign dep_chan_data_17_31 = out_chan_dep_data_17;
    assign token_17_31 = token_out_vec_17[6];
    assign dep_chan_vld_17_32 = out_chan_dep_vld_vec_17[7];
    assign dep_chan_data_17_32 = out_chan_dep_data_17;
    assign token_17_32 = token_out_vec_17[7];
    assign dep_chan_vld_17_37 = out_chan_dep_vld_vec_17[8];
    assign dep_chan_data_17_37 = out_chan_dep_data_17;
    assign token_17_37 = token_out_vec_17[8];
    assign dep_chan_vld_17_38 = out_chan_dep_vld_vec_17[9];
    assign dep_chan_data_17_38 = out_chan_dep_data_17;
    assign token_17_38 = token_out_vec_17[9];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 18, 10, 10) ViT_Block_hls_deadlock_detect_unit_18 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_18),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_18),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_18),
        .token_in_vec(token_in_vec_18),
        .dl_detect_in(dl_detect_out),
        .origin(origin[18]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_18),
        .out_chan_dep_data(out_chan_dep_data_18),
        .token_out_vec(token_out_vec_18),
        .dl_detect_out(dl_in_vec[18]));

    assign proc_18_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.v_lin3_blk_n);
    assign proc_18_data_PIPO_blk[0] = 1'b0;
    assign proc_18_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_3_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_split_heads_3_U0_U.if_write);
    assign proc_18_TLF_FIFO_blk[0] = 1'b0;
    assign proc_18_input_sync_blk[0] = 1'b0;
    assign proc_18_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_18[0] = dl_detect_out ? proc_dep_vld_vec_18_reg[0] : (proc_18_data_FIFO_blk[0] | proc_18_data_PIPO_blk[0] | proc_18_start_FIFO_blk[0] | proc_18_TLF_FIFO_blk[0] | proc_18_input_sync_blk[0] | proc_18_output_sync_blk[0]);
    assign proc_18_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.v_lin3_blk_n);
    assign proc_18_data_PIPO_blk[1] = 1'b0;
    assign proc_18_start_FIFO_blk[1] = 1'b0;
    assign proc_18_TLF_FIFO_blk[1] = 1'b0;
    assign proc_18_input_sync_blk[1] = 1'b0;
    assign proc_18_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_18[1] = dl_detect_out ? proc_dep_vld_vec_18_reg[1] : (proc_18_data_FIFO_blk[1] | proc_18_data_PIPO_blk[1] | proc_18_start_FIFO_blk[1] | proc_18_TLF_FIFO_blk[1] | proc_18_input_sync_blk[1] | proc_18_output_sync_blk[1]);
    assign proc_18_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.V_1_0_blk_n);
    assign proc_18_data_PIPO_blk[2] = 1'b0;
    assign proc_18_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.real_start & (trans_in_cnt_11 == trans_out_cnt_11) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_U0_U.if_read);
    assign proc_18_TLF_FIFO_blk[2] = 1'b0;
    assign proc_18_input_sync_blk[2] = 1'b0;
    assign proc_18_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_18[2] = dl_detect_out ? proc_dep_vld_vec_18_reg[2] : (proc_18_data_FIFO_blk[2] | proc_18_data_PIPO_blk[2] | proc_18_start_FIFO_blk[2] | proc_18_TLF_FIFO_blk[2] | proc_18_input_sync_blk[2] | proc_18_output_sync_blk[2]);
    assign proc_18_data_FIFO_blk[3] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.V_1_0_blk_n);
    assign proc_18_data_PIPO_blk[3] = 1'b0;
    assign proc_18_start_FIFO_blk[3] = 1'b0;
    assign proc_18_TLF_FIFO_blk[3] = 1'b0;
    assign proc_18_input_sync_blk[3] = 1'b0;
    assign proc_18_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_18[3] = dl_detect_out ? proc_dep_vld_vec_18_reg[3] : (proc_18_data_FIFO_blk[3] | proc_18_data_PIPO_blk[3] | proc_18_start_FIFO_blk[3] | proc_18_TLF_FIFO_blk[3] | proc_18_input_sync_blk[3] | proc_18_output_sync_blk[3]);
    assign proc_18_data_FIFO_blk[4] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.V_1_1_blk_n);
    assign proc_18_data_PIPO_blk[4] = 1'b0;
    assign proc_18_start_FIFO_blk[4] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_7_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.real_start & (trans_in_cnt_11 == trans_out_cnt_11) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_7_U0_U.if_read);
    assign proc_18_TLF_FIFO_blk[4] = 1'b0;
    assign proc_18_input_sync_blk[4] = 1'b0;
    assign proc_18_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_18[4] = dl_detect_out ? proc_dep_vld_vec_18_reg[4] : (proc_18_data_FIFO_blk[4] | proc_18_data_PIPO_blk[4] | proc_18_start_FIFO_blk[4] | proc_18_TLF_FIFO_blk[4] | proc_18_input_sync_blk[4] | proc_18_output_sync_blk[4]);
    assign proc_18_data_FIFO_blk[5] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.V_1_1_blk_n);
    assign proc_18_data_PIPO_blk[5] = 1'b0;
    assign proc_18_start_FIFO_blk[5] = 1'b0;
    assign proc_18_TLF_FIFO_blk[5] = 1'b0;
    assign proc_18_input_sync_blk[5] = 1'b0;
    assign proc_18_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_18[5] = dl_detect_out ? proc_dep_vld_vec_18_reg[5] : (proc_18_data_FIFO_blk[5] | proc_18_data_PIPO_blk[5] | proc_18_start_FIFO_blk[5] | proc_18_TLF_FIFO_blk[5] | proc_18_input_sync_blk[5] | proc_18_output_sync_blk[5]);
    assign proc_18_data_FIFO_blk[6] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.V_1_2_blk_n);
    assign proc_18_data_PIPO_blk[6] = 1'b0;
    assign proc_18_start_FIFO_blk[6] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_11_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.real_start & (trans_in_cnt_11 == trans_out_cnt_11) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_11_U0_U.if_read);
    assign proc_18_TLF_FIFO_blk[6] = 1'b0;
    assign proc_18_input_sync_blk[6] = 1'b0;
    assign proc_18_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_18[6] = dl_detect_out ? proc_dep_vld_vec_18_reg[6] : (proc_18_data_FIFO_blk[6] | proc_18_data_PIPO_blk[6] | proc_18_start_FIFO_blk[6] | proc_18_TLF_FIFO_blk[6] | proc_18_input_sync_blk[6] | proc_18_output_sync_blk[6]);
    assign proc_18_data_FIFO_blk[7] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.V_1_2_blk_n);
    assign proc_18_data_PIPO_blk[7] = 1'b0;
    assign proc_18_start_FIFO_blk[7] = 1'b0;
    assign proc_18_TLF_FIFO_blk[7] = 1'b0;
    assign proc_18_input_sync_blk[7] = 1'b0;
    assign proc_18_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_18[7] = dl_detect_out ? proc_dep_vld_vec_18_reg[7] : (proc_18_data_FIFO_blk[7] | proc_18_data_PIPO_blk[7] | proc_18_start_FIFO_blk[7] | proc_18_TLF_FIFO_blk[7] | proc_18_input_sync_blk[7] | proc_18_output_sync_blk[7]);
    assign proc_18_data_FIFO_blk[8] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.V_1_3_blk_n);
    assign proc_18_data_PIPO_blk[8] = 1'b0;
    assign proc_18_start_FIFO_blk[8] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_15_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.real_start & (trans_in_cnt_11 == trans_out_cnt_11) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_15_U0_U.if_read);
    assign proc_18_TLF_FIFO_blk[8] = 1'b0;
    assign proc_18_input_sync_blk[8] = 1'b0;
    assign proc_18_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_18[8] = dl_detect_out ? proc_dep_vld_vec_18_reg[8] : (proc_18_data_FIFO_blk[8] | proc_18_data_PIPO_blk[8] | proc_18_start_FIFO_blk[8] | proc_18_TLF_FIFO_blk[8] | proc_18_input_sync_blk[8] | proc_18_output_sync_blk[8]);
    assign proc_18_data_FIFO_blk[9] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.V_1_3_blk_n);
    assign proc_18_data_PIPO_blk[9] = 1'b0;
    assign proc_18_start_FIFO_blk[9] = 1'b0;
    assign proc_18_TLF_FIFO_blk[9] = 1'b0;
    assign proc_18_input_sync_blk[9] = 1'b0;
    assign proc_18_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_18[9] = dl_detect_out ? proc_dep_vld_vec_18_reg[9] : (proc_18_data_FIFO_blk[9] | proc_18_data_PIPO_blk[9] | proc_18_start_FIFO_blk[9] | proc_18_TLF_FIFO_blk[9] | proc_18_input_sync_blk[9] | proc_18_output_sync_blk[9]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_18_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_18_reg <= proc_dep_vld_vec_18;
        end
    end
    assign in_chan_dep_vld_vec_18[0] = dep_chan_vld_13_18;
    assign in_chan_dep_data_vec_18[61 : 0] = dep_chan_data_13_18;
    assign token_in_vec_18[0] = token_13_18;
    assign in_chan_dep_vld_vec_18[1] = dep_chan_vld_15_18;
    assign in_chan_dep_data_vec_18[123 : 62] = dep_chan_data_15_18;
    assign token_in_vec_18[1] = token_15_18;
    assign in_chan_dep_vld_vec_18[2] = dep_chan_vld_23_18;
    assign in_chan_dep_data_vec_18[185 : 124] = dep_chan_data_23_18;
    assign token_in_vec_18[2] = token_23_18;
    assign in_chan_dep_vld_vec_18[3] = dep_chan_vld_24_18;
    assign in_chan_dep_data_vec_18[247 : 186] = dep_chan_data_24_18;
    assign token_in_vec_18[3] = token_24_18;
    assign in_chan_dep_vld_vec_18[4] = dep_chan_vld_29_18;
    assign in_chan_dep_data_vec_18[309 : 248] = dep_chan_data_29_18;
    assign token_in_vec_18[4] = token_29_18;
    assign in_chan_dep_vld_vec_18[5] = dep_chan_vld_30_18;
    assign in_chan_dep_data_vec_18[371 : 310] = dep_chan_data_30_18;
    assign token_in_vec_18[5] = token_30_18;
    assign in_chan_dep_vld_vec_18[6] = dep_chan_vld_35_18;
    assign in_chan_dep_data_vec_18[433 : 372] = dep_chan_data_35_18;
    assign token_in_vec_18[6] = token_35_18;
    assign in_chan_dep_vld_vec_18[7] = dep_chan_vld_36_18;
    assign in_chan_dep_data_vec_18[495 : 434] = dep_chan_data_36_18;
    assign token_in_vec_18[7] = token_36_18;
    assign in_chan_dep_vld_vec_18[8] = dep_chan_vld_41_18;
    assign in_chan_dep_data_vec_18[557 : 496] = dep_chan_data_41_18;
    assign token_in_vec_18[8] = token_41_18;
    assign in_chan_dep_vld_vec_18[9] = dep_chan_vld_42_18;
    assign in_chan_dep_data_vec_18[619 : 558] = dep_chan_data_42_18;
    assign token_in_vec_18[9] = token_42_18;
    assign dep_chan_vld_18_13 = out_chan_dep_vld_vec_18[0];
    assign dep_chan_data_18_13 = out_chan_dep_data_18;
    assign token_18_13 = token_out_vec_18[0];
    assign dep_chan_vld_18_15 = out_chan_dep_vld_vec_18[1];
    assign dep_chan_data_18_15 = out_chan_dep_data_18;
    assign token_18_15 = token_out_vec_18[1];
    assign dep_chan_vld_18_23 = out_chan_dep_vld_vec_18[2];
    assign dep_chan_data_18_23 = out_chan_dep_data_18;
    assign token_18_23 = token_out_vec_18[2];
    assign dep_chan_vld_18_24 = out_chan_dep_vld_vec_18[3];
    assign dep_chan_data_18_24 = out_chan_dep_data_18;
    assign token_18_24 = token_out_vec_18[3];
    assign dep_chan_vld_18_29 = out_chan_dep_vld_vec_18[4];
    assign dep_chan_data_18_29 = out_chan_dep_data_18;
    assign token_18_29 = token_out_vec_18[4];
    assign dep_chan_vld_18_30 = out_chan_dep_vld_vec_18[5];
    assign dep_chan_data_18_30 = out_chan_dep_data_18;
    assign token_18_30 = token_out_vec_18[5];
    assign dep_chan_vld_18_35 = out_chan_dep_vld_vec_18[6];
    assign dep_chan_data_18_35 = out_chan_dep_data_18;
    assign token_18_35 = token_out_vec_18[6];
    assign dep_chan_vld_18_36 = out_chan_dep_vld_vec_18[7];
    assign dep_chan_data_18_36 = out_chan_dep_data_18;
    assign token_18_36 = token_out_vec_18[7];
    assign dep_chan_vld_18_41 = out_chan_dep_vld_vec_18[8];
    assign dep_chan_data_18_41 = out_chan_dep_data_18;
    assign token_18_41 = token_out_vec_18[8];
    assign dep_chan_vld_18_42 = out_chan_dep_vld_vec_18[9];
    assign dep_chan_data_18_42 = out_chan_dep_data_18;
    assign token_18_42 = token_out_vec_18[9];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 19, 3, 3) ViT_Block_hls_deadlock_detect_unit_19 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_19),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_19),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_19),
        .token_in_vec(token_in_vec_19),
        .dl_detect_in(dl_detect_out),
        .origin(origin[19]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_19),
        .out_chan_dep_data(out_chan_dep_data_19),
        .token_out_vec(token_out_vec_19),
        .dl_detect_out(dl_in_vec[19]));

    assign proc_19_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62.Q_1_0_blk_n);
    assign proc_19_data_PIPO_blk[0] = 1'b0;
    assign proc_19_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_U0_U.if_write);
    assign proc_19_TLF_FIFO_blk[0] = 1'b0;
    assign proc_19_input_sync_blk[0] = 1'b0;
    assign proc_19_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_19[0] = dl_detect_out ? proc_dep_vld_vec_19_reg[0] : (proc_19_data_FIFO_blk[0] | proc_19_data_PIPO_blk[0] | proc_19_start_FIFO_blk[0] | proc_19_TLF_FIFO_blk[0] | proc_19_input_sync_blk[0] | proc_19_output_sync_blk[0]);
    assign proc_19_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.K_1_0_blk_n);
    assign proc_19_data_PIPO_blk[1] = 1'b0;
    assign proc_19_start_FIFO_blk[1] = 1'b0;
    assign proc_19_TLF_FIFO_blk[1] = 1'b0;
    assign proc_19_input_sync_blk[1] = 1'b0;
    assign proc_19_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_19[1] = dl_detect_out ? proc_dep_vld_vec_19_reg[1] : (proc_19_data_FIFO_blk[1] | proc_19_data_PIPO_blk[1] | proc_19_start_FIFO_blk[1] | proc_19_TLF_FIFO_blk[1] | proc_19_input_sync_blk[1] | proc_19_output_sync_blk[1]);
    assign proc_19_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.A_0_blk_n);
    assign proc_19_data_PIPO_blk[2] = 1'b0;
    assign proc_19_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.real_start & (trans_in_cnt_9 == trans_out_cnt_9) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_U0_U.if_read);
    assign proc_19_TLF_FIFO_blk[2] = 1'b0;
    assign proc_19_input_sync_blk[2] = 1'b0;
    assign proc_19_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_19[2] = dl_detect_out ? proc_dep_vld_vec_19_reg[2] : (proc_19_data_FIFO_blk[2] | proc_19_data_PIPO_blk[2] | proc_19_start_FIFO_blk[2] | proc_19_TLF_FIFO_blk[2] | proc_19_input_sync_blk[2] | proc_19_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_19_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_19_reg <= proc_dep_vld_vec_19;
        end
    end
    assign in_chan_dep_vld_vec_19[0] = dep_chan_vld_16_19;
    assign in_chan_dep_data_vec_19[61 : 0] = dep_chan_data_16_19;
    assign token_in_vec_19[0] = token_16_19;
    assign in_chan_dep_vld_vec_19[1] = dep_chan_vld_17_19;
    assign in_chan_dep_data_vec_19[123 : 62] = dep_chan_data_17_19;
    assign token_in_vec_19[1] = token_17_19;
    assign in_chan_dep_vld_vec_19[2] = dep_chan_vld_21_19;
    assign in_chan_dep_data_vec_19[185 : 124] = dep_chan_data_21_19;
    assign token_in_vec_19[2] = token_21_19;
    assign dep_chan_vld_19_16 = out_chan_dep_vld_vec_19[0];
    assign dep_chan_data_19_16 = out_chan_dep_data_19;
    assign token_19_16 = token_out_vec_19[0];
    assign dep_chan_vld_19_17 = out_chan_dep_vld_vec_19[1];
    assign dep_chan_data_19_17 = out_chan_dep_data_19;
    assign token_19_17 = token_out_vec_19[1];
    assign dep_chan_vld_19_21 = out_chan_dep_vld_vec_19[2];
    assign dep_chan_data_19_21 = out_chan_dep_data_19;
    assign token_19_21 = token_out_vec_19[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 20, 3, 3) ViT_Block_hls_deadlock_detect_unit_20 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_20),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_20),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_20),
        .token_in_vec(token_in_vec_20),
        .dl_detect_in(dl_detect_out),
        .origin(origin[20]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_20),
        .out_chan_dep_data(out_chan_dep_data_20),
        .token_out_vec(token_out_vec_20),
        .dl_detect_out(dl_in_vec[20]));

    assign proc_20_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6_fu_62.Q_1_0_blk_n);
    assign proc_20_data_PIPO_blk[0] = 1'b0;
    assign proc_20_start_FIFO_blk[0] = 1'b0;
    assign proc_20_TLF_FIFO_blk[0] = 1'b0;
    assign proc_20_input_sync_blk[0] = 1'b0;
    assign proc_20_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_20[0] = dl_detect_out ? proc_dep_vld_vec_20_reg[0] : (proc_20_data_FIFO_blk[0] | proc_20_data_PIPO_blk[0] | proc_20_start_FIFO_blk[0] | proc_20_TLF_FIFO_blk[0] | proc_20_input_sync_blk[0] | proc_20_output_sync_blk[0]);
    assign proc_20_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.K_1_0_blk_n);
    assign proc_20_data_PIPO_blk[1] = 1'b0;
    assign proc_20_start_FIFO_blk[1] = 1'b0;
    assign proc_20_TLF_FIFO_blk[1] = 1'b0;
    assign proc_20_input_sync_blk[1] = 1'b0;
    assign proc_20_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_20[1] = dl_detect_out ? proc_dep_vld_vec_20_reg[1] : (proc_20_data_FIFO_blk[1] | proc_20_data_PIPO_blk[1] | proc_20_start_FIFO_blk[1] | proc_20_TLF_FIFO_blk[1] | proc_20_input_sync_blk[1] | proc_20_output_sync_blk[1]);
    assign proc_20_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8_fu_69.A_0_blk_n);
    assign proc_20_data_PIPO_blk[2] = 1'b0;
    assign proc_20_start_FIFO_blk[2] = 1'b0;
    assign proc_20_TLF_FIFO_blk[2] = 1'b0;
    assign proc_20_input_sync_blk[2] = 1'b0;
    assign proc_20_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_20[2] = dl_detect_out ? proc_dep_vld_vec_20_reg[2] : (proc_20_data_FIFO_blk[2] | proc_20_data_PIPO_blk[2] | proc_20_start_FIFO_blk[2] | proc_20_TLF_FIFO_blk[2] | proc_20_input_sync_blk[2] | proc_20_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_20_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_20_reg <= proc_dep_vld_vec_20;
        end
    end
    assign in_chan_dep_vld_vec_20[0] = dep_chan_vld_16_20;
    assign in_chan_dep_data_vec_20[61 : 0] = dep_chan_data_16_20;
    assign token_in_vec_20[0] = token_16_20;
    assign in_chan_dep_vld_vec_20[1] = dep_chan_vld_17_20;
    assign in_chan_dep_data_vec_20[123 : 62] = dep_chan_data_17_20;
    assign token_in_vec_20[1] = token_17_20;
    assign in_chan_dep_vld_vec_20[2] = dep_chan_vld_21_20;
    assign in_chan_dep_data_vec_20[185 : 124] = dep_chan_data_21_20;
    assign token_in_vec_20[2] = token_21_20;
    assign dep_chan_vld_20_16 = out_chan_dep_vld_vec_20[0];
    assign dep_chan_data_20_16 = out_chan_dep_data_20;
    assign token_20_16 = token_out_vec_20[0];
    assign dep_chan_vld_20_17 = out_chan_dep_vld_vec_20[1];
    assign dep_chan_data_20_17 = out_chan_dep_data_20;
    assign token_20_17 = token_out_vec_20[1];
    assign dep_chan_vld_20_21 = out_chan_dep_vld_vec_20[2];
    assign dep_chan_data_20_21 = out_chan_dep_data_20;
    assign token_20_21 = token_out_vec_20[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 21, 3, 3) ViT_Block_hls_deadlock_detect_unit_21 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_21),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_21),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_21),
        .token_in_vec(token_in_vec_21),
        .dl_detect_in(dl_detect_out),
        .origin(origin[21]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_21),
        .out_chan_dep_data(out_chan_dep_data_21),
        .token_out_vec(token_out_vec_21),
        .dl_detect_out(dl_in_vec[21]));

    assign proc_21_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_3_blk_n);
    assign proc_21_data_PIPO_blk[0] = 1'b0;
    assign proc_21_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_U0_U.if_write);
    assign proc_21_TLF_FIFO_blk[0] = 1'b0;
    assign proc_21_input_sync_blk[0] = 1'b0;
    assign proc_21_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_21[0] = dl_detect_out ? proc_dep_vld_vec_21_reg[0] : (proc_21_data_FIFO_blk[0] | proc_21_data_PIPO_blk[0] | proc_21_start_FIFO_blk[0] | proc_21_TLF_FIFO_blk[0] | proc_21_input_sync_blk[0] | proc_21_output_sync_blk[0]);
    assign proc_21_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_3_blk_n);
    assign proc_21_data_PIPO_blk[1] = 1'b0;
    assign proc_21_start_FIFO_blk[1] = 1'b0;
    assign proc_21_TLF_FIFO_blk[1] = 1'b0;
    assign proc_21_input_sync_blk[1] = 1'b0;
    assign proc_21_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_21[1] = dl_detect_out ? proc_dep_vld_vec_21_reg[1] : (proc_21_data_FIFO_blk[1] | proc_21_data_PIPO_blk[1] | proc_21_start_FIFO_blk[1] | proc_21_TLF_FIFO_blk[1] | proc_21_input_sync_blk[1] | proc_21_output_sync_blk[1]);
    assign proc_21_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_s_3_blk_n);
    assign proc_21_data_PIPO_blk[2] = 1'b0;
    assign proc_21_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.real_start & (trans_in_cnt_10 == trans_out_cnt_10) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0_U.if_read);
    assign proc_21_TLF_FIFO_blk[2] = 1'b0;
    assign proc_21_input_sync_blk[2] = 1'b0;
    assign proc_21_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_21[2] = dl_detect_out ? proc_dep_vld_vec_21_reg[2] : (proc_21_data_FIFO_blk[2] | proc_21_data_PIPO_blk[2] | proc_21_start_FIFO_blk[2] | proc_21_TLF_FIFO_blk[2] | proc_21_input_sync_blk[2] | proc_21_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_21_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_21_reg <= proc_dep_vld_vec_21;
        end
    end
    assign in_chan_dep_vld_vec_21[0] = dep_chan_vld_19_21;
    assign in_chan_dep_data_vec_21[61 : 0] = dep_chan_data_19_21;
    assign token_in_vec_21[0] = token_19_21;
    assign in_chan_dep_vld_vec_21[1] = dep_chan_vld_20_21;
    assign in_chan_dep_data_vec_21[123 : 62] = dep_chan_data_20_21;
    assign token_in_vec_21[1] = token_20_21;
    assign in_chan_dep_vld_vec_21[2] = dep_chan_vld_22_21;
    assign in_chan_dep_data_vec_21[185 : 124] = dep_chan_data_22_21;
    assign token_in_vec_21[2] = token_22_21;
    assign dep_chan_vld_21_19 = out_chan_dep_vld_vec_21[0];
    assign dep_chan_data_21_19 = out_chan_dep_data_21;
    assign token_21_19 = token_out_vec_21[0];
    assign dep_chan_vld_21_20 = out_chan_dep_vld_vec_21[1];
    assign dep_chan_data_21_20 = out_chan_dep_data_21;
    assign token_21_20 = token_out_vec_21[1];
    assign dep_chan_vld_21_22 = out_chan_dep_vld_vec_21[2];
    assign dep_chan_data_21_22 = out_chan_dep_data_21;
    assign token_21_22 = token_out_vec_21[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 22, 3, 3) ViT_Block_hls_deadlock_detect_unit_22 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_22),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_22),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_22),
        .token_in_vec(token_in_vec_22),
        .dl_detect_in(dl_detect_out),
        .origin(origin[22]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_22),
        .out_chan_dep_data(out_chan_dep_data_22),
        .token_out_vec(token_out_vec_22),
        .dl_detect_out(dl_in_vec[22]));

    assign proc_22_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0.A_s_0_blk_n);
    assign proc_22_data_PIPO_blk[0] = 1'b0;
    assign proc_22_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0_U.if_write);
    assign proc_22_TLF_FIFO_blk[0] = 1'b0;
    assign proc_22_input_sync_blk[0] = 1'b0;
    assign proc_22_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_22[0] = dl_detect_out ? proc_dep_vld_vec_22_reg[0] : (proc_22_data_FIFO_blk[0] | proc_22_data_PIPO_blk[0] | proc_22_start_FIFO_blk[0] | proc_22_TLF_FIFO_blk[0] | proc_22_input_sync_blk[0] | proc_22_output_sync_blk[0]);
    assign proc_22_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0.A_sx_0_blk_n);
    assign proc_22_data_PIPO_blk[1] = 1'b0;
    assign proc_22_start_FIFO_blk[1] = 1'b0;
    assign proc_22_TLF_FIFO_blk[1] = 1'b0;
    assign proc_22_input_sync_blk[1] = 1'b0;
    assign proc_22_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_22[1] = dl_detect_out ? proc_dep_vld_vec_22_reg[1] : (proc_22_data_FIFO_blk[1] | proc_22_data_PIPO_blk[1] | proc_22_start_FIFO_blk[1] | proc_22_TLF_FIFO_blk[1] | proc_22_input_sync_blk[1] | proc_22_output_sync_blk[1]);
    assign proc_22_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0.A_sx_0_blk_n);
    assign proc_22_data_PIPO_blk[2] = 1'b0;
    assign proc_22_start_FIFO_blk[2] = 1'b0;
    assign proc_22_TLF_FIFO_blk[2] = 1'b0;
    assign proc_22_input_sync_blk[2] = 1'b0;
    assign proc_22_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_22[2] = dl_detect_out ? proc_dep_vld_vec_22_reg[2] : (proc_22_data_FIFO_blk[2] | proc_22_data_PIPO_blk[2] | proc_22_start_FIFO_blk[2] | proc_22_TLF_FIFO_blk[2] | proc_22_input_sync_blk[2] | proc_22_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_22_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_22_reg <= proc_dep_vld_vec_22;
        end
    end
    assign in_chan_dep_vld_vec_22[0] = dep_chan_vld_21_22;
    assign in_chan_dep_data_vec_22[61 : 0] = dep_chan_data_21_22;
    assign token_in_vec_22[0] = token_21_22;
    assign in_chan_dep_vld_vec_22[1] = dep_chan_vld_23_22;
    assign in_chan_dep_data_vec_22[123 : 62] = dep_chan_data_23_22;
    assign token_in_vec_22[1] = token_23_22;
    assign in_chan_dep_vld_vec_22[2] = dep_chan_vld_24_22;
    assign in_chan_dep_data_vec_22[185 : 124] = dep_chan_data_24_22;
    assign token_in_vec_22[2] = token_24_22;
    assign dep_chan_vld_22_21 = out_chan_dep_vld_vec_22[0];
    assign dep_chan_data_22_21 = out_chan_dep_data_22;
    assign token_22_21 = token_out_vec_22[0];
    assign dep_chan_vld_22_23 = out_chan_dep_vld_vec_22[1];
    assign dep_chan_data_22_23 = out_chan_dep_data_22;
    assign token_22_23 = token_out_vec_22[1];
    assign dep_chan_vld_22_24 = out_chan_dep_vld_vec_22[2];
    assign dep_chan_data_22_24 = out_chan_dep_data_22;
    assign token_22_24 = token_out_vec_22[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 23, 3, 3) ViT_Block_hls_deadlock_detect_unit_23 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_23),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_23),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_23),
        .token_in_vec(token_in_vec_23),
        .dl_detect_in(dl_detect_out),
        .origin(origin[23]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_23),
        .out_chan_dep_data(out_chan_dep_data_23),
        .token_out_vec(token_out_vec_23),
        .dl_detect_out(dl_in_vec[23]));

    assign proc_23_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222.A_sx_0_blk_n);
    assign proc_23_data_PIPO_blk[0] = 1'b0;
    assign proc_23_start_FIFO_blk[0] = 1'b0;
    assign proc_23_TLF_FIFO_blk[0] = 1'b0;
    assign proc_23_input_sync_blk[0] = 1'b0;
    assign proc_23_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_23[0] = dl_detect_out ? proc_dep_vld_vec_23_reg[0] : (proc_23_data_FIFO_blk[0] | proc_23_data_PIPO_blk[0] | proc_23_start_FIFO_blk[0] | proc_23_TLF_FIFO_blk[0] | proc_23_input_sync_blk[0] | proc_23_output_sync_blk[0]);
    assign proc_23_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.V_1_0_blk_n);
    assign proc_23_data_PIPO_blk[1] = 1'b0;
    assign proc_23_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_U0_U.if_write);
    assign proc_23_TLF_FIFO_blk[1] = 1'b0;
    assign proc_23_input_sync_blk[1] = 1'b0;
    assign proc_23_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_23[1] = dl_detect_out ? proc_dep_vld_vec_23_reg[1] : (proc_23_data_FIFO_blk[1] | proc_23_data_PIPO_blk[1] | proc_23_start_FIFO_blk[1] | proc_23_TLF_FIFO_blk[1] | proc_23_input_sync_blk[1] | proc_23_output_sync_blk[1]);
    assign proc_23_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.head_out_0_blk_n);
    assign proc_23_data_PIPO_blk[2] = 1'b0;
    assign proc_23_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_merge_heads_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.real_start & (trans_in_cnt_18 == trans_out_cnt_18) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_merge_heads_U0_U.if_read);
    assign proc_23_TLF_FIFO_blk[2] = 1'b0;
    assign proc_23_input_sync_blk[2] = 1'b0;
    assign proc_23_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_23[2] = dl_detect_out ? proc_dep_vld_vec_23_reg[2] : (proc_23_data_FIFO_blk[2] | proc_23_data_PIPO_blk[2] | proc_23_start_FIFO_blk[2] | proc_23_TLF_FIFO_blk[2] | proc_23_input_sync_blk[2] | proc_23_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_23_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_23_reg <= proc_dep_vld_vec_23;
        end
    end
    assign in_chan_dep_vld_vec_23[0] = dep_chan_vld_18_23;
    assign in_chan_dep_data_vec_23[61 : 0] = dep_chan_data_18_23;
    assign token_in_vec_23[0] = token_18_23;
    assign in_chan_dep_vld_vec_23[1] = dep_chan_vld_22_23;
    assign in_chan_dep_data_vec_23[123 : 62] = dep_chan_data_22_23;
    assign token_in_vec_23[1] = token_22_23;
    assign in_chan_dep_vld_vec_23[2] = dep_chan_vld_43_23;
    assign in_chan_dep_data_vec_23[185 : 124] = dep_chan_data_43_23;
    assign token_in_vec_23[2] = token_43_23;
    assign dep_chan_vld_23_22 = out_chan_dep_vld_vec_23[0];
    assign dep_chan_data_23_22 = out_chan_dep_data_23;
    assign token_23_22 = token_out_vec_23[0];
    assign dep_chan_vld_23_18 = out_chan_dep_vld_vec_23[1];
    assign dep_chan_data_23_18 = out_chan_dep_data_23;
    assign token_23_18 = token_out_vec_23[1];
    assign dep_chan_vld_23_43 = out_chan_dep_vld_vec_23[2];
    assign dep_chan_data_23_43 = out_chan_dep_data_23;
    assign token_23_43 = token_out_vec_23[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 24, 3, 3) ViT_Block_hls_deadlock_detect_unit_24 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_24),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_24),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_24),
        .token_in_vec(token_in_vec_24),
        .dl_detect_in(dl_detect_out),
        .origin(origin[24]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_24),
        .out_chan_dep_data(out_chan_dep_data_24),
        .token_out_vec(token_out_vec_24),
        .dl_detect_out(dl_in_vec[24]));

    assign proc_24_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5_fu_222.A_sx_0_blk_n);
    assign proc_24_data_PIPO_blk[0] = 1'b0;
    assign proc_24_start_FIFO_blk[0] = 1'b0;
    assign proc_24_TLF_FIFO_blk[0] = 1'b0;
    assign proc_24_input_sync_blk[0] = 1'b0;
    assign proc_24_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_24[0] = dl_detect_out ? proc_dep_vld_vec_24_reg[0] : (proc_24_data_FIFO_blk[0] | proc_24_data_PIPO_blk[0] | proc_24_start_FIFO_blk[0] | proc_24_TLF_FIFO_blk[0] | proc_24_input_sync_blk[0] | proc_24_output_sync_blk[0]);
    assign proc_24_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.V_1_0_blk_n);
    assign proc_24_data_PIPO_blk[1] = 1'b0;
    assign proc_24_start_FIFO_blk[1] = 1'b0;
    assign proc_24_TLF_FIFO_blk[1] = 1'b0;
    assign proc_24_input_sync_blk[1] = 1'b0;
    assign proc_24_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_24[1] = dl_detect_out ? proc_dep_vld_vec_24_reg[1] : (proc_24_data_FIFO_blk[1] | proc_24_data_PIPO_blk[1] | proc_24_start_FIFO_blk[1] | proc_24_TLF_FIFO_blk[1] | proc_24_input_sync_blk[1] | proc_24_output_sync_blk[1]);
    assign proc_24_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_U0.grp_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6_fu_229.head_out_0_blk_n);
    assign proc_24_data_PIPO_blk[2] = 1'b0;
    assign proc_24_start_FIFO_blk[2] = 1'b0;
    assign proc_24_TLF_FIFO_blk[2] = 1'b0;
    assign proc_24_input_sync_blk[2] = 1'b0;
    assign proc_24_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_24[2] = dl_detect_out ? proc_dep_vld_vec_24_reg[2] : (proc_24_data_FIFO_blk[2] | proc_24_data_PIPO_blk[2] | proc_24_start_FIFO_blk[2] | proc_24_TLF_FIFO_blk[2] | proc_24_input_sync_blk[2] | proc_24_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_24_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_24_reg <= proc_dep_vld_vec_24;
        end
    end
    assign in_chan_dep_vld_vec_24[0] = dep_chan_vld_18_24;
    assign in_chan_dep_data_vec_24[61 : 0] = dep_chan_data_18_24;
    assign token_in_vec_24[0] = token_18_24;
    assign in_chan_dep_vld_vec_24[1] = dep_chan_vld_22_24;
    assign in_chan_dep_data_vec_24[123 : 62] = dep_chan_data_22_24;
    assign token_in_vec_24[1] = token_22_24;
    assign in_chan_dep_vld_vec_24[2] = dep_chan_vld_43_24;
    assign in_chan_dep_data_vec_24[185 : 124] = dep_chan_data_43_24;
    assign token_in_vec_24[2] = token_43_24;
    assign dep_chan_vld_24_22 = out_chan_dep_vld_vec_24[0];
    assign dep_chan_data_24_22 = out_chan_dep_data_24;
    assign token_24_22 = token_out_vec_24[0];
    assign dep_chan_vld_24_18 = out_chan_dep_vld_vec_24[1];
    assign dep_chan_data_24_18 = out_chan_dep_data_24;
    assign token_24_18 = token_out_vec_24[1];
    assign dep_chan_vld_24_43 = out_chan_dep_vld_vec_24[2];
    assign dep_chan_data_24_43 = out_chan_dep_data_24;
    assign token_24_43 = token_out_vec_24[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 25, 3, 3) ViT_Block_hls_deadlock_detect_unit_25 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_25),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_25),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_25),
        .token_in_vec(token_in_vec_25),
        .dl_detect_in(dl_detect_out),
        .origin(origin[25]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_25),
        .out_chan_dep_data(out_chan_dep_data_25),
        .token_out_vec(token_out_vec_25),
        .dl_detect_out(dl_in_vec[25]));

    assign proc_25_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6_fu_62.Q_1_1_blk_n);
    assign proc_25_data_PIPO_blk[0] = 1'b0;
    assign proc_25_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_4_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_4_U0_U.if_write);
    assign proc_25_TLF_FIFO_blk[0] = 1'b0;
    assign proc_25_input_sync_blk[0] = 1'b0;
    assign proc_25_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_25[0] = dl_detect_out ? proc_dep_vld_vec_25_reg[0] : (proc_25_data_FIFO_blk[0] | proc_25_data_PIPO_blk[0] | proc_25_start_FIFO_blk[0] | proc_25_TLF_FIFO_blk[0] | proc_25_input_sync_blk[0] | proc_25_output_sync_blk[0]);
    assign proc_25_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.K_1_1_blk_n);
    assign proc_25_data_PIPO_blk[1] = 1'b0;
    assign proc_25_start_FIFO_blk[1] = 1'b0;
    assign proc_25_TLF_FIFO_blk[1] = 1'b0;
    assign proc_25_input_sync_blk[1] = 1'b0;
    assign proc_25_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_25[1] = dl_detect_out ? proc_dep_vld_vec_25_reg[1] : (proc_25_data_FIFO_blk[1] | proc_25_data_PIPO_blk[1] | proc_25_start_FIFO_blk[1] | proc_25_TLF_FIFO_blk[1] | proc_25_input_sync_blk[1] | proc_25_output_sync_blk[1]);
    assign proc_25_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.A_1_blk_n);
    assign proc_25_data_PIPO_blk[2] = 1'b0;
    assign proc_25_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_5_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.real_start & (trans_in_cnt_12 == trans_out_cnt_12) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_5_U0_U.if_read);
    assign proc_25_TLF_FIFO_blk[2] = 1'b0;
    assign proc_25_input_sync_blk[2] = 1'b0;
    assign proc_25_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_25[2] = dl_detect_out ? proc_dep_vld_vec_25_reg[2] : (proc_25_data_FIFO_blk[2] | proc_25_data_PIPO_blk[2] | proc_25_start_FIFO_blk[2] | proc_25_TLF_FIFO_blk[2] | proc_25_input_sync_blk[2] | proc_25_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_25_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_25_reg <= proc_dep_vld_vec_25;
        end
    end
    assign in_chan_dep_vld_vec_25[0] = dep_chan_vld_16_25;
    assign in_chan_dep_data_vec_25[61 : 0] = dep_chan_data_16_25;
    assign token_in_vec_25[0] = token_16_25;
    assign in_chan_dep_vld_vec_25[1] = dep_chan_vld_17_25;
    assign in_chan_dep_data_vec_25[123 : 62] = dep_chan_data_17_25;
    assign token_in_vec_25[1] = token_17_25;
    assign in_chan_dep_vld_vec_25[2] = dep_chan_vld_27_25;
    assign in_chan_dep_data_vec_25[185 : 124] = dep_chan_data_27_25;
    assign token_in_vec_25[2] = token_27_25;
    assign dep_chan_vld_25_16 = out_chan_dep_vld_vec_25[0];
    assign dep_chan_data_25_16 = out_chan_dep_data_25;
    assign token_25_16 = token_out_vec_25[0];
    assign dep_chan_vld_25_17 = out_chan_dep_vld_vec_25[1];
    assign dep_chan_data_25_17 = out_chan_dep_data_25;
    assign token_25_17 = token_out_vec_25[1];
    assign dep_chan_vld_25_27 = out_chan_dep_vld_vec_25[2];
    assign dep_chan_data_25_27 = out_chan_dep_data_25;
    assign token_25_27 = token_out_vec_25[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 26, 3, 3) ViT_Block_hls_deadlock_detect_unit_26 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_26),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_26),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_26),
        .token_in_vec(token_in_vec_26),
        .dl_detect_in(dl_detect_out),
        .origin(origin[26]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_26),
        .out_chan_dep_data(out_chan_dep_data_26),
        .token_out_vec(token_out_vec_26),
        .dl_detect_out(dl_in_vec[26]));

    assign proc_26_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6_fu_62.Q_1_1_blk_n);
    assign proc_26_data_PIPO_blk[0] = 1'b0;
    assign proc_26_start_FIFO_blk[0] = 1'b0;
    assign proc_26_TLF_FIFO_blk[0] = 1'b0;
    assign proc_26_input_sync_blk[0] = 1'b0;
    assign proc_26_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_26[0] = dl_detect_out ? proc_dep_vld_vec_26_reg[0] : (proc_26_data_FIFO_blk[0] | proc_26_data_PIPO_blk[0] | proc_26_start_FIFO_blk[0] | proc_26_TLF_FIFO_blk[0] | proc_26_input_sync_blk[0] | proc_26_output_sync_blk[0]);
    assign proc_26_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.K_1_1_blk_n);
    assign proc_26_data_PIPO_blk[1] = 1'b0;
    assign proc_26_start_FIFO_blk[1] = 1'b0;
    assign proc_26_TLF_FIFO_blk[1] = 1'b0;
    assign proc_26_input_sync_blk[1] = 1'b0;
    assign proc_26_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_26[1] = dl_detect_out ? proc_dep_vld_vec_26_reg[1] : (proc_26_data_FIFO_blk[1] | proc_26_data_PIPO_blk[1] | proc_26_start_FIFO_blk[1] | proc_26_TLF_FIFO_blk[1] | proc_26_input_sync_blk[1] | proc_26_output_sync_blk[1]);
    assign proc_26_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_U0.grp_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8_fu_69.A_1_blk_n);
    assign proc_26_data_PIPO_blk[2] = 1'b0;
    assign proc_26_start_FIFO_blk[2] = 1'b0;
    assign proc_26_TLF_FIFO_blk[2] = 1'b0;
    assign proc_26_input_sync_blk[2] = 1'b0;
    assign proc_26_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_26[2] = dl_detect_out ? proc_dep_vld_vec_26_reg[2] : (proc_26_data_FIFO_blk[2] | proc_26_data_PIPO_blk[2] | proc_26_start_FIFO_blk[2] | proc_26_TLF_FIFO_blk[2] | proc_26_input_sync_blk[2] | proc_26_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_26_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_26_reg <= proc_dep_vld_vec_26;
        end
    end
    assign in_chan_dep_vld_vec_26[0] = dep_chan_vld_16_26;
    assign in_chan_dep_data_vec_26[61 : 0] = dep_chan_data_16_26;
    assign token_in_vec_26[0] = token_16_26;
    assign in_chan_dep_vld_vec_26[1] = dep_chan_vld_17_26;
    assign in_chan_dep_data_vec_26[123 : 62] = dep_chan_data_17_26;
    assign token_in_vec_26[1] = token_17_26;
    assign in_chan_dep_vld_vec_26[2] = dep_chan_vld_27_26;
    assign in_chan_dep_data_vec_26[185 : 124] = dep_chan_data_27_26;
    assign token_in_vec_26[2] = token_27_26;
    assign dep_chan_vld_26_16 = out_chan_dep_vld_vec_26[0];
    assign dep_chan_data_26_16 = out_chan_dep_data_26;
    assign token_26_16 = token_out_vec_26[0];
    assign dep_chan_vld_26_17 = out_chan_dep_vld_vec_26[1];
    assign dep_chan_data_26_17 = out_chan_dep_data_26;
    assign token_26_17 = token_out_vec_26[1];
    assign dep_chan_vld_26_27 = out_chan_dep_vld_vec_26[2];
    assign dep_chan_data_26_27 = out_chan_dep_data_26;
    assign token_26_27 = token_out_vec_26[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 27, 3, 3) ViT_Block_hls_deadlock_detect_unit_27 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_27),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_27),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_27),
        .token_in_vec(token_in_vec_27),
        .dl_detect_in(dl_detect_out),
        .origin(origin[27]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_27),
        .out_chan_dep_data(out_chan_dep_data_27),
        .token_out_vec(token_out_vec_27),
        .dl_detect_out(dl_in_vec[27]));

    assign proc_27_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_3_blk_n);
    assign proc_27_data_PIPO_blk[0] = 1'b0;
    assign proc_27_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_5_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_5_U0_U.if_write);
    assign proc_27_TLF_FIFO_blk[0] = 1'b0;
    assign proc_27_input_sync_blk[0] = 1'b0;
    assign proc_27_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_27[0] = dl_detect_out ? proc_dep_vld_vec_27_reg[0] : (proc_27_data_FIFO_blk[0] | proc_27_data_PIPO_blk[0] | proc_27_start_FIFO_blk[0] | proc_27_TLF_FIFO_blk[0] | proc_27_input_sync_blk[0] | proc_27_output_sync_blk[0]);
    assign proc_27_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_3_blk_n);
    assign proc_27_data_PIPO_blk[1] = 1'b0;
    assign proc_27_start_FIFO_blk[1] = 1'b0;
    assign proc_27_TLF_FIFO_blk[1] = 1'b0;
    assign proc_27_input_sync_blk[1] = 1'b0;
    assign proc_27_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_27[1] = dl_detect_out ? proc_dep_vld_vec_27_reg[1] : (proc_27_data_FIFO_blk[1] | proc_27_data_PIPO_blk[1] | proc_27_start_FIFO_blk[1] | proc_27_TLF_FIFO_blk[1] | proc_27_input_sync_blk[1] | proc_27_output_sync_blk[1]);
    assign proc_27_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_s_3_blk_n);
    assign proc_27_data_PIPO_blk[2] = 1'b0;
    assign proc_27_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.real_start & (trans_in_cnt_13 == trans_out_cnt_13) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0_U.if_read);
    assign proc_27_TLF_FIFO_blk[2] = 1'b0;
    assign proc_27_input_sync_blk[2] = 1'b0;
    assign proc_27_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_27[2] = dl_detect_out ? proc_dep_vld_vec_27_reg[2] : (proc_27_data_FIFO_blk[2] | proc_27_data_PIPO_blk[2] | proc_27_start_FIFO_blk[2] | proc_27_TLF_FIFO_blk[2] | proc_27_input_sync_blk[2] | proc_27_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_27_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_27_reg <= proc_dep_vld_vec_27;
        end
    end
    assign in_chan_dep_vld_vec_27[0] = dep_chan_vld_25_27;
    assign in_chan_dep_data_vec_27[61 : 0] = dep_chan_data_25_27;
    assign token_in_vec_27[0] = token_25_27;
    assign in_chan_dep_vld_vec_27[1] = dep_chan_vld_26_27;
    assign in_chan_dep_data_vec_27[123 : 62] = dep_chan_data_26_27;
    assign token_in_vec_27[1] = token_26_27;
    assign in_chan_dep_vld_vec_27[2] = dep_chan_vld_28_27;
    assign in_chan_dep_data_vec_27[185 : 124] = dep_chan_data_28_27;
    assign token_in_vec_27[2] = token_28_27;
    assign dep_chan_vld_27_25 = out_chan_dep_vld_vec_27[0];
    assign dep_chan_data_27_25 = out_chan_dep_data_27;
    assign token_27_25 = token_out_vec_27[0];
    assign dep_chan_vld_27_26 = out_chan_dep_vld_vec_27[1];
    assign dep_chan_data_27_26 = out_chan_dep_data_27;
    assign token_27_26 = token_out_vec_27[1];
    assign dep_chan_vld_27_28 = out_chan_dep_vld_vec_27[2];
    assign dep_chan_data_27_28 = out_chan_dep_data_27;
    assign token_27_28 = token_out_vec_27[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 28, 3, 3) ViT_Block_hls_deadlock_detect_unit_28 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_28),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_28),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_28),
        .token_in_vec(token_in_vec_28),
        .dl_detect_in(dl_detect_out),
        .origin(origin[28]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_28),
        .out_chan_dep_data(out_chan_dep_data_28),
        .token_out_vec(token_out_vec_28),
        .dl_detect_out(dl_in_vec[28]));

    assign proc_28_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0.A_s_1_blk_n);
    assign proc_28_data_PIPO_blk[0] = 1'b0;
    assign proc_28_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0_U.if_write);
    assign proc_28_TLF_FIFO_blk[0] = 1'b0;
    assign proc_28_input_sync_blk[0] = 1'b0;
    assign proc_28_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_28[0] = dl_detect_out ? proc_dep_vld_vec_28_reg[0] : (proc_28_data_FIFO_blk[0] | proc_28_data_PIPO_blk[0] | proc_28_start_FIFO_blk[0] | proc_28_TLF_FIFO_blk[0] | proc_28_input_sync_blk[0] | proc_28_output_sync_blk[0]);
    assign proc_28_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0.A_sx_1_blk_n);
    assign proc_28_data_PIPO_blk[1] = 1'b0;
    assign proc_28_start_FIFO_blk[1] = 1'b0;
    assign proc_28_TLF_FIFO_blk[1] = 1'b0;
    assign proc_28_input_sync_blk[1] = 1'b0;
    assign proc_28_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_28[1] = dl_detect_out ? proc_dep_vld_vec_28_reg[1] : (proc_28_data_FIFO_blk[1] | proc_28_data_PIPO_blk[1] | proc_28_start_FIFO_blk[1] | proc_28_TLF_FIFO_blk[1] | proc_28_input_sync_blk[1] | proc_28_output_sync_blk[1]);
    assign proc_28_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0.A_sx_1_blk_n);
    assign proc_28_data_PIPO_blk[2] = 1'b0;
    assign proc_28_start_FIFO_blk[2] = 1'b0;
    assign proc_28_TLF_FIFO_blk[2] = 1'b0;
    assign proc_28_input_sync_blk[2] = 1'b0;
    assign proc_28_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_28[2] = dl_detect_out ? proc_dep_vld_vec_28_reg[2] : (proc_28_data_FIFO_blk[2] | proc_28_data_PIPO_blk[2] | proc_28_start_FIFO_blk[2] | proc_28_TLF_FIFO_blk[2] | proc_28_input_sync_blk[2] | proc_28_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_28_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_28_reg <= proc_dep_vld_vec_28;
        end
    end
    assign in_chan_dep_vld_vec_28[0] = dep_chan_vld_27_28;
    assign in_chan_dep_data_vec_28[61 : 0] = dep_chan_data_27_28;
    assign token_in_vec_28[0] = token_27_28;
    assign in_chan_dep_vld_vec_28[1] = dep_chan_vld_29_28;
    assign in_chan_dep_data_vec_28[123 : 62] = dep_chan_data_29_28;
    assign token_in_vec_28[1] = token_29_28;
    assign in_chan_dep_vld_vec_28[2] = dep_chan_vld_30_28;
    assign in_chan_dep_data_vec_28[185 : 124] = dep_chan_data_30_28;
    assign token_in_vec_28[2] = token_30_28;
    assign dep_chan_vld_28_27 = out_chan_dep_vld_vec_28[0];
    assign dep_chan_data_28_27 = out_chan_dep_data_28;
    assign token_28_27 = token_out_vec_28[0];
    assign dep_chan_vld_28_29 = out_chan_dep_vld_vec_28[1];
    assign dep_chan_data_28_29 = out_chan_dep_data_28;
    assign token_28_29 = token_out_vec_28[1];
    assign dep_chan_vld_28_30 = out_chan_dep_vld_vec_28[2];
    assign dep_chan_data_28_30 = out_chan_dep_data_28;
    assign token_28_30 = token_out_vec_28[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 29, 3, 3) ViT_Block_hls_deadlock_detect_unit_29 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_29),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_29),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_29),
        .token_in_vec(token_in_vec_29),
        .dl_detect_in(dl_detect_out),
        .origin(origin[29]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_29),
        .out_chan_dep_data(out_chan_dep_data_29),
        .token_out_vec(token_out_vec_29),
        .dl_detect_out(dl_in_vec[29]));

    assign proc_29_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5_fu_222.A_sx_1_blk_n);
    assign proc_29_data_PIPO_blk[0] = 1'b0;
    assign proc_29_start_FIFO_blk[0] = 1'b0;
    assign proc_29_TLF_FIFO_blk[0] = 1'b0;
    assign proc_29_input_sync_blk[0] = 1'b0;
    assign proc_29_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_29[0] = dl_detect_out ? proc_dep_vld_vec_29_reg[0] : (proc_29_data_FIFO_blk[0] | proc_29_data_PIPO_blk[0] | proc_29_start_FIFO_blk[0] | proc_29_TLF_FIFO_blk[0] | proc_29_input_sync_blk[0] | proc_29_output_sync_blk[0]);
    assign proc_29_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.V_1_1_blk_n);
    assign proc_29_data_PIPO_blk[1] = 1'b0;
    assign proc_29_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_7_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_7_U0_U.if_write);
    assign proc_29_TLF_FIFO_blk[1] = 1'b0;
    assign proc_29_input_sync_blk[1] = 1'b0;
    assign proc_29_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_29[1] = dl_detect_out ? proc_dep_vld_vec_29_reg[1] : (proc_29_data_FIFO_blk[1] | proc_29_data_PIPO_blk[1] | proc_29_start_FIFO_blk[1] | proc_29_TLF_FIFO_blk[1] | proc_29_input_sync_blk[1] | proc_29_output_sync_blk[1]);
    assign proc_29_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.head_out_1_blk_n);
    assign proc_29_data_PIPO_blk[2] = 1'b0;
    assign proc_29_start_FIFO_blk[2] = 1'b0;
    assign proc_29_TLF_FIFO_blk[2] = 1'b0;
    assign proc_29_input_sync_blk[2] = 1'b0;
    assign proc_29_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_29[2] = dl_detect_out ? proc_dep_vld_vec_29_reg[2] : (proc_29_data_FIFO_blk[2] | proc_29_data_PIPO_blk[2] | proc_29_start_FIFO_blk[2] | proc_29_TLF_FIFO_blk[2] | proc_29_input_sync_blk[2] | proc_29_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_29_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_29_reg <= proc_dep_vld_vec_29;
        end
    end
    assign in_chan_dep_vld_vec_29[0] = dep_chan_vld_18_29;
    assign in_chan_dep_data_vec_29[61 : 0] = dep_chan_data_18_29;
    assign token_in_vec_29[0] = token_18_29;
    assign in_chan_dep_vld_vec_29[1] = dep_chan_vld_28_29;
    assign in_chan_dep_data_vec_29[123 : 62] = dep_chan_data_28_29;
    assign token_in_vec_29[1] = token_28_29;
    assign in_chan_dep_vld_vec_29[2] = dep_chan_vld_43_29;
    assign in_chan_dep_data_vec_29[185 : 124] = dep_chan_data_43_29;
    assign token_in_vec_29[2] = token_43_29;
    assign dep_chan_vld_29_28 = out_chan_dep_vld_vec_29[0];
    assign dep_chan_data_29_28 = out_chan_dep_data_29;
    assign token_29_28 = token_out_vec_29[0];
    assign dep_chan_vld_29_18 = out_chan_dep_vld_vec_29[1];
    assign dep_chan_data_29_18 = out_chan_dep_data_29;
    assign token_29_18 = token_out_vec_29[1];
    assign dep_chan_vld_29_43 = out_chan_dep_vld_vec_29[2];
    assign dep_chan_data_29_43 = out_chan_dep_data_29;
    assign token_29_43 = token_out_vec_29[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 30, 3, 3) ViT_Block_hls_deadlock_detect_unit_30 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_30),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_30),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_30),
        .token_in_vec(token_in_vec_30),
        .dl_detect_in(dl_detect_out),
        .origin(origin[30]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_30),
        .out_chan_dep_data(out_chan_dep_data_30),
        .token_out_vec(token_out_vec_30),
        .dl_detect_out(dl_in_vec[30]));

    assign proc_30_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5_fu_222.A_sx_1_blk_n);
    assign proc_30_data_PIPO_blk[0] = 1'b0;
    assign proc_30_start_FIFO_blk[0] = 1'b0;
    assign proc_30_TLF_FIFO_blk[0] = 1'b0;
    assign proc_30_input_sync_blk[0] = 1'b0;
    assign proc_30_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_30[0] = dl_detect_out ? proc_dep_vld_vec_30_reg[0] : (proc_30_data_FIFO_blk[0] | proc_30_data_PIPO_blk[0] | proc_30_start_FIFO_blk[0] | proc_30_TLF_FIFO_blk[0] | proc_30_input_sync_blk[0] | proc_30_output_sync_blk[0]);
    assign proc_30_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.V_1_1_blk_n);
    assign proc_30_data_PIPO_blk[1] = 1'b0;
    assign proc_30_start_FIFO_blk[1] = 1'b0;
    assign proc_30_TLF_FIFO_blk[1] = 1'b0;
    assign proc_30_input_sync_blk[1] = 1'b0;
    assign proc_30_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_30[1] = dl_detect_out ? proc_dep_vld_vec_30_reg[1] : (proc_30_data_FIFO_blk[1] | proc_30_data_PIPO_blk[1] | proc_30_start_FIFO_blk[1] | proc_30_TLF_FIFO_blk[1] | proc_30_input_sync_blk[1] | proc_30_output_sync_blk[1]);
    assign proc_30_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_U0.grp_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6_fu_229.head_out_1_blk_n);
    assign proc_30_data_PIPO_blk[2] = 1'b0;
    assign proc_30_start_FIFO_blk[2] = 1'b0;
    assign proc_30_TLF_FIFO_blk[2] = 1'b0;
    assign proc_30_input_sync_blk[2] = 1'b0;
    assign proc_30_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_30[2] = dl_detect_out ? proc_dep_vld_vec_30_reg[2] : (proc_30_data_FIFO_blk[2] | proc_30_data_PIPO_blk[2] | proc_30_start_FIFO_blk[2] | proc_30_TLF_FIFO_blk[2] | proc_30_input_sync_blk[2] | proc_30_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_30_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_30_reg <= proc_dep_vld_vec_30;
        end
    end
    assign in_chan_dep_vld_vec_30[0] = dep_chan_vld_18_30;
    assign in_chan_dep_data_vec_30[61 : 0] = dep_chan_data_18_30;
    assign token_in_vec_30[0] = token_18_30;
    assign in_chan_dep_vld_vec_30[1] = dep_chan_vld_28_30;
    assign in_chan_dep_data_vec_30[123 : 62] = dep_chan_data_28_30;
    assign token_in_vec_30[1] = token_28_30;
    assign in_chan_dep_vld_vec_30[2] = dep_chan_vld_43_30;
    assign in_chan_dep_data_vec_30[185 : 124] = dep_chan_data_43_30;
    assign token_in_vec_30[2] = token_43_30;
    assign dep_chan_vld_30_28 = out_chan_dep_vld_vec_30[0];
    assign dep_chan_data_30_28 = out_chan_dep_data_30;
    assign token_30_28 = token_out_vec_30[0];
    assign dep_chan_vld_30_18 = out_chan_dep_vld_vec_30[1];
    assign dep_chan_data_30_18 = out_chan_dep_data_30;
    assign token_30_18 = token_out_vec_30[1];
    assign dep_chan_vld_30_43 = out_chan_dep_vld_vec_30[2];
    assign dep_chan_data_30_43 = out_chan_dep_data_30;
    assign token_30_43 = token_out_vec_30[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 31, 3, 3) ViT_Block_hls_deadlock_detect_unit_31 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_31),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_31),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_31),
        .token_in_vec(token_in_vec_31),
        .dl_detect_in(dl_detect_out),
        .origin(origin[31]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_31),
        .out_chan_dep_data(out_chan_dep_data_31),
        .token_out_vec(token_out_vec_31),
        .dl_detect_out(dl_in_vec[31]));

    assign proc_31_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6_fu_62.Q_1_2_blk_n);
    assign proc_31_data_PIPO_blk[0] = 1'b0;
    assign proc_31_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_8_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_8_U0_U.if_write);
    assign proc_31_TLF_FIFO_blk[0] = 1'b0;
    assign proc_31_input_sync_blk[0] = 1'b0;
    assign proc_31_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_31[0] = dl_detect_out ? proc_dep_vld_vec_31_reg[0] : (proc_31_data_FIFO_blk[0] | proc_31_data_PIPO_blk[0] | proc_31_start_FIFO_blk[0] | proc_31_TLF_FIFO_blk[0] | proc_31_input_sync_blk[0] | proc_31_output_sync_blk[0]);
    assign proc_31_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.K_1_2_blk_n);
    assign proc_31_data_PIPO_blk[1] = 1'b0;
    assign proc_31_start_FIFO_blk[1] = 1'b0;
    assign proc_31_TLF_FIFO_blk[1] = 1'b0;
    assign proc_31_input_sync_blk[1] = 1'b0;
    assign proc_31_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_31[1] = dl_detect_out ? proc_dep_vld_vec_31_reg[1] : (proc_31_data_FIFO_blk[1] | proc_31_data_PIPO_blk[1] | proc_31_start_FIFO_blk[1] | proc_31_TLF_FIFO_blk[1] | proc_31_input_sync_blk[1] | proc_31_output_sync_blk[1]);
    assign proc_31_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.A_2_blk_n);
    assign proc_31_data_PIPO_blk[2] = 1'b0;
    assign proc_31_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_9_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.real_start & (trans_in_cnt_14 == trans_out_cnt_14) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_9_U0_U.if_read);
    assign proc_31_TLF_FIFO_blk[2] = 1'b0;
    assign proc_31_input_sync_blk[2] = 1'b0;
    assign proc_31_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_31[2] = dl_detect_out ? proc_dep_vld_vec_31_reg[2] : (proc_31_data_FIFO_blk[2] | proc_31_data_PIPO_blk[2] | proc_31_start_FIFO_blk[2] | proc_31_TLF_FIFO_blk[2] | proc_31_input_sync_blk[2] | proc_31_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_31_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_31_reg <= proc_dep_vld_vec_31;
        end
    end
    assign in_chan_dep_vld_vec_31[0] = dep_chan_vld_16_31;
    assign in_chan_dep_data_vec_31[61 : 0] = dep_chan_data_16_31;
    assign token_in_vec_31[0] = token_16_31;
    assign in_chan_dep_vld_vec_31[1] = dep_chan_vld_17_31;
    assign in_chan_dep_data_vec_31[123 : 62] = dep_chan_data_17_31;
    assign token_in_vec_31[1] = token_17_31;
    assign in_chan_dep_vld_vec_31[2] = dep_chan_vld_33_31;
    assign in_chan_dep_data_vec_31[185 : 124] = dep_chan_data_33_31;
    assign token_in_vec_31[2] = token_33_31;
    assign dep_chan_vld_31_16 = out_chan_dep_vld_vec_31[0];
    assign dep_chan_data_31_16 = out_chan_dep_data_31;
    assign token_31_16 = token_out_vec_31[0];
    assign dep_chan_vld_31_17 = out_chan_dep_vld_vec_31[1];
    assign dep_chan_data_31_17 = out_chan_dep_data_31;
    assign token_31_17 = token_out_vec_31[1];
    assign dep_chan_vld_31_33 = out_chan_dep_vld_vec_31[2];
    assign dep_chan_data_31_33 = out_chan_dep_data_31;
    assign token_31_33 = token_out_vec_31[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 32, 3, 3) ViT_Block_hls_deadlock_detect_unit_32 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_32),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_32),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_32),
        .token_in_vec(token_in_vec_32),
        .dl_detect_in(dl_detect_out),
        .origin(origin[32]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_32),
        .out_chan_dep_data(out_chan_dep_data_32),
        .token_out_vec(token_out_vec_32),
        .dl_detect_out(dl_in_vec[32]));

    assign proc_32_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6_fu_62.Q_1_2_blk_n);
    assign proc_32_data_PIPO_blk[0] = 1'b0;
    assign proc_32_start_FIFO_blk[0] = 1'b0;
    assign proc_32_TLF_FIFO_blk[0] = 1'b0;
    assign proc_32_input_sync_blk[0] = 1'b0;
    assign proc_32_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_32[0] = dl_detect_out ? proc_dep_vld_vec_32_reg[0] : (proc_32_data_FIFO_blk[0] | proc_32_data_PIPO_blk[0] | proc_32_start_FIFO_blk[0] | proc_32_TLF_FIFO_blk[0] | proc_32_input_sync_blk[0] | proc_32_output_sync_blk[0]);
    assign proc_32_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.K_1_2_blk_n);
    assign proc_32_data_PIPO_blk[1] = 1'b0;
    assign proc_32_start_FIFO_blk[1] = 1'b0;
    assign proc_32_TLF_FIFO_blk[1] = 1'b0;
    assign proc_32_input_sync_blk[1] = 1'b0;
    assign proc_32_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_32[1] = dl_detect_out ? proc_dep_vld_vec_32_reg[1] : (proc_32_data_FIFO_blk[1] | proc_32_data_PIPO_blk[1] | proc_32_start_FIFO_blk[1] | proc_32_TLF_FIFO_blk[1] | proc_32_input_sync_blk[1] | proc_32_output_sync_blk[1]);
    assign proc_32_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_8_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_U0.grp_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8_fu_69.A_2_blk_n);
    assign proc_32_data_PIPO_blk[2] = 1'b0;
    assign proc_32_start_FIFO_blk[2] = 1'b0;
    assign proc_32_TLF_FIFO_blk[2] = 1'b0;
    assign proc_32_input_sync_blk[2] = 1'b0;
    assign proc_32_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_32[2] = dl_detect_out ? proc_dep_vld_vec_32_reg[2] : (proc_32_data_FIFO_blk[2] | proc_32_data_PIPO_blk[2] | proc_32_start_FIFO_blk[2] | proc_32_TLF_FIFO_blk[2] | proc_32_input_sync_blk[2] | proc_32_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_32_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_32_reg <= proc_dep_vld_vec_32;
        end
    end
    assign in_chan_dep_vld_vec_32[0] = dep_chan_vld_16_32;
    assign in_chan_dep_data_vec_32[61 : 0] = dep_chan_data_16_32;
    assign token_in_vec_32[0] = token_16_32;
    assign in_chan_dep_vld_vec_32[1] = dep_chan_vld_17_32;
    assign in_chan_dep_data_vec_32[123 : 62] = dep_chan_data_17_32;
    assign token_in_vec_32[1] = token_17_32;
    assign in_chan_dep_vld_vec_32[2] = dep_chan_vld_33_32;
    assign in_chan_dep_data_vec_32[185 : 124] = dep_chan_data_33_32;
    assign token_in_vec_32[2] = token_33_32;
    assign dep_chan_vld_32_16 = out_chan_dep_vld_vec_32[0];
    assign dep_chan_data_32_16 = out_chan_dep_data_32;
    assign token_32_16 = token_out_vec_32[0];
    assign dep_chan_vld_32_17 = out_chan_dep_vld_vec_32[1];
    assign dep_chan_data_32_17 = out_chan_dep_data_32;
    assign token_32_17 = token_out_vec_32[1];
    assign dep_chan_vld_32_33 = out_chan_dep_vld_vec_32[2];
    assign dep_chan_data_32_33 = out_chan_dep_data_32;
    assign token_32_33 = token_out_vec_32[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 33, 3, 3) ViT_Block_hls_deadlock_detect_unit_33 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_33),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_33),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_33),
        .token_in_vec(token_in_vec_33),
        .dl_detect_in(dl_detect_out),
        .origin(origin[33]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_33),
        .out_chan_dep_data(out_chan_dep_data_33),
        .token_out_vec(token_out_vec_33),
        .dl_detect_out(dl_in_vec[33]));

    assign proc_33_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_3_blk_n);
    assign proc_33_data_PIPO_blk[0] = 1'b0;
    assign proc_33_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_9_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_9_U0_U.if_write);
    assign proc_33_TLF_FIFO_blk[0] = 1'b0;
    assign proc_33_input_sync_blk[0] = 1'b0;
    assign proc_33_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_33[0] = dl_detect_out ? proc_dep_vld_vec_33_reg[0] : (proc_33_data_FIFO_blk[0] | proc_33_data_PIPO_blk[0] | proc_33_start_FIFO_blk[0] | proc_33_TLF_FIFO_blk[0] | proc_33_input_sync_blk[0] | proc_33_output_sync_blk[0]);
    assign proc_33_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_3_blk_n);
    assign proc_33_data_PIPO_blk[1] = 1'b0;
    assign proc_33_start_FIFO_blk[1] = 1'b0;
    assign proc_33_TLF_FIFO_blk[1] = 1'b0;
    assign proc_33_input_sync_blk[1] = 1'b0;
    assign proc_33_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_33[1] = dl_detect_out ? proc_dep_vld_vec_33_reg[1] : (proc_33_data_FIFO_blk[1] | proc_33_data_PIPO_blk[1] | proc_33_start_FIFO_blk[1] | proc_33_TLF_FIFO_blk[1] | proc_33_input_sync_blk[1] | proc_33_output_sync_blk[1]);
    assign proc_33_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_s_3_blk_n);
    assign proc_33_data_PIPO_blk[2] = 1'b0;
    assign proc_33_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_9_U0.real_start & (trans_in_cnt_15 == trans_out_cnt_15) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0_U.if_read);
    assign proc_33_TLF_FIFO_blk[2] = 1'b0;
    assign proc_33_input_sync_blk[2] = 1'b0;
    assign proc_33_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_33[2] = dl_detect_out ? proc_dep_vld_vec_33_reg[2] : (proc_33_data_FIFO_blk[2] | proc_33_data_PIPO_blk[2] | proc_33_start_FIFO_blk[2] | proc_33_TLF_FIFO_blk[2] | proc_33_input_sync_blk[2] | proc_33_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_33_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_33_reg <= proc_dep_vld_vec_33;
        end
    end
    assign in_chan_dep_vld_vec_33[0] = dep_chan_vld_31_33;
    assign in_chan_dep_data_vec_33[61 : 0] = dep_chan_data_31_33;
    assign token_in_vec_33[0] = token_31_33;
    assign in_chan_dep_vld_vec_33[1] = dep_chan_vld_32_33;
    assign in_chan_dep_data_vec_33[123 : 62] = dep_chan_data_32_33;
    assign token_in_vec_33[1] = token_32_33;
    assign in_chan_dep_vld_vec_33[2] = dep_chan_vld_34_33;
    assign in_chan_dep_data_vec_33[185 : 124] = dep_chan_data_34_33;
    assign token_in_vec_33[2] = token_34_33;
    assign dep_chan_vld_33_31 = out_chan_dep_vld_vec_33[0];
    assign dep_chan_data_33_31 = out_chan_dep_data_33;
    assign token_33_31 = token_out_vec_33[0];
    assign dep_chan_vld_33_32 = out_chan_dep_vld_vec_33[1];
    assign dep_chan_data_33_32 = out_chan_dep_data_33;
    assign token_33_32 = token_out_vec_33[1];
    assign dep_chan_vld_33_34 = out_chan_dep_vld_vec_33[2];
    assign dep_chan_data_33_34 = out_chan_dep_data_33;
    assign token_33_34 = token_out_vec_33[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 34, 3, 3) ViT_Block_hls_deadlock_detect_unit_34 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_34),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_34),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_34),
        .token_in_vec(token_in_vec_34),
        .dl_detect_in(dl_detect_out),
        .origin(origin[34]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_34),
        .out_chan_dep_data(out_chan_dep_data_34),
        .token_out_vec(token_out_vec_34),
        .dl_detect_out(dl_in_vec[34]));

    assign proc_34_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0.A_s_2_blk_n);
    assign proc_34_data_PIPO_blk[0] = 1'b0;
    assign proc_34_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0_U.if_write);
    assign proc_34_TLF_FIFO_blk[0] = 1'b0;
    assign proc_34_input_sync_blk[0] = 1'b0;
    assign proc_34_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_34[0] = dl_detect_out ? proc_dep_vld_vec_34_reg[0] : (proc_34_data_FIFO_blk[0] | proc_34_data_PIPO_blk[0] | proc_34_start_FIFO_blk[0] | proc_34_TLF_FIFO_blk[0] | proc_34_input_sync_blk[0] | proc_34_output_sync_blk[0]);
    assign proc_34_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0.A_sx_2_blk_n);
    assign proc_34_data_PIPO_blk[1] = 1'b0;
    assign proc_34_start_FIFO_blk[1] = 1'b0;
    assign proc_34_TLF_FIFO_blk[1] = 1'b0;
    assign proc_34_input_sync_blk[1] = 1'b0;
    assign proc_34_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_34[1] = dl_detect_out ? proc_dep_vld_vec_34_reg[1] : (proc_34_data_FIFO_blk[1] | proc_34_data_PIPO_blk[1] | proc_34_start_FIFO_blk[1] | proc_34_TLF_FIFO_blk[1] | proc_34_input_sync_blk[1] | proc_34_output_sync_blk[1]);
    assign proc_34_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0.A_sx_2_blk_n);
    assign proc_34_data_PIPO_blk[2] = 1'b0;
    assign proc_34_start_FIFO_blk[2] = 1'b0;
    assign proc_34_TLF_FIFO_blk[2] = 1'b0;
    assign proc_34_input_sync_blk[2] = 1'b0;
    assign proc_34_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_34[2] = dl_detect_out ? proc_dep_vld_vec_34_reg[2] : (proc_34_data_FIFO_blk[2] | proc_34_data_PIPO_blk[2] | proc_34_start_FIFO_blk[2] | proc_34_TLF_FIFO_blk[2] | proc_34_input_sync_blk[2] | proc_34_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_34_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_34_reg <= proc_dep_vld_vec_34;
        end
    end
    assign in_chan_dep_vld_vec_34[0] = dep_chan_vld_33_34;
    assign in_chan_dep_data_vec_34[61 : 0] = dep_chan_data_33_34;
    assign token_in_vec_34[0] = token_33_34;
    assign in_chan_dep_vld_vec_34[1] = dep_chan_vld_35_34;
    assign in_chan_dep_data_vec_34[123 : 62] = dep_chan_data_35_34;
    assign token_in_vec_34[1] = token_35_34;
    assign in_chan_dep_vld_vec_34[2] = dep_chan_vld_36_34;
    assign in_chan_dep_data_vec_34[185 : 124] = dep_chan_data_36_34;
    assign token_in_vec_34[2] = token_36_34;
    assign dep_chan_vld_34_33 = out_chan_dep_vld_vec_34[0];
    assign dep_chan_data_34_33 = out_chan_dep_data_34;
    assign token_34_33 = token_out_vec_34[0];
    assign dep_chan_vld_34_35 = out_chan_dep_vld_vec_34[1];
    assign dep_chan_data_34_35 = out_chan_dep_data_34;
    assign token_34_35 = token_out_vec_34[1];
    assign dep_chan_vld_34_36 = out_chan_dep_vld_vec_34[2];
    assign dep_chan_data_34_36 = out_chan_dep_data_34;
    assign token_34_36 = token_out_vec_34[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 35, 3, 3) ViT_Block_hls_deadlock_detect_unit_35 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_35),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_35),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_35),
        .token_in_vec(token_in_vec_35),
        .dl_detect_in(dl_detect_out),
        .origin(origin[35]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_35),
        .out_chan_dep_data(out_chan_dep_data_35),
        .token_out_vec(token_out_vec_35),
        .dl_detect_out(dl_in_vec[35]));

    assign proc_35_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5_fu_222.A_sx_2_blk_n);
    assign proc_35_data_PIPO_blk[0] = 1'b0;
    assign proc_35_start_FIFO_blk[0] = 1'b0;
    assign proc_35_TLF_FIFO_blk[0] = 1'b0;
    assign proc_35_input_sync_blk[0] = 1'b0;
    assign proc_35_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_35[0] = dl_detect_out ? proc_dep_vld_vec_35_reg[0] : (proc_35_data_FIFO_blk[0] | proc_35_data_PIPO_blk[0] | proc_35_start_FIFO_blk[0] | proc_35_TLF_FIFO_blk[0] | proc_35_input_sync_blk[0] | proc_35_output_sync_blk[0]);
    assign proc_35_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.V_1_2_blk_n);
    assign proc_35_data_PIPO_blk[1] = 1'b0;
    assign proc_35_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_11_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_11_U0_U.if_write);
    assign proc_35_TLF_FIFO_blk[1] = 1'b0;
    assign proc_35_input_sync_blk[1] = 1'b0;
    assign proc_35_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_35[1] = dl_detect_out ? proc_dep_vld_vec_35_reg[1] : (proc_35_data_FIFO_blk[1] | proc_35_data_PIPO_blk[1] | proc_35_start_FIFO_blk[1] | proc_35_TLF_FIFO_blk[1] | proc_35_input_sync_blk[1] | proc_35_output_sync_blk[1]);
    assign proc_35_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.head_out_2_blk_n);
    assign proc_35_data_PIPO_blk[2] = 1'b0;
    assign proc_35_start_FIFO_blk[2] = 1'b0;
    assign proc_35_TLF_FIFO_blk[2] = 1'b0;
    assign proc_35_input_sync_blk[2] = 1'b0;
    assign proc_35_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_35[2] = dl_detect_out ? proc_dep_vld_vec_35_reg[2] : (proc_35_data_FIFO_blk[2] | proc_35_data_PIPO_blk[2] | proc_35_start_FIFO_blk[2] | proc_35_TLF_FIFO_blk[2] | proc_35_input_sync_blk[2] | proc_35_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_35_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_35_reg <= proc_dep_vld_vec_35;
        end
    end
    assign in_chan_dep_vld_vec_35[0] = dep_chan_vld_18_35;
    assign in_chan_dep_data_vec_35[61 : 0] = dep_chan_data_18_35;
    assign token_in_vec_35[0] = token_18_35;
    assign in_chan_dep_vld_vec_35[1] = dep_chan_vld_34_35;
    assign in_chan_dep_data_vec_35[123 : 62] = dep_chan_data_34_35;
    assign token_in_vec_35[1] = token_34_35;
    assign in_chan_dep_vld_vec_35[2] = dep_chan_vld_43_35;
    assign in_chan_dep_data_vec_35[185 : 124] = dep_chan_data_43_35;
    assign token_in_vec_35[2] = token_43_35;
    assign dep_chan_vld_35_34 = out_chan_dep_vld_vec_35[0];
    assign dep_chan_data_35_34 = out_chan_dep_data_35;
    assign token_35_34 = token_out_vec_35[0];
    assign dep_chan_vld_35_18 = out_chan_dep_vld_vec_35[1];
    assign dep_chan_data_35_18 = out_chan_dep_data_35;
    assign token_35_18 = token_out_vec_35[1];
    assign dep_chan_vld_35_43 = out_chan_dep_vld_vec_35[2];
    assign dep_chan_data_35_43 = out_chan_dep_data_35;
    assign token_35_43 = token_out_vec_35[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 36, 3, 3) ViT_Block_hls_deadlock_detect_unit_36 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_36),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_36),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_36),
        .token_in_vec(token_in_vec_36),
        .dl_detect_in(dl_detect_out),
        .origin(origin[36]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_36),
        .out_chan_dep_data(out_chan_dep_data_36),
        .token_out_vec(token_out_vec_36),
        .dl_detect_out(dl_in_vec[36]));

    assign proc_36_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5_fu_222.A_sx_2_blk_n);
    assign proc_36_data_PIPO_blk[0] = 1'b0;
    assign proc_36_start_FIFO_blk[0] = 1'b0;
    assign proc_36_TLF_FIFO_blk[0] = 1'b0;
    assign proc_36_input_sync_blk[0] = 1'b0;
    assign proc_36_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_36[0] = dl_detect_out ? proc_dep_vld_vec_36_reg[0] : (proc_36_data_FIFO_blk[0] | proc_36_data_PIPO_blk[0] | proc_36_start_FIFO_blk[0] | proc_36_TLF_FIFO_blk[0] | proc_36_input_sync_blk[0] | proc_36_output_sync_blk[0]);
    assign proc_36_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.V_1_2_blk_n);
    assign proc_36_data_PIPO_blk[1] = 1'b0;
    assign proc_36_start_FIFO_blk[1] = 1'b0;
    assign proc_36_TLF_FIFO_blk[1] = 1'b0;
    assign proc_36_input_sync_blk[1] = 1'b0;
    assign proc_36_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_36[1] = dl_detect_out ? proc_dep_vld_vec_36_reg[1] : (proc_36_data_FIFO_blk[1] | proc_36_data_PIPO_blk[1] | proc_36_start_FIFO_blk[1] | proc_36_TLF_FIFO_blk[1] | proc_36_input_sync_blk[1] | proc_36_output_sync_blk[1]);
    assign proc_36_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_11_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_U0.grp_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6_fu_229.head_out_2_blk_n);
    assign proc_36_data_PIPO_blk[2] = 1'b0;
    assign proc_36_start_FIFO_blk[2] = 1'b0;
    assign proc_36_TLF_FIFO_blk[2] = 1'b0;
    assign proc_36_input_sync_blk[2] = 1'b0;
    assign proc_36_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_36[2] = dl_detect_out ? proc_dep_vld_vec_36_reg[2] : (proc_36_data_FIFO_blk[2] | proc_36_data_PIPO_blk[2] | proc_36_start_FIFO_blk[2] | proc_36_TLF_FIFO_blk[2] | proc_36_input_sync_blk[2] | proc_36_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_36_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_36_reg <= proc_dep_vld_vec_36;
        end
    end
    assign in_chan_dep_vld_vec_36[0] = dep_chan_vld_18_36;
    assign in_chan_dep_data_vec_36[61 : 0] = dep_chan_data_18_36;
    assign token_in_vec_36[0] = token_18_36;
    assign in_chan_dep_vld_vec_36[1] = dep_chan_vld_34_36;
    assign in_chan_dep_data_vec_36[123 : 62] = dep_chan_data_34_36;
    assign token_in_vec_36[1] = token_34_36;
    assign in_chan_dep_vld_vec_36[2] = dep_chan_vld_43_36;
    assign in_chan_dep_data_vec_36[185 : 124] = dep_chan_data_43_36;
    assign token_in_vec_36[2] = token_43_36;
    assign dep_chan_vld_36_34 = out_chan_dep_vld_vec_36[0];
    assign dep_chan_data_36_34 = out_chan_dep_data_36;
    assign token_36_34 = token_out_vec_36[0];
    assign dep_chan_vld_36_18 = out_chan_dep_vld_vec_36[1];
    assign dep_chan_data_36_18 = out_chan_dep_data_36;
    assign token_36_18 = token_out_vec_36[1];
    assign dep_chan_vld_36_43 = out_chan_dep_vld_vec_36[2];
    assign dep_chan_data_36_43 = out_chan_dep_data_36;
    assign token_36_43 = token_out_vec_36[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 37, 3, 3) ViT_Block_hls_deadlock_detect_unit_37 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_37),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_37),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_37),
        .token_in_vec(token_in_vec_37),
        .dl_detect_in(dl_detect_out),
        .origin(origin[37]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_37),
        .out_chan_dep_data(out_chan_dep_data_37),
        .token_out_vec(token_out_vec_37),
        .dl_detect_out(dl_in_vec[37]));

    assign proc_37_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6_fu_62.Q_1_3_blk_n);
    assign proc_37_data_PIPO_blk[0] = 1'b0;
    assign proc_37_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_12_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM_tiled_12_U0_U.if_write);
    assign proc_37_TLF_FIFO_blk[0] = 1'b0;
    assign proc_37_input_sync_blk[0] = 1'b0;
    assign proc_37_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_37[0] = dl_detect_out ? proc_dep_vld_vec_37_reg[0] : (proc_37_data_FIFO_blk[0] | proc_37_data_PIPO_blk[0] | proc_37_start_FIFO_blk[0] | proc_37_TLF_FIFO_blk[0] | proc_37_input_sync_blk[0] | proc_37_output_sync_blk[0]);
    assign proc_37_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.K_1_3_blk_n);
    assign proc_37_data_PIPO_blk[1] = 1'b0;
    assign proc_37_start_FIFO_blk[1] = 1'b0;
    assign proc_37_TLF_FIFO_blk[1] = 1'b0;
    assign proc_37_input_sync_blk[1] = 1'b0;
    assign proc_37_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_37[1] = dl_detect_out ? proc_dep_vld_vec_37_reg[1] : (proc_37_data_FIFO_blk[1] | proc_37_data_PIPO_blk[1] | proc_37_start_FIFO_blk[1] | proc_37_TLF_FIFO_blk[1] | proc_37_input_sync_blk[1] | proc_37_output_sync_blk[1]);
    assign proc_37_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.A_3_blk_n);
    assign proc_37_data_PIPO_blk[2] = 1'b0;
    assign proc_37_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_13_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.real_start & (trans_in_cnt_16 == trans_out_cnt_16) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_13_U0_U.if_read);
    assign proc_37_TLF_FIFO_blk[2] = 1'b0;
    assign proc_37_input_sync_blk[2] = 1'b0;
    assign proc_37_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_37[2] = dl_detect_out ? proc_dep_vld_vec_37_reg[2] : (proc_37_data_FIFO_blk[2] | proc_37_data_PIPO_blk[2] | proc_37_start_FIFO_blk[2] | proc_37_TLF_FIFO_blk[2] | proc_37_input_sync_blk[2] | proc_37_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_37_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_37_reg <= proc_dep_vld_vec_37;
        end
    end
    assign in_chan_dep_vld_vec_37[0] = dep_chan_vld_16_37;
    assign in_chan_dep_data_vec_37[61 : 0] = dep_chan_data_16_37;
    assign token_in_vec_37[0] = token_16_37;
    assign in_chan_dep_vld_vec_37[1] = dep_chan_vld_17_37;
    assign in_chan_dep_data_vec_37[123 : 62] = dep_chan_data_17_37;
    assign token_in_vec_37[1] = token_17_37;
    assign in_chan_dep_vld_vec_37[2] = dep_chan_vld_39_37;
    assign in_chan_dep_data_vec_37[185 : 124] = dep_chan_data_39_37;
    assign token_in_vec_37[2] = token_39_37;
    assign dep_chan_vld_37_16 = out_chan_dep_vld_vec_37[0];
    assign dep_chan_data_37_16 = out_chan_dep_data_37;
    assign token_37_16 = token_out_vec_37[0];
    assign dep_chan_vld_37_17 = out_chan_dep_vld_vec_37[1];
    assign dep_chan_data_37_17 = out_chan_dep_data_37;
    assign token_37_17 = token_out_vec_37[1];
    assign dep_chan_vld_37_39 = out_chan_dep_vld_vec_37[2];
    assign dep_chan_data_37_39 = out_chan_dep_data_37;
    assign token_37_39 = token_out_vec_37[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 38, 3, 3) ViT_Block_hls_deadlock_detect_unit_38 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_38),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_38),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_38),
        .token_in_vec(token_in_vec_38),
        .dl_detect_in(dl_detect_out),
        .origin(origin[38]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_38),
        .out_chan_dep_data(out_chan_dep_data_38),
        .token_out_vec(token_out_vec_38),
        .dl_detect_out(dl_in_vec[38]));

    assign proc_38_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6_fu_62.Q_1_3_blk_n);
    assign proc_38_data_PIPO_blk[0] = 1'b0;
    assign proc_38_start_FIFO_blk[0] = 1'b0;
    assign proc_38_TLF_FIFO_blk[0] = 1'b0;
    assign proc_38_input_sync_blk[0] = 1'b0;
    assign proc_38_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_38[0] = dl_detect_out ? proc_dep_vld_vec_38_reg[0] : (proc_38_data_FIFO_blk[0] | proc_38_data_PIPO_blk[0] | proc_38_start_FIFO_blk[0] | proc_38_TLF_FIFO_blk[0] | proc_38_input_sync_blk[0] | proc_38_output_sync_blk[0]);
    assign proc_38_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2_fu_54.K_1_3_blk_n);
    assign proc_38_data_PIPO_blk[1] = 1'b0;
    assign proc_38_start_FIFO_blk[1] = 1'b0;
    assign proc_38_TLF_FIFO_blk[1] = 1'b0;
    assign proc_38_input_sync_blk[1] = 1'b0;
    assign proc_38_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_38[1] = dl_detect_out ? proc_dep_vld_vec_38_reg[1] : (proc_38_data_FIFO_blk[1] | proc_38_data_PIPO_blk[1] | proc_38_start_FIFO_blk[1] | proc_38_TLF_FIFO_blk[1] | proc_38_input_sync_blk[1] | proc_38_output_sync_blk[1]);
    assign proc_38_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_12_U0.MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_U0.grp_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8_fu_69.A_3_blk_n);
    assign proc_38_data_PIPO_blk[2] = 1'b0;
    assign proc_38_start_FIFO_blk[2] = 1'b0;
    assign proc_38_TLF_FIFO_blk[2] = 1'b0;
    assign proc_38_input_sync_blk[2] = 1'b0;
    assign proc_38_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_38[2] = dl_detect_out ? proc_dep_vld_vec_38_reg[2] : (proc_38_data_FIFO_blk[2] | proc_38_data_PIPO_blk[2] | proc_38_start_FIFO_blk[2] | proc_38_TLF_FIFO_blk[2] | proc_38_input_sync_blk[2] | proc_38_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_38_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_38_reg <= proc_dep_vld_vec_38;
        end
    end
    assign in_chan_dep_vld_vec_38[0] = dep_chan_vld_16_38;
    assign in_chan_dep_data_vec_38[61 : 0] = dep_chan_data_16_38;
    assign token_in_vec_38[0] = token_16_38;
    assign in_chan_dep_vld_vec_38[1] = dep_chan_vld_17_38;
    assign in_chan_dep_data_vec_38[123 : 62] = dep_chan_data_17_38;
    assign token_in_vec_38[1] = token_17_38;
    assign in_chan_dep_vld_vec_38[2] = dep_chan_vld_39_38;
    assign in_chan_dep_data_vec_38[185 : 124] = dep_chan_data_39_38;
    assign token_in_vec_38[2] = token_39_38;
    assign dep_chan_vld_38_16 = out_chan_dep_vld_vec_38[0];
    assign dep_chan_data_38_16 = out_chan_dep_data_38;
    assign token_38_16 = token_out_vec_38[0];
    assign dep_chan_vld_38_17 = out_chan_dep_vld_vec_38[1];
    assign dep_chan_data_38_17 = out_chan_dep_data_38;
    assign token_38_17 = token_out_vec_38[1];
    assign dep_chan_vld_38_39 = out_chan_dep_vld_vec_38[2];
    assign dep_chan_data_38_39 = out_chan_dep_data_38;
    assign token_38_39 = token_out_vec_38[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 39, 3, 3) ViT_Block_hls_deadlock_detect_unit_39 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_39),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_39),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_39),
        .token_in_vec(token_in_vec_39),
        .dl_detect_in(dl_detect_out),
        .origin(origin[39]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_39),
        .out_chan_dep_data(out_chan_dep_data_39),
        .token_out_vec(token_out_vec_39),
        .dl_detect_out(dl_in_vec[39]));

    assign proc_39_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_3_blk_n);
    assign proc_39_data_PIPO_blk[0] = 1'b0;
    assign proc_39_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_13_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_SOFTMAX_tile_13_U0_U.if_write);
    assign proc_39_TLF_FIFO_blk[0] = 1'b0;
    assign proc_39_input_sync_blk[0] = 1'b0;
    assign proc_39_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_39[0] = dl_detect_out ? proc_dep_vld_vec_39_reg[0] : (proc_39_data_FIFO_blk[0] | proc_39_data_PIPO_blk[0] | proc_39_start_FIFO_blk[0] | proc_39_TLF_FIFO_blk[0] | proc_39_input_sync_blk[0] | proc_39_output_sync_blk[0]);
    assign proc_39_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_3_blk_n);
    assign proc_39_data_PIPO_blk[1] = 1'b0;
    assign proc_39_start_FIFO_blk[1] = 1'b0;
    assign proc_39_TLF_FIFO_blk[1] = 1'b0;
    assign proc_39_input_sync_blk[1] = 1'b0;
    assign proc_39_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_39[1] = dl_detect_out ? proc_dep_vld_vec_39_reg[1] : (proc_39_data_FIFO_blk[1] | proc_39_data_PIPO_blk[1] | proc_39_start_FIFO_blk[1] | proc_39_TLF_FIFO_blk[1] | proc_39_input_sync_blk[1] | proc_39_output_sync_blk[1]);
    assign proc_39_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.grp_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_fu_18.A_s_3_blk_n);
    assign proc_39_data_PIPO_blk[2] = 1'b0;
    assign proc_39_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_13_U0.real_start & (trans_in_cnt_17 == trans_out_cnt_17) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0_U.if_read);
    assign proc_39_TLF_FIFO_blk[2] = 1'b0;
    assign proc_39_input_sync_blk[2] = 1'b0;
    assign proc_39_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_39[2] = dl_detect_out ? proc_dep_vld_vec_39_reg[2] : (proc_39_data_FIFO_blk[2] | proc_39_data_PIPO_blk[2] | proc_39_start_FIFO_blk[2] | proc_39_TLF_FIFO_blk[2] | proc_39_input_sync_blk[2] | proc_39_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_39_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_39_reg <= proc_dep_vld_vec_39;
        end
    end
    assign in_chan_dep_vld_vec_39[0] = dep_chan_vld_37_39;
    assign in_chan_dep_data_vec_39[61 : 0] = dep_chan_data_37_39;
    assign token_in_vec_39[0] = token_37_39;
    assign in_chan_dep_vld_vec_39[1] = dep_chan_vld_38_39;
    assign in_chan_dep_data_vec_39[123 : 62] = dep_chan_data_38_39;
    assign token_in_vec_39[1] = token_38_39;
    assign in_chan_dep_vld_vec_39[2] = dep_chan_vld_40_39;
    assign in_chan_dep_data_vec_39[185 : 124] = dep_chan_data_40_39;
    assign token_in_vec_39[2] = token_40_39;
    assign dep_chan_vld_39_37 = out_chan_dep_vld_vec_39[0];
    assign dep_chan_data_39_37 = out_chan_dep_data_39;
    assign token_39_37 = token_out_vec_39[0];
    assign dep_chan_vld_39_38 = out_chan_dep_vld_vec_39[1];
    assign dep_chan_data_39_38 = out_chan_dep_data_39;
    assign token_39_38 = token_out_vec_39[1];
    assign dep_chan_vld_39_40 = out_chan_dep_vld_vec_39[2];
    assign dep_chan_data_39_40 = out_chan_dep_data_39;
    assign token_39_40 = token_out_vec_39[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 40, 3, 3) ViT_Block_hls_deadlock_detect_unit_40 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_40),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_40),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_40),
        .token_in_vec(token_in_vec_40),
        .dl_detect_in(dl_detect_out),
        .origin(origin[40]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_40),
        .out_chan_dep_data(out_chan_dep_data_40),
        .token_out_vec(token_out_vec_40),
        .dl_detect_out(dl_in_vec[40]));

    assign proc_40_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0.A_s_3_blk_n);
    assign proc_40_data_PIPO_blk[0] = 1'b0;
    assign proc_40_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0_U.if_write);
    assign proc_40_TLF_FIFO_blk[0] = 1'b0;
    assign proc_40_input_sync_blk[0] = 1'b0;
    assign proc_40_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_40[0] = dl_detect_out ? proc_dep_vld_vec_40_reg[0] : (proc_40_data_FIFO_blk[0] | proc_40_data_PIPO_blk[0] | proc_40_start_FIFO_blk[0] | proc_40_TLF_FIFO_blk[0] | proc_40_input_sync_blk[0] | proc_40_output_sync_blk[0]);
    assign proc_40_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0.A_sx_3_blk_n);
    assign proc_40_data_PIPO_blk[1] = 1'b0;
    assign proc_40_start_FIFO_blk[1] = 1'b0;
    assign proc_40_TLF_FIFO_blk[1] = 1'b0;
    assign proc_40_input_sync_blk[1] = 1'b0;
    assign proc_40_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_40[1] = dl_detect_out ? proc_dep_vld_vec_40_reg[1] : (proc_40_data_FIFO_blk[1] | proc_40_data_PIPO_blk[1] | proc_40_start_FIFO_blk[1] | proc_40_TLF_FIFO_blk[1] | proc_40_input_sync_blk[1] | proc_40_output_sync_blk[1]);
    assign proc_40_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0.A_sx_3_blk_n);
    assign proc_40_data_PIPO_blk[2] = 1'b0;
    assign proc_40_start_FIFO_blk[2] = 1'b0;
    assign proc_40_TLF_FIFO_blk[2] = 1'b0;
    assign proc_40_input_sync_blk[2] = 1'b0;
    assign proc_40_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_40[2] = dl_detect_out ? proc_dep_vld_vec_40_reg[2] : (proc_40_data_FIFO_blk[2] | proc_40_data_PIPO_blk[2] | proc_40_start_FIFO_blk[2] | proc_40_TLF_FIFO_blk[2] | proc_40_input_sync_blk[2] | proc_40_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_40_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_40_reg <= proc_dep_vld_vec_40;
        end
    end
    assign in_chan_dep_vld_vec_40[0] = dep_chan_vld_39_40;
    assign in_chan_dep_data_vec_40[61 : 0] = dep_chan_data_39_40;
    assign token_in_vec_40[0] = token_39_40;
    assign in_chan_dep_vld_vec_40[1] = dep_chan_vld_41_40;
    assign in_chan_dep_data_vec_40[123 : 62] = dep_chan_data_41_40;
    assign token_in_vec_40[1] = token_41_40;
    assign in_chan_dep_vld_vec_40[2] = dep_chan_vld_42_40;
    assign in_chan_dep_data_vec_40[185 : 124] = dep_chan_data_42_40;
    assign token_in_vec_40[2] = token_42_40;
    assign dep_chan_vld_40_39 = out_chan_dep_vld_vec_40[0];
    assign dep_chan_data_40_39 = out_chan_dep_data_40;
    assign token_40_39 = token_out_vec_40[0];
    assign dep_chan_vld_40_41 = out_chan_dep_vld_vec_40[1];
    assign dep_chan_data_40_41 = out_chan_dep_data_40;
    assign token_40_41 = token_out_vec_40[1];
    assign dep_chan_vld_40_42 = out_chan_dep_vld_vec_40[2];
    assign dep_chan_data_40_42 = out_chan_dep_data_40;
    assign token_40_42 = token_out_vec_40[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 41, 3, 3) ViT_Block_hls_deadlock_detect_unit_41 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_41),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_41),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_41),
        .token_in_vec(token_in_vec_41),
        .dl_detect_in(dl_detect_out),
        .origin(origin[41]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_41),
        .out_chan_dep_data(out_chan_dep_data_41),
        .token_out_vec(token_out_vec_41),
        .dl_detect_out(dl_in_vec[41]));

    assign proc_41_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5_fu_222.A_sx_3_blk_n);
    assign proc_41_data_PIPO_blk[0] = 1'b0;
    assign proc_41_start_FIFO_blk[0] = 1'b0;
    assign proc_41_TLF_FIFO_blk[0] = 1'b0;
    assign proc_41_input_sync_blk[0] = 1'b0;
    assign proc_41_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_41[0] = dl_detect_out ? proc_dep_vld_vec_41_reg[0] : (proc_41_data_FIFO_blk[0] | proc_41_data_PIPO_blk[0] | proc_41_start_FIFO_blk[0] | proc_41_TLF_FIFO_blk[0] | proc_41_input_sync_blk[0] | proc_41_output_sync_blk[0]);
    assign proc_41_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.V_1_3_blk_n);
    assign proc_41_data_PIPO_blk[1] = 1'b0;
    assign proc_41_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_15_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_MM1_tiled_15_U0_U.if_write);
    assign proc_41_TLF_FIFO_blk[1] = 1'b0;
    assign proc_41_input_sync_blk[1] = 1'b0;
    assign proc_41_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_41[1] = dl_detect_out ? proc_dep_vld_vec_41_reg[1] : (proc_41_data_FIFO_blk[1] | proc_41_data_PIPO_blk[1] | proc_41_start_FIFO_blk[1] | proc_41_TLF_FIFO_blk[1] | proc_41_input_sync_blk[1] | proc_41_output_sync_blk[1]);
    assign proc_41_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.head_out_3_blk_n);
    assign proc_41_data_PIPO_blk[2] = 1'b0;
    assign proc_41_start_FIFO_blk[2] = 1'b0;
    assign proc_41_TLF_FIFO_blk[2] = 1'b0;
    assign proc_41_input_sync_blk[2] = 1'b0;
    assign proc_41_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_41[2] = dl_detect_out ? proc_dep_vld_vec_41_reg[2] : (proc_41_data_FIFO_blk[2] | proc_41_data_PIPO_blk[2] | proc_41_start_FIFO_blk[2] | proc_41_TLF_FIFO_blk[2] | proc_41_input_sync_blk[2] | proc_41_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_41_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_41_reg <= proc_dep_vld_vec_41;
        end
    end
    assign in_chan_dep_vld_vec_41[0] = dep_chan_vld_18_41;
    assign in_chan_dep_data_vec_41[61 : 0] = dep_chan_data_18_41;
    assign token_in_vec_41[0] = token_18_41;
    assign in_chan_dep_vld_vec_41[1] = dep_chan_vld_40_41;
    assign in_chan_dep_data_vec_41[123 : 62] = dep_chan_data_40_41;
    assign token_in_vec_41[1] = token_40_41;
    assign in_chan_dep_vld_vec_41[2] = dep_chan_vld_43_41;
    assign in_chan_dep_data_vec_41[185 : 124] = dep_chan_data_43_41;
    assign token_in_vec_41[2] = token_43_41;
    assign dep_chan_vld_41_40 = out_chan_dep_vld_vec_41[0];
    assign dep_chan_data_41_40 = out_chan_dep_data_41;
    assign token_41_40 = token_out_vec_41[0];
    assign dep_chan_vld_41_18 = out_chan_dep_vld_vec_41[1];
    assign dep_chan_data_41_18 = out_chan_dep_data_41;
    assign token_41_18 = token_out_vec_41[1];
    assign dep_chan_vld_41_43 = out_chan_dep_vld_vec_41[2];
    assign dep_chan_data_41_43 = out_chan_dep_data_41;
    assign token_41_43 = token_out_vec_41[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 42, 3, 3) ViT_Block_hls_deadlock_detect_unit_42 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_42),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_42),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_42),
        .token_in_vec(token_in_vec_42),
        .dl_detect_in(dl_detect_out),
        .origin(origin[42]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_42),
        .out_chan_dep_data(out_chan_dep_data_42),
        .token_out_vec(token_out_vec_42),
        .dl_detect_out(dl_in_vec[42]));

    assign proc_42_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5_fu_222.A_sx_3_blk_n);
    assign proc_42_data_PIPO_blk[0] = 1'b0;
    assign proc_42_start_FIFO_blk[0] = 1'b0;
    assign proc_42_TLF_FIFO_blk[0] = 1'b0;
    assign proc_42_input_sync_blk[0] = 1'b0;
    assign proc_42_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_42[0] = dl_detect_out ? proc_dep_vld_vec_42_reg[0] : (proc_42_data_FIFO_blk[0] | proc_42_data_PIPO_blk[0] | proc_42_start_FIFO_blk[0] | proc_42_TLF_FIFO_blk[0] | proc_42_input_sync_blk[0] | proc_42_output_sync_blk[0]);
    assign proc_42_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1_fu_214.V_1_3_blk_n);
    assign proc_42_data_PIPO_blk[1] = 1'b0;
    assign proc_42_start_FIFO_blk[1] = 1'b0;
    assign proc_42_TLF_FIFO_blk[1] = 1'b0;
    assign proc_42_input_sync_blk[1] = 1'b0;
    assign proc_42_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_42[1] = dl_detect_out ? proc_dep_vld_vec_42_reg[1] : (proc_42_data_FIFO_blk[1] | proc_42_data_PIPO_blk[1] | proc_42_start_FIFO_blk[1] | proc_42_TLF_FIFO_blk[1] | proc_42_input_sync_blk[1] | proc_42_output_sync_blk[1]);
    assign proc_42_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_15_U0.MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_U0.grp_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6_fu_229.head_out_3_blk_n);
    assign proc_42_data_PIPO_blk[2] = 1'b0;
    assign proc_42_start_FIFO_blk[2] = 1'b0;
    assign proc_42_TLF_FIFO_blk[2] = 1'b0;
    assign proc_42_input_sync_blk[2] = 1'b0;
    assign proc_42_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_42[2] = dl_detect_out ? proc_dep_vld_vec_42_reg[2] : (proc_42_data_FIFO_blk[2] | proc_42_data_PIPO_blk[2] | proc_42_start_FIFO_blk[2] | proc_42_TLF_FIFO_blk[2] | proc_42_input_sync_blk[2] | proc_42_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_42_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_42_reg <= proc_dep_vld_vec_42;
        end
    end
    assign in_chan_dep_vld_vec_42[0] = dep_chan_vld_18_42;
    assign in_chan_dep_data_vec_42[61 : 0] = dep_chan_data_18_42;
    assign token_in_vec_42[0] = token_18_42;
    assign in_chan_dep_vld_vec_42[1] = dep_chan_vld_40_42;
    assign in_chan_dep_data_vec_42[123 : 62] = dep_chan_data_40_42;
    assign token_in_vec_42[1] = token_40_42;
    assign in_chan_dep_vld_vec_42[2] = dep_chan_vld_43_42;
    assign in_chan_dep_data_vec_42[185 : 124] = dep_chan_data_43_42;
    assign token_in_vec_42[2] = token_43_42;
    assign dep_chan_vld_42_40 = out_chan_dep_vld_vec_42[0];
    assign dep_chan_data_42_40 = out_chan_dep_data_42;
    assign token_42_40 = token_out_vec_42[0];
    assign dep_chan_vld_42_18 = out_chan_dep_vld_vec_42[1];
    assign dep_chan_data_42_18 = out_chan_dep_data_42;
    assign token_42_18 = token_out_vec_42[1];
    assign dep_chan_vld_42_43 = out_chan_dep_vld_vec_42[2];
    assign dep_chan_data_42_43 = out_chan_dep_data_42;
    assign token_42_43 = token_out_vec_42[2];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 43, 10, 10) ViT_Block_hls_deadlock_detect_unit_43 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_43),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_43),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_43),
        .token_in_vec(token_in_vec_43),
        .dl_detect_in(dl_detect_out),
        .origin(origin[43]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_43),
        .out_chan_dep_data(out_chan_dep_data_43),
        .token_out_vec(token_out_vec_43),
        .dl_detect_out(dl_in_vec[43]));

    assign proc_43_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.head_out_0_blk_n);
    assign proc_43_data_PIPO_blk[0] = 1'b0;
    assign proc_43_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_merge_heads_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.start_for_merge_heads_U0_U.if_write);
    assign proc_43_TLF_FIFO_blk[0] = 1'b0;
    assign proc_43_input_sync_blk[0] = 1'b0;
    assign proc_43_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_43[0] = dl_detect_out ? proc_dep_vld_vec_43_reg[0] : (proc_43_data_FIFO_blk[0] | proc_43_data_PIPO_blk[0] | proc_43_start_FIFO_blk[0] | proc_43_TLF_FIFO_blk[0] | proc_43_input_sync_blk[0] | proc_43_output_sync_blk[0]);
    assign proc_43_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.head_out_0_blk_n);
    assign proc_43_data_PIPO_blk[1] = 1'b0;
    assign proc_43_start_FIFO_blk[1] = 1'b0;
    assign proc_43_TLF_FIFO_blk[1] = 1'b0;
    assign proc_43_input_sync_blk[1] = 1'b0;
    assign proc_43_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_43[1] = dl_detect_out ? proc_dep_vld_vec_43_reg[1] : (proc_43_data_FIFO_blk[1] | proc_43_data_PIPO_blk[1] | proc_43_start_FIFO_blk[1] | proc_43_TLF_FIFO_blk[1] | proc_43_input_sync_blk[1] | proc_43_output_sync_blk[1]);
    assign proc_43_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.head_out_1_blk_n);
    assign proc_43_data_PIPO_blk[2] = 1'b0;
    assign proc_43_start_FIFO_blk[2] = 1'b0;
    assign proc_43_TLF_FIFO_blk[2] = 1'b0;
    assign proc_43_input_sync_blk[2] = 1'b0;
    assign proc_43_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_43[2] = dl_detect_out ? proc_dep_vld_vec_43_reg[2] : (proc_43_data_FIFO_blk[2] | proc_43_data_PIPO_blk[2] | proc_43_start_FIFO_blk[2] | proc_43_TLF_FIFO_blk[2] | proc_43_input_sync_blk[2] | proc_43_output_sync_blk[2]);
    assign proc_43_data_FIFO_blk[3] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.head_out_1_blk_n);
    assign proc_43_data_PIPO_blk[3] = 1'b0;
    assign proc_43_start_FIFO_blk[3] = 1'b0;
    assign proc_43_TLF_FIFO_blk[3] = 1'b0;
    assign proc_43_input_sync_blk[3] = 1'b0;
    assign proc_43_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_43[3] = dl_detect_out ? proc_dep_vld_vec_43_reg[3] : (proc_43_data_FIFO_blk[3] | proc_43_data_PIPO_blk[3] | proc_43_start_FIFO_blk[3] | proc_43_TLF_FIFO_blk[3] | proc_43_input_sync_blk[3] | proc_43_output_sync_blk[3]);
    assign proc_43_data_FIFO_blk[4] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.head_out_2_blk_n);
    assign proc_43_data_PIPO_blk[4] = 1'b0;
    assign proc_43_start_FIFO_blk[4] = 1'b0;
    assign proc_43_TLF_FIFO_blk[4] = 1'b0;
    assign proc_43_input_sync_blk[4] = 1'b0;
    assign proc_43_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_43[4] = dl_detect_out ? proc_dep_vld_vec_43_reg[4] : (proc_43_data_FIFO_blk[4] | proc_43_data_PIPO_blk[4] | proc_43_start_FIFO_blk[4] | proc_43_TLF_FIFO_blk[4] | proc_43_input_sync_blk[4] | proc_43_output_sync_blk[4]);
    assign proc_43_data_FIFO_blk[5] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.head_out_2_blk_n);
    assign proc_43_data_PIPO_blk[5] = 1'b0;
    assign proc_43_start_FIFO_blk[5] = 1'b0;
    assign proc_43_TLF_FIFO_blk[5] = 1'b0;
    assign proc_43_input_sync_blk[5] = 1'b0;
    assign proc_43_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_43[5] = dl_detect_out ? proc_dep_vld_vec_43_reg[5] : (proc_43_data_FIFO_blk[5] | proc_43_data_PIPO_blk[5] | proc_43_start_FIFO_blk[5] | proc_43_TLF_FIFO_blk[5] | proc_43_input_sync_blk[5] | proc_43_output_sync_blk[5]);
    assign proc_43_data_FIFO_blk[6] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.head_out_3_blk_n);
    assign proc_43_data_PIPO_blk[6] = 1'b0;
    assign proc_43_start_FIFO_blk[6] = 1'b0;
    assign proc_43_TLF_FIFO_blk[6] = 1'b0;
    assign proc_43_input_sync_blk[6] = 1'b0;
    assign proc_43_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_43[6] = dl_detect_out ? proc_dep_vld_vec_43_reg[6] : (proc_43_data_FIFO_blk[6] | proc_43_data_PIPO_blk[6] | proc_43_start_FIFO_blk[6] | proc_43_TLF_FIFO_blk[6] | proc_43_input_sync_blk[6] | proc_43_output_sync_blk[6]);
    assign proc_43_data_FIFO_blk[7] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.head_out_3_blk_n);
    assign proc_43_data_PIPO_blk[7] = 1'b0;
    assign proc_43_start_FIFO_blk[7] = 1'b0;
    assign proc_43_TLF_FIFO_blk[7] = 1'b0;
    assign proc_43_input_sync_blk[7] = 1'b0;
    assign proc_43_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_43[7] = dl_detect_out ? proc_dep_vld_vec_43_reg[7] : (proc_43_data_FIFO_blk[7] | proc_43_data_PIPO_blk[7] | proc_43_start_FIFO_blk[7] | proc_43_TLF_FIFO_blk[7] | proc_43_input_sync_blk[7] | proc_43_output_sync_blk[7]);
    assign proc_43_data_FIFO_blk[8] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.out_linear4_blk_n);
    assign proc_43_data_PIPO_blk[8] = 1'b0;
    assign proc_43_start_FIFO_blk[8] = 1'b0;
    assign proc_43_TLF_FIFO_blk[8] = 1'b0;
    assign proc_43_input_sync_blk[8] = 1'b0;
    assign proc_43_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_43[8] = dl_detect_out ? proc_dep_vld_vec_43_reg[8] : (proc_43_data_FIFO_blk[8] | proc_43_data_PIPO_blk[8] | proc_43_start_FIFO_blk[8] | proc_43_TLF_FIFO_blk[8] | proc_43_input_sync_blk[8] | proc_43_output_sync_blk[8]);
    assign proc_43_data_FIFO_blk[9] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.out_linear4_blk_n);
    assign proc_43_data_PIPO_blk[9] = 1'b0;
    assign proc_43_start_FIFO_blk[9] = 1'b0;
    assign proc_43_TLF_FIFO_blk[9] = 1'b0;
    assign proc_43_input_sync_blk[9] = 1'b0;
    assign proc_43_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_43[9] = dl_detect_out ? proc_dep_vld_vec_43_reg[9] : (proc_43_data_FIFO_blk[9] | proc_43_data_PIPO_blk[9] | proc_43_start_FIFO_blk[9] | proc_43_TLF_FIFO_blk[9] | proc_43_input_sync_blk[9] | proc_43_output_sync_blk[9]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_43_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_43_reg <= proc_dep_vld_vec_43;
        end
    end
    assign in_chan_dep_vld_vec_43[0] = dep_chan_vld_23_43;
    assign in_chan_dep_data_vec_43[61 : 0] = dep_chan_data_23_43;
    assign token_in_vec_43[0] = token_23_43;
    assign in_chan_dep_vld_vec_43[1] = dep_chan_vld_24_43;
    assign in_chan_dep_data_vec_43[123 : 62] = dep_chan_data_24_43;
    assign token_in_vec_43[1] = token_24_43;
    assign in_chan_dep_vld_vec_43[2] = dep_chan_vld_29_43;
    assign in_chan_dep_data_vec_43[185 : 124] = dep_chan_data_29_43;
    assign token_in_vec_43[2] = token_29_43;
    assign in_chan_dep_vld_vec_43[3] = dep_chan_vld_30_43;
    assign in_chan_dep_data_vec_43[247 : 186] = dep_chan_data_30_43;
    assign token_in_vec_43[3] = token_30_43;
    assign in_chan_dep_vld_vec_43[4] = dep_chan_vld_35_43;
    assign in_chan_dep_data_vec_43[309 : 248] = dep_chan_data_35_43;
    assign token_in_vec_43[4] = token_35_43;
    assign in_chan_dep_vld_vec_43[5] = dep_chan_vld_36_43;
    assign in_chan_dep_data_vec_43[371 : 310] = dep_chan_data_36_43;
    assign token_in_vec_43[5] = token_36_43;
    assign in_chan_dep_vld_vec_43[6] = dep_chan_vld_41_43;
    assign in_chan_dep_data_vec_43[433 : 372] = dep_chan_data_41_43;
    assign token_in_vec_43[6] = token_41_43;
    assign in_chan_dep_vld_vec_43[7] = dep_chan_vld_42_43;
    assign in_chan_dep_data_vec_43[495 : 434] = dep_chan_data_42_43;
    assign token_in_vec_43[7] = token_42_43;
    assign in_chan_dep_vld_vec_43[8] = dep_chan_vld_44_43;
    assign in_chan_dep_data_vec_43[557 : 496] = dep_chan_data_44_43;
    assign token_in_vec_43[8] = token_44_43;
    assign in_chan_dep_vld_vec_43[9] = dep_chan_vld_46_43;
    assign in_chan_dep_data_vec_43[619 : 558] = dep_chan_data_46_43;
    assign token_in_vec_43[9] = token_46_43;
    assign dep_chan_vld_43_23 = out_chan_dep_vld_vec_43[0];
    assign dep_chan_data_43_23 = out_chan_dep_data_43;
    assign token_43_23 = token_out_vec_43[0];
    assign dep_chan_vld_43_24 = out_chan_dep_vld_vec_43[1];
    assign dep_chan_data_43_24 = out_chan_dep_data_43;
    assign token_43_24 = token_out_vec_43[1];
    assign dep_chan_vld_43_29 = out_chan_dep_vld_vec_43[2];
    assign dep_chan_data_43_29 = out_chan_dep_data_43;
    assign token_43_29 = token_out_vec_43[2];
    assign dep_chan_vld_43_30 = out_chan_dep_vld_vec_43[3];
    assign dep_chan_data_43_30 = out_chan_dep_data_43;
    assign token_43_30 = token_out_vec_43[3];
    assign dep_chan_vld_43_35 = out_chan_dep_vld_vec_43[4];
    assign dep_chan_data_43_35 = out_chan_dep_data_43;
    assign token_43_35 = token_out_vec_43[4];
    assign dep_chan_vld_43_36 = out_chan_dep_vld_vec_43[5];
    assign dep_chan_data_43_36 = out_chan_dep_data_43;
    assign token_43_36 = token_out_vec_43[5];
    assign dep_chan_vld_43_41 = out_chan_dep_vld_vec_43[6];
    assign dep_chan_data_43_41 = out_chan_dep_data_43;
    assign token_43_41 = token_out_vec_43[6];
    assign dep_chan_vld_43_42 = out_chan_dep_vld_vec_43[7];
    assign dep_chan_data_43_42 = out_chan_dep_data_43;
    assign token_43_42 = token_out_vec_43[7];
    assign dep_chan_vld_43_44 = out_chan_dep_vld_vec_43[8];
    assign dep_chan_data_43_44 = out_chan_dep_data_43;
    assign token_43_44 = token_out_vec_43[8];
    assign dep_chan_vld_43_46 = out_chan_dep_vld_vec_43[9];
    assign dep_chan_data_43_46 = out_chan_dep_data_43;
    assign token_43_46 = token_out_vec_43[9];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 44, 5, 5) ViT_Block_hls_deadlock_detect_unit_44 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_44),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_44),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_44),
        .token_in_vec(token_in_vec_44),
        .dl_detect_in(dl_detect_out),
        .origin(origin[44]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_44),
        .out_chan_dep_data(out_chan_dep_data_44),
        .token_out_vec(token_out_vec_44),
        .dl_detect_out(dl_in_vec[44]));

    assign proc_44_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.out_linear4_blk_n);
    assign proc_44_data_PIPO_blk[0] = 1'b0;
    assign proc_44_start_FIFO_blk[0] = 1'b0;
    assign proc_44_TLF_FIFO_blk[0] = 1'b0;
    assign proc_44_input_sync_blk[0] = 1'b0;
    assign proc_44_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_44[0] = dl_detect_out ? proc_dep_vld_vec_44_reg[0] : (proc_44_data_FIFO_blk[0] | proc_44_data_PIPO_blk[0] | proc_44_start_FIFO_blk[0] | proc_44_TLF_FIFO_blk[0] | proc_44_input_sync_blk[0] | proc_44_output_sync_blk[0]);
    assign proc_44_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96.out_mha8_blk_n);
    assign proc_44_data_PIPO_blk[1] = 1'b0;
    assign proc_44_start_FIFO_blk[1] = 1'b0;
    assign proc_44_TLF_FIFO_blk[1] = 1'b0;
    assign proc_44_input_sync_blk[1] = 1'b0;
    assign proc_44_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_44[1] = dl_detect_out ? proc_dep_vld_vec_44_reg[1] : (proc_44_data_FIFO_blk[1] | proc_44_data_PIPO_blk[1] | proc_44_start_FIFO_blk[1] | proc_44_TLF_FIFO_blk[1] | proc_44_input_sync_blk[1] | proc_44_output_sync_blk[1]);
    assign proc_44_data_FIFO_blk[2] = 1'b0;
    assign proc_44_data_PIPO_blk[2] = 1'b0;
    assign proc_44_start_FIFO_blk[2] = 1'b0;
    assign proc_44_TLF_FIFO_blk[2] = 1'b0;
    assign proc_44_input_sync_blk[2] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Out_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Q_linear_tiled_U0_ap_ready);
    assign proc_44_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_44[2] = dl_detect_out ? proc_dep_vld_vec_44_reg[2] : (proc_44_data_FIFO_blk[2] | proc_44_data_PIPO_blk[2] | proc_44_start_FIFO_blk[2] | proc_44_TLF_FIFO_blk[2] | proc_44_input_sync_blk[2] | proc_44_output_sync_blk[2]);
    assign proc_44_data_FIFO_blk[3] = 1'b0;
    assign proc_44_data_PIPO_blk[3] = 1'b0;
    assign proc_44_start_FIFO_blk[3] = 1'b0;
    assign proc_44_TLF_FIFO_blk[3] = 1'b0;
    assign proc_44_input_sync_blk[3] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Out_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_K_linear_tiled_U0_ap_ready);
    assign proc_44_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_44[3] = dl_detect_out ? proc_dep_vld_vec_44_reg[3] : (proc_44_data_FIFO_blk[3] | proc_44_data_PIPO_blk[3] | proc_44_start_FIFO_blk[3] | proc_44_TLF_FIFO_blk[3] | proc_44_input_sync_blk[3] | proc_44_output_sync_blk[3]);
    assign proc_44_data_FIFO_blk[4] = 1'b0;
    assign proc_44_data_PIPO_blk[4] = 1'b0;
    assign proc_44_start_FIFO_blk[4] = 1'b0;
    assign proc_44_TLF_FIFO_blk[4] = 1'b0;
    assign proc_44_input_sync_blk[4] = 1'b0 | (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_Out_linear_tiled_U0_ap_ready & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_sync_V_linear_tiled_U0_ap_ready);
    assign proc_44_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_44[4] = dl_detect_out ? proc_dep_vld_vec_44_reg[4] : (proc_44_data_FIFO_blk[4] | proc_44_data_PIPO_blk[4] | proc_44_start_FIFO_blk[4] | proc_44_TLF_FIFO_blk[4] | proc_44_input_sync_blk[4] | proc_44_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_44_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_44_reg <= proc_dep_vld_vec_44;
        end
    end
    assign in_chan_dep_vld_vec_44[0] = dep_chan_vld_7_44;
    assign in_chan_dep_data_vec_44[61 : 0] = dep_chan_data_7_44;
    assign token_in_vec_44[0] = token_7_44;
    assign in_chan_dep_vld_vec_44[1] = dep_chan_vld_10_44;
    assign in_chan_dep_data_vec_44[123 : 62] = dep_chan_data_10_44;
    assign token_in_vec_44[1] = token_10_44;
    assign in_chan_dep_vld_vec_44[2] = dep_chan_vld_13_44;
    assign in_chan_dep_data_vec_44[185 : 124] = dep_chan_data_13_44;
    assign token_in_vec_44[2] = token_13_44;
    assign in_chan_dep_vld_vec_44[3] = dep_chan_vld_43_44;
    assign in_chan_dep_data_vec_44[247 : 186] = dep_chan_data_43_44;
    assign token_in_vec_44[3] = token_43_44;
    assign in_chan_dep_vld_vec_44[4] = dep_chan_vld_48_44;
    assign in_chan_dep_data_vec_44[309 : 248] = dep_chan_data_48_44;
    assign token_in_vec_44[4] = token_48_44;
    assign dep_chan_vld_44_43 = out_chan_dep_vld_vec_44[0];
    assign dep_chan_data_44_43 = out_chan_dep_data_44;
    assign token_44_43 = token_out_vec_44[0];
    assign dep_chan_vld_44_48 = out_chan_dep_vld_vec_44[1];
    assign dep_chan_data_44_48 = out_chan_dep_data_44;
    assign token_44_48 = token_out_vec_44[1];
    assign dep_chan_vld_44_7 = out_chan_dep_vld_vec_44[2];
    assign dep_chan_data_44_7 = out_chan_dep_data_44;
    assign token_44_7 = token_out_vec_44[2];
    assign dep_chan_vld_44_10 = out_chan_dep_vld_vec_44[3];
    assign dep_chan_data_44_10 = out_chan_dep_data_44;
    assign token_44_10 = token_out_vec_44[3];
    assign dep_chan_vld_44_13 = out_chan_dep_vld_vec_44[4];
    assign dep_chan_data_44_13 = out_chan_dep_data_44;
    assign token_44_13 = token_out_vec_44[4];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 45, 1, 1) ViT_Block_hls_deadlock_detect_unit_45 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_45),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_45),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_45),
        .token_in_vec(token_in_vec_45),
        .dl_detect_in(dl_detect_out),
        .origin(origin[45]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_45),
        .out_chan_dep_data(out_chan_dep_data_45),
        .token_out_vec(token_out_vec_45),
        .dl_detect_out(dl_in_vec[45]));

    assign proc_45_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_120.out_w1_blk_n);
    assign proc_45_data_PIPO_blk[0] = 1'b0;
    assign proc_45_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.start_for_Linear_Layer_2_U0_U.if_full_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.ap_start & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24_U0.real_start & (trans_in_cnt_19 == trans_out_cnt_19) & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.start_for_Linear_Layer_2_U0_U.if_read);
    assign proc_45_TLF_FIFO_blk[0] = 1'b0;
    assign proc_45_input_sync_blk[0] = 1'b0;
    assign proc_45_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_45[0] = dl_detect_out ? proc_dep_vld_vec_45_reg[0] : (proc_45_data_FIFO_blk[0] | proc_45_data_PIPO_blk[0] | proc_45_start_FIFO_blk[0] | proc_45_TLF_FIFO_blk[0] | proc_45_input_sync_blk[0] | proc_45_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_45_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_45_reg <= proc_dep_vld_vec_45;
        end
    end
    assign in_chan_dep_vld_vec_45[0] = dep_chan_vld_46_45;
    assign in_chan_dep_data_vec_45[61 : 0] = dep_chan_data_46_45;
    assign token_in_vec_45[0] = token_46_45;
    assign dep_chan_vld_45_46 = out_chan_dep_vld_vec_45[0];
    assign dep_chan_data_45_46 = out_chan_dep_data_45;
    assign token_45_46 = token_out_vec_45[0];

    // Process: ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 46, 3, 3) ViT_Block_hls_deadlock_detect_unit_46 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_46),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_46),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_46),
        .token_in_vec(token_in_vec_46),
        .dl_detect_in(dl_detect_out),
        .origin(origin[46]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_46),
        .out_chan_dep_data(out_chan_dep_data_46),
        .token_out_vec(token_out_vec_46),
        .dl_detect_out(dl_in_vec[46]));

    assign proc_46_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.out_linear4_blk_n);
    assign proc_46_data_PIPO_blk[0] = 1'b0;
    assign proc_46_start_FIFO_blk[0] = 1'b0;
    assign proc_46_TLF_FIFO_blk[0] = 1'b0;
    assign proc_46_input_sync_blk[0] = 1'b0;
    assign proc_46_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_46[0] = dl_detect_out ? proc_dep_vld_vec_46_reg[0] : (proc_46_data_FIFO_blk[0] | proc_46_data_PIPO_blk[0] | proc_46_start_FIFO_blk[0] | proc_46_TLF_FIFO_blk[0] | proc_46_input_sync_blk[0] | proc_46_output_sync_blk[0]);
    assign proc_46_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17_fu_96.out_mha8_blk_n);
    assign proc_46_data_PIPO_blk[1] = 1'b0;
    assign proc_46_start_FIFO_blk[1] = 1'b0;
    assign proc_46_TLF_FIFO_blk[1] = 1'b0;
    assign proc_46_input_sync_blk[1] = 1'b0;
    assign proc_46_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_46[1] = dl_detect_out ? proc_dep_vld_vec_46_reg[1] : (proc_46_data_FIFO_blk[1] | proc_46_data_PIPO_blk[1] | proc_46_start_FIFO_blk[1] | proc_46_TLF_FIFO_blk[1] | proc_46_input_sync_blk[1] | proc_46_output_sync_blk[1]);
    assign proc_46_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.grp_Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9_fu_103.out_w1_blk_n);
    assign proc_46_data_PIPO_blk[2] = 1'b0;
    assign proc_46_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.start_for_Linear_Layer_2_U0_U.if_empty_n & ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_2_U0.ap_idle & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.start_for_Linear_Layer_2_U0_U.if_write);
    assign proc_46_TLF_FIFO_blk[2] = 1'b0;
    assign proc_46_input_sync_blk[2] = 1'b0;
    assign proc_46_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_46[2] = dl_detect_out ? proc_dep_vld_vec_46_reg[2] : (proc_46_data_FIFO_blk[2] | proc_46_data_PIPO_blk[2] | proc_46_start_FIFO_blk[2] | proc_46_TLF_FIFO_blk[2] | proc_46_input_sync_blk[2] | proc_46_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_46_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_46_reg <= proc_dep_vld_vec_46;
        end
    end
    assign in_chan_dep_vld_vec_46[0] = dep_chan_vld_43_46;
    assign in_chan_dep_data_vec_46[61 : 0] = dep_chan_data_43_46;
    assign token_in_vec_46[0] = token_43_46;
    assign in_chan_dep_vld_vec_46[1] = dep_chan_vld_45_46;
    assign in_chan_dep_data_vec_46[123 : 62] = dep_chan_data_45_46;
    assign token_in_vec_46[1] = token_45_46;
    assign in_chan_dep_vld_vec_46[2] = dep_chan_vld_48_46;
    assign in_chan_dep_data_vec_46[185 : 124] = dep_chan_data_48_46;
    assign token_in_vec_46[2] = token_48_46;
    assign dep_chan_vld_46_43 = out_chan_dep_vld_vec_46[0];
    assign dep_chan_data_46_43 = out_chan_dep_data_46;
    assign token_46_43 = token_out_vec_46[0];
    assign dep_chan_vld_46_48 = out_chan_dep_vld_vec_46[1];
    assign dep_chan_data_46_48 = out_chan_dep_data_46;
    assign token_46_48 = token_out_vec_46[1];
    assign dep_chan_vld_46_45 = out_chan_dep_vld_vec_46[2];
    assign dep_chan_data_46_45 = out_chan_dep_data_46;
    assign token_46_45 = token_out_vec_46[2];

    // Process: ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 47, 2, 2) ViT_Block_hls_deadlock_detect_unit_47 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_47),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_47),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_47),
        .token_in_vec(token_in_vec_47),
        .dl_detect_in(dl_detect_out),
        .origin(origin[47]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_47),
        .out_chan_dep_data(out_chan_dep_data_47),
        .token_out_vec(token_out_vec_47),
        .dl_detect_out(dl_in_vec[47]));

    assign proc_47_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0.res1_blk_n);
    assign proc_47_data_PIPO_blk[0] = 1'b0;
    assign proc_47_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.start_for_requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0_U.if_empty_n & ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0.ap_idle & ~ViT_Block_Core_U0.start_for_requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0_U.if_write);
    assign proc_47_TLF_FIFO_blk[0] = 1'b0;
    assign proc_47_input_sync_blk[0] = 1'b0;
    assign proc_47_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_47[0] = dl_detect_out ? proc_dep_vld_vec_47_reg[0] : (proc_47_data_FIFO_blk[0] | proc_47_data_PIPO_blk[0] | proc_47_start_FIFO_blk[0] | proc_47_TLF_FIFO_blk[0] | proc_47_input_sync_blk[0] | proc_47_output_sync_blk[0]);
    assign proc_47_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0.res_rq2_blk_n);
    assign proc_47_data_PIPO_blk[1] = 1'b0;
    assign proc_47_start_FIFO_blk[1] = 1'b0;
    assign proc_47_TLF_FIFO_blk[1] = 1'b0;
    assign proc_47_input_sync_blk[1] = 1'b0;
    assign proc_47_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_47[1] = dl_detect_out ? proc_dep_vld_vec_47_reg[1] : (proc_47_data_FIFO_blk[1] | proc_47_data_PIPO_blk[1] | proc_47_start_FIFO_blk[1] | proc_47_TLF_FIFO_blk[1] | proc_47_input_sync_blk[1] | proc_47_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_47_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_47_reg <= proc_dep_vld_vec_47;
        end
    end
    assign in_chan_dep_vld_vec_47[0] = dep_chan_vld_2_47;
    assign in_chan_dep_data_vec_47[61 : 0] = dep_chan_data_2_47;
    assign token_in_vec_47[0] = token_2_47;
    assign in_chan_dep_vld_vec_47[1] = dep_chan_vld_48_47;
    assign in_chan_dep_data_vec_47[123 : 62] = dep_chan_data_48_47;
    assign token_in_vec_47[1] = token_48_47;
    assign dep_chan_vld_47_2 = out_chan_dep_vld_vec_47[0];
    assign dep_chan_data_47_2 = out_chan_dep_data_47;
    assign token_47_2 = token_out_vec_47[0];
    assign dep_chan_vld_47_48 = out_chan_dep_vld_vec_47[1];
    assign dep_chan_data_47_48 = out_chan_dep_data_47;
    assign token_47_48 = token_out_vec_47[1];

    // Process: ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 48, 5, 5) ViT_Block_hls_deadlock_detect_unit_48 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_48),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_48),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_48),
        .token_in_vec(token_in_vec_48),
        .dl_detect_in(dl_detect_out),
        .origin(origin[48]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_48),
        .out_chan_dep_data(out_chan_dep_data_48),
        .token_out_vec(token_out_vec_48),
        .dl_detect_out(dl_in_vec[48]));

    assign proc_48_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.out_mha8_blk_n);
    assign proc_48_data_PIPO_blk[0] = 1'b0;
    assign proc_48_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.start_for_ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0_U.if_empty_n & ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.ap_idle & ~ViT_Block_Core_U0.start_for_ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0_U.if_write);
    assign proc_48_TLF_FIFO_blk[0] = 1'b0;
    assign proc_48_input_sync_blk[0] = 1'b0;
    assign proc_48_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_48[0] = dl_detect_out ? proc_dep_vld_vec_48_reg[0] : (proc_48_data_FIFO_blk[0] | proc_48_data_PIPO_blk[0] | proc_48_start_FIFO_blk[0] | proc_48_TLF_FIFO_blk[0] | proc_48_input_sync_blk[0] | proc_48_output_sync_blk[0]);
    assign proc_48_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.out_mha8_blk_n);
    assign proc_48_data_PIPO_blk[1] = 1'b0;
    assign proc_48_start_FIFO_blk[1] = 1'b0;
    assign proc_48_TLF_FIFO_blk[1] = 1'b0;
    assign proc_48_input_sync_blk[1] = 1'b0;
    assign proc_48_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_48[1] = dl_detect_out ? proc_dep_vld_vec_48_reg[1] : (proc_48_data_FIFO_blk[1] | proc_48_data_PIPO_blk[1] | proc_48_start_FIFO_blk[1] | proc_48_TLF_FIFO_blk[1] | proc_48_input_sync_blk[1] | proc_48_output_sync_blk[1]);
    assign proc_48_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.out_mha8_blk_n);
    assign proc_48_data_PIPO_blk[2] = 1'b0;
    assign proc_48_start_FIFO_blk[2] = 1'b0;
    assign proc_48_TLF_FIFO_blk[2] = 1'b0;
    assign proc_48_input_sync_blk[2] = 1'b0;
    assign proc_48_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_48[2] = dl_detect_out ? proc_dep_vld_vec_48_reg[2] : (proc_48_data_FIFO_blk[2] | proc_48_data_PIPO_blk[2] | proc_48_start_FIFO_blk[2] | proc_48_TLF_FIFO_blk[2] | proc_48_input_sync_blk[2] | proc_48_output_sync_blk[2]);
    assign proc_48_data_FIFO_blk[3] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.res_rq2_blk_n);
    assign proc_48_data_PIPO_blk[3] = 1'b0;
    assign proc_48_start_FIFO_blk[3] = 1'b0;
    assign proc_48_TLF_FIFO_blk[3] = 1'b0;
    assign proc_48_input_sync_blk[3] = 1'b0;
    assign proc_48_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_48[3] = dl_detect_out ? proc_dep_vld_vec_48_reg[3] : (proc_48_data_FIFO_blk[3] | proc_48_data_PIPO_blk[3] | proc_48_start_FIFO_blk[3] | proc_48_TLF_FIFO_blk[3] | proc_48_input_sync_blk[3] | proc_48_output_sync_blk[3]);
    assign proc_48_data_FIFO_blk[4] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.out_res_09_blk_n);
    assign proc_48_data_PIPO_blk[4] = 1'b0;
    assign proc_48_start_FIFO_blk[4] = 1'b0 | (~ViT_Block_Core_U0.start_for_duplicate_stream_ap_int_8_17_192_1_1_U0_U.if_full_n & ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.ap_start & ~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0.real_start & (trans_in_cnt_21 == trans_out_cnt_21) & ~ViT_Block_Core_U0.start_for_duplicate_stream_ap_int_8_17_192_1_1_U0_U.if_read);
    assign proc_48_TLF_FIFO_blk[4] = 1'b0;
    assign proc_48_input_sync_blk[4] = 1'b0;
    assign proc_48_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_48[4] = dl_detect_out ? proc_dep_vld_vec_48_reg[4] : (proc_48_data_FIFO_blk[4] | proc_48_data_PIPO_blk[4] | proc_48_start_FIFO_blk[4] | proc_48_TLF_FIFO_blk[4] | proc_48_input_sync_blk[4] | proc_48_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_48_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_48_reg <= proc_dep_vld_vec_48;
        end
    end
    assign in_chan_dep_vld_vec_48[0] = dep_chan_vld_6_48;
    assign in_chan_dep_data_vec_48[61 : 0] = dep_chan_data_6_48;
    assign token_in_vec_48[0] = token_6_48;
    assign in_chan_dep_vld_vec_48[1] = dep_chan_vld_44_48;
    assign in_chan_dep_data_vec_48[123 : 62] = dep_chan_data_44_48;
    assign token_in_vec_48[1] = token_44_48;
    assign in_chan_dep_vld_vec_48[2] = dep_chan_vld_46_48;
    assign in_chan_dep_data_vec_48[185 : 124] = dep_chan_data_46_48;
    assign token_in_vec_48[2] = token_46_48;
    assign in_chan_dep_vld_vec_48[3] = dep_chan_vld_47_48;
    assign in_chan_dep_data_vec_48[247 : 186] = dep_chan_data_47_48;
    assign token_in_vec_48[3] = token_47_48;
    assign in_chan_dep_vld_vec_48[4] = dep_chan_vld_49_48;
    assign in_chan_dep_data_vec_48[309 : 248] = dep_chan_data_49_48;
    assign token_in_vec_48[4] = token_49_48;
    assign dep_chan_vld_48_6 = out_chan_dep_vld_vec_48[0];
    assign dep_chan_data_48_6 = out_chan_dep_data_48;
    assign token_48_6 = token_out_vec_48[0];
    assign dep_chan_vld_48_44 = out_chan_dep_vld_vec_48[1];
    assign dep_chan_data_48_44 = out_chan_dep_data_48;
    assign token_48_44 = token_out_vec_48[1];
    assign dep_chan_vld_48_46 = out_chan_dep_vld_vec_48[2];
    assign dep_chan_data_48_46 = out_chan_dep_data_48;
    assign token_48_46 = token_out_vec_48[2];
    assign dep_chan_vld_48_47 = out_chan_dep_vld_vec_48[3];
    assign dep_chan_data_48_47 = out_chan_dep_data_48;
    assign token_48_47 = token_out_vec_48[3];
    assign dep_chan_vld_48_49 = out_chan_dep_vld_vec_48[4];
    assign dep_chan_data_48_49 = out_chan_dep_data_48;
    assign token_48_49 = token_out_vec_48[4];

    // Process: ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 49, 3, 3) ViT_Block_hls_deadlock_detect_unit_49 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_49),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_49),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_49),
        .token_in_vec(token_in_vec_49),
        .dl_detect_in(dl_detect_out),
        .origin(origin[49]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_49),
        .out_chan_dep_data(out_chan_dep_data_49),
        .token_out_vec(token_out_vec_49),
        .dl_detect_out(dl_in_vec[49]));

    assign proc_49_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.out_res_09_blk_n);
    assign proc_49_data_PIPO_blk[0] = 1'b0;
    assign proc_49_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.start_for_duplicate_stream_ap_int_8_17_192_1_1_U0_U.if_empty_n & ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.ap_idle & ~ViT_Block_Core_U0.start_for_duplicate_stream_ap_int_8_17_192_1_1_U0_U.if_write);
    assign proc_49_TLF_FIFO_blk[0] = 1'b0;
    assign proc_49_input_sync_blk[0] = 1'b0;
    assign proc_49_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_49[0] = dl_detect_out ? proc_dep_vld_vec_49_reg[0] : (proc_49_data_FIFO_blk[0] | proc_49_data_PIPO_blk[0] | proc_49_start_FIFO_blk[0] | proc_49_TLF_FIFO_blk[0] | proc_49_input_sync_blk[0] | proc_49_output_sync_blk[0]);
    assign proc_49_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.res_110_blk_n);
    assign proc_49_data_PIPO_blk[1] = 1'b0;
    assign proc_49_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.start_for_requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0_U.if_full_n & ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.ap_start & ~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.real_start & (trans_in_cnt_22 == trans_out_cnt_22) & ~ViT_Block_Core_U0.start_for_requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0_U.if_read);
    assign proc_49_TLF_FIFO_blk[1] = 1'b0;
    assign proc_49_input_sync_blk[1] = 1'b0;
    assign proc_49_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_49[1] = dl_detect_out ? proc_dep_vld_vec_49_reg[1] : (proc_49_data_FIFO_blk[1] | proc_49_data_PIPO_blk[1] | proc_49_start_FIFO_blk[1] | proc_49_TLF_FIFO_blk[1] | proc_49_input_sync_blk[1] | proc_49_output_sync_blk[1]);
    assign proc_49_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.x212_blk_n);
    assign proc_49_data_PIPO_blk[2] = 1'b0;
    assign proc_49_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.start_for_BatchNorm_tiled_1_U0_U.if_full_n & ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.ap_start & ~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_192_1_1_U0.real_start & (trans_in_cnt_22 == trans_out_cnt_22) & ~ViT_Block_Core_U0.start_for_BatchNorm_tiled_1_U0_U.if_read);
    assign proc_49_TLF_FIFO_blk[2] = 1'b0;
    assign proc_49_input_sync_blk[2] = 1'b0;
    assign proc_49_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_49[2] = dl_detect_out ? proc_dep_vld_vec_49_reg[2] : (proc_49_data_FIFO_blk[2] | proc_49_data_PIPO_blk[2] | proc_49_start_FIFO_blk[2] | proc_49_TLF_FIFO_blk[2] | proc_49_input_sync_blk[2] | proc_49_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_49_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_49_reg <= proc_dep_vld_vec_49;
        end
    end
    assign in_chan_dep_vld_vec_49[0] = dep_chan_vld_48_49;
    assign in_chan_dep_data_vec_49[61 : 0] = dep_chan_data_48_49;
    assign token_in_vec_49[0] = token_48_49;
    assign in_chan_dep_vld_vec_49[1] = dep_chan_vld_50_49;
    assign in_chan_dep_data_vec_49[123 : 62] = dep_chan_data_50_49;
    assign token_in_vec_49[1] = token_50_49;
    assign in_chan_dep_vld_vec_49[2] = dep_chan_vld_59_49;
    assign in_chan_dep_data_vec_49[185 : 124] = dep_chan_data_59_49;
    assign token_in_vec_49[2] = token_59_49;
    assign dep_chan_vld_49_48 = out_chan_dep_vld_vec_49[0];
    assign dep_chan_data_49_48 = out_chan_dep_data_49;
    assign token_49_48 = token_out_vec_49[0];
    assign dep_chan_vld_49_59 = out_chan_dep_vld_vec_49[1];
    assign dep_chan_data_49_59 = out_chan_dep_data_49;
    assign token_49_59 = token_out_vec_49[1];
    assign dep_chan_vld_49_50 = out_chan_dep_vld_vec_49[2];
    assign dep_chan_data_49_50 = out_chan_dep_data_49;
    assign token_49_50 = token_out_vec_49[2];

    // Process: ViT_Block_Core_U0.BatchNorm_tiled_1_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 50, 4, 4) ViT_Block_hls_deadlock_detect_unit_50 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_50),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_50),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_50),
        .token_in_vec(token_in_vec_50),
        .dl_detect_in(dl_detect_out),
        .origin(origin[50]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_50),
        .out_chan_dep_data(out_chan_dep_data_50),
        .token_out_vec(token_out_vec_50),
        .dl_detect_out(dl_in_vec[50]));

    assign proc_50_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.BatchNorm_tiled_1_U0.x212_blk_n);
    assign proc_50_data_PIPO_blk[0] = 1'b0;
    assign proc_50_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.start_for_BatchNorm_tiled_1_U0_U.if_empty_n & ViT_Block_Core_U0.BatchNorm_tiled_1_U0.ap_idle & ~ViT_Block_Core_U0.start_for_BatchNorm_tiled_1_U0_U.if_write);
    assign proc_50_TLF_FIFO_blk[0] = 1'b0;
    assign proc_50_input_sync_blk[0] = 1'b0;
    assign proc_50_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_50[0] = dl_detect_out ? proc_dep_vld_vec_50_reg[0] : (proc_50_data_FIFO_blk[0] | proc_50_data_PIPO_blk[0] | proc_50_start_FIFO_blk[0] | proc_50_TLF_FIFO_blk[0] | proc_50_input_sync_blk[0] | proc_50_output_sync_blk[0]);
    assign proc_50_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.BatchNorm_tiled_1_U0.norm_out_113_blk_n);
    assign proc_50_data_PIPO_blk[1] = 1'b0;
    assign proc_50_start_FIFO_blk[1] = 1'b0;
    assign proc_50_TLF_FIFO_blk[1] = 1'b0;
    assign proc_50_input_sync_blk[1] = 1'b0;
    assign proc_50_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_50[1] = dl_detect_out ? proc_dep_vld_vec_50_reg[1] : (proc_50_data_FIFO_blk[1] | proc_50_data_PIPO_blk[1] | proc_50_start_FIFO_blk[1] | proc_50_TLF_FIFO_blk[1] | proc_50_input_sync_blk[1] | proc_50_output_sync_blk[1]);
    assign proc_50_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.BatchNorm_tiled_1_U0.norm_out_113_blk_n);
    assign proc_50_data_PIPO_blk[2] = 1'b0;
    assign proc_50_start_FIFO_blk[2] = 1'b0;
    assign proc_50_TLF_FIFO_blk[2] = 1'b0;
    assign proc_50_input_sync_blk[2] = 1'b0;
    assign proc_50_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_50[2] = dl_detect_out ? proc_dep_vld_vec_50_reg[2] : (proc_50_data_FIFO_blk[2] | proc_50_data_PIPO_blk[2] | proc_50_start_FIFO_blk[2] | proc_50_TLF_FIFO_blk[2] | proc_50_input_sync_blk[2] | proc_50_output_sync_blk[2]);
    assign proc_50_data_FIFO_blk[3] = 1'b0 | (~ViT_Block_Core_U0.BatchNorm_tiled_1_U0.norm_out_113_blk_n);
    assign proc_50_data_PIPO_blk[3] = 1'b0;
    assign proc_50_start_FIFO_blk[3] = 1'b0;
    assign proc_50_TLF_FIFO_blk[3] = 1'b0;
    assign proc_50_input_sync_blk[3] = 1'b0;
    assign proc_50_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_50[3] = dl_detect_out ? proc_dep_vld_vec_50_reg[3] : (proc_50_data_FIFO_blk[3] | proc_50_data_PIPO_blk[3] | proc_50_start_FIFO_blk[3] | proc_50_TLF_FIFO_blk[3] | proc_50_input_sync_blk[3] | proc_50_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_50_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_50_reg <= proc_dep_vld_vec_50;
        end
    end
    assign in_chan_dep_vld_vec_50[0] = dep_chan_vld_49_50;
    assign in_chan_dep_data_vec_50[61 : 0] = dep_chan_data_49_50;
    assign token_in_vec_50[0] = token_49_50;
    assign in_chan_dep_vld_vec_50[1] = dep_chan_vld_51_50;
    assign in_chan_dep_data_vec_50[123 : 62] = dep_chan_data_51_50;
    assign token_in_vec_50[1] = token_51_50;
    assign in_chan_dep_vld_vec_50[2] = dep_chan_vld_52_50;
    assign in_chan_dep_data_vec_50[185 : 124] = dep_chan_data_52_50;
    assign token_in_vec_50[2] = token_52_50;
    assign in_chan_dep_vld_vec_50[3] = dep_chan_vld_54_50;
    assign in_chan_dep_data_vec_50[247 : 186] = dep_chan_data_54_50;
    assign token_in_vec_50[3] = token_54_50;
    assign dep_chan_vld_50_49 = out_chan_dep_vld_vec_50[0];
    assign dep_chan_data_50_49 = out_chan_dep_data_50;
    assign token_50_49 = token_out_vec_50[0];
    assign dep_chan_vld_50_51 = out_chan_dep_vld_vec_50[1];
    assign dep_chan_data_50_51 = out_chan_dep_data_50;
    assign token_50_51 = token_out_vec_50[1];
    assign dep_chan_vld_50_52 = out_chan_dep_vld_vec_50[2];
    assign dep_chan_data_50_52 = out_chan_dep_data_50;
    assign token_50_52 = token_out_vec_50[2];
    assign dep_chan_vld_50_54 = out_chan_dep_vld_vec_50[3];
    assign dep_chan_data_50_54 = out_chan_dep_data_50;
    assign token_50_54 = token_out_vec_50[3];

    // Process: ViT_Block_Core_U0.MLP_tiled_oc_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 51, 4, 4) ViT_Block_hls_deadlock_detect_unit_51 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_51),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_51),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_51),
        .token_in_vec(token_in_vec_51),
        .dl_detect_in(dl_detect_out),
        .origin(origin[51]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_51),
        .out_chan_dep_data(out_chan_dep_data_51),
        .token_out_vec(token_out_vec_51),
        .dl_detect_out(dl_in_vec[51]));

    assign proc_51_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.norm_out_113_blk_n);
    assign proc_51_data_PIPO_blk[0] = 1'b0;
    assign proc_51_start_FIFO_blk[0] = 1'b0;
    assign proc_51_TLF_FIFO_blk[0] = 1'b0;
    assign proc_51_input_sync_blk[0] = 1'b0;
    assign proc_51_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_51[0] = dl_detect_out ? proc_dep_vld_vec_51_reg[0] : (proc_51_data_FIFO_blk[0] | proc_51_data_PIPO_blk[0] | proc_51_start_FIFO_blk[0] | proc_51_TLF_FIFO_blk[0] | proc_51_input_sync_blk[0] | proc_51_output_sync_blk[0]);
    assign proc_51_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_96.mlp_out14_blk_n);
    assign proc_51_data_PIPO_blk[1] = 1'b0;
    assign proc_51_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.start_for_ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0_U.if_full_n & ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_start & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.real_start & (trans_in_cnt_26 == trans_out_cnt_26) & ~ViT_Block_Core_U0.start_for_ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0_U.if_read);
    assign proc_51_TLF_FIFO_blk[1] = 1'b0;
    assign proc_51_input_sync_blk[1] = 1'b0;
    assign proc_51_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_51[1] = dl_detect_out ? proc_dep_vld_vec_51_reg[1] : (proc_51_data_FIFO_blk[1] | proc_51_data_PIPO_blk[1] | proc_51_start_FIFO_blk[1] | proc_51_TLF_FIFO_blk[1] | proc_51_input_sync_blk[1] | proc_51_output_sync_blk[1]);
    assign proc_51_data_FIFO_blk[2] = 1'b0;
    assign proc_51_data_PIPO_blk[2] = 1'b0;
    assign proc_51_start_FIFO_blk[2] = 1'b0;
    assign proc_51_TLF_FIFO_blk[2] = 1'b0;
    assign proc_51_input_sync_blk[2] = 1'b0 | (ViT_Block_Core_U0.ap_sync_MLP_tiled_oc_U0_ap_ready & ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_idle & ~ViT_Block_Core_U0.ap_sync_duplicate_stream_ap_int_8_17_192_1_U0_ap_ready);
    assign proc_51_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_51[2] = dl_detect_out ? proc_dep_vld_vec_51_reg[2] : (proc_51_data_FIFO_blk[2] | proc_51_data_PIPO_blk[2] | proc_51_start_FIFO_blk[2] | proc_51_TLF_FIFO_blk[2] | proc_51_input_sync_blk[2] | proc_51_output_sync_blk[2]);
    assign proc_51_data_FIFO_blk[3] = 1'b0;
    assign proc_51_data_PIPO_blk[3] = 1'b0;
    assign proc_51_start_FIFO_blk[3] = 1'b0;
    assign proc_51_TLF_FIFO_blk[3] = 1'b0;
    assign proc_51_input_sync_blk[3] = 1'b0 | (ViT_Block_Core_U0.ap_sync_MLP_tiled_oc_U0_ap_ready & ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_idle & ~ViT_Block_Core_U0.ap_sync_MultiHeadAttention_tiled_U0_ap_ready);
    assign proc_51_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_51[3] = dl_detect_out ? proc_dep_vld_vec_51_reg[3] : (proc_51_data_FIFO_blk[3] | proc_51_data_PIPO_blk[3] | proc_51_start_FIFO_blk[3] | proc_51_TLF_FIFO_blk[3] | proc_51_input_sync_blk[3] | proc_51_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_51_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_51_reg <= proc_dep_vld_vec_51;
        end
    end
    assign in_chan_dep_vld_vec_51[0] = dep_chan_vld_2_51;
    assign in_chan_dep_data_vec_51[61 : 0] = dep_chan_data_2_51;
    assign token_in_vec_51[0] = token_2_51;
    assign in_chan_dep_vld_vec_51[1] = dep_chan_vld_6_51;
    assign in_chan_dep_data_vec_51[123 : 62] = dep_chan_data_6_51;
    assign token_in_vec_51[1] = token_6_51;
    assign in_chan_dep_vld_vec_51[2] = dep_chan_vld_50_51;
    assign in_chan_dep_data_vec_51[185 : 124] = dep_chan_data_50_51;
    assign token_in_vec_51[2] = token_50_51;
    assign in_chan_dep_vld_vec_51[3] = dep_chan_vld_60_51;
    assign in_chan_dep_data_vec_51[247 : 186] = dep_chan_data_60_51;
    assign token_in_vec_51[3] = token_60_51;
    assign dep_chan_vld_51_50 = out_chan_dep_vld_vec_51[0];
    assign dep_chan_data_51_50 = out_chan_dep_data_51;
    assign token_51_50 = token_out_vec_51[0];
    assign dep_chan_vld_51_60 = out_chan_dep_vld_vec_51[1];
    assign dep_chan_data_51_60 = out_chan_dep_data_51;
    assign token_51_60 = token_out_vec_51[1];
    assign dep_chan_vld_51_2 = out_chan_dep_vld_vec_51[2];
    assign dep_chan_data_51_2 = out_chan_dep_data_51;
    assign token_51_2 = token_out_vec_51[2];
    assign dep_chan_vld_51_6 = out_chan_dep_vld_vec_51[3];
    assign dep_chan_data_51_6 = out_chan_dep_data_51;
    assign token_51_6 = token_out_vec_51[3];

    // Process: ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 52, 3, 3) ViT_Block_hls_deadlock_detect_unit_52 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_52),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_52),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_52),
        .token_in_vec(token_in_vec_52),
        .dl_detect_in(dl_detect_out),
        .origin(origin[52]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_52),
        .out_chan_dep_data(out_chan_dep_data_52),
        .token_out_vec(token_out_vec_52),
        .dl_detect_out(dl_in_vec[52]));

    assign proc_52_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.norm_out_113_blk_n);
    assign proc_52_data_PIPO_blk[0] = 1'b0;
    assign proc_52_start_FIFO_blk[0] = 1'b0;
    assign proc_52_TLF_FIFO_blk[0] = 1'b0;
    assign proc_52_input_sync_blk[0] = 1'b0;
    assign proc_52_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_52[0] = dl_detect_out ? proc_dep_vld_vec_52_reg[0] : (proc_52_data_FIFO_blk[0] | proc_52_data_PIPO_blk[0] | proc_52_start_FIFO_blk[0] | proc_52_TLF_FIFO_blk[0] | proc_52_input_sync_blk[0] | proc_52_output_sync_blk[0]);
    assign proc_52_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1588_17_fu_96.fc11_blk_n);
    assign proc_52_data_PIPO_blk[1] = 1'b0;
    assign proc_52_start_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.start_for_Relu_tiled_oc_U0_U.if_full_n & ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.ap_start & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.real_start & (trans_in_cnt_24 == trans_out_cnt_24) & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.start_for_Relu_tiled_oc_U0_U.if_read);
    assign proc_52_TLF_FIFO_blk[1] = 1'b0;
    assign proc_52_input_sync_blk[1] = 1'b0;
    assign proc_52_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_52[1] = dl_detect_out ? proc_dep_vld_vec_52_reg[1] : (proc_52_data_FIFO_blk[1] | proc_52_data_PIPO_blk[1] | proc_52_start_FIFO_blk[1] | proc_52_TLF_FIFO_blk[1] | proc_52_input_sync_blk[1] | proc_52_output_sync_blk[1]);
    assign proc_52_data_FIFO_blk[2] = 1'b0;
    assign proc_52_data_PIPO_blk[2] = 1'b0;
    assign proc_52_start_FIFO_blk[2] = 1'b0;
    assign proc_52_TLF_FIFO_blk[2] = 1'b0;
    assign proc_52_input_sync_blk[2] = 1'b0 | (ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_sync_FC1_tiled_oc_2_U0_ap_ready & ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.ap_idle & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_sync_FC2_tiled_oc_2_U0_ap_ready);
    assign proc_52_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_52[2] = dl_detect_out ? proc_dep_vld_vec_52_reg[2] : (proc_52_data_FIFO_blk[2] | proc_52_data_PIPO_blk[2] | proc_52_start_FIFO_blk[2] | proc_52_TLF_FIFO_blk[2] | proc_52_input_sync_blk[2] | proc_52_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_52_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_52_reg <= proc_dep_vld_vec_52;
        end
    end
    assign in_chan_dep_vld_vec_52[0] = dep_chan_vld_50_52;
    assign in_chan_dep_data_vec_52[61 : 0] = dep_chan_data_50_52;
    assign token_in_vec_52[0] = token_50_52;
    assign in_chan_dep_vld_vec_52[1] = dep_chan_vld_55_52;
    assign in_chan_dep_data_vec_52[123 : 62] = dep_chan_data_55_52;
    assign token_in_vec_52[1] = token_55_52;
    assign in_chan_dep_vld_vec_52[2] = dep_chan_vld_56_52;
    assign in_chan_dep_data_vec_52[185 : 124] = dep_chan_data_56_52;
    assign token_in_vec_52[2] = token_56_52;
    assign dep_chan_vld_52_50 = out_chan_dep_vld_vec_52[0];
    assign dep_chan_data_52_50 = out_chan_dep_data_52;
    assign token_52_50 = token_out_vec_52[0];
    assign dep_chan_vld_52_55 = out_chan_dep_vld_vec_52[1];
    assign dep_chan_data_52_55 = out_chan_dep_data_52;
    assign token_52_55 = token_out_vec_52[1];
    assign dep_chan_vld_52_56 = out_chan_dep_vld_vec_52[2];
    assign dep_chan_data_52_56 = out_chan_dep_data_52;
    assign token_52_56 = token_out_vec_52[2];

    // Process: ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 53, 1, 1) ViT_Block_hls_deadlock_detect_unit_53 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_53),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_53),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_53),
        .token_in_vec(token_in_vec_53),
        .dl_detect_in(dl_detect_out),
        .origin(origin[53]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_53),
        .out_chan_dep_data(out_chan_dep_data_53),
        .token_out_vec(token_out_vec_53),
        .dl_detect_out(dl_in_vec[53]));

    assign proc_53_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_126.out_w1_blk_n);
    assign proc_53_data_PIPO_blk[0] = 1'b0;
    assign proc_53_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.start_for_Linear_Layer_1_U0_U.if_full_n & ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0.ap_start & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_U0.real_start & (trans_in_cnt_23 == trans_out_cnt_23) & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.start_for_Linear_Layer_1_U0_U.if_read);
    assign proc_53_TLF_FIFO_blk[0] = 1'b0;
    assign proc_53_input_sync_blk[0] = 1'b0;
    assign proc_53_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_53[0] = dl_detect_out ? proc_dep_vld_vec_53_reg[0] : (proc_53_data_FIFO_blk[0] | proc_53_data_PIPO_blk[0] | proc_53_start_FIFO_blk[0] | proc_53_TLF_FIFO_blk[0] | proc_53_input_sync_blk[0] | proc_53_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_53_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_53_reg <= proc_dep_vld_vec_53;
        end
    end
    assign in_chan_dep_vld_vec_53[0] = dep_chan_vld_54_53;
    assign in_chan_dep_data_vec_53[61 : 0] = dep_chan_data_54_53;
    assign token_in_vec_53[0] = token_54_53;
    assign dep_chan_vld_53_54 = out_chan_dep_vld_vec_53[0];
    assign dep_chan_data_53_54 = out_chan_dep_data_53;
    assign token_53_54 = token_out_vec_53[0];

    // Process: ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 54, 3, 3) ViT_Block_hls_deadlock_detect_unit_54 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_54),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_54),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_54),
        .token_in_vec(token_in_vec_54),
        .dl_detect_in(dl_detect_out),
        .origin(origin[54]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_54),
        .out_chan_dep_data(out_chan_dep_data_54),
        .token_out_vec(token_out_vec_54),
        .dl_detect_out(dl_in_vec[54]));

    assign proc_54_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.norm_out_113_blk_n);
    assign proc_54_data_PIPO_blk[0] = 1'b0;
    assign proc_54_start_FIFO_blk[0] = 1'b0;
    assign proc_54_TLF_FIFO_blk[0] = 1'b0;
    assign proc_54_input_sync_blk[0] = 1'b0;
    assign proc_54_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_54[0] = dl_detect_out ? proc_dep_vld_vec_54_reg[0] : (proc_54_data_FIFO_blk[0] | proc_54_data_PIPO_blk[0] | proc_54_start_FIFO_blk[0] | proc_54_TLF_FIFO_blk[0] | proc_54_input_sync_blk[0] | proc_54_output_sync_blk[0]);
    assign proc_54_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1588_17_fu_96.fc11_blk_n);
    assign proc_54_data_PIPO_blk[1] = 1'b0;
    assign proc_54_start_FIFO_blk[1] = 1'b0;
    assign proc_54_TLF_FIFO_blk[1] = 1'b0;
    assign proc_54_input_sync_blk[1] = 1'b0;
    assign proc_54_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_54[1] = dl_detect_out ? proc_dep_vld_vec_54_reg[1] : (proc_54_data_FIFO_blk[1] | proc_54_data_PIPO_blk[1] | proc_54_start_FIFO_blk[1] | proc_54_TLF_FIFO_blk[1] | proc_54_input_sync_blk[1] | proc_54_output_sync_blk[1]);
    assign proc_54_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.grp_Linear_Layer_1_Pipeline_VITIS_LOOP_1540_9_fu_103.out_w1_blk_n);
    assign proc_54_data_PIPO_blk[2] = 1'b0;
    assign proc_54_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.start_for_Linear_Layer_1_U0_U.if_empty_n & ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_1_U0.ap_idle & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.start_for_Linear_Layer_1_U0_U.if_write);
    assign proc_54_TLF_FIFO_blk[2] = 1'b0;
    assign proc_54_input_sync_blk[2] = 1'b0;
    assign proc_54_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_54[2] = dl_detect_out ? proc_dep_vld_vec_54_reg[2] : (proc_54_data_FIFO_blk[2] | proc_54_data_PIPO_blk[2] | proc_54_start_FIFO_blk[2] | proc_54_TLF_FIFO_blk[2] | proc_54_input_sync_blk[2] | proc_54_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_54_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_54_reg <= proc_dep_vld_vec_54;
        end
    end
    assign in_chan_dep_vld_vec_54[0] = dep_chan_vld_50_54;
    assign in_chan_dep_data_vec_54[61 : 0] = dep_chan_data_50_54;
    assign token_in_vec_54[0] = token_50_54;
    assign in_chan_dep_vld_vec_54[1] = dep_chan_vld_53_54;
    assign in_chan_dep_data_vec_54[123 : 62] = dep_chan_data_53_54;
    assign token_in_vec_54[1] = token_53_54;
    assign in_chan_dep_vld_vec_54[2] = dep_chan_vld_55_54;
    assign in_chan_dep_data_vec_54[185 : 124] = dep_chan_data_55_54;
    assign token_in_vec_54[2] = token_55_54;
    assign dep_chan_vld_54_50 = out_chan_dep_vld_vec_54[0];
    assign dep_chan_data_54_50 = out_chan_dep_data_54;
    assign token_54_50 = token_out_vec_54[0];
    assign dep_chan_vld_54_55 = out_chan_dep_vld_vec_54[1];
    assign dep_chan_data_54_55 = out_chan_dep_data_54;
    assign token_54_55 = token_out_vec_54[1];
    assign dep_chan_vld_54_53 = out_chan_dep_vld_vec_54[2];
    assign dep_chan_data_54_53 = out_chan_dep_data_54;
    assign token_54_53 = token_out_vec_54[2];

    // Process: ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 55, 4, 4) ViT_Block_hls_deadlock_detect_unit_55 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_55),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_55),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_55),
        .token_in_vec(token_in_vec_55),
        .dl_detect_in(dl_detect_out),
        .origin(origin[55]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_55),
        .out_chan_dep_data(out_chan_dep_data_55),
        .token_out_vec(token_out_vec_55),
        .dl_detect_out(dl_in_vec[55]));

    assign proc_55_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.fc11_blk_n);
    assign proc_55_data_PIPO_blk[0] = 1'b0;
    assign proc_55_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.start_for_Relu_tiled_oc_U0_U.if_empty_n & ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.ap_idle & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.start_for_Relu_tiled_oc_U0_U.if_write);
    assign proc_55_TLF_FIFO_blk[0] = 1'b0;
    assign proc_55_input_sync_blk[0] = 1'b0;
    assign proc_55_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_55[0] = dl_detect_out ? proc_dep_vld_vec_55_reg[0] : (proc_55_data_FIFO_blk[0] | proc_55_data_PIPO_blk[0] | proc_55_start_FIFO_blk[0] | proc_55_TLF_FIFO_blk[0] | proc_55_input_sync_blk[0] | proc_55_output_sync_blk[0]);
    assign proc_55_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.fc11_blk_n);
    assign proc_55_data_PIPO_blk[1] = 1'b0;
    assign proc_55_start_FIFO_blk[1] = 1'b0;
    assign proc_55_TLF_FIFO_blk[1] = 1'b0;
    assign proc_55_input_sync_blk[1] = 1'b0;
    assign proc_55_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_55[1] = dl_detect_out ? proc_dep_vld_vec_55_reg[1] : (proc_55_data_FIFO_blk[1] | proc_55_data_PIPO_blk[1] | proc_55_start_FIFO_blk[1] | proc_55_TLF_FIFO_blk[1] | proc_55_input_sync_blk[1] | proc_55_output_sync_blk[1]);
    assign proc_55_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.relu2_blk_n);
    assign proc_55_data_PIPO_blk[2] = 1'b0;
    assign proc_55_start_FIFO_blk[2] = 1'b0;
    assign proc_55_TLF_FIFO_blk[2] = 1'b0;
    assign proc_55_input_sync_blk[2] = 1'b0;
    assign proc_55_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_55[2] = dl_detect_out ? proc_dep_vld_vec_55_reg[2] : (proc_55_data_FIFO_blk[2] | proc_55_data_PIPO_blk[2] | proc_55_start_FIFO_blk[2] | proc_55_TLF_FIFO_blk[2] | proc_55_input_sync_blk[2] | proc_55_output_sync_blk[2]);
    assign proc_55_data_FIFO_blk[3] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.relu2_blk_n);
    assign proc_55_data_PIPO_blk[3] = 1'b0;
    assign proc_55_start_FIFO_blk[3] = 1'b0;
    assign proc_55_TLF_FIFO_blk[3] = 1'b0;
    assign proc_55_input_sync_blk[3] = 1'b0;
    assign proc_55_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_55[3] = dl_detect_out ? proc_dep_vld_vec_55_reg[3] : (proc_55_data_FIFO_blk[3] | proc_55_data_PIPO_blk[3] | proc_55_start_FIFO_blk[3] | proc_55_TLF_FIFO_blk[3] | proc_55_input_sync_blk[3] | proc_55_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_55_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_55_reg <= proc_dep_vld_vec_55;
        end
    end
    assign in_chan_dep_vld_vec_55[0] = dep_chan_vld_52_55;
    assign in_chan_dep_data_vec_55[61 : 0] = dep_chan_data_52_55;
    assign token_in_vec_55[0] = token_52_55;
    assign in_chan_dep_vld_vec_55[1] = dep_chan_vld_54_55;
    assign in_chan_dep_data_vec_55[123 : 62] = dep_chan_data_54_55;
    assign token_in_vec_55[1] = token_54_55;
    assign in_chan_dep_vld_vec_55[2] = dep_chan_vld_56_55;
    assign in_chan_dep_data_vec_55[185 : 124] = dep_chan_data_56_55;
    assign token_in_vec_55[2] = token_56_55;
    assign in_chan_dep_vld_vec_55[3] = dep_chan_vld_58_55;
    assign in_chan_dep_data_vec_55[247 : 186] = dep_chan_data_58_55;
    assign token_in_vec_55[3] = token_58_55;
    assign dep_chan_vld_55_52 = out_chan_dep_vld_vec_55[0];
    assign dep_chan_data_55_52 = out_chan_dep_data_55;
    assign token_55_52 = token_out_vec_55[0];
    assign dep_chan_vld_55_54 = out_chan_dep_vld_vec_55[1];
    assign dep_chan_data_55_54 = out_chan_dep_data_55;
    assign token_55_54 = token_out_vec_55[1];
    assign dep_chan_vld_55_56 = out_chan_dep_vld_vec_55[2];
    assign dep_chan_data_55_56 = out_chan_dep_data_55;
    assign token_55_56 = token_out_vec_55[2];
    assign dep_chan_vld_55_58 = out_chan_dep_vld_vec_55[3];
    assign dep_chan_data_55_58 = out_chan_dep_data_55;
    assign token_55_58 = token_out_vec_55[3];

    // Process: ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 56, 3, 3) ViT_Block_hls_deadlock_detect_unit_56 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_56),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_56),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_56),
        .token_in_vec(token_in_vec_56),
        .dl_detect_in(dl_detect_out),
        .origin(origin[56]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_56),
        .out_chan_dep_data(out_chan_dep_data_56),
        .token_out_vec(token_out_vec_56),
        .dl_detect_out(dl_in_vec[56]));

    assign proc_56_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.relu2_blk_n);
    assign proc_56_data_PIPO_blk[0] = 1'b0;
    assign proc_56_start_FIFO_blk[0] = 1'b0;
    assign proc_56_TLF_FIFO_blk[0] = 1'b0;
    assign proc_56_input_sync_blk[0] = 1'b0;
    assign proc_56_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_56[0] = dl_detect_out ? proc_dep_vld_vec_56_reg[0] : (proc_56_data_FIFO_blk[0] | proc_56_data_PIPO_blk[0] | proc_56_start_FIFO_blk[0] | proc_56_TLF_FIFO_blk[0] | proc_56_input_sync_blk[0] | proc_56_output_sync_blk[0]);
    assign proc_56_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_96.mlp_out14_blk_n);
    assign proc_56_data_PIPO_blk[1] = 1'b0;
    assign proc_56_start_FIFO_blk[1] = 1'b0;
    assign proc_56_TLF_FIFO_blk[1] = 1'b0;
    assign proc_56_input_sync_blk[1] = 1'b0;
    assign proc_56_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_56[1] = dl_detect_out ? proc_dep_vld_vec_56_reg[1] : (proc_56_data_FIFO_blk[1] | proc_56_data_PIPO_blk[1] | proc_56_start_FIFO_blk[1] | proc_56_TLF_FIFO_blk[1] | proc_56_input_sync_blk[1] | proc_56_output_sync_blk[1]);
    assign proc_56_data_FIFO_blk[2] = 1'b0;
    assign proc_56_data_PIPO_blk[2] = 1'b0;
    assign proc_56_start_FIFO_blk[2] = 1'b0;
    assign proc_56_TLF_FIFO_blk[2] = 1'b0;
    assign proc_56_input_sync_blk[2] = 1'b0 | (ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_sync_FC2_tiled_oc_2_U0_ap_ready & ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.ap_idle & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_sync_FC1_tiled_oc_2_U0_ap_ready);
    assign proc_56_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_56[2] = dl_detect_out ? proc_dep_vld_vec_56_reg[2] : (proc_56_data_FIFO_blk[2] | proc_56_data_PIPO_blk[2] | proc_56_start_FIFO_blk[2] | proc_56_TLF_FIFO_blk[2] | proc_56_input_sync_blk[2] | proc_56_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_56_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_56_reg <= proc_dep_vld_vec_56;
        end
    end
    assign in_chan_dep_vld_vec_56[0] = dep_chan_vld_52_56;
    assign in_chan_dep_data_vec_56[61 : 0] = dep_chan_data_52_56;
    assign token_in_vec_56[0] = token_52_56;
    assign in_chan_dep_vld_vec_56[1] = dep_chan_vld_55_56;
    assign in_chan_dep_data_vec_56[123 : 62] = dep_chan_data_55_56;
    assign token_in_vec_56[1] = token_55_56;
    assign in_chan_dep_vld_vec_56[2] = dep_chan_vld_60_56;
    assign in_chan_dep_data_vec_56[185 : 124] = dep_chan_data_60_56;
    assign token_in_vec_56[2] = token_60_56;
    assign dep_chan_vld_56_55 = out_chan_dep_vld_vec_56[0];
    assign dep_chan_data_56_55 = out_chan_dep_data_56;
    assign token_56_55 = token_out_vec_56[0];
    assign dep_chan_vld_56_60 = out_chan_dep_vld_vec_56[1];
    assign dep_chan_data_56_60 = out_chan_dep_data_56;
    assign token_56_60 = token_out_vec_56[1];
    assign dep_chan_vld_56_52 = out_chan_dep_vld_vec_56[2];
    assign dep_chan_data_56_52 = out_chan_dep_data_56;
    assign token_56_52 = token_out_vec_56[2];

    // Process: ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 57, 1, 1) ViT_Block_hls_deadlock_detect_unit_57 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_57),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_57),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_57),
        .token_in_vec(token_in_vec_57),
        .dl_detect_in(dl_detect_out),
        .origin(origin[57]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_57),
        .out_chan_dep_data(out_chan_dep_data_57),
        .token_out_vec(token_out_vec_57),
        .dl_detect_out(dl_in_vec[57]));

    assign proc_57_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0.grp_packer_to_packs_1_1_1_ap_int_8_s_fu_128.out_w1_blk_n);
    assign proc_57_data_PIPO_blk[0] = 1'b0;
    assign proc_57_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.start_for_Linear_Layer_U0_U.if_full_n & ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0.ap_start & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_U0.real_start & (trans_in_cnt_25 == trans_out_cnt_25) & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.start_for_Linear_Layer_U0_U.if_read);
    assign proc_57_TLF_FIFO_blk[0] = 1'b0;
    assign proc_57_input_sync_blk[0] = 1'b0;
    assign proc_57_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_57[0] = dl_detect_out ? proc_dep_vld_vec_57_reg[0] : (proc_57_data_FIFO_blk[0] | proc_57_data_PIPO_blk[0] | proc_57_start_FIFO_blk[0] | proc_57_TLF_FIFO_blk[0] | proc_57_input_sync_blk[0] | proc_57_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_57_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_57_reg <= proc_dep_vld_vec_57;
        end
    end
    assign in_chan_dep_vld_vec_57[0] = dep_chan_vld_58_57;
    assign in_chan_dep_data_vec_57[61 : 0] = dep_chan_data_58_57;
    assign token_in_vec_57[0] = token_58_57;
    assign dep_chan_vld_57_58 = out_chan_dep_vld_vec_57[0];
    assign dep_chan_data_57_58 = out_chan_dep_data_57;
    assign token_57_58 = token_out_vec_57[0];

    // Process: ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 58, 3, 3) ViT_Block_hls_deadlock_detect_unit_58 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_58),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_58),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_58),
        .token_in_vec(token_in_vec_58),
        .dl_detect_in(dl_detect_out),
        .origin(origin[58]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_58),
        .out_chan_dep_data(out_chan_dep_data_58),
        .token_out_vec(token_out_vec_58),
        .dl_detect_out(dl_in_vec[58]));

    assign proc_58_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.relu2_blk_n);
    assign proc_58_data_PIPO_blk[0] = 1'b0;
    assign proc_58_start_FIFO_blk[0] = 1'b0;
    assign proc_58_TLF_FIFO_blk[0] = 1'b0;
    assign proc_58_input_sync_blk[0] = 1'b0;
    assign proc_58_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_58[0] = dl_detect_out ? proc_dep_vld_vec_58_reg[0] : (proc_58_data_FIFO_blk[0] | proc_58_data_PIPO_blk[0] | proc_58_start_FIFO_blk[0] | proc_58_TLF_FIFO_blk[0] | proc_58_input_sync_blk[0] | proc_58_output_sync_blk[0]);
    assign proc_58_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_fu_96.mlp_out14_blk_n);
    assign proc_58_data_PIPO_blk[1] = 1'b0;
    assign proc_58_start_FIFO_blk[1] = 1'b0;
    assign proc_58_TLF_FIFO_blk[1] = 1'b0;
    assign proc_58_input_sync_blk[1] = 1'b0;
    assign proc_58_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_58[1] = dl_detect_out ? proc_dep_vld_vec_58_reg[1] : (proc_58_data_FIFO_blk[1] | proc_58_data_PIPO_blk[1] | proc_58_start_FIFO_blk[1] | proc_58_TLF_FIFO_blk[1] | proc_58_input_sync_blk[1] | proc_58_output_sync_blk[1]);
    assign proc_58_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.grp_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_fu_103.out_w1_blk_n);
    assign proc_58_data_PIPO_blk[2] = 1'b0;
    assign proc_58_start_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.start_for_Linear_Layer_U0_U.if_empty_n & ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_U0.ap_idle & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.start_for_Linear_Layer_U0_U.if_write);
    assign proc_58_TLF_FIFO_blk[2] = 1'b0;
    assign proc_58_input_sync_blk[2] = 1'b0;
    assign proc_58_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_58[2] = dl_detect_out ? proc_dep_vld_vec_58_reg[2] : (proc_58_data_FIFO_blk[2] | proc_58_data_PIPO_blk[2] | proc_58_start_FIFO_blk[2] | proc_58_TLF_FIFO_blk[2] | proc_58_input_sync_blk[2] | proc_58_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_58_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_58_reg <= proc_dep_vld_vec_58;
        end
    end
    assign in_chan_dep_vld_vec_58[0] = dep_chan_vld_55_58;
    assign in_chan_dep_data_vec_58[61 : 0] = dep_chan_data_55_58;
    assign token_in_vec_58[0] = token_55_58;
    assign in_chan_dep_vld_vec_58[1] = dep_chan_vld_57_58;
    assign in_chan_dep_data_vec_58[123 : 62] = dep_chan_data_57_58;
    assign token_in_vec_58[1] = token_57_58;
    assign in_chan_dep_vld_vec_58[2] = dep_chan_vld_60_58;
    assign in_chan_dep_data_vec_58[185 : 124] = dep_chan_data_60_58;
    assign token_in_vec_58[2] = token_60_58;
    assign dep_chan_vld_58_55 = out_chan_dep_vld_vec_58[0];
    assign dep_chan_data_58_55 = out_chan_dep_data_58;
    assign token_58_55 = token_out_vec_58[0];
    assign dep_chan_vld_58_60 = out_chan_dep_vld_vec_58[1];
    assign dep_chan_data_58_60 = out_chan_dep_data_58;
    assign token_58_60 = token_out_vec_58[1];
    assign dep_chan_vld_58_57 = out_chan_dep_vld_vec_58[2];
    assign dep_chan_data_58_57 = out_chan_dep_data_58;
    assign token_58_57 = token_out_vec_58[2];

    // Process: ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 59, 2, 2) ViT_Block_hls_deadlock_detect_unit_59 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_59),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_59),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_59),
        .token_in_vec(token_in_vec_59),
        .dl_detect_in(dl_detect_out),
        .origin(origin[59]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_59),
        .out_chan_dep_data(out_chan_dep_data_59),
        .token_out_vec(token_out_vec_59),
        .dl_detect_out(dl_in_vec[59]));

    assign proc_59_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0.res_110_blk_n);
    assign proc_59_data_PIPO_blk[0] = 1'b0;
    assign proc_59_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.start_for_requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0_U.if_empty_n & ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0.ap_idle & ~ViT_Block_Core_U0.start_for_requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0_U.if_write);
    assign proc_59_TLF_FIFO_blk[0] = 1'b0;
    assign proc_59_input_sync_blk[0] = 1'b0;
    assign proc_59_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_59[0] = dl_detect_out ? proc_dep_vld_vec_59_reg[0] : (proc_59_data_FIFO_blk[0] | proc_59_data_PIPO_blk[0] | proc_59_start_FIFO_blk[0] | proc_59_TLF_FIFO_blk[0] | proc_59_input_sync_blk[0] | proc_59_output_sync_blk[0]);
    assign proc_59_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0.res_1_rq11_blk_n);
    assign proc_59_data_PIPO_blk[1] = 1'b0;
    assign proc_59_start_FIFO_blk[1] = 1'b0;
    assign proc_59_TLF_FIFO_blk[1] = 1'b0;
    assign proc_59_input_sync_blk[1] = 1'b0;
    assign proc_59_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_59[1] = dl_detect_out ? proc_dep_vld_vec_59_reg[1] : (proc_59_data_FIFO_blk[1] | proc_59_data_PIPO_blk[1] | proc_59_start_FIFO_blk[1] | proc_59_TLF_FIFO_blk[1] | proc_59_input_sync_blk[1] | proc_59_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_59_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_59_reg <= proc_dep_vld_vec_59;
        end
    end
    assign in_chan_dep_vld_vec_59[0] = dep_chan_vld_49_59;
    assign in_chan_dep_data_vec_59[61 : 0] = dep_chan_data_49_59;
    assign token_in_vec_59[0] = token_49_59;
    assign in_chan_dep_vld_vec_59[1] = dep_chan_vld_60_59;
    assign in_chan_dep_data_vec_59[123 : 62] = dep_chan_data_60_59;
    assign token_in_vec_59[1] = token_60_59;
    assign dep_chan_vld_59_49 = out_chan_dep_vld_vec_59[0];
    assign dep_chan_data_59_49 = out_chan_dep_data_59;
    assign token_59_49 = token_out_vec_59[0];
    assign dep_chan_vld_59_60 = out_chan_dep_vld_vec_59[1];
    assign dep_chan_data_59_60 = out_chan_dep_data_59;
    assign token_59_60 = token_out_vec_59[1];

    // Process: ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 60, 5, 5) ViT_Block_hls_deadlock_detect_unit_60 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_60),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_60),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_60),
        .token_in_vec(token_in_vec_60),
        .dl_detect_in(dl_detect_out),
        .origin(origin[60]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_60),
        .out_chan_dep_data(out_chan_dep_data_60),
        .token_out_vec(token_out_vec_60),
        .dl_detect_out(dl_in_vec[60]));

    assign proc_60_data_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0.mlp_out14_blk_n);
    assign proc_60_data_PIPO_blk[0] = 1'b0;
    assign proc_60_start_FIFO_blk[0] = 1'b0 | (~ViT_Block_Core_U0.start_for_ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0_U.if_empty_n & ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0.ap_idle & ~ViT_Block_Core_U0.start_for_ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0_U.if_write);
    assign proc_60_TLF_FIFO_blk[0] = 1'b0;
    assign proc_60_input_sync_blk[0] = 1'b0;
    assign proc_60_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_60[0] = dl_detect_out ? proc_dep_vld_vec_60_reg[0] : (proc_60_data_FIFO_blk[0] | proc_60_data_PIPO_blk[0] | proc_60_start_FIFO_blk[0] | proc_60_TLF_FIFO_blk[0] | proc_60_input_sync_blk[0] | proc_60_output_sync_blk[0]);
    assign proc_60_data_FIFO_blk[1] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0.mlp_out14_blk_n);
    assign proc_60_data_PIPO_blk[1] = 1'b0;
    assign proc_60_start_FIFO_blk[1] = 1'b0;
    assign proc_60_TLF_FIFO_blk[1] = 1'b0;
    assign proc_60_input_sync_blk[1] = 1'b0;
    assign proc_60_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_60[1] = dl_detect_out ? proc_dep_vld_vec_60_reg[1] : (proc_60_data_FIFO_blk[1] | proc_60_data_PIPO_blk[1] | proc_60_start_FIFO_blk[1] | proc_60_TLF_FIFO_blk[1] | proc_60_input_sync_blk[1] | proc_60_output_sync_blk[1]);
    assign proc_60_data_FIFO_blk[2] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0.mlp_out14_blk_n);
    assign proc_60_data_PIPO_blk[2] = 1'b0;
    assign proc_60_start_FIFO_blk[2] = 1'b0;
    assign proc_60_TLF_FIFO_blk[2] = 1'b0;
    assign proc_60_input_sync_blk[2] = 1'b0;
    assign proc_60_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_60[2] = dl_detect_out ? proc_dep_vld_vec_60_reg[2] : (proc_60_data_FIFO_blk[2] | proc_60_data_PIPO_blk[2] | proc_60_start_FIFO_blk[2] | proc_60_TLF_FIFO_blk[2] | proc_60_input_sync_blk[2] | proc_60_output_sync_blk[2]);
    assign proc_60_data_FIFO_blk[3] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0.res_1_rq11_blk_n);
    assign proc_60_data_PIPO_blk[3] = 1'b0;
    assign proc_60_start_FIFO_blk[3] = 1'b0;
    assign proc_60_TLF_FIFO_blk[3] = 1'b0;
    assign proc_60_input_sync_blk[3] = 1'b0;
    assign proc_60_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_60[3] = dl_detect_out ? proc_dep_vld_vec_60_reg[3] : (proc_60_data_FIFO_blk[3] | proc_60_data_PIPO_blk[3] | proc_60_start_FIFO_blk[3] | proc_60_TLF_FIFO_blk[3] | proc_60_input_sync_blk[3] | proc_60_output_sync_blk[3]);
    assign proc_60_data_FIFO_blk[4] = 1'b0 | (~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0.output_stream2_blk_n);
    assign proc_60_data_PIPO_blk[4] = 1'b0;
    assign proc_60_start_FIFO_blk[4] = 1'b0;
    assign proc_60_TLF_FIFO_blk[4] = 1'b0;
    assign proc_60_input_sync_blk[4] = 1'b0;
    assign proc_60_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_60[4] = dl_detect_out ? proc_dep_vld_vec_60_reg[4] : (proc_60_data_FIFO_blk[4] | proc_60_data_PIPO_blk[4] | proc_60_start_FIFO_blk[4] | proc_60_TLF_FIFO_blk[4] | proc_60_input_sync_blk[4] | proc_60_output_sync_blk[4]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_60_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_60_reg <= proc_dep_vld_vec_60;
        end
    end
    assign in_chan_dep_vld_vec_60[0] = dep_chan_vld_51_60;
    assign in_chan_dep_data_vec_60[61 : 0] = dep_chan_data_51_60;
    assign token_in_vec_60[0] = token_51_60;
    assign in_chan_dep_vld_vec_60[1] = dep_chan_vld_56_60;
    assign in_chan_dep_data_vec_60[123 : 62] = dep_chan_data_56_60;
    assign token_in_vec_60[1] = token_56_60;
    assign in_chan_dep_vld_vec_60[2] = dep_chan_vld_58_60;
    assign in_chan_dep_data_vec_60[185 : 124] = dep_chan_data_58_60;
    assign token_in_vec_60[2] = token_58_60;
    assign in_chan_dep_vld_vec_60[3] = dep_chan_vld_59_60;
    assign in_chan_dep_data_vec_60[247 : 186] = dep_chan_data_59_60;
    assign token_in_vec_60[3] = token_59_60;
    assign in_chan_dep_vld_vec_60[4] = dep_chan_vld_61_60;
    assign in_chan_dep_data_vec_60[309 : 248] = dep_chan_data_61_60;
    assign token_in_vec_60[4] = token_61_60;
    assign dep_chan_vld_60_51 = out_chan_dep_vld_vec_60[0];
    assign dep_chan_data_60_51 = out_chan_dep_data_60;
    assign token_60_51 = token_out_vec_60[0];
    assign dep_chan_vld_60_56 = out_chan_dep_vld_vec_60[1];
    assign dep_chan_data_60_56 = out_chan_dep_data_60;
    assign token_60_56 = token_out_vec_60[1];
    assign dep_chan_vld_60_58 = out_chan_dep_vld_vec_60[2];
    assign dep_chan_data_60_58 = out_chan_dep_data_60;
    assign token_60_58 = token_out_vec_60[2];
    assign dep_chan_vld_60_59 = out_chan_dep_vld_vec_60[3];
    assign dep_chan_data_60_59 = out_chan_dep_data_60;
    assign token_60_59 = token_out_vec_60[3];
    assign dep_chan_vld_60_61 = out_chan_dep_vld_vec_60[4];
    assign dep_chan_data_60_61 = out_chan_dep_data_60;
    assign token_60_61 = token_out_vec_60[4];

    // Process: apuint_to_axis_U0
    ViT_Block_hls_deadlock_detect_unit #(62, 61, 2, 2) ViT_Block_hls_deadlock_detect_unit_61 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_61),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_61),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_61),
        .token_in_vec(token_in_vec_61),
        .dl_detect_in(dl_detect_out),
        .origin(origin[61]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_61),
        .out_chan_dep_data(out_chan_dep_data_61),
        .token_out_vec(token_out_vec_61),
        .dl_detect_out(dl_in_vec[61]));

    assign proc_61_data_FIFO_blk[0] = 1'b0 | (~apuint_to_axis_U0.output_stream2_blk_n);
    assign proc_61_data_PIPO_blk[0] = 1'b0;
    assign proc_61_start_FIFO_blk[0] = 1'b0 | (~start_for_apuint_to_axis_U0_U.if_empty_n & apuint_to_axis_U0.ap_idle & ~start_for_apuint_to_axis_U0_U.if_write);
    assign proc_61_TLF_FIFO_blk[0] = 1'b0;
    assign proc_61_input_sync_blk[0] = 1'b0;
    assign proc_61_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_61[0] = dl_detect_out ? proc_dep_vld_vec_61_reg[0] : (proc_61_data_FIFO_blk[0] | proc_61_data_PIPO_blk[0] | proc_61_start_FIFO_blk[0] | proc_61_TLF_FIFO_blk[0] | proc_61_input_sync_blk[0] | proc_61_output_sync_blk[0]);
    assign proc_61_data_FIFO_blk[1] = 1'b0 | (~apuint_to_axis_U0.output_stream2_blk_n);
    assign proc_61_data_PIPO_blk[1] = 1'b0;
    assign proc_61_start_FIFO_blk[1] = 1'b0;
    assign proc_61_TLF_FIFO_blk[1] = 1'b0;
    assign proc_61_input_sync_blk[1] = 1'b0;
    assign proc_61_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_61[1] = dl_detect_out ? proc_dep_vld_vec_61_reg[1] : (proc_61_data_FIFO_blk[1] | proc_61_data_PIPO_blk[1] | proc_61_start_FIFO_blk[1] | proc_61_TLF_FIFO_blk[1] | proc_61_input_sync_blk[1] | proc_61_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_61_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_61_reg <= proc_dep_vld_vec_61;
        end
    end
    assign in_chan_dep_vld_vec_61[0] = dep_chan_vld_1_61;
    assign in_chan_dep_data_vec_61[61 : 0] = dep_chan_data_1_61;
    assign token_in_vec_61[0] = token_1_61;
    assign in_chan_dep_vld_vec_61[1] = dep_chan_vld_60_61;
    assign in_chan_dep_data_vec_61[123 : 62] = dep_chan_data_60_61;
    assign token_in_vec_61[1] = token_60_61;
    assign dep_chan_vld_61_1 = out_chan_dep_vld_vec_61[0];
    assign dep_chan_data_61_1 = out_chan_dep_data_61;
    assign token_61_1 = token_out_vec_61[0];
    assign dep_chan_vld_61_60 = out_chan_dep_vld_vec_61[1];
    assign dep_chan_data_61_60 = out_chan_dep_data_61;
    assign token_61_60 = token_out_vec_61[1];


`include "ViT_Block_hls_deadlock_report_unit.vh"
