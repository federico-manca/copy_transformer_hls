# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ViT_Block_fifo_w8_d64_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {burst_reads_U}
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
    id 31 \
    name Q \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Q \
    op interface \
    ports { m_axi_Q_AWVALID { O 1 bit } m_axi_Q_AWREADY { I 1 bit } m_axi_Q_AWADDR { O 64 vector } m_axi_Q_AWID { O 1 vector } m_axi_Q_AWLEN { O 32 vector } m_axi_Q_AWSIZE { O 3 vector } m_axi_Q_AWBURST { O 2 vector } m_axi_Q_AWLOCK { O 2 vector } m_axi_Q_AWCACHE { O 4 vector } m_axi_Q_AWPROT { O 3 vector } m_axi_Q_AWQOS { O 4 vector } m_axi_Q_AWREGION { O 4 vector } m_axi_Q_AWUSER { O 1 vector } m_axi_Q_WVALID { O 1 bit } m_axi_Q_WREADY { I 1 bit } m_axi_Q_WDATA { O 8 vector } m_axi_Q_WSTRB { O 1 vector } m_axi_Q_WLAST { O 1 bit } m_axi_Q_WID { O 1 vector } m_axi_Q_WUSER { O 1 vector } m_axi_Q_ARVALID { O 1 bit } m_axi_Q_ARREADY { I 1 bit } m_axi_Q_ARADDR { O 64 vector } m_axi_Q_ARID { O 1 vector } m_axi_Q_ARLEN { O 32 vector } m_axi_Q_ARSIZE { O 3 vector } m_axi_Q_ARBURST { O 2 vector } m_axi_Q_ARLOCK { O 2 vector } m_axi_Q_ARCACHE { O 4 vector } m_axi_Q_ARPROT { O 3 vector } m_axi_Q_ARQOS { O 4 vector } m_axi_Q_ARREGION { O 4 vector } m_axi_Q_ARUSER { O 1 vector } m_axi_Q_RVALID { I 1 bit } m_axi_Q_RREADY { O 1 bit } m_axi_Q_RDATA { I 8 vector } m_axi_Q_RLAST { I 1 bit } m_axi_Q_RID { I 1 vector } m_axi_Q_RFIFONUM { I 13 vector } m_axi_Q_RUSER { I 1 vector } m_axi_Q_RRESP { I 2 vector } m_axi_Q_BVALID { I 1 bit } m_axi_Q_BREADY { O 1 bit } m_axi_Q_BRESP { I 2 vector } m_axi_Q_BID { I 1 vector } m_axi_Q_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name W_ddr_tile \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_ddr_tile \
    op interface \
    ports { W_ddr_tile { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name out_w1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_w1 \
    op interface \
    ports { out_w1_din { O 8 vector } out_w1_num_data_valid { I 7 vector } out_w1_fifo_cap { I 7 vector } out_w1_full_n { I 1 bit } out_w1_write { O 1 bit } } \
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


