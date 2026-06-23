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
    id 274 \
    name tile_Q_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename tile_Q_V_0 \
    op interface \
    ports { tile_Q_V_0_address0 { O 3 vector } tile_Q_V_0_ce0 { O 1 bit } tile_Q_V_0_q0 { I 8 vector } tile_Q_V_0_address1 { O 3 vector } tile_Q_V_0_ce1 { O 1 bit } tile_Q_V_0_q1 { I 8 vector } tile_Q_V_0_address2 { O 3 vector } tile_Q_V_0_ce2 { O 1 bit } tile_Q_V_0_q2 { I 8 vector } tile_Q_V_0_address3 { O 3 vector } tile_Q_V_0_ce3 { O 1 bit } tile_Q_V_0_q3 { I 8 vector } tile_Q_V_0_address4 { O 3 vector } tile_Q_V_0_ce4 { O 1 bit } tile_Q_V_0_q4 { I 8 vector } tile_Q_V_0_address5 { O 3 vector } tile_Q_V_0_ce5 { O 1 bit } tile_Q_V_0_q5 { I 8 vector } tile_Q_V_0_address6 { O 3 vector } tile_Q_V_0_ce6 { O 1 bit } tile_Q_V_0_q6 { I 8 vector } tile_Q_V_0_address7 { O 3 vector } tile_Q_V_0_ce7 { O 1 bit } tile_Q_V_0_q7 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tile_Q_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name buff_K_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buff_K_V \
    op interface \
    ports { buff_K_V_address0 { O 8 vector } buff_K_V_ce0 { O 1 bit } buff_K_V_q0 { I 8 vector } buff_K_V_address1 { O 8 vector } buff_K_V_ce1 { O 1 bit } buff_K_V_q1 { I 8 vector } buff_K_V_address2 { O 8 vector } buff_K_V_ce2 { O 1 bit } buff_K_V_q2 { I 8 vector } buff_K_V_address3 { O 8 vector } buff_K_V_ce3 { O 1 bit } buff_K_V_q3 { I 8 vector } buff_K_V_address4 { O 8 vector } buff_K_V_ce4 { O 1 bit } buff_K_V_q4 { I 8 vector } buff_K_V_address5 { O 8 vector } buff_K_V_ce5 { O 1 bit } buff_K_V_q5 { I 8 vector } buff_K_V_address6 { O 8 vector } buff_K_V_ce6 { O 1 bit } buff_K_V_q6 { I 8 vector } buff_K_V_address7 { O 8 vector } buff_K_V_ce7 { O 1 bit } buff_K_V_q7 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buff_K_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name A_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1 \
    op interface \
    ports { A_1_din { O 8 vector } A_1_num_data_valid { I 2 vector } A_1_fifo_cap { I 2 vector } A_1_full_n { I 1 bit } A_1_write { O 1 bit } } \
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


