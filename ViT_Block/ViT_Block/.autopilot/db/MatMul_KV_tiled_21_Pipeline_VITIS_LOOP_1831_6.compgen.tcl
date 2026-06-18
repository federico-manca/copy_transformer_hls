# This script segment is generated automatically by AutoPilot

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
    id 472 \
    name buff_B_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_B_V \
    op interface \
    ports { buff_B_V_address0 { O 10 vector } buff_B_V_ce0 { O 1 bit } buff_B_V_q0 { I 8 vector } buff_B_V_address1 { O 10 vector } buff_B_V_ce1 { O 1 bit } buff_B_V_q1 { I 8 vector } buff_B_V_address2 { O 10 vector } buff_B_V_ce2 { O 1 bit } buff_B_V_q2 { I 8 vector } buff_B_V_address3 { O 10 vector } buff_B_V_ce3 { O 1 bit } buff_B_V_q3 { I 8 vector } buff_B_V_address4 { O 10 vector } buff_B_V_ce4 { O 1 bit } buff_B_V_q4 { I 8 vector } buff_B_V_address5 { O 10 vector } buff_B_V_ce5 { O 1 bit } buff_B_V_q5 { I 8 vector } buff_B_V_address6 { O 10 vector } buff_B_V_ce6 { O 1 bit } buff_B_V_q6 { I 8 vector } buff_B_V_address7 { O 10 vector } buff_B_V_ce7 { O 1 bit } buff_B_V_q7 { I 8 vector } buff_B_V_address8 { O 10 vector } buff_B_V_ce8 { O 1 bit } buff_B_V_q8 { I 8 vector } buff_B_V_address9 { O 10 vector } buff_B_V_ce9 { O 1 bit } buff_B_V_q9 { I 8 vector } buff_B_V_address10 { O 10 vector } buff_B_V_ce10 { O 1 bit } buff_B_V_q10 { I 8 vector } buff_B_V_address11 { O 10 vector } buff_B_V_ce11 { O 1 bit } buff_B_V_q11 { I 8 vector } buff_B_V_address12 { O 10 vector } buff_B_V_ce12 { O 1 bit } buff_B_V_q12 { I 8 vector } buff_B_V_address13 { O 10 vector } buff_B_V_ce13 { O 1 bit } buff_B_V_q13 { I 8 vector } buff_B_V_address14 { O 10 vector } buff_B_V_ce14 { O 1 bit } buff_B_V_q14 { I 8 vector } buff_B_V_address15 { O 10 vector } buff_B_V_ce15 { O 1 bit } buff_B_V_q15 { I 8 vector } buff_B_V_address16 { O 10 vector } buff_B_V_ce16 { O 1 bit } buff_B_V_q16 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_B_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
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
    id 474 \
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
    id 475 \
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
    id 476 \
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
    id 477 \
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
    id 478 \
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
    id 479 \
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
    id 480 \
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
    id 481 \
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
    id 482 \
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
    id 483 \
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
    id 484 \
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
    id 485 \
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
    id 486 \
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
    id 487 \
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
    id 488 \
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
    id 489 \
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
    id 490 \
    name head_out_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_head_out_2 \
    op interface \
    ports { head_out_2_din { O 8 vector } head_out_2_num_data_valid { I 2 vector } head_out_2_fifo_cap { I 2 vector } head_out_2_full_n { I 1 bit } head_out_2_write { O 1 bit } } \
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


