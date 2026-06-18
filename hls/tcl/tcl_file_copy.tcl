open_project -reset ViT_Block
set_top ViT_Block

set ROOT [file normalize "."]

set HLS_INC [file join $ROOT hls include]
set HLS_SRC [file join $ROOT hls src]
set HLS_TB  [file join $ROOT hls tb]

set CFLAGS "-I$HLS_INC \
-I[file join $HLS_INC parameters] \
-I[file join $HLS_INC model] \
-I[file join $HLS_INC layers] \
-I[file join $HLS_INC attention] \
-I$HLS_SRC \
-Wno-unknown-pragmas"

add_files -cflags "$CFLAGS" [file join $HLS_SRC parameters vit_params.cpp]
add_files -cflags "$CFLAGS" [file join $HLS_SRC layers MLP_tiled_oc.cpp]
add_files -cflags "$CFLAGS" [file join $HLS_SRC layers MM_tiled.cpp]
add_files -cflags "$CFLAGS" [file join $HLS_SRC attention MultiHeadAttention_tiled.cpp]
add_files -cflags "$CFLAGS" [file join $HLS_SRC model ViT_Block.cpp]

add_files -tb [file join $HLS_TB tb_vit_block.cpp] \
    -cflags "$CFLAGS" \
    -csimflags "-Wno-unknown-pragmas"

open_solution "ViT_Block" -flow_target vivado
#set_part {xck26-sfvc784-2LV-c}
set_part {xcu250-figd2104-2L-e}
create_clock -period 10 -name default

csim_design
csynth_design
#cosim_design
export_design -format ip_catalog

exit