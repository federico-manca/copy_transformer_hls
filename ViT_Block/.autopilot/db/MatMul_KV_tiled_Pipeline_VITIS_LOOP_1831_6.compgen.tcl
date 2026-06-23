# This script segment is generated automatically by AutoPilot

set id 230
set name ViT_Block_mac_muladd_8s_8s_18s_19_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 8
set in0_signed 1
set in1_width 8
set in1_signed 1
set in2_width 18
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 19
set arg_lists {i0 {8 1 +} i1 {8 1 +} m {16 1 +} i2 {18 1 +} p {19 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 231
set name ViT_Block_am_addmul_17s_19s_9ns_30_4_1
set corename simcore_am
set op am
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 17
set in0_signed 1
set in1_width 19
set in1_signed 1
set in2_width 9
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 30
set arg_lists {i0 {17 1 +} i1 {19 1 +} s {20 1 +} i2 {9 0 +} p {30 1 +} c_expval {c} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op am
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 234 \
    name buff_B_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_V \
    op interface \
    ports { buff_B_V_address0 { O 8 vector } buff_B_V_ce0 { O 1 bit } buff_B_V_q0 { I 8 vector } buff_B_V_address1 { O 8 vector } buff_B_V_ce1 { O 1 bit } buff_B_V_q1 { I 8 vector } buff_B_V_address2 { O 8 vector } buff_B_V_ce2 { O 1 bit } buff_B_V_q2 { I 8 vector } buff_B_V_address3 { O 8 vector } buff_B_V_ce3 { O 1 bit } buff_B_V_q3 { I 8 vector } buff_B_V_address4 { O 8 vector } buff_B_V_ce4 { O 1 bit } buff_B_V_q4 { I 8 vector } buff_B_V_address5 { O 8 vector } buff_B_V_ce5 { O 1 bit } buff_B_V_q5 { I 8 vector } buff_B_V_address6 { O 8 vector } buff_B_V_ce6 { O 1 bit } buff_B_V_q6 { I 8 vector } buff_B_V_address7 { O 8 vector } buff_B_V_ce7 { O 1 bit } buff_B_V_q7 { I 8 vector } buff_B_V_address8 { O 8 vector } buff_B_V_ce8 { O 1 bit } buff_B_V_q8 { I 8 vector } buff_B_V_address9 { O 8 vector } buff_B_V_ce9 { O 1 bit } buff_B_V_q9 { I 8 vector } buff_B_V_address10 { O 8 vector } buff_B_V_ce10 { O 1 bit } buff_B_V_q10 { I 8 vector } buff_B_V_address11 { O 8 vector } buff_B_V_ce11 { O 1 bit } buff_B_V_q11 { I 8 vector } buff_B_V_address12 { O 8 vector } buff_B_V_ce12 { O 1 bit } buff_B_V_q12 { I 8 vector } buff_B_V_address13 { O 8 vector } buff_B_V_ce13 { O 1 bit } buff_B_V_q13 { I 8 vector } buff_B_V_address14 { O 8 vector } buff_B_V_ce14 { O 1 bit } buff_B_V_q14 { I 8 vector } buff_B_V_address15 { O 8 vector } buff_B_V_ce15 { O 1 bit } buff_B_V_q15 { I 8 vector } buff_B_V_address16 { O 8 vector } buff_B_V_ce16 { O 1 bit } buff_B_V_q16 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name sext_ln186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186 \
    op interface \
    ports { sext_ln186 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name sext_ln186_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_34 \
    op interface \
    ports { sext_ln186_34 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name sext_ln186_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_36 \
    op interface \
    ports { sext_ln186_36 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name sext_ln186_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_38 \
    op interface \
    ports { sext_ln186_38 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name sext_ln186_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_40 \
    op interface \
    ports { sext_ln186_40 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name sext_ln186_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_42 \
    op interface \
    ports { sext_ln186_42 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name sext_ln186_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_44 \
    op interface \
    ports { sext_ln186_44 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name sext_ln186_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_46 \
    op interface \
    ports { sext_ln186_46 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name sext_ln186_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_48 \
    op interface \
    ports { sext_ln186_48 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name sext_ln186_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_50 \
    op interface \
    ports { sext_ln186_50 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name sext_ln186_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_52 \
    op interface \
    ports { sext_ln186_52 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name sext_ln186_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_54 \
    op interface \
    ports { sext_ln186_54 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name sext_ln186_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_56 \
    op interface \
    ports { sext_ln186_56 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name sext_ln186_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_58 \
    op interface \
    ports { sext_ln186_58 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name sext_ln186_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_60 \
    op interface \
    ports { sext_ln186_60 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name sext_ln186_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_62 \
    op interface \
    ports { sext_ln186_62 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name sext_ln186_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln186_64 \
    op interface \
    ports { sext_ln186_64 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name head_out_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_head_out_0 \
    op interface \
    ports { head_out_0_din { O 8 vector } head_out_0_num_data_valid { I 2 vector } head_out_0_fifo_cap { I 2 vector } head_out_0_full_n { I 1 bit } head_out_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName ViT_Block_flow_control_loop_pipe_sequential_init_U
set CompName ViT_Block_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix ViT_Block_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


