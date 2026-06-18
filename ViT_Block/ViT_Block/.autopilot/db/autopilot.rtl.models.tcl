set SynModuleInfo {
  {SRCNAME axis_to_apuint MODELNAME axis_to_apuint RTLNAME ViT_Block_axis_to_apuint
    SUBMODULES {
      {MODELNAME ViT_Block_regslice_both RTLNAME ViT_Block_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME ViT_Block_regslice_both_U}
      {MODELNAME ViT_Block_flow_control_loop_pipe RTLNAME ViT_Block_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ViT_Block_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME {duplicate_stream<ap_int<8>, 17, 192, 1>} MODELNAME duplicate_stream_ap_int_8_17_192_1_s RTLNAME ViT_Block_duplicate_stream_ap_int_8_17_192_1_s}
  {SRCNAME {BATCHNORM_tiled_quantized<17, 192, 1, 16, ap_int<8>, ap_int<8> >} MODELNAME BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_s RTLNAME ViT_Block_BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_s
    SUBMODULES {
      {MODELNAME ViT_Block_mul_mul_15ns_8s_23_4_1 RTLNAME ViT_Block_mul_mul_15ns_8s_23_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_s_bn0_mul_1_ROM_AUTO_1R RTLNAME ViT_Block_BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_s_bn0_mul_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_s_bn0_add_1_ROM_AUTO_1R RTLNAME ViT_Block_BATCHNORM_tiled_quantized_17_192_1_16_ap_int_8_ap_int_8_s_bn0_add_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME BatchNorm_tiled_0 MODELNAME BatchNorm_tiled_0 RTLNAME ViT_Block_BatchNorm_tiled_0}
  {SRCNAME {triplicate_stream<ap_int<8>, 17, 192, 1>} MODELNAME triplicate_stream_ap_int_8_17_192_1_s RTLNAME ViT_Block_triplicate_stream_ap_int_8_17_192_1_s}
  {SRCNAME {burst_read_beats<1, ap_int<8> >} MODELNAME burst_read_beats_1_ap_int_8_s RTLNAME ViT_Block_burst_read_beats_1_ap_int_8_s}
  {SRCNAME {packer_to_packs<1, 1, 1, ap_int<8> >} MODELNAME packer_to_packs_1_1_1_ap_int_8_s RTLNAME ViT_Block_packer_to_packs_1_1_1_ap_int_8_s
    SUBMODULES {
      {MODELNAME ViT_Block_flow_control_loop_pipe_sequential_init RTLNAME ViT_Block_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ViT_Block_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {WeightTiledStreaming_3<17, 192, 192, 1, 1, 1, 1, 1, 1, ap_int<8> >} MODELNAME WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_s RTLNAME ViT_Block_WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_s
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S RTLNAME ViT_Block_fifo_w8_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2.1 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_bias_q_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_bias_q_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1540_9.1 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1540_9_1
    SUBMODULES {
      {MODELNAME ViT_Block_mac_muladd_8s_8s_32s_32_4_1 RTLNAME ViT_Block_mac_muladd_8s_8s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17.1 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1
    SUBMODULES {
      {MODELNAME ViT_Block_mul_32s_8ns_40_1_1 RTLNAME ViT_Block_mul_32s_8ns_40_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {Linear_Layer<17,192,192,1,1,1,1,1,1,98,16,0,ap_int,ap_int,ap_int >} MODELNAME Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_s RTLNAME ViT_Block_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_s
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_s_C_tile_V_Rbkb RTLNAME ViT_Block_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_s_C_tile_V_Rbkb BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Q_linear_tiled MODELNAME Q_linear_tiled RTLNAME ViT_Block_Q_linear_tiled
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x RTLNAME ViT_Block_fifo_w8_d64_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0 RTLNAME ViT_Block_start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_17_192_192_1_1_1_1_1_1_98_16_0_ap_int_ap_int_ap_int_U0_U}
    }
  }
  {SRCNAME {WeightTiledStreaming_3<17, 192, 192, 1, 1, 1, 1, 1, 1, ap_int<8> >.16} MODELNAME WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16 RTLNAME ViT_Block_WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_16
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x0 RTLNAME ViT_Block_fifo_w8_d64_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer.4_Pipeline_VITIS_LOOP_1512_2 MODELNAME Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2 RTLNAME ViT_Block_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2_bias_k_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_4_Pipeline_VITIS_LOOP_1512_2_bias_k_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer.4_Pipeline_VITIS_LOOP_1540_9 MODELNAME Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9 RTLNAME ViT_Block_Linear_Layer_4_Pipeline_VITIS_LOOP_1540_9}
  {SRCNAME Linear_Layer.4_Pipeline_VITIS_LOOP_1588_17 MODELNAME Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17 RTLNAME ViT_Block_Linear_Layer_4_Pipeline_VITIS_LOOP_1588_17
    SUBMODULES {
      {MODELNAME ViT_Block_mul_32s_9ns_41_1_1 RTLNAME ViT_Block_mul_32s_9ns_41_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer.4 MODELNAME Linear_Layer_4 RTLNAME ViT_Block_Linear_Layer_4}
  {SRCNAME K_linear_tiled MODELNAME K_linear_tiled RTLNAME ViT_Block_K_linear_tiled
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d16_S RTLNAME ViT_Block_fifo_w8_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_4_U0 RTLNAME ViT_Block_start_for_Linear_Layer_4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_4_U0_U}
    }
  }
  {SRCNAME {WeightTiledStreaming_3<17, 192, 192, 1, 1, 1, 1, 1, 1, ap_int<8> >.17} MODELNAME WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17 RTLNAME ViT_Block_WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_17
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x1 RTLNAME ViT_Block_fifo_w8_d64_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer.3_Pipeline_VITIS_LOOP_1512_2 MODELNAME Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2 RTLNAME ViT_Block_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2_bias_v_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_3_Pipeline_VITIS_LOOP_1512_2_bias_v_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer.3_Pipeline_VITIS_LOOP_1540_9 MODELNAME Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9 RTLNAME ViT_Block_Linear_Layer_3_Pipeline_VITIS_LOOP_1540_9}
  {SRCNAME Linear_Layer.3_Pipeline_VITIS_LOOP_1588_17 MODELNAME Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17 RTLNAME ViT_Block_Linear_Layer_3_Pipeline_VITIS_LOOP_1588_17}
  {SRCNAME Linear_Layer.3 MODELNAME Linear_Layer_3 RTLNAME ViT_Block_Linear_Layer_3}
  {SRCNAME V_linear_tiled MODELNAME V_linear_tiled RTLNAME ViT_Block_V_linear_tiled
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x2 RTLNAME ViT_Block_fifo_w8_d64_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_3_U0 RTLNAME ViT_Block_start_for_Linear_Layer_3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_3_U0_U}
    }
  }
  {SRCNAME split_heads MODELNAME split_heads RTLNAME ViT_Block_split_heads}
  {SRCNAME split_heads.2 MODELNAME split_heads_2 RTLNAME ViT_Block_split_heads_2}
  {SRCNAME split_heads.3 MODELNAME split_heads_3 RTLNAME ViT_Block_split_heads_3}
  {SRCNAME MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 MODELNAME MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 RTLNAME ViT_Block_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2}
  {SRCNAME MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6 MODELNAME MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6 RTLNAME ViT_Block_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1682_6}
  {SRCNAME MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8 MODELNAME MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8 RTLNAME ViT_Block_MatMul_QK_tiled_Pipeline_VITIS_LOOP_1701_8
    SUBMODULES {
      {MODELNAME ViT_Block_mul_8s_8s_16_1_1 RTLNAME ViT_Block_mul_8s_8s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_mac_muladd_8s_8s_16s_17_4_1 RTLNAME ViT_Block_mac_muladd_8s_8s_16s_17_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_mac_muladd_8s_8s_17s_17_4_1 RTLNAME ViT_Block_mac_muladd_8s_8s_17s_17_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_mac_muladd_8s_8s_17s_18_4_1 RTLNAME ViT_Block_mac_muladd_8s_8s_17s_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_mac_muladd_8s_8s_18s_19_4_1 RTLNAME ViT_Block_mac_muladd_8s_8s_18s_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_mac_muladd_8s_8s_19s_20_4_1 RTLNAME ViT_Block_mac_muladd_8s_8s_19s_20_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_mac_muladd_8s_8s_20s_21_4_1 RTLNAME ViT_Block_mac_muladd_8s_8s_20s_21_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_mul_mul_21s_8ns_30_4_1 RTLNAME ViT_Block_mul_mul_21s_8ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {MatMul_QK_tiled<17, 48, 17, 1, 1, 1, 1, 1, 137, 16, 0, ap_int<8>, ap_int<32> >} MODELNAME MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_s RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_s
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_s_buff_K_V_RAMcud RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_s_buff_K_V_RAMcud BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_s_tile_Q_V_0_RdEe RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_s_tile_Q_V_0_RdEe BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM_tiled MODELNAME MM_tiled RTLNAME ViT_Block_MM_tiled}
  {SRCNAME {SoftmaxTiledStreaming<17, 17, 1, 1, 1, ap_int<8>, ap_int<32>, 64>} MODELNAME SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s RTLNAME ViT_Block_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s
    SUBMODULES {
      {MODELNAME ViT_Block_udiv_24s_13ns_8_28_1 RTLNAME ViT_Block_udiv_24s_13ns_8_28_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 27 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_exp_lut_V_ROM_AUTO_1R RTLNAME ViT_Block_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_exp_lut_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME SOFTMAX_tile MODELNAME SOFTMAX_tile RTLNAME ViT_Block_SOFTMAX_tile}
  {SRCNAME {requant<ap_int<8>, ap_int<8>, 17, 17, 151241, 16, 1>} MODELNAME requant_ap_int_8_ap_int_8_17_17_151241_16_1_s RTLNAME ViT_Block_requant_ap_int_8_ap_int_8_17_17_151241_16_1_s
    SUBMODULES {
      {MODELNAME ViT_Block_mul_mul_8s_18ns_27_4_1 RTLNAME ViT_Block_mul_mul_8s_18ns_27_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1 MODELNAME MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1 RTLNAME ViT_Block_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1}
  {SRCNAME MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5 MODELNAME MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5 RTLNAME ViT_Block_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5}
  {SRCNAME MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6 MODELNAME MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6 RTLNAME ViT_Block_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6
    SUBMODULES {
      {MODELNAME ViT_Block_am_addmul_17s_19s_9ns_30_4_1 RTLNAME ViT_Block_am_addmul_17s_19s_9ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {MatMul_KV_tiled<17, 17, 48, 1, 1, 1, 1, 1, 382, 16, 0, ap_int<8>, ap_int<32> >} MODELNAME MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_s RTLNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_s
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_s_buff_B_V_RAMeOg RTLNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_s_buff_B_V_RAMeOg BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_s_tile_A_V_0_RfYi RTLNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_s_tile_A_V_0_RfYi BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM1_tiled MODELNAME MM1_tiled RTLNAME ViT_Block_MM1_tiled}
  {SRCNAME MatMul_QK_tiled.18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 MODELNAME MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 RTLNAME ViT_Block_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2}
  {SRCNAME MatMul_QK_tiled.18_Pipeline_VITIS_LOOP_1682_6 MODELNAME MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6 RTLNAME ViT_Block_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1682_6}
  {SRCNAME MatMul_QK_tiled.18_Pipeline_VITIS_LOOP_1701_8 MODELNAME MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8 RTLNAME ViT_Block_MatMul_QK_tiled_18_Pipeline_VITIS_LOOP_1701_8}
  {SRCNAME {MatMul_QK_tiled<17, 48, 17, 1, 1, 1, 1, 1, 137, 16, 0, ap_int<8>, ap_int<32> >.18} MODELNAME MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18 RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_buff_K_V_RAg8j RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_buff_K_V_RAg8j BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_tile_Q_V_0_hbi RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_18_tile_Q_V_0_hbi BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM_tiled.4 MODELNAME MM_tiled_4 RTLNAME ViT_Block_MM_tiled_4}
  {SRCNAME SOFTMAX_tile.5 MODELNAME SOFTMAX_tile_5 RTLNAME ViT_Block_SOFTMAX_tile_5}
  {SRCNAME {requant<ap_int<8>, ap_int<8>, 17, 17, 151241, 16, 1>.6} MODELNAME requant_ap_int_8_ap_int_8_17_17_151241_16_1_6 RTLNAME ViT_Block_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6}
  {SRCNAME MatMul_KV_tiled.19_Pipeline_load_B_VITIS_LOOP_1796_1 MODELNAME MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1 RTLNAME ViT_Block_MatMul_KV_tiled_19_Pipeline_load_B_VITIS_LOOP_1796_1}
  {SRCNAME MatMul_KV_tiled.19_Pipeline_VITIS_LOOP_1818_5 MODELNAME MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5 RTLNAME ViT_Block_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1818_5}
  {SRCNAME MatMul_KV_tiled.19_Pipeline_VITIS_LOOP_1831_6 MODELNAME MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6 RTLNAME ViT_Block_MatMul_KV_tiled_19_Pipeline_VITIS_LOOP_1831_6}
  {SRCNAME {MatMul_KV_tiled<17, 17, 48, 1, 1, 1, 1, 1, 382, 16, 0, ap_int<8>, ap_int<32> >.19} MODELNAME MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19 RTLNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_buff_B_V_RAibs RTLNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_19_buff_B_V_RAibs BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM1_tiled.7 MODELNAME MM1_tiled_7 RTLNAME ViT_Block_MM1_tiled_7}
  {SRCNAME MatMul_QK_tiled.20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 MODELNAME MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 RTLNAME ViT_Block_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2}
  {SRCNAME MatMul_QK_tiled.20_Pipeline_VITIS_LOOP_1682_6 MODELNAME MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6 RTLNAME ViT_Block_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1682_6}
  {SRCNAME MatMul_QK_tiled.20_Pipeline_VITIS_LOOP_1701_8 MODELNAME MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8 RTLNAME ViT_Block_MatMul_QK_tiled_20_Pipeline_VITIS_LOOP_1701_8}
  {SRCNAME {MatMul_QK_tiled<17, 48, 17, 1, 1, 1, 1, 1, 137, 16, 0, ap_int<8>, ap_int<32> >.20} MODELNAME MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20 RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_buff_K_V_RAkbM RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_buff_K_V_RAkbM BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_tile_Q_V_0_lbW RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_20_tile_Q_V_0_lbW BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM_tiled.8 MODELNAME MM_tiled_8 RTLNAME ViT_Block_MM_tiled_8}
  {SRCNAME SOFTMAX_tile.9 MODELNAME SOFTMAX_tile_9 RTLNAME ViT_Block_SOFTMAX_tile_9}
  {SRCNAME {requant<ap_int<8>, ap_int<8>, 17, 17, 151241, 16, 1>.10} MODELNAME requant_ap_int_8_ap_int_8_17_17_151241_16_1_10 RTLNAME ViT_Block_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10}
  {SRCNAME MatMul_KV_tiled.21_Pipeline_load_B_VITIS_LOOP_1796_1 MODELNAME MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1 RTLNAME ViT_Block_MatMul_KV_tiled_21_Pipeline_load_B_VITIS_LOOP_1796_1}
  {SRCNAME MatMul_KV_tiled.21_Pipeline_VITIS_LOOP_1818_5 MODELNAME MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5 RTLNAME ViT_Block_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1818_5}
  {SRCNAME MatMul_KV_tiled.21_Pipeline_VITIS_LOOP_1831_6 MODELNAME MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6 RTLNAME ViT_Block_MatMul_KV_tiled_21_Pipeline_VITIS_LOOP_1831_6}
  {SRCNAME {MatMul_KV_tiled<17, 17, 48, 1, 1, 1, 1, 1, 382, 16, 0, ap_int<8>, ap_int<32> >.21} MODELNAME MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21 RTLNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_buff_B_V_RAmb6 RTLNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_21_buff_B_V_RAmb6 BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM1_tiled.11 MODELNAME MM1_tiled_11 RTLNAME ViT_Block_MM1_tiled_11}
  {SRCNAME MatMul_QK_tiled.22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 MODELNAME MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 RTLNAME ViT_Block_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2}
  {SRCNAME MatMul_QK_tiled.22_Pipeline_VITIS_LOOP_1682_6 MODELNAME MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6 RTLNAME ViT_Block_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1682_6}
  {SRCNAME MatMul_QK_tiled.22_Pipeline_VITIS_LOOP_1701_8 MODELNAME MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8 RTLNAME ViT_Block_MatMul_QK_tiled_22_Pipeline_VITIS_LOOP_1701_8}
  {SRCNAME {MatMul_QK_tiled<17, 48, 17, 1, 1, 1, 1, 1, 137, 16, 0, ap_int<8>, ap_int<32> >.22} MODELNAME MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22 RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_buff_K_V_RAocq RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_buff_K_V_RAocq BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_tile_Q_V_0_pcA RTLNAME ViT_Block_MatMul_QK_tiled_17_48_17_1_1_1_1_1_137_16_0_ap_int_8_ap_int_32_22_tile_Q_V_0_pcA BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM_tiled.12 MODELNAME MM_tiled_12 RTLNAME ViT_Block_MM_tiled_12}
  {SRCNAME SOFTMAX_tile.13 MODELNAME SOFTMAX_tile_13 RTLNAME ViT_Block_SOFTMAX_tile_13}
  {SRCNAME {requant<ap_int<8>, ap_int<8>, 17, 17, 151241, 16, 1>.14} MODELNAME requant_ap_int_8_ap_int_8_17_17_151241_16_1_14 RTLNAME ViT_Block_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14}
  {SRCNAME MatMul_KV_tiled.23_Pipeline_load_B_VITIS_LOOP_1796_1 MODELNAME MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1 RTLNAME ViT_Block_MatMul_KV_tiled_23_Pipeline_load_B_VITIS_LOOP_1796_1}
  {SRCNAME MatMul_KV_tiled.23_Pipeline_VITIS_LOOP_1818_5 MODELNAME MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5 RTLNAME ViT_Block_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1818_5}
  {SRCNAME MatMul_KV_tiled.23_Pipeline_VITIS_LOOP_1831_6 MODELNAME MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6 RTLNAME ViT_Block_MatMul_KV_tiled_23_Pipeline_VITIS_LOOP_1831_6}
  {SRCNAME {MatMul_KV_tiled<17, 17, 48, 1, 1, 1, 1, 1, 382, 16, 0, ap_int<8>, ap_int<32> >.23} MODELNAME MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23 RTLNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_buff_B_V_RAqcK RTLNAME ViT_Block_MatMul_KV_tiled_17_17_48_1_1_1_1_1_382_16_0_ap_int_8_ap_int_32_23_buff_B_V_RAqcK BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM1_tiled.15 MODELNAME MM1_tiled_15 RTLNAME ViT_Block_MM1_tiled_15}
  {SRCNAME merge_heads MODELNAME merge_heads RTLNAME ViT_Block_merge_heads}
  {SRCNAME {WeightTiledStreaming_3<17, 192, 192, 1, 1, 1, 1, 1, 1, ap_int<8> >.24} MODELNAME WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24 RTLNAME ViT_Block_WeightTiledStreaming_3_17_192_192_1_1_1_1_1_1_ap_int_8_24
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x3 RTLNAME ViT_Block_fifo_w8_d64_S_x3 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer.2_Pipeline_VITIS_LOOP_1512_2 MODELNAME Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2 RTLNAME ViT_Block_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2_bias_h_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_2_Pipeline_VITIS_LOOP_1512_2_bias_h_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer.2_Pipeline_VITIS_LOOP_1540_9 MODELNAME Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9 RTLNAME ViT_Block_Linear_Layer_2_Pipeline_VITIS_LOOP_1540_9}
  {SRCNAME Linear_Layer.2_Pipeline_VITIS_LOOP_1588_17 MODELNAME Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17 RTLNAME ViT_Block_Linear_Layer_2_Pipeline_VITIS_LOOP_1588_17}
  {SRCNAME Linear_Layer.2 MODELNAME Linear_Layer_2 RTLNAME ViT_Block_Linear_Layer_2}
  {SRCNAME Out_linear_tiled MODELNAME Out_linear_tiled RTLNAME ViT_Block_Out_linear_tiled
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x4 RTLNAME ViT_Block_fifo_w8_d64_S_x4 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_2_U0 RTLNAME ViT_Block_start_for_Linear_Layer_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_2_U0_U}
    }
  }
  {SRCNAME MultiHeadAttention_tiled MODELNAME MultiHeadAttention_tiled RTLNAME ViT_Block_MultiHeadAttention_tiled
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME q_lin_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME k_lin_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_lin_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME Q_1_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME Q_1_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME Q_1_2_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME Q_1_3_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME K_1_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME K_1_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME K_1_2_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME K_1_3_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME V_1_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME V_1_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME V_1_2_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME V_1_3_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_s_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_sx_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME head_out_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_s_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_sx_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME head_out_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_2_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_s_2_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_sx_2_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME head_out_2_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_3_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_s_3_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_sx_3_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME head_out_3_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_linear_U}
      {MODELNAME ViT_Block_start_for_split_heads_U0 RTLNAME ViT_Block_start_for_split_heads_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_split_heads_U0_U}
      {MODELNAME ViT_Block_start_for_split_heads_2_U0 RTLNAME ViT_Block_start_for_split_heads_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_split_heads_2_U0_U}
      {MODELNAME ViT_Block_start_for_split_heads_3_U0 RTLNAME ViT_Block_start_for_split_heads_3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_split_heads_3_U0_U}
      {MODELNAME ViT_Block_start_for_MM_tiled_U0 RTLNAME ViT_Block_start_for_MM_tiled_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM_tiled_U0_U}
      {MODELNAME ViT_Block_start_for_MM_tiled_4_U0 RTLNAME ViT_Block_start_for_MM_tiled_4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM_tiled_4_U0_U}
      {MODELNAME ViT_Block_start_for_MM_tiled_8_U0 RTLNAME ViT_Block_start_for_MM_tiled_8_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM_tiled_8_U0_U}
      {MODELNAME ViT_Block_start_for_MM_tiled_12_U0 RTLNAME ViT_Block_start_for_MM_tiled_12_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM_tiled_12_U0_U}
      {MODELNAME ViT_Block_start_for_MM1_tiled_U0 RTLNAME ViT_Block_start_for_MM1_tiled_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM1_tiled_U0_U}
      {MODELNAME ViT_Block_start_for_MM1_tiled_7_U0 RTLNAME ViT_Block_start_for_MM1_tiled_7_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM1_tiled_7_U0_U}
      {MODELNAME ViT_Block_start_for_MM1_tiled_11_U0 RTLNAME ViT_Block_start_for_MM1_tiled_11_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM1_tiled_11_U0_U}
      {MODELNAME ViT_Block_start_for_MM1_tiled_15_U0 RTLNAME ViT_Block_start_for_MM1_tiled_15_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM1_tiled_15_U0_U}
      {MODELNAME ViT_Block_start_for_SOFTMAX_tile_U0 RTLNAME ViT_Block_start_for_SOFTMAX_tile_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_SOFTMAX_tile_U0_U}
      {MODELNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0 RTLNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_U0_U}
      {MODELNAME ViT_Block_start_for_merge_heads_U0 RTLNAME ViT_Block_start_for_merge_heads_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_merge_heads_U0_U}
      {MODELNAME ViT_Block_start_for_SOFTMAX_tile_5_U0 RTLNAME ViT_Block_start_for_SOFTMAX_tile_5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_SOFTMAX_tile_5_U0_U}
      {MODELNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0 RTLNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_6_U0_U}
      {MODELNAME ViT_Block_start_for_SOFTMAX_tile_9_U0 RTLNAME ViT_Block_start_for_SOFTMAX_tile_9_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_SOFTMAX_tile_9_U0_U}
      {MODELNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0 RTLNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_10_U0_U}
      {MODELNAME ViT_Block_start_for_SOFTMAX_tile_13_U0 RTLNAME ViT_Block_start_for_SOFTMAX_tile_13_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_SOFTMAX_tile_13_U0_U}
      {MODELNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0 RTLNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_requant_ap_int_8_ap_int_8_17_17_151241_16_1_14_U0_U}
    }
  }
  {SRCNAME {requant<ap_int<8>, ap_int<8>, 17, 192, 23553, 16, 1>} MODELNAME requant_ap_int_8_ap_int_8_17_192_23553_16_1_s RTLNAME ViT_Block_requant_ap_int_8_ap_int_8_17_192_23553_16_1_s
    SUBMODULES {
      {MODELNAME ViT_Block_mul_mul_8s_15ns_24_4_1 RTLNAME ViT_Block_mul_mul_8s_15ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {ResidualAddRequantSameScale<17, 192, 1, 43293, 16, 0, ap_int<8>, ap_int<16> >} MODELNAME ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_s RTLNAME ViT_Block_ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_s
    SUBMODULES {
      {MODELNAME ViT_Block_am_addmul_8s_8s_16ns_26_4_1 RTLNAME ViT_Block_am_addmul_8s_8s_16ns_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {duplicate_stream<ap_int<8>, 17, 192, 1>.1} MODELNAME duplicate_stream_ap_int_8_17_192_1_1 RTLNAME ViT_Block_duplicate_stream_ap_int_8_17_192_1_1}
  {SRCNAME BatchNorm_tiled_1 MODELNAME BatchNorm_tiled_1 RTLNAME ViT_Block_BatchNorm_tiled_1
    SUBMODULES {
      {MODELNAME ViT_Block_mul_mul_16ns_8s_24_4_1 RTLNAME ViT_Block_mul_mul_16ns_8s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_BatchNorm_tiled_1_bn1_mul_1_ROM_AUTO_1R RTLNAME ViT_Block_BatchNorm_tiled_1_bn1_mul_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_BatchNorm_tiled_1_bn1_add_1_ROM_AUTO_1R RTLNAME ViT_Block_BatchNorm_tiled_1_bn1_add_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {WeightTiledStreaming_3<17, 192, 768, 1, 1, 1, 1, 1, 1, ap_int<8> >} MODELNAME WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_s RTLNAME ViT_Block_WeightTiledStreaming_3_17_192_768_1_1_1_1_1_1_ap_int_8_s
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x5 RTLNAME ViT_Block_fifo_w8_d64_S_x5 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer.1_Pipeline_VITIS_LOOP_1512_2 MODELNAME Linear_Layer_1_Pipeline_VITIS_LOOP_1512_2 RTLNAME ViT_Block_Linear_Layer_1_Pipeline_VITIS_LOOP_1512_2
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_1_Pipeline_VITIS_LOOP_1512_2_bias_1_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_1_Pipeline_VITIS_LOOP_1512_2_bias_1_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer.1_Pipeline_VITIS_LOOP_1540_9 MODELNAME Linear_Layer_1_Pipeline_VITIS_LOOP_1540_9 RTLNAME ViT_Block_Linear_Layer_1_Pipeline_VITIS_LOOP_1540_9}
  {SRCNAME Linear_Layer.1_Pipeline_VITIS_LOOP_1588_17 MODELNAME Linear_Layer_1_Pipeline_VITIS_LOOP_1588_17 RTLNAME ViT_Block_Linear_Layer_1_Pipeline_VITIS_LOOP_1588_17}
  {SRCNAME Linear_Layer.1 MODELNAME Linear_Layer_1 RTLNAME ViT_Block_Linear_Layer_1
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_1_C_tile_V_RAM_T2P_BRAM_1R1W RTLNAME ViT_Block_Linear_Layer_1_C_tile_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME FC1_tiled_oc_2 MODELNAME FC1_tiled_oc_2 RTLNAME ViT_Block_FC1_tiled_oc_2
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x6 RTLNAME ViT_Block_fifo_w8_d64_S_x6 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_1_U0 RTLNAME ViT_Block_start_for_Linear_Layer_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_1_U0_U}
    }
  }
  {SRCNAME Relu_tiled_oc MODELNAME Relu_tiled_oc RTLNAME ViT_Block_Relu_tiled_oc}
  {SRCNAME {WeightTiledStreaming_3<17, 768, 192, 1, 1, 1, 1, 1, 1, ap_int<8> >} MODELNAME WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_s RTLNAME ViT_Block_WeightTiledStreaming_3_17_768_192_1_1_1_1_1_1_ap_int_8_s
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x7 RTLNAME ViT_Block_fifo_w8_d64_S_x7 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_bias_2_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_bias_2_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1540_9 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1540_9 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1540_9}
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1588_17
    SUBMODULES {
      {MODELNAME ViT_Block_mul_32s_10ns_42_1_1 RTLNAME ViT_Block_mul_32s_10ns_42_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer MODELNAME Linear_Layer RTLNAME ViT_Block_Linear_Layer}
  {SRCNAME FC2_tiled_oc_2 MODELNAME FC2_tiled_oc_2 RTLNAME ViT_Block_FC2_tiled_oc_2
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x8 RTLNAME ViT_Block_fifo_w8_d64_S_x8 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_U0 RTLNAME ViT_Block_start_for_Linear_Layer_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_U0_U}
    }
  }
  {SRCNAME MLP_tiled_oc MODELNAME MLP_tiled_oc RTLNAME ViT_Block_MLP_tiled_oc
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x9 RTLNAME ViT_Block_fifo_w8_d64_S_x9 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fc1_U}
      {MODELNAME ViT_Block_fifo_w8_d64_S_x9 RTLNAME ViT_Block_fifo_w8_d64_S_x9 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME relu_U}
      {MODELNAME ViT_Block_start_for_Relu_tiled_oc_U0 RTLNAME ViT_Block_start_for_Relu_tiled_oc_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Relu_tiled_oc_U0_U}
    }
  }
  {SRCNAME {requant<ap_int<8>, ap_int<8>, 17, 192, 68366, 16, 1>} MODELNAME requant_ap_int_8_ap_int_8_17_192_68366_16_1_s RTLNAME ViT_Block_requant_ap_int_8_ap_int_8_17_192_68366_16_1_s
    SUBMODULES {
      {MODELNAME ViT_Block_mul_mul_8s_17ns_26_4_1 RTLNAME ViT_Block_mul_mul_8s_17ns_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {ResidualAddRequantSameScale<17, 192, 1, 36296, 16, 0, ap_int<8>, ap_int<16> >} MODELNAME ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_s RTLNAME ViT_Block_ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_s}
  {SRCNAME ViT_Block_Core MODELNAME ViT_Block_Core RTLNAME ViT_Block_ViT_Block_Core
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d3072_A RTLNAME ViT_Block_fifo_w8_d3072_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME res_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S_x RTLNAME ViT_Block_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME x1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S_x RTLNAME ViT_Block_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME norm_out_U}
      {MODELNAME ViT_Block_fifo_w8_d3072_A RTLNAME ViT_Block_fifo_w8_d3072_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME Q_in_U}
      {MODELNAME ViT_Block_fifo_w8_d3072_A RTLNAME ViT_Block_fifo_w8_d3072_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME K_in_U}
      {MODELNAME ViT_Block_fifo_w8_d3072_A RTLNAME ViT_Block_fifo_w8_d3072_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME V_in_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S_x RTLNAME ViT_Block_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_mha_U}
      {MODELNAME ViT_Block_fifo_w8_d3072_A RTLNAME ViT_Block_fifo_w8_d3072_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME res_rq_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S_x RTLNAME ViT_Block_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_res_0_U}
      {MODELNAME ViT_Block_fifo_w8_d3072_A RTLNAME ViT_Block_fifo_w8_d3072_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME res_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S_x RTLNAME ViT_Block_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME x2_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S_x RTLNAME ViT_Block_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME norm_out_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S_x RTLNAME ViT_Block_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mlp_out_U}
      {MODELNAME ViT_Block_fifo_w8_d3072_A RTLNAME ViT_Block_fifo_w8_d3072_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME res_1_rq_U}
      {MODELNAME ViT_Block_start_for_BatchNorm_tiled_0_U0 RTLNAME ViT_Block_start_for_BatchNorm_tiled_0_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_BatchNorm_tiled_0_U0_U}
      {MODELNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0 RTLNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_requant_ap_int_8_ap_int_8_17_192_23553_16_1_U0_U}
      {MODELNAME ViT_Block_start_for_triplicate_stream_ap_int_8_17_192_1_U0 RTLNAME ViT_Block_start_for_triplicate_stream_ap_int_8_17_192_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_triplicate_stream_ap_int_8_17_192_1_U0_U}
      {MODELNAME ViT_Block_start_for_ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0 RTLNAME ViT_Block_start_for_ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ResidualAddRequantSameScale_17_192_1_43293_16_0_ap_int_8_ap_int_16_U0_U}
      {MODELNAME ViT_Block_start_for_duplicate_stream_ap_int_8_17_192_1_1_U0 RTLNAME ViT_Block_start_for_duplicate_stream_ap_int_8_17_192_1_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_duplicate_stream_ap_int_8_17_192_1_1_U0_U}
      {MODELNAME ViT_Block_start_for_BatchNorm_tiled_1_U0 RTLNAME ViT_Block_start_for_BatchNorm_tiled_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_BatchNorm_tiled_1_U0_U}
      {MODELNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0 RTLNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_requant_ap_int_8_ap_int_8_17_192_68366_16_1_U0_U}
      {MODELNAME ViT_Block_start_for_ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0 RTLNAME ViT_Block_start_for_ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ResidualAddRequantSameScale_17_192_1_36296_16_0_ap_int_8_ap_int_16_U0_U}
    }
  }
  {SRCNAME apuint_to_axis MODELNAME apuint_to_axis RTLNAME ViT_Block_apuint_to_axis}
  {SRCNAME ViT_Block MODELNAME ViT_Block RTLNAME ViT_Block IS_TOP 1
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d2_S_x0 RTLNAME ViT_Block_fifo_w8_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME input_stream_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S_x0 RTLNAME ViT_Block_fifo_w8_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME output_stream_U}
      {MODELNAME ViT_Block_start_for_apuint_to_axis_U0 RTLNAME ViT_Block_start_for_apuint_to_axis_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_apuint_to_axis_U0_U}
      {MODELNAME ViT_Block_Q_m_axi RTLNAME ViT_Block_Q_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_Block_K_m_axi RTLNAME ViT_Block_K_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_Block_V_m_axi RTLNAME ViT_Block_V_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_Block_OUT_M_m_axi RTLNAME ViT_Block_OUT_M_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_Block_gmem0_m_axi RTLNAME ViT_Block_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_Block_gmem1_m_axi RTLNAME ViT_Block_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_Block_control_s_axi RTLNAME ViT_Block_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
