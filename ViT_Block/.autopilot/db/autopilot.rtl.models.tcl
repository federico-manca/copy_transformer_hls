set SynModuleInfo {
  {SRCNAME axis_to_apuint MODELNAME axis_to_apuint RTLNAME ViT_Block_axis_to_apuint
    SUBMODULES {
      {MODELNAME ViT_Block_regslice_both RTLNAME ViT_Block_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME ViT_Block_regslice_both_U}
      {MODELNAME ViT_Block_flow_control_loop_pipe RTLNAME ViT_Block_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ViT_Block_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME {duplicate_stream<ap_int<8>, 17, 16, 1>} MODELNAME duplicate_stream_ap_int_8_17_16_1_s RTLNAME ViT_Block_duplicate_stream_ap_int_8_17_16_1_s}
  {SRCNAME {BATCHNORM_tiled_quantized<17, 16, 1, 16, ap_int<8>, ap_int<8> >} MODELNAME BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_s RTLNAME ViT_Block_BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_s
    SUBMODULES {
      {MODELNAME ViT_Block_mul_mul_15ns_8s_23_4_1 RTLNAME ViT_Block_mul_mul_15ns_8s_23_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_s_bn0_mul_1_ROM_AUTO_1R RTLNAME ViT_Block_BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_s_bn0_mul_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_s_bn0_add_1_ROM_AUTO_1R RTLNAME ViT_Block_BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_s_bn0_add_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME BatchNorm_tiled_0 MODELNAME BatchNorm_tiled_0 RTLNAME ViT_Block_BatchNorm_tiled_0}
  {SRCNAME {triplicate_stream<ap_int<8>, 17, 16, 1>} MODELNAME triplicate_stream_ap_int_8_17_16_1_s RTLNAME ViT_Block_triplicate_stream_ap_int_8_17_16_1_s}
  {SRCNAME {burst_read_beats<1, ap_int<8> >} MODELNAME burst_read_beats_1_ap_int_8_s RTLNAME ViT_Block_burst_read_beats_1_ap_int_8_s}
  {SRCNAME {packer_to_packs<1, 1, 1, ap_int<8> >} MODELNAME packer_to_packs_1_1_1_ap_int_8_s RTLNAME ViT_Block_packer_to_packs_1_1_1_ap_int_8_s
    SUBMODULES {
      {MODELNAME ViT_Block_flow_control_loop_pipe_sequential_init RTLNAME ViT_Block_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ViT_Block_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {WeightTiledStreaming_3<17, 16, 16, 1, 1, 1, 1, 1, 1, ap_int<8> >} MODELNAME WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_s RTLNAME ViT_Block_WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_s
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S RTLNAME ViT_Block_fifo_w8_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2.4 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4_bias_q_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_4_bias_q_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6.4 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_4
    SUBMODULES {
      {MODELNAME ViT_Block_mac_muladd_8s_8s_32s_32_4_1 RTLNAME ViT_Block_mac_muladd_8s_8s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17.4 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_4
    SUBMODULES {
      {MODELNAME ViT_Block_mul_32s_10ns_42_1_1 RTLNAME ViT_Block_mul_32s_10ns_42_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {Linear_Layer<17,16,16,1,1,1,1,1,1,337,16,0,ap_int,ap_int,ap_int >} MODELNAME Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_s RTLNAME ViT_Block_Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_s
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_s_C_tile_V_RAbkb RTLNAME ViT_Block_Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_s_C_tile_V_RAbkb BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Q_linear_tiled MODELNAME Q_linear_tiled RTLNAME ViT_Block_Q_linear_tiled
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x RTLNAME ViT_Block_fifo_w8_d64_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0 RTLNAME ViT_Block_start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_337_16_0_ap_int_ap_int_ap_int_U0_U}
    }
  }
  {SRCNAME {WeightTiledStreaming_3<17, 16, 16, 1, 1, 1, 1, 1, 1, ap_int<8> >.8} MODELNAME WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8 RTLNAME ViT_Block_WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_8
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x0 RTLNAME ViT_Block_fifo_w8_d64_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2.5 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_bias_k_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_5_bias_k_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6.5 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_5}
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17.5 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_5
    SUBMODULES {
      {MODELNAME ViT_Block_mul_32s_9ns_41_1_1 RTLNAME ViT_Block_mul_32s_9ns_41_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {Linear_Layer<17,16,16,1,1,1,1,1,1,245,16,0,ap_int,ap_int,ap_int >} MODELNAME Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_s RTLNAME ViT_Block_Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_s}
  {SRCNAME K_linear_tiled MODELNAME K_linear_tiled RTLNAME ViT_Block_K_linear_tiled
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d16_S RTLNAME ViT_Block_fifo_w8_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0 RTLNAME ViT_Block_start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_245_16_0_ap_int_ap_int_ap_int_U0_U}
    }
  }
  {SRCNAME {WeightTiledStreaming_3<17, 16, 16, 1, 1, 1, 1, 1, 1, ap_int<8> >.9} MODELNAME WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9 RTLNAME ViT_Block_WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_9
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x1 RTLNAME ViT_Block_fifo_w8_d64_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2.3 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3_bias_v_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_3_bias_v_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6.3 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_3}
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17.3 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_3}
  {SRCNAME {Linear_Layer<17,16,16,1,1,1,1,1,1,409,16,0,ap_int,ap_int,ap_int >} MODELNAME Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_s RTLNAME ViT_Block_Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_s}
  {SRCNAME V_linear_tiled MODELNAME V_linear_tiled RTLNAME ViT_Block_V_linear_tiled
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x2 RTLNAME ViT_Block_fifo_w8_d64_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0 RTLNAME ViT_Block_start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_409_16_0_ap_int_ap_int_ap_int_U0_U}
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
      {MODELNAME ViT_Block_am_addmul_18s_16s_10ns_30_4_1 RTLNAME ViT_Block_am_addmul_18s_16s_10ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {MatMul_QK_tiled<17, 8, 17, 1, 1, 1, 1, 1, 607, 16, 0, ap_int<8>, ap_int<32> >} MODELNAME MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_s RTLNAME ViT_Block_MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_s
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_s_buff_K_V_RAM_eOg RTLNAME ViT_Block_MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_s_buff_K_V_RAM_eOg BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_s_tile_Q_V_0_RAfYi RTLNAME ViT_Block_MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_s_tile_Q_V_0_RAfYi BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
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
  {SRCNAME {requant<ap_int<8>, ap_int<8>, 17, 17, 170977, 16, 1>} MODELNAME requant_ap_int_8_ap_int_8_17_17_170977_16_1_s RTLNAME ViT_Block_requant_ap_int_8_ap_int_8_17_17_170977_16_1_s
    SUBMODULES {
      {MODELNAME ViT_Block_mul_mul_8s_18ns_27_4_1 RTLNAME ViT_Block_mul_mul_8s_18ns_27_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1 MODELNAME MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1 RTLNAME ViT_Block_MatMul_KV_tiled_Pipeline_load_B_VITIS_LOOP_1796_1}
  {SRCNAME MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5 MODELNAME MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5 RTLNAME ViT_Block_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1818_5}
  {SRCNAME MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6 MODELNAME MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6 RTLNAME ViT_Block_MatMul_KV_tiled_Pipeline_VITIS_LOOP_1831_6
    SUBMODULES {
      {MODELNAME ViT_Block_mac_muladd_8s_8s_18s_19_4_1 RTLNAME ViT_Block_mac_muladd_8s_8s_18s_19_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_am_addmul_17s_19s_9ns_30_4_1 RTLNAME ViT_Block_am_addmul_17s_19s_9ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {MatMul_KV_tiled<17, 17, 8, 1, 1, 1, 1, 1, 339, 16, 0, ap_int<8>, ap_int<32> >} MODELNAME MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_s RTLNAME ViT_Block_MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_s
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_s_buff_B_V_RAM_g8j RTLNAME ViT_Block_MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_s_buff_B_V_RAM_g8j BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_s_tile_A_V_0_RAhbi RTLNAME ViT_Block_MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_s_tile_A_V_0_RAhbi BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM1_tiled MODELNAME MM1_tiled RTLNAME ViT_Block_MM1_tiled}
  {SRCNAME MatMul_QK_tiled.10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 MODELNAME MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2 RTLNAME ViT_Block_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1656_1_VITIS_LOOP_1657_2}
  {SRCNAME MatMul_QK_tiled.10_Pipeline_VITIS_LOOP_1682_6 MODELNAME MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1682_6 RTLNAME ViT_Block_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1682_6}
  {SRCNAME MatMul_QK_tiled.10_Pipeline_VITIS_LOOP_1701_8 MODELNAME MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8 RTLNAME ViT_Block_MatMul_QK_tiled_10_Pipeline_VITIS_LOOP_1701_8}
  {SRCNAME {MatMul_QK_tiled<17, 8, 17, 1, 1, 1, 1, 1, 607, 16, 0, ap_int<8>, ap_int<32> >.10} MODELNAME MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10 RTLNAME ViT_Block_MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_buff_K_V_RAMibs RTLNAME ViT_Block_MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_buff_K_V_RAMibs BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_tile_Q_V_0_RjbC RTLNAME ViT_Block_MatMul_QK_tiled_17_8_17_1_1_1_1_1_607_16_0_ap_int_8_ap_int_32_10_tile_Q_V_0_RjbC BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM_tiled.4 MODELNAME MM_tiled_4 RTLNAME ViT_Block_MM_tiled_4}
  {SRCNAME SOFTMAX_tile.5 MODELNAME SOFTMAX_tile_5 RTLNAME ViT_Block_SOFTMAX_tile_5}
  {SRCNAME {requant<ap_int<8>, ap_int<8>, 17, 17, 170977, 16, 1>.6} MODELNAME requant_ap_int_8_ap_int_8_17_17_170977_16_1_6 RTLNAME ViT_Block_requant_ap_int_8_ap_int_8_17_17_170977_16_1_6}
  {SRCNAME MatMul_KV_tiled.11_Pipeline_load_B_VITIS_LOOP_1796_1 MODELNAME MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1 RTLNAME ViT_Block_MatMul_KV_tiled_11_Pipeline_load_B_VITIS_LOOP_1796_1}
  {SRCNAME MatMul_KV_tiled.11_Pipeline_VITIS_LOOP_1818_5 MODELNAME MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5 RTLNAME ViT_Block_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1818_5}
  {SRCNAME MatMul_KV_tiled.11_Pipeline_VITIS_LOOP_1831_6 MODELNAME MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6 RTLNAME ViT_Block_MatMul_KV_tiled_11_Pipeline_VITIS_LOOP_1831_6}
  {SRCNAME {MatMul_KV_tiled<17, 17, 8, 1, 1, 1, 1, 1, 339, 16, 0, ap_int<8>, ap_int<32> >.11} MODELNAME MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11 RTLNAME ViT_Block_MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11
    SUBMODULES {
      {MODELNAME ViT_Block_MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_buff_B_V_RAMkbM RTLNAME ViT_Block_MatMul_KV_tiled_17_17_8_1_1_1_1_1_339_16_0_ap_int_8_ap_int_32_11_buff_B_V_RAMkbM BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM1_tiled.7 MODELNAME MM1_tiled_7 RTLNAME ViT_Block_MM1_tiled_7}
  {SRCNAME merge_heads MODELNAME merge_heads RTLNAME ViT_Block_merge_heads}
  {SRCNAME {WeightTiledStreaming_3<17, 16, 16, 1, 1, 1, 1, 1, 1, ap_int<8> >.12} MODELNAME WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12 RTLNAME ViT_Block_WeightTiledStreaming_3_17_16_16_1_1_1_1_1_1_ap_int_8_12
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x3 RTLNAME ViT_Block_fifo_w8_d64_S_x3 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2.2 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_bias_h_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_bias_h_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6.2 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_2}
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17.2 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_2
    SUBMODULES {
      {MODELNAME ViT_Block_mul_32s_11ns_43_1_1 RTLNAME ViT_Block_mul_32s_11ns_43_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {Linear_Layer<17,16,16,1,1,1,1,1,1,536,16,0,ap_int,ap_int,ap_int >} MODELNAME Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_s RTLNAME ViT_Block_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_s}
  {SRCNAME Out_linear_tiled MODELNAME Out_linear_tiled RTLNAME ViT_Block_Out_linear_tiled
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x4 RTLNAME ViT_Block_fifo_w8_d64_S_x4 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0 RTLNAME ViT_Block_start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0_U}
    }
  }
  {SRCNAME MultiHeadAttention_tiled MODELNAME MultiHeadAttention_tiled RTLNAME ViT_Block_MultiHeadAttention_tiled
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME q_lin_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME k_lin_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_lin_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME Q_1_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME Q_1_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME K_1_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME K_1_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME V_1_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME V_1_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_s_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_sx_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME head_out_0_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_s_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME A_sx_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME head_out_1_U}
      {MODELNAME ViT_Block_fifo_w8_d2_S RTLNAME ViT_Block_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_linear_U}
      {MODELNAME ViT_Block_start_for_split_heads_U0 RTLNAME ViT_Block_start_for_split_heads_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_split_heads_U0_U}
      {MODELNAME ViT_Block_start_for_split_heads_2_U0 RTLNAME ViT_Block_start_for_split_heads_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_split_heads_2_U0_U}
      {MODELNAME ViT_Block_start_for_split_heads_3_U0 RTLNAME ViT_Block_start_for_split_heads_3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_split_heads_3_U0_U}
      {MODELNAME ViT_Block_start_for_MM_tiled_U0 RTLNAME ViT_Block_start_for_MM_tiled_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM_tiled_U0_U}
      {MODELNAME ViT_Block_start_for_MM_tiled_4_U0 RTLNAME ViT_Block_start_for_MM_tiled_4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM_tiled_4_U0_U}
      {MODELNAME ViT_Block_start_for_MM1_tiled_U0 RTLNAME ViT_Block_start_for_MM1_tiled_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM1_tiled_U0_U}
      {MODELNAME ViT_Block_start_for_MM1_tiled_7_U0 RTLNAME ViT_Block_start_for_MM1_tiled_7_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MM1_tiled_7_U0_U}
      {MODELNAME ViT_Block_start_for_SOFTMAX_tile_U0 RTLNAME ViT_Block_start_for_SOFTMAX_tile_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_SOFTMAX_tile_U0_U}
      {MODELNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0 RTLNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_U0_U}
      {MODELNAME ViT_Block_start_for_merge_heads_U0 RTLNAME ViT_Block_start_for_merge_heads_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_merge_heads_U0_U}
      {MODELNAME ViT_Block_start_for_SOFTMAX_tile_5_U0 RTLNAME ViT_Block_start_for_SOFTMAX_tile_5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_SOFTMAX_tile_5_U0_U}
      {MODELNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0 RTLNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_requant_ap_int_8_ap_int_8_17_17_170977_16_1_6_U0_U}
    }
  }
  {SRCNAME {requant<ap_int<8>, ap_int<8>, 17, 16, 21351, 16, 1>} MODELNAME requant_ap_int_8_ap_int_8_17_16_21351_16_1_s RTLNAME ViT_Block_requant_ap_int_8_ap_int_8_17_16_21351_16_1_s
    SUBMODULES {
      {MODELNAME ViT_Block_mul_mul_8s_15ns_24_4_1 RTLNAME ViT_Block_mul_mul_8s_15ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {ResidualAddRequantSameScale<17, 16, 1, 52909, 16, 0, ap_int<8>, ap_int<16> >} MODELNAME ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_s RTLNAME ViT_Block_ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_s
    SUBMODULES {
      {MODELNAME ViT_Block_am_addmul_8s_8s_16ns_26_4_1 RTLNAME ViT_Block_am_addmul_8s_8s_16ns_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {duplicate_stream<ap_int<8>, 17, 16, 1>.1} MODELNAME duplicate_stream_ap_int_8_17_16_1_1 RTLNAME ViT_Block_duplicate_stream_ap_int_8_17_16_1_1}
  {SRCNAME BatchNorm_tiled_1 MODELNAME BatchNorm_tiled_1 RTLNAME ViT_Block_BatchNorm_tiled_1
    SUBMODULES {
      {MODELNAME ViT_Block_mul_mul_17ns_8s_25_4_1 RTLNAME ViT_Block_mul_mul_17ns_8s_25_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_BatchNorm_tiled_1_bn1_mul_1_ROM_AUTO_1R RTLNAME ViT_Block_BatchNorm_tiled_1_bn1_mul_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ViT_Block_BatchNorm_tiled_1_bn1_add_1_ROM_AUTO_1R RTLNAME ViT_Block_BatchNorm_tiled_1_bn1_add_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {WeightTiledStreaming_3<17, 16, 64, 1, 1, 1, 1, 1, 1, ap_int<8> >} MODELNAME WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_s RTLNAME ViT_Block_WeightTiledStreaming_3_17_16_64_1_1_1_1_1_1_ap_int_8_s
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x5 RTLNAME ViT_Block_fifo_w8_d64_S_x5 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2.1 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_bias_1_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_bias_1_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6.1 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1525_6_1}
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17.1 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1588_17_1}
  {SRCNAME {Linear_Layer<17,16,64,1,1,1,1,1,1,291,16,0,ap_int,ap_int,ap_int >} MODELNAME Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_s RTLNAME ViT_Block_Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_s
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_s_C_tile_V_RAncg RTLNAME ViT_Block_Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_s_C_tile_V_RAncg BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME FC1_tiled_oc_2 MODELNAME FC1_tiled_oc_2 RTLNAME ViT_Block_FC1_tiled_oc_2
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x6 RTLNAME ViT_Block_fifo_w8_d64_S_x6 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0 RTLNAME ViT_Block_start_for_Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_17_16_64_1_1_1_1_1_1_291_16_0_ap_int_ap_int_ap_int_U0_U}
    }
  }
  {SRCNAME Relu_tiled_oc MODELNAME Relu_tiled_oc RTLNAME ViT_Block_Relu_tiled_oc}
  {SRCNAME {WeightTiledStreaming_3<17, 64, 16, 1, 1, 1, 1, 1, 1, ap_int<8> >} MODELNAME WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_s RTLNAME ViT_Block_WeightTiledStreaming_3_17_64_16_1_1_1_1_1_1_ap_int_8_s
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x7 RTLNAME ViT_Block_fifo_w8_d64_S_x7 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME burst_reads_U}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1512_2 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2
    SUBMODULES {
      {MODELNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_bias_2_0_V_ROM_AUTO_1R RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_bias_2_0_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1525_6 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1525_6}
  {SRCNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17 MODELNAME Linear_Layer_Pipeline_VITIS_LOOP_1588_17 RTLNAME ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1588_17}
  {SRCNAME {Linear_Layer<17,64,16,1,1,1,1,1,1,527,16,0,ap_int,ap_int,ap_int >} MODELNAME Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_s RTLNAME ViT_Block_Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_s}
  {SRCNAME FC2_tiled_oc_2 MODELNAME FC2_tiled_oc_2 RTLNAME ViT_Block_FC2_tiled_oc_2
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x8 RTLNAME ViT_Block_fifo_w8_d64_S_x8 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_w_U}
      {MODELNAME ViT_Block_start_for_Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0 RTLNAME ViT_Block_start_for_Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Linear_Layer_17_64_16_1_1_1_1_1_1_527_16_0_ap_int_ap_int_ap_int_U0_U}
    }
  }
  {SRCNAME MLP_tiled_oc MODELNAME MLP_tiled_oc RTLNAME ViT_Block_MLP_tiled_oc
    SUBMODULES {
      {MODELNAME ViT_Block_fifo_w8_d64_S_x9 RTLNAME ViT_Block_fifo_w8_d64_S_x9 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fc1_U}
      {MODELNAME ViT_Block_fifo_w8_d64_S_x9 RTLNAME ViT_Block_fifo_w8_d64_S_x9 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME relu_U}
      {MODELNAME ViT_Block_start_for_Relu_tiled_oc_U0 RTLNAME ViT_Block_start_for_Relu_tiled_oc_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Relu_tiled_oc_U0_U}
    }
  }
  {SRCNAME {requant<ap_int<8>, ap_int<8>, 17, 16, 84995, 16, 1>} MODELNAME requant_ap_int_8_ap_int_8_17_16_84995_16_1_s RTLNAME ViT_Block_requant_ap_int_8_ap_int_8_17_16_84995_16_1_s
    SUBMODULES {
      {MODELNAME ViT_Block_mul_mul_8s_17ns_26_4_1 RTLNAME ViT_Block_mul_mul_8s_17ns_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {ResidualAddRequantSameScale<17, 16, 1, 33477, 16, 0, ap_int<8>, ap_int<16> >} MODELNAME ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_s RTLNAME ViT_Block_ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_s}
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
      {MODELNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0 RTLNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_requant_ap_int_8_ap_int_8_17_16_21351_16_1_U0_U}
      {MODELNAME ViT_Block_start_for_triplicate_stream_ap_int_8_17_16_1_U0 RTLNAME ViT_Block_start_for_triplicate_stream_ap_int_8_17_16_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_triplicate_stream_ap_int_8_17_16_1_U0_U}
      {MODELNAME ViT_Block_start_for_ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0 RTLNAME ViT_Block_start_for_ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ResidualAddRequantSameScale_17_16_1_52909_16_0_ap_int_8_ap_int_16_U0_U}
      {MODELNAME ViT_Block_start_for_duplicate_stream_ap_int_8_17_16_1_1_U0 RTLNAME ViT_Block_start_for_duplicate_stream_ap_int_8_17_16_1_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_duplicate_stream_ap_int_8_17_16_1_1_U0_U}
      {MODELNAME ViT_Block_start_for_BatchNorm_tiled_1_U0 RTLNAME ViT_Block_start_for_BatchNorm_tiled_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_BatchNorm_tiled_1_U0_U}
      {MODELNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0 RTLNAME ViT_Block_start_for_requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_requant_ap_int_8_ap_int_8_17_16_84995_16_1_U0_U}
      {MODELNAME ViT_Block_start_for_ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0 RTLNAME ViT_Block_start_for_ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ResidualAddRequantSameScale_17_16_1_33477_16_0_ap_int_8_ap_int_16_U0_U}
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
      {MODELNAME ViT_Block_Out_r_m_axi RTLNAME ViT_Block_Out_r_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_Block_gmem0_m_axi RTLNAME ViT_Block_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_Block_gmem1_m_axi RTLNAME ViT_Block_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ViT_Block_control_s_axi RTLNAME ViT_Block_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
