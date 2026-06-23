# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_Block_fifo_w8_d64_S_x4 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {out_w_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_Block_start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_Linear_Layer_17_16_16_1_1_1_1_1_1_536_16_0_ap_int_ap_int_ap_int_U0_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name Out_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Out_r \
    op interface \
    ports { m_axi_Out_r_AWVALID { O 1 bit } m_axi_Out_r_AWREADY { I 1 bit } m_axi_Out_r_AWADDR { O 64 vector } m_axi_Out_r_AWID { O 1 vector } m_axi_Out_r_AWLEN { O 32 vector } m_axi_Out_r_AWSIZE { O 3 vector } m_axi_Out_r_AWBURST { O 2 vector } m_axi_Out_r_AWLOCK { O 2 vector } m_axi_Out_r_AWCACHE { O 4 vector } m_axi_Out_r_AWPROT { O 3 vector } m_axi_Out_r_AWQOS { O 4 vector } m_axi_Out_r_AWREGION { O 4 vector } m_axi_Out_r_AWUSER { O 1 vector } m_axi_Out_r_WVALID { O 1 bit } m_axi_Out_r_WREADY { I 1 bit } m_axi_Out_r_WDATA { O 8 vector } m_axi_Out_r_WSTRB { O 1 vector } m_axi_Out_r_WLAST { O 1 bit } m_axi_Out_r_WID { O 1 vector } m_axi_Out_r_WUSER { O 1 vector } m_axi_Out_r_ARVALID { O 1 bit } m_axi_Out_r_ARREADY { I 1 bit } m_axi_Out_r_ARADDR { O 64 vector } m_axi_Out_r_ARID { O 1 vector } m_axi_Out_r_ARLEN { O 32 vector } m_axi_Out_r_ARSIZE { O 3 vector } m_axi_Out_r_ARBURST { O 2 vector } m_axi_Out_r_ARLOCK { O 2 vector } m_axi_Out_r_ARCACHE { O 4 vector } m_axi_Out_r_ARPROT { O 3 vector } m_axi_Out_r_ARQOS { O 4 vector } m_axi_Out_r_ARREGION { O 4 vector } m_axi_Out_r_ARUSER { O 1 vector } m_axi_Out_r_RVALID { I 1 bit } m_axi_Out_r_RREADY { O 1 bit } m_axi_Out_r_RDATA { I 8 vector } m_axi_Out_r_RLAST { I 1 bit } m_axi_Out_r_RID { I 1 vector } m_axi_Out_r_RFIFONUM { I 13 vector } m_axi_Out_r_RUSER { I 1 vector } m_axi_Out_r_RRESP { I 2 vector } m_axi_Out_r_BVALID { I 1 bit } m_axi_Out_r_BREADY { O 1 bit } m_axi_Out_r_BRESP { I 2 vector } m_axi_Out_r_BID { I 1 vector } m_axi_Out_r_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name in_w \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_w \
    op interface \
    ports { in_w { I 64 vector } in_w_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name out_linear4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_linear4 \
    op interface \
    ports { out_linear4_dout { I 8 vector } out_linear4_empty_n { I 1 bit } out_linear4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name out_mha8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_mha8 \
    op interface \
    ports { out_mha8_din { O 8 vector } out_mha8_full_n { I 1 bit } out_mha8_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


