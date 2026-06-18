<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="ViT_Block" name="ViT_Block">
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="/home/fede/PhD/transformer-hls/hls/tb/tb_vit_block.cpp" sc="0" tb="1" cflags=" -I/home/fede/PhD/transformer-hls/hls/include  -I/home/fede/PhD/transformer-hls/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include/model  -I/home/fede/PhD/transformer-hls/hls/include/layers  -I/home/fede/PhD/transformer-hls/hls/include/attention  -I/home/fede/PhD/transformer-hls/hls/src  -Wno-unknown-pragmas -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="/home/fede/PhD/transformer-hls/hls/src/model/ViT_Block.cpp" sc="0" tb="false" cflags="-I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="/home/fede/PhD/transformer-hls/hls/src/attention/MultiHeadAttention_tiled.cpp" sc="0" tb="false" cflags="-I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="/home/fede/PhD/transformer-hls/hls/src/layers/MM_tiled.cpp" sc="0" tb="false" cflags="-I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="/home/fede/PhD/transformer-hls/hls/src/layers/MLP_tiled_oc.cpp" sc="0" tb="false" cflags="-I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="/home/fede/PhD/transformer-hls/hls/src/parameters/vit_params.cpp" sc="0" tb="false" cflags="-I/home/fede/PhD/transformer-hls/hls/include -I/home/fede/PhD/transformer-hls/hls/include/parameters -I/home/fede/PhD/transformer-hls/hls/include/model -I/home/fede/PhD/transformer-hls/hls/include/layers -I/home/fede/PhD/transformer-hls/hls/include/attention -I/home/fede/PhD/transformer-hls/hls/src -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="ViT_Block" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

