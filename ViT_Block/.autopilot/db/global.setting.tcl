
set TopModule "ViT_Block"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix ViT_Block_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcu250:-figd2104:-2L-e
set SourceFiles {sc {} c {/home/fede/PhD/transformer-hls/hls/src/model/ViT_Block.cpp /home/fede/PhD/transformer-hls/hls/src/attention/MultiHeadAttention_tiled.cpp /home/fede/PhD/transformer-hls/hls/src/layers/MM_tiled.cpp /home/fede/PhD/transformer-hls/hls/src/layers/MLP_tiled_oc.cpp /home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/src/parameters/vit_params.cpp}}
set SourceFlags {sc {} c {{ -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include  -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include  -I/home/fede/PhD/transformer-hls/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include/model  -I/home/fede/PhD/transformer-hls/hls/include/layers  -I/home/fede/PhD/transformer-hls/hls/include/attention  -I/home/fede/PhD/transformer-hls/hls/src  -Wno-unknown-pragmas} {} { -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include  -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include  -I/home/fede/PhD/transformer-hls/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include/model  -I/home/fede/PhD/transformer-hls/hls/include/layers  -I/home/fede/PhD/transformer-hls/hls/include/attention  -I/home/fede/PhD/transformer-hls/hls/src  -Wno-unknown-pragmas} {} { -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include  -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include  -I/home/fede/PhD/transformer-hls/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include/model  -I/home/fede/PhD/transformer-hls/hls/include/layers  -I/home/fede/PhD/transformer-hls/hls/include/attention  -I/home/fede/PhD/transformer-hls/hls/src  -Wno-unknown-pragmas} {} { -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include  -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include  -I/home/fede/PhD/transformer-hls/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include/model  -I/home/fede/PhD/transformer-hls/hls/include/layers  -I/home/fede/PhD/transformer-hls/hls/include/attention  -I/home/fede/PhD/transformer-hls/hls/src  -Wno-unknown-pragmas} {} { -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include  -I/home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/generated/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include  -I/home/fede/PhD/transformer-hls/hls/include/parameters  -I/home/fede/PhD/transformer-hls/hls/include/model  -I/home/fede/PhD/transformer-hls/hls/include/layers  -I/home/fede/PhD/transformer-hls/hls/include/attention  -I/home/fede/PhD/transformer-hls/hls/src  -Wno-unknown-pragmas} {}}}
set DirectiveFile /home/fede/PhD/transformer-hls/runs/mnist_vit_block_20260619_144418_0b8dc3f6/build/ViT_Block/ViT_Block/ViT_Block.directive
set TBFiles {verilog /home/fede/PhD/transformer-hls/hls/tb/tb_vit_block.cpp bc /home/fede/PhD/transformer-hls/hls/tb/tb_vit_block.cpp sc /home/fede/PhD/transformer-hls/hls/tb/tb_vit_block.cpp vhdl /home/fede/PhD/transformer-hls/hls/tb/tb_vit_block.cpp c {} cas /home/fede/PhD/transformer-hls/hls/tb/tb_vit_block.cpp}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile ViT_Block.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
