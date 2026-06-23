`timescale 1 ns / 1 ps

module AESL_deadlock_kernel_monitor_top ( 
    input wire kernel_monitor_clock,
    input wire kernel_monitor_reset
);
wire [1:0] axis_block_sigs;
wire [52:0] inst_idle_sigs;
wire [49:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AESL_inst_ViT_Block.axis_to_apuint_U0.in_r_TDATA_blk_n;
assign axis_block_sigs[1] = ~AESL_inst_ViT_Block.apuint_to_axis_U0.out_r_TDATA_blk_n;

assign inst_idle_sigs[0] = AESL_inst_ViT_Block.axis_to_apuint_U0.ap_idle;
assign inst_block_sigs[0] = (AESL_inst_ViT_Block.axis_to_apuint_U0.ap_done & ~AESL_inst_ViT_Block.axis_to_apuint_U0.ap_continue) | ~AESL_inst_ViT_Block.axis_to_apuint_U0.input_stream1_blk_n;
assign inst_idle_sigs[1] = AESL_inst_ViT_Block.ViT_Block_Core_U0.ap_idle;
assign inst_block_sigs[1] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.ap_continue) | ~AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.input_stream1_blk_n | ~AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.output_stream2_blk_n;
assign inst_idle_sigs[2] = AESL_inst_ViT_Block.apuint_to_axis_U0.ap_idle;
assign inst_block_sigs[2] = (AESL_inst_ViT_Block.apuint_to_axis_U0.ap_done & ~AESL_inst_ViT_Block.apuint_to_axis_U0.ap_continue) | ~AESL_inst_ViT_Block.apuint_to_axis_U0.output_stream2_blk_n;
assign inst_idle_sigs[3] = AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.ap_idle;
assign inst_block_sigs[3] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.ap_continue);
assign inst_idle_sigs[4] = AESL_inst_ViT_Block.ViT_Block_Core_U0.BatchNorm_tiled_0_U0.ap_idle;
assign inst_block_sigs[4] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.BatchNorm_tiled_0_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.BatchNorm_tiled_0_U0.ap_continue);
assign inst_idle_sigs[5] = AESL_inst_ViT_Block.ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_16_1_U0.ap_idle;
assign inst_block_sigs[5] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_16_1_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.triplicate_stream_ap_int_8_17_16_1_U0.ap_continue);
assign inst_idle_sigs[6] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_idle;
assign inst_block_sigs[6] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.ap_continue);
assign inst_idle_sigs[7] = AESL_inst_ViT_Block.ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0.ap_idle;
assign inst_block_sigs[7] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0.ap_continue);
assign inst_idle_sigs[8] = AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0.ap_idle;
assign inst_block_sigs[8] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0.ap_continue);
assign inst_idle_sigs[9] = AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_1_U0.ap_idle;
assign inst_block_sigs[9] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_1_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_1_U0.ap_continue);
assign inst_idle_sigs[10] = AESL_inst_ViT_Block.ViT_Block_Core_U0.BatchNorm_tiled_1_U0.ap_idle;
assign inst_block_sigs[10] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.BatchNorm_tiled_1_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.BatchNorm_tiled_1_U0.ap_continue);
assign inst_idle_sigs[11] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_idle;
assign inst_block_sigs[11] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.ap_continue);
assign inst_idle_sigs[12] = AESL_inst_ViT_Block.ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0.ap_idle;
assign inst_block_sigs[12] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0.ap_continue);
assign inst_idle_sigs[13] = AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.ap_idle;
assign inst_block_sigs[13] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.ap_continue);
assign inst_idle_sigs[14] = AESL_inst_ViT_Block.ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0.ap_idle;
assign inst_block_sigs[14] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.BatchNorm_tiled_0_U0.BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_U0.ap_continue);
assign inst_idle_sigs[15] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_idle;
assign inst_block_sigs[15] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.ap_continue);
assign inst_idle_sigs[16] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_idle;
assign inst_block_sigs[16] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.ap_continue);
assign inst_idle_sigs[17] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_idle;
assign inst_block_sigs[17] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.ap_continue);
assign inst_idle_sigs[18] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_idle;
assign inst_block_sigs[18] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_U0.ap_continue);
assign inst_idle_sigs[19] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.ap_idle;
assign inst_block_sigs[19] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_2_U0.ap_continue);
assign inst_idle_sigs[20] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_idle;
assign inst_block_sigs[20] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.split_heads_3_U0.ap_continue);
assign inst_idle_sigs[21] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.ap_idle;
assign inst_block_sigs[21] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.ap_continue);
assign inst_idle_sigs[22] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.ap_idle;
assign inst_block_sigs[22] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_U0.ap_continue);
assign inst_idle_sigs[23] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0.ap_idle;
assign inst_block_sigs[23] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0.ap_continue);
assign inst_idle_sigs[24] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.ap_idle;
assign inst_block_sigs[24] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.ap_continue);
assign inst_idle_sigs[25] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.ap_idle;
assign inst_block_sigs[25] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.ap_continue);
assign inst_idle_sigs[26] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.ap_idle;
assign inst_block_sigs[26] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.SOFTMAX_tile_5_U0.ap_continue);
assign inst_idle_sigs[27] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0.ap_idle;
assign inst_block_sigs[27] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0.ap_continue);
assign inst_idle_sigs[28] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.ap_idle;
assign inst_block_sigs[28] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.ap_continue);
assign inst_idle_sigs[29] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.ap_idle;
assign inst_block_sigs[29] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.merge_heads_U0.ap_continue);
assign inst_idle_sigs[30] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.ap_idle;
assign inst_block_sigs[30] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.ap_continue);
assign inst_idle_sigs[31] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.ap_idle;
assign inst_block_sigs[31] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_U0.ap_continue);
assign inst_idle_sigs[32] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[32] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Q_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0.ap_continue);
assign inst_idle_sigs[33] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.ap_idle;
assign inst_block_sigs[33] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8_U0.ap_continue);
assign inst_idle_sigs[34] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[34] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.K_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0.ap_continue);
assign inst_idle_sigs[35] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.ap_idle;
assign inst_block_sigs[35] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9_U0.ap_continue);
assign inst_idle_sigs[36] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[36] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.V_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0.ap_continue);
assign inst_idle_sigs[37] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.ap_idle;
assign inst_block_sigs[37] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_U0.ap_continue);
assign inst_idle_sigs[38] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.ap_idle;
assign inst_block_sigs[38] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_U0.ap_continue);
assign inst_idle_sigs[39] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.ap_idle;
assign inst_block_sigs[39] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM_tiled_4_U0.MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_U0.ap_continue);
assign inst_idle_sigs[40] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.ap_idle;
assign inst_block_sigs[40] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.MM1_tiled_7_U0.MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_U0.ap_continue);
assign inst_idle_sigs[41] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.ap_idle;
assign inst_block_sigs[41] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12_U0.ap_continue);
assign inst_idle_sigs[42] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[42] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MultiHeadAttention_tiled_U0.Out_linear_tiled_U0.Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0.ap_continue);
assign inst_idle_sigs[43] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.ap_idle;
assign inst_block_sigs[43] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.ap_continue);
assign inst_idle_sigs[44] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.ap_idle;
assign inst_block_sigs[44] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.Relu_tiled_oc_U0.ap_continue);
assign inst_idle_sigs[45] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.ap_idle;
assign inst_block_sigs[45] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.ap_continue);
assign inst_idle_sigs[46] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.ap_idle;
assign inst_block_sigs[46] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_U0.ap_continue);
assign inst_idle_sigs[47] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[47] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC1_tiled_oc_2_U0.Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0.ap_continue);
assign inst_idle_sigs[48] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.ap_idle;
assign inst_block_sigs[48] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_U0.ap_continue);
assign inst_idle_sigs[49] = AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.ap_idle;
assign inst_block_sigs[49] = (AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.ap_done & ~AESL_inst_ViT_Block.ViT_Block_Core_U0.MLP_tiled_oc_U0.FC2_tiled_oc_2_U0.Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0.ap_continue);

assign inst_idle_sigs[50] = 1'b0;
assign inst_idle_sigs[51] = AESL_inst_ViT_Block.axis_to_apuint_U0.ap_idle;
assign inst_idle_sigs[52] = AESL_inst_ViT_Block.apuint_to_axis_U0.ap_idle;

AESL_deadlock_idx0_monitor AESL_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

// synthesis translate_off
// logic for axis port block diagnosis
initial begin : axis_deadlock_report
integer axis_port_scan_flag;
integer fp;
integer cnt;
integer path_cnt;
    cnt = 0;
    path_cnt = 1;
    fp = $fopen("kernel_deadlock_diagnosis.rpt","a");
    $fdisplay(fp,"//// start to dump deadlock path for kernel '%m' ////");
    wait(kernel_monitor_reset == 1'b1);
        axis_port_scan_flag = 0;
    while(!kernel_block || cnt != 2)
    begin
        @(posedge kernel_monitor_clock);
        if (kernel_block)
            cnt = cnt + 1;
    end

    $display("\n//////////////////////////////////////////////////////////////////////////////");
    $fdisplay(fp,"\n//////////////////////////////////////////////////////////////////////////////");
    // find all axis ports which have no outer block
    while (axis_port_scan_flag < 2) begin
        case(axis_port_scan_flag)
            0:
            begin
                if (axis_block_sigs[0] == 1'b0) begin
                    $display("//****************************************************************************");
                    $display("// Block PATH %d",path_cnt);
                    $display("//****************************************************************************");
                    $display("// Following axis port can not access by process 'ViT_Block.axis_to_apuint_U0' :");
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Block PATH %d",path_cnt);
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Following axis port can not access by process 'ViT_Block.axis_to_apuint_U0' :");
                    if (axis_block_sigs[0] == 1'b0) begin
                        $display("//    Port 'in_r' can not be read");
                        $fdisplay(fp,"//    Port 'in_r' can not be read");
                    end
                    report_block_path_in_axis_to_apuint_U0(fp);
                    $display("//****************************************************************************");
                    $fdisplay(fp,"//****************************************************************************");
                    path_cnt = path_cnt + 1;
                end
            end
            1:
            begin
                if (axis_block_sigs[1] == 1'b0) begin
                    $display("//****************************************************************************");
                    $display("// Block PATH %d",path_cnt);
                    $display("//****************************************************************************");
                    $display("// Following axis port can not access by process 'ViT_Block.apuint_to_axis_U0' :");
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Block PATH %d",path_cnt);
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Following axis port can not access by process 'ViT_Block.apuint_to_axis_U0' :");
                    if (axis_block_sigs[1] == 1'b0) begin
                        $display("//    Port 'out_r' can not be written");
                        $fdisplay(fp,"//    Port 'out_r' can not be written");
                    end
                    report_block_path_in_apuint_to_axis_U0(fp);
                    $display("//****************************************************************************");
                    $fdisplay(fp,"//****************************************************************************");
                    path_cnt = path_cnt + 1;
                end
            end
        endcase
        axis_port_scan_flag = axis_port_scan_flag + 1;
    end
    $display("//////////////////////////////////////////////////////////////////////////////\n");
    $fdisplay(fp,"//////////////////////////////////////////////////////////////////////////////\n");
    $fdisplay(fp,"//// finish dumping deadlock path for kernel '%m' ////\n");
    $fclose(fp);
end

task report_block_path_in_axis_to_apuint_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (axis_block_sigs[0] == 1'b1) begin
        $display("//");
        $display("//    Process 'ViT_Block.axis_to_apuint_U0' is blocked by following axis port :");
        $fdisplay(fp,"//");
        $fdisplay(fp,"//    Process 'ViT_Block.axis_to_apuint_U0' is blocked by following axis port :");
        if (axis_block_sigs[0] == 1'b1) begin
            $display("//        Port 'in_r' does not have valid input data");
            $fdisplay(fp,"//        Port 'in_r' does not have valid input data");
        end
    end
    else begin 
        out_proc_hit = 2'h0;
// check block with process 'ViT_Block.ViT_Block_Core_U0'
        if (AESL_inst_ViT_Block.input_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.axis_to_apuint_U0.input_stream1_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_ViT_Block.input_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.axis_to_apuint_U0.input_stream1_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'ViT_Block.ViT_Block_Core_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'ViT_Block.axis_to_apuint_U0' is blocked by following channel which connected with process 'ViT_Block.ViT_Block_Core_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'ViT_Block.axis_to_apuint_U0' is blocked by following channel which connected with process 'ViT_Block.ViT_Block_Core_U0' :");

            if (AESL_inst_ViT_Block.input_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.axis_to_apuint_U0.input_stream1_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'ViT_Block.input_stream_U' written by process 'ViT_Block.ViT_Block_Core_U0'");
                $fdisplay(fp,"//        empty input FIFO 'ViT_Block.input_stream_U' written by process 'ViT_Block.ViT_Block_Core_U0'");
            end
            else if (AESL_inst_ViT_Block.input_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.axis_to_apuint_U0.input_stream1_blk_n == 1'b1) begin
                $display("//        full output FIFO 'ViT_Block.input_stream_U' read by process 'ViT_Block.ViT_Block_Core_U0'");
                $fdisplay(fp,"//        full output FIFO 'ViT_Block.input_stream_U' read by process 'ViT_Block.ViT_Block_Core_U0'");
            end
            report_block_path_in_ViT_Block_Core_U0(fp);
        end

// check block with process 'ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0'
        if (AESL_inst_ViT_Block.input_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.axis_to_apuint_U0.input_stream1_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_ViT_Block.input_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.axis_to_apuint_U0.input_stream1_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'ViT_Block.axis_to_apuint_U0' is blocked by following channel which connected with process 'ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'ViT_Block.axis_to_apuint_U0' is blocked by following channel which connected with process 'ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0' :");

            if (AESL_inst_ViT_Block.input_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.axis_to_apuint_U0.input_stream1_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'ViT_Block.input_stream_U' written by process 'ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0'");
                $fdisplay(fp,"//        empty input FIFO 'ViT_Block.input_stream_U' written by process 'ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0'");
            end
            else if (AESL_inst_ViT_Block.input_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.axis_to_apuint_U0.input_stream1_blk_n == 1'b1) begin
                $display("//        full output FIFO 'ViT_Block.input_stream_U' read by process 'ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0'");
                $fdisplay(fp,"//        full output FIFO 'ViT_Block.input_stream_U' read by process 'ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0'");
            end
            report_block_path_in_ViT_Block_Core_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'ViT_Block.axis_to_apuint_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'ViT_Block.axis_to_apuint_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_ViT_Block_Core_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'ViT_Block.axis_to_apuint_U0'
        if (AESL_inst_ViT_Block.input_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.input_stream1_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_ViT_Block.input_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.input_stream1_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'ViT_Block.axis_to_apuint_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'ViT_Block.ViT_Block_Core_U0' is blocked by following channel which connected with process 'ViT_Block.axis_to_apuint_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'ViT_Block.ViT_Block_Core_U0' is blocked by following channel which connected with process 'ViT_Block.axis_to_apuint_U0' :");

            if (AESL_inst_ViT_Block.input_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.input_stream1_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'ViT_Block.input_stream_U' written by process 'ViT_Block.axis_to_apuint_U0'");
                $fdisplay(fp,"//        empty input FIFO 'ViT_Block.input_stream_U' written by process 'ViT_Block.axis_to_apuint_U0'");
            end
            else if (AESL_inst_ViT_Block.input_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.ViT_Block_Core_U0.duplicate_stream_ap_int_8_17_16_1_U0.input_stream1_blk_n == 1'b1) begin
                $display("//        full output FIFO 'ViT_Block.input_stream_U' read by process 'ViT_Block.axis_to_apuint_U0'");
                $fdisplay(fp,"//        full output FIFO 'ViT_Block.input_stream_U' read by process 'ViT_Block.axis_to_apuint_U0'");
            end
            report_block_path_in_axis_to_apuint_U0(fp);
        end

// check block with process 'ViT_Block.apuint_to_axis_U0'
        if (AESL_inst_ViT_Block.output_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.output_stream2_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_ViT_Block.output_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.output_stream2_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_ViT_Block.start_for_apuint_to_axis_U0_U.if_full_n == 1'b0 && AESL_inst_ViT_Block.ViT_Block_Core_U0.real_start == 1'b0 && AESL_inst_ViT_Block.ViT_Block_Core_U0.ap_start == 1'b1 && AESL_inst_ViT_Block.ViT_Block_Core_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'ViT_Block.apuint_to_axis_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'ViT_Block.ViT_Block_Core_U0' is blocked by following channel which connected with process 'ViT_Block.apuint_to_axis_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'ViT_Block.ViT_Block_Core_U0' is blocked by following channel which connected with process 'ViT_Block.apuint_to_axis_U0' :");

            if (AESL_inst_ViT_Block.output_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.output_stream2_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'ViT_Block.output_stream_U' written by process 'ViT_Block.apuint_to_axis_U0'");
                $fdisplay(fp,"//        empty input FIFO 'ViT_Block.output_stream_U' written by process 'ViT_Block.apuint_to_axis_U0'");
            end
            else if (AESL_inst_ViT_Block.output_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0.output_stream2_blk_n == 1'b1) begin
                $display("//        full output FIFO 'ViT_Block.output_stream_U' read by process 'ViT_Block.apuint_to_axis_U0'");
                $fdisplay(fp,"//        full output FIFO 'ViT_Block.output_stream_U' read by process 'ViT_Block.apuint_to_axis_U0'");
            end
            if (AESL_inst_ViT_Block.start_for_apuint_to_axis_U0_U.if_full_n == 1'b0 && AESL_inst_ViT_Block.ViT_Block_Core_U0.real_start == 1'b0 && AESL_inst_ViT_Block.ViT_Block_Core_U0.ap_start == 1'b1 && AESL_inst_ViT_Block.ViT_Block_Core_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'ViT_Block.start_for_apuint_to_axis_U0_U' read by process 'ViT_Block.apuint_to_axis_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'ViT_Block.start_for_apuint_to_axis_U0_U' read by process 'ViT_Block.apuint_to_axis_U0'");
            end
            report_block_path_in_apuint_to_axis_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'ViT_Block.ViT_Block_Core_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'ViT_Block.ViT_Block_Core_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_apuint_to_axis_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (axis_block_sigs[1] == 1'b1) begin
        $display("//");
        $display("//    Process 'ViT_Block.apuint_to_axis_U0' is blocked by following axis port :");
        $fdisplay(fp,"//");
        $fdisplay(fp,"//    Process 'ViT_Block.apuint_to_axis_U0' is blocked by following axis port :");
        if (axis_block_sigs[1] == 1'b1) begin
            $display("//        Port 'out_r' is not ready");
            $fdisplay(fp,"//        Port 'out_r' is not ready");
        end
    end
    else begin 
        out_proc_hit = 2'h0;
// check block with process 'ViT_Block.ViT_Block_Core_U0'
        if (AESL_inst_ViT_Block.output_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.apuint_to_axis_U0.output_stream2_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_ViT_Block.output_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.apuint_to_axis_U0.output_stream2_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_ViT_Block.start_for_apuint_to_axis_U0_U.if_empty_n == 1'b0 && AESL_inst_ViT_Block.apuint_to_axis_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'ViT_Block.ViT_Block_Core_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'ViT_Block.apuint_to_axis_U0' is blocked by following channel which connected with process 'ViT_Block.ViT_Block_Core_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'ViT_Block.apuint_to_axis_U0' is blocked by following channel which connected with process 'ViT_Block.ViT_Block_Core_U0' :");

            if (AESL_inst_ViT_Block.output_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.apuint_to_axis_U0.output_stream2_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'ViT_Block.output_stream_U' written by process 'ViT_Block.ViT_Block_Core_U0'");
                $fdisplay(fp,"//        empty input FIFO 'ViT_Block.output_stream_U' written by process 'ViT_Block.ViT_Block_Core_U0'");
            end
            else if (AESL_inst_ViT_Block.output_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.apuint_to_axis_U0.output_stream2_blk_n == 1'b1) begin
                $display("//        full output FIFO 'ViT_Block.output_stream_U' read by process 'ViT_Block.ViT_Block_Core_U0'");
                $fdisplay(fp,"//        full output FIFO 'ViT_Block.output_stream_U' read by process 'ViT_Block.ViT_Block_Core_U0'");
            end
            if (AESL_inst_ViT_Block.start_for_apuint_to_axis_U0_U.if_empty_n == 1'b0 && AESL_inst_ViT_Block.apuint_to_axis_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'ViT_Block.start_for_apuint_to_axis_U0_U' written by process 'ViT_Block.ViT_Block_Core_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'ViT_Block.start_for_apuint_to_axis_U0_U' written by process 'ViT_Block.ViT_Block_Core_U0'");
            end
            report_block_path_in_ViT_Block_Core_U0(fp);
        end

// check block with process 'ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0'
        if (AESL_inst_ViT_Block.output_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.apuint_to_axis_U0.output_stream2_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_ViT_Block.output_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.apuint_to_axis_U0.output_stream2_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'ViT_Block.apuint_to_axis_U0' is blocked by following channel which connected with process 'ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'ViT_Block.apuint_to_axis_U0' is blocked by following channel which connected with process 'ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0' :");

            if (AESL_inst_ViT_Block.output_stream_U.if_empty_n == 1'b0 && ~AESL_inst_ViT_Block.apuint_to_axis_U0.output_stream2_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'ViT_Block.output_stream_U' written by process 'ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0'");
                $fdisplay(fp,"//        empty input FIFO 'ViT_Block.output_stream_U' written by process 'ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0'");
            end
            else if (AESL_inst_ViT_Block.output_stream_U.if_full_n == 1'b0 && ~AESL_inst_ViT_Block.apuint_to_axis_U0.output_stream2_blk_n == 1'b1) begin
                $display("//        full output FIFO 'ViT_Block.output_stream_U' read by process 'ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0'");
                $fdisplay(fp,"//        full output FIFO 'ViT_Block.output_stream_U' read by process 'ViT_Block.ViT_Block_Core_U0.ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0'");
            end
            report_block_path_in_ViT_Block_Core_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'ViT_Block.apuint_to_axis_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'ViT_Block.apuint_to_axis_U0' is in idle status");
        end
    end

end
endtask

// synthesis translate_on

initial begin : trigger_axis_deadlock
reg block_delay;
    block_delay = 0;
    while(1) begin
        @(posedge kernel_monitor_clock);
    if (kernel_block == 1'b1 && block_delay == 1'b0)
    $display("find kernel block.");
    block_delay = kernel_block;
    end
end

endmodule
