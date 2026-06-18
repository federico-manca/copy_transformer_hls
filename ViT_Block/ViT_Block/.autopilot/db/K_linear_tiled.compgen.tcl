# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_Block_fifo_w8_d16_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {out_w_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_Block_start_for_Linear_Layer_4_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_Linear_Layer_4_U0_U}
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
    id 74 \
    name K \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K \
    op interface \
    ports { m_axi_K_AWVALID { O 1 bit } m_axi_K_AWREADY { I 1 bit } m_axi_K_AWADDR { O 64 vector } m_axi_K_AWID { O 1 vector } m_axi_K_AWLEN { O 32 vector } m_axi_K_AWSIZE { O 3 vector } m_axi_K_AWBURST { O 2 vector } m_axi_K_AWLOCK { O 2 vector } m_axi_K_AWCACHE { O 4 vector } m_axi_K_AWPROT { O 3 vector } m_axi_K_AWQOS { O 4 vector } m_axi_K_AWREGION { O 4 vector } m_axi_K_AWUSER { O 1 vector } m_axi_K_WVALID { O 1 bit } m_axi_K_WREADY { I 1 bit } m_axi_K_WDATA { O 8 vector } m_axi_K_WSTRB { O 1 vector } m_axi_K_WLAST { O 1 bit } m_axi_K_WID { O 1 vector } m_axi_K_WUSER { O 1 vector } m_axi_K_ARVALID { O 1 bit } m_axi_K_ARREADY { I 1 bit } m_axi_K_ARADDR { O 64 vector } m_axi_K_ARID { O 1 vector } m_axi_K_ARLEN { O 32 vector } m_axi_K_ARSIZE { O 3 vector } m_axi_K_ARBURST { O 2 vector } m_axi_K_ARLOCK { O 2 vector } m_axi_K_ARCACHE { O 4 vector } m_axi_K_ARPROT { O 3 vector } m_axi_K_ARQOS { O 4 vector } m_axi_K_ARREGION { O 4 vector } m_axi_K_ARUSER { O 1 vector } m_axi_K_RVALID { I 1 bit } m_axi_K_RREADY { O 1 bit } m_axi_K_RDATA { I 8 vector } m_axi_K_RLAST { I 1 bit } m_axi_K_RID { I 1 vector } m_axi_K_RFIFONUM { I 13 vector } m_axi_K_RUSER { I 1 vector } m_axi_K_RRESP { I 2 vector } m_axi_K_BVALID { I 1 bit } m_axi_K_BREADY { O 1 bit } m_axi_K_BRESP { I 2 vector } m_axi_K_BID { I 1 vector } m_axi_K_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
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
    id 76 \
    name K_in6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_K_in6 \
    op interface \
    ports { K_in6_dout { I 8 vector } K_in6_empty_n { I 1 bit } K_in6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name k_lin2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_k_lin2 \
    op interface \
    ports { k_lin2_din { O 8 vector } k_lin2_full_n { I 1 bit } k_lin2_write { O 1 bit } } \
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


