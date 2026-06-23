# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
in_q { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
in_k { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
in_v { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
in_o { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
in_w_up { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
in_w_down { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


