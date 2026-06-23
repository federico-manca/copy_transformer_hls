
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [1:0] axis_block_sigs;
wire [52:0] inst_idle_sigs;
wire [49:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~axis_to_apuint_U0.in_r_TDATA_blk_n;
assign axis_block_sigs[1] = ~apuint_to_axis_U0.out_r_TDATA_blk_n;

assign inst_idle_sigs[0] = axis_to_apuint_U0.ap_idle;
assign inst_block_sigs[0] = (axis_to_apuint_U0.ap_done & ~axis_to_apuint_U0.ap_continue) | ~axis_to_apuint_U0.input_stream1_blk_n;
assign inst_idle_sigs[1] = ViT_Block_Core_U0.ap_idle;
assign inst_block_sigs[1] = (ViT_Block_Core_U0.ap_done & ~ViT_Block_Core_U0.ap_continue) | ~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.input_stream1_blk_n | ~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.output_stream2_blk_n;
assign inst_idle_sigs[2] = apuint_to_axis_U0.ap_idle;
assign inst_block_sigs[2] = (apuint_to_axis_U0.ap_done & ~apuint_to_axis_U0.ap_continue) | ~apuint_to_axis_U0.output_stream2_blk_n;
assign inst_idle_sigs[3] = ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.ap_idle;
assign inst_block_sigs[3] = (ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.ap_done & ~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.ap_continue);
assign inst_idle_sigs[4] = ViT_Block_Core_U0.BatchNorm_tiled_0_U0.ap_idle;
assign inst_block_sigs[4] = (ViT_Block_Core_U0.BatchNorm_tiled_0_U0.ap_done & ~ViT_Block_Core_U0.BatchNorm_tiled_0_U0.ap_continue);
assign inst_idle_sigs[5] = ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_16_1_U0.ap_idle;
assign inst_block_sigs[5] = (ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_16_1_U0.ap_done & ~ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_16_1_U0.ap_continue);
assign inst_idle_sigs[6] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_idle;
assign inst_block_sigs[6] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_continue);
assign inst_idle_sigs[7] = ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0.ap_idle;
assign inst_block_sigs[7] = (ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0.ap_done & ~ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0.ap_continue);
assign inst_idle_sigs[8] = ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0.ap_idle;
assign inst_block_sigs[8] = (ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0.ap_done & ~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0.ap_continue);
assign inst_idle_sigs[9] = ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_1_U0.ap_idle;
assign inst_block_sigs[9] = (ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_1_U0.ap_done & ~ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_1_U0.ap_continue);
assign inst_idle_sigs[10] = ViT_Block_Core_U0.BatchNorm_tiled_1_U0.ap_idle;
assign inst_block_sigs[10] = (ViT_Block_Core_U0.BatchNorm_tiled_1_U0.ap_done & ~ViT_Block_Core_U0.BatchNorm_tiled_1_U0.ap_continue);
assign inst_idle_sigs[11] = ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_idle;
assign inst_block_sigs[11] = (ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_done & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_continue);
assign inst_idle_sigs[12] = ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0.ap_idle;
assign inst_block_sigs[12] = (ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0.ap_done & ~ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0.ap_continue);
assign inst_idle_sigs[13] = ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.ap_idle;
assign inst_block_sigs[13] = (ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.ap_done & ~ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.ap_continue);
assign inst_idle_sigs[14] = ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0.ap_idle;
assign inst_block_sigs[14] = (ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0.ap_done & ~ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0.ap_continue);
assign inst_idle_sigs[15] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_idle;
assign inst_block_sigs[15] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_continue);
assign inst_idle_sigs[16] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_idle;
assign inst_block_sigs[16] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_continue);
assign inst_idle_sigs[17] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_idle;
assign inst_block_sigs[17] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_continue);
assign inst_idle_sigs[18] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_idle;
assign inst_block_sigs[18] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_continue);
assign inst_idle_sigs[19] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.ap_idle;
assign inst_block_sigs[19] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.ap_continue);
assign inst_idle_sigs[20] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_idle;
assign inst_block_sigs[20] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_continue);
assign inst_idle_sigs[21] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.ap_idle;
assign inst_block_sigs[21] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.ap_continue);
assign inst_idle_sigs[22] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.ap_idle;
assign inst_block_sigs[22] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.ap_continue);
assign inst_idle_sigs[23] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0.ap_idle;
assign inst_block_sigs[23] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0.ap_continue);
assign inst_idle_sigs[24] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.ap_idle;
assign inst_block_sigs[24] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.ap_continue);
assign inst_idle_sigs[25] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.ap_idle;
assign inst_block_sigs[25] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.ap_continue);
assign inst_idle_sigs[26] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.ap_idle;
assign inst_block_sigs[26] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.ap_continue);
assign inst_idle_sigs[27] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0.ap_idle;
assign inst_block_sigs[27] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0.ap_continue);
assign inst_idle_sigs[28] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.ap_idle;
assign inst_block_sigs[28] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.ap_continue);
assign inst_idle_sigs[29] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.ap_idle;
assign inst_block_sigs[29] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.ap_continue);
assign inst_idle_sigs[30] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.ap_idle;
assign inst_block_sigs[30] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.ap_continue);
assign inst_idle_sigs[31] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.ap_idle;
assign inst_block_sigs[31] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.ap_continue);
assign inst_idle_sigs[32] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[32] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.ap_continue);
assign inst_idle_sigs[33] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.ap_idle;
assign inst_block_sigs[33] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.ap_continue);
assign inst_idle_sigs[34] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[34] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.ap_continue);
assign inst_idle_sigs[35] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.ap_idle;
assign inst_block_sigs[35] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.ap_continue);
assign inst_idle_sigs[36] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[36] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.ap_continue);
assign inst_idle_sigs[37] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.ap_idle;
assign inst_block_sigs[37] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.ap_continue);
assign inst_idle_sigs[38] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.ap_idle;
assign inst_block_sigs[38] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.ap_continue);
assign inst_idle_sigs[39] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.ap_idle;
assign inst_block_sigs[39] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.ap_continue);
assign inst_idle_sigs[40] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.ap_idle;
assign inst_block_sigs[40] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.ap_continue);
assign inst_idle_sigs[41] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.ap_idle;
assign inst_block_sigs[41] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.ap_continue);
assign inst_idle_sigs[42] = ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[42] = (ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.ap_continue);
assign inst_idle_sigs[43] = ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.ap_idle;
assign inst_block_sigs[43] = (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.ap_done & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.ap_continue);
assign inst_idle_sigs[44] = ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.ap_idle;
assign inst_block_sigs[44] = (ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.ap_done & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.ap_continue);
assign inst_idle_sigs[45] = ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.ap_idle;
assign inst_block_sigs[45] = (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.ap_done & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.ap_continue);
assign inst_idle_sigs[46] = ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.ap_idle;
assign inst_block_sigs[46] = (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.ap_done & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.ap_continue);
assign inst_idle_sigs[47] = ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[47] = (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.ap_continue);
assign inst_idle_sigs[48] = ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.ap_idle;
assign inst_block_sigs[48] = (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.ap_done & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.ap_continue);
assign inst_idle_sigs[49] = ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[49] = (ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.ap_continue);

assign inst_idle_sigs[50] = 1'b0;
assign inst_idle_sigs[51] = axis_to_apuint_U0.ap_idle;
assign inst_idle_sigs[52] = apuint_to_axis_U0.ap_idle;

ViT_Block_hls_deadlock_idx0_monitor ViT_Block_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
