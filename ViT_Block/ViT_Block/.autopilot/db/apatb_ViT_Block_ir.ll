; ModuleID = '/home/fede/PhD/transformer-hls/ViT_Block/ViT_Block/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<8>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<8>, 0, 0, 0>" = type { %"struct.ap_int<8>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_int<8>" = type { %"struct.ap_int_base<8, true>" }
%"struct.ap_int_base<8, true>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_ViT_Block_ir(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(7) %in, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(7) %out, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %in_q, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %in_k, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %in_v, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %in_o, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %in_w_up, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %in_w_down) local_unnamed_addr #0 {
entry:
  %in_copy.data = alloca i8
  %in_copy.keep = alloca i1
  %in_copy.strb = alloca i1
  %in_copy.last = alloca i1
  %out_copy.data = alloca i8
  %out_copy.keep = alloca i1
  %out_copy.strb = alloca i1
  %out_copy.last = alloca i1
  %malloccall = call i8* @malloc(i64 36864)
  %in_q_copy = bitcast i8* %malloccall to [36864 x i8]*
  %malloccall1 = call i8* @malloc(i64 36864)
  %in_k_copy = bitcast i8* %malloccall1 to [36864 x i8]*
  %malloccall2 = call i8* @malloc(i64 36864)
  %in_v_copy = bitcast i8* %malloccall2 to [36864 x i8]*
  %malloccall3 = call i8* @malloc(i64 36864)
  %in_o_copy = bitcast i8* %malloccall3 to [36864 x i8]*
  %malloccall4 = call i8* @malloc(i64 147456)
  %in_w_up_copy = bitcast i8* %malloccall4 to [147456 x i8]*
  %malloccall5 = call i8* @malloc(i64 147456)
  %in_w_down_copy = bitcast i8* %malloccall5 to [147456 x i8]*
  %0 = bitcast %"struct.ap_int<8>"* %in_q to [36864 x %"struct.ap_int<8>"]*
  %1 = bitcast %"struct.ap_int<8>"* %in_k to [36864 x %"struct.ap_int<8>"]*
  %2 = bitcast %"struct.ap_int<8>"* %in_v to [36864 x %"struct.ap_int<8>"]*
  %3 = bitcast %"struct.ap_int<8>"* %in_o to [36864 x %"struct.ap_int<8>"]*
  %4 = bitcast %"struct.ap_int<8>"* %in_w_up to [147456 x %"struct.ap_int<8>"]*
  %5 = bitcast %"struct.ap_int<8>"* %in_w_down to [147456 x %"struct.ap_int<8>"]*
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull %in, i8* %in_copy.data, i1* %in_copy.keep, i1* %in_copy.strb, i1* %in_copy.last, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull %out, i8* %out_copy.data, i1* %out_copy.keep, i1* %out_copy.strb, i1* %out_copy.last, [36864 x %"struct.ap_int<8>"]* nonnull %0, [36864 x i8]* %in_q_copy, [36864 x %"struct.ap_int<8>"]* nonnull %1, [36864 x i8]* %in_k_copy, [36864 x %"struct.ap_int<8>"]* nonnull %2, [36864 x i8]* %in_v_copy, [36864 x %"struct.ap_int<8>"]* nonnull %3, [36864 x i8]* %in_o_copy, [147456 x %"struct.ap_int<8>"]* nonnull %4, [147456 x i8]* %in_w_up_copy, [147456 x %"struct.ap_int<8>"]* nonnull %5, [147456 x i8]* %in_w_down_copy)
  call void @apatb_ViT_Block_hw(i8* %in_copy.data, i1* %in_copy.keep, i1* %in_copy.strb, i1* %in_copy.last, i8* %out_copy.data, i1* %out_copy.keep, i1* %out_copy.strb, i1* %out_copy.last, i8* %malloccall, i8* %malloccall1, i8* %malloccall2, i8* %malloccall3, i8* %malloccall4, i8* %malloccall5)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %in, i8* %in_copy.data, i1* %in_copy.keep, i1* %in_copy.strb, i1* %in_copy.last, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %out, i8* %out_copy.data, i1* %out_copy.keep, i1* %out_copy.strb, i1* %out_copy.last, [36864 x %"struct.ap_int<8>"]* %0, [36864 x i8]* %in_q_copy, [36864 x %"struct.ap_int<8>"]* %1, [36864 x i8]* %in_k_copy, [36864 x %"struct.ap_int<8>"]* %2, [36864 x i8]* %in_v_copy, [36864 x %"struct.ap_int<8>"]* %3, [36864 x i8]* %in_o_copy, [147456 x %"struct.ap_int<8>"]* %4, [147456 x i8]* %in_w_up_copy, [147456 x %"struct.ap_int<8>"]* %5, [147456 x i8]* %in_w_down_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  call void @free(i8* %malloccall3)
  call void @free(i8* %malloccall4)
  call void @free(i8* %malloccall5)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias "unpacked"="0", i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias "unpacked"="2", i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, [36864 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="4", [36864 x i8]* noalias nocapture "unpacked"="5.0.0.0", [36864 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="6", [36864 x i8]* noalias nocapture "unpacked"="7.0.0.0", [36864 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="8", [36864 x i8]* noalias nocapture "unpacked"="9.0.0.0", [36864 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="10", [36864 x i8]* noalias nocapture "unpacked"="11.0.0.0", [147456 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="12", [147456 x i8]* noalias nocapture "unpacked"="13.0.0.0", [147456 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="14", [147456 x i8]* noalias nocapture "unpacked"="15.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.371"(i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.371"(i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0a36864struct.ap_int<8>.123.141.175.197"([36864 x i8]* %3, [36864 x %"struct.ap_int<8>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a36864struct.ap_int<8>.123.141.175.197"([36864 x i8]* %5, [36864 x %"struct.ap_int<8>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a36864struct.ap_int<8>.123.141.175.197"([36864 x i8]* %7, [36864 x %"struct.ap_int<8>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0a36864struct.ap_int<8>.123.141.175.197"([36864 x i8]* %9, [36864 x %"struct.ap_int<8>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a147456struct.ap_int<8>.55.59"([147456 x i8]* %11, [147456 x %"struct.ap_int<8>"]* %10)
  call fastcc void @"onebyonecpy_hls.p0a147456struct.ap_int<8>.55.59"([147456 x i8]* %13, [147456 x %"struct.ap_int<8>"]* %12)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias "unpacked"="0", i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias "unpacked"="2", i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, [36864 x %"struct.ap_int<8>"]* noalias "unpacked"="4", [36864 x i8]* noalias nocapture readonly "unpacked"="5.0.0.0", [36864 x %"struct.ap_int<8>"]* noalias "unpacked"="6", [36864 x i8]* noalias nocapture readonly "unpacked"="7.0.0.0", [36864 x %"struct.ap_int<8>"]* noalias "unpacked"="8", [36864 x i8]* noalias nocapture readonly "unpacked"="9.0.0.0", [36864 x %"struct.ap_int<8>"]* noalias "unpacked"="10", [36864 x i8]* noalias nocapture readonly "unpacked"="11.0.0.0", [147456 x %"struct.ap_int<8>"]* noalias "unpacked"="12", [147456 x i8]* noalias nocapture readonly "unpacked"="13.0.0.0", [147456 x %"struct.ap_int<8>"]* noalias "unpacked"="14", [147456 x i8]* noalias nocapture readonly "unpacked"="15.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0, i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0a36864struct.ap_int<8>"([36864 x %"struct.ap_int<8>"]* %2, [36864 x i8]* %3)
  call fastcc void @"onebyonecpy_hls.p0a36864struct.ap_int<8>"([36864 x %"struct.ap_int<8>"]* %4, [36864 x i8]* %5)
  call fastcc void @"onebyonecpy_hls.p0a36864struct.ap_int<8>"([36864 x %"struct.ap_int<8>"]* %6, [36864 x i8]* %7)
  call fastcc void @"onebyonecpy_hls.p0a36864struct.ap_int<8>"([36864 x %"struct.ap_int<8>"]* %8, [36864 x i8]* %9)
  call fastcc void @"onebyonecpy_hls.p0a147456struct.ap_int<8>"([147456 x %"struct.ap_int<8>"]* %10, [147456 x i8]* %11)
  call fastcc void @"onebyonecpy_hls.p0a147456struct.ap_int<8>"([147456 x %"struct.ap_int<8>"]* %12, [147456 x i8]* %13)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a147456struct.ap_int<8>"([147456 x %"struct.ap_int<8>"]* noalias "unpacked"="0", [147456 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [147456 x %"struct.ap_int<8>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [147456 x i8], [147456 x i8]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [147456 x %"struct.ap_int<8>"], [147456 x %"struct.ap_int<8>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 147456
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a147456struct.ap_int<8>.55.59"([147456 x i8]* noalias nocapture "unpacked"="0.0.0.0", [147456 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [147456 x %"struct.ap_int<8>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [147456 x %"struct.ap_int<8>"], [147456 x %"struct.ap_int<8>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [147456 x i8], [147456 x i8]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 147456
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a36864struct.ap_int<8>"([36864 x %"struct.ap_int<8>"]* noalias "unpacked"="0", [36864 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [36864 x %"struct.ap_int<8>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [36864 x i8], [36864 x i8]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [36864 x %"struct.ap_int<8>"], [36864 x %"struct.ap_int<8>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 36864
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a36864struct.ap_int<8>.123.141.175.197"([36864 x i8]* noalias nocapture "unpacked"="0.0.0.0", [36864 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [36864 x %"struct.ap_int<8>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [36864 x %"struct.ap_int<8>"], [36864 x %"struct.ap_int<8>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [36864 x i8], [36864 x i8]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 36864
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.367"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull align 512 %0, i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.367"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %2 = alloca i8
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = call i1 @fpga_fifo_not_empty_1(i8* %_V_data_V)
  br i1 %6, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %2, i8* %_V_data_V)
  %7 = load volatile i8, i8* %2
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_int<8>"* %8 to i8*
  store i8 %7, i8* %9
  %10 = bitcast i1* %5 to i8*
  %11 = bitcast i1* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %10, i8* %11)
  %12 = bitcast i1* %5 to i8*
  %13 = load i8, i8* %12
  %14 = trunc i8 %13 to i1
  %15 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %16 = bitcast %"struct.ap_uint<1>"* %15 to i1*
  store i1 %14, i1* %16
  %17 = bitcast i1* %4 to i8*
  %18 = bitcast i1* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %17, i8* %18)
  %19 = bitcast i1* %4 to i8*
  %20 = load i8, i8* %19
  %21 = trunc i8 %20 to i1
  %22 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %23 = bitcast %"struct.ap_uint<1>"* %22 to i1*
  store i1 %21, i1* %23
  %24 = bitcast i1* %3 to i8*
  %25 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i1* %3 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  %29 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %30 = bitcast %"struct.ap_uint<1>"* %29 to i1*
  store i1 %28, i1* %30
  %31 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1 to i8*
  %32 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_7(i8* %31, i8* %32)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.371"(i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.374"(i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.374"(i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_7(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_7(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_int<8>"* %8 to i8*
  call void @fpga_fifo_push_1(i8* %9, i8* %_V_data_V)
  %10 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %11 = bitcast %"struct.ap_uint<1>"* %10 to i1*
  %12 = bitcast i1* %11 to i8*
  %13 = bitcast i1* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %12, i8* %13)
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %15 = bitcast %"struct.ap_uint<1>"* %14 to i1*
  %16 = bitcast i1* %15 to i8*
  %17 = bitcast i1* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %19 = bitcast %"struct.ap_uint<1>"* %18 to i1*
  %20 = bitcast i1* %19 to i8*
  %21 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_ViT_Block_hw(i8*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i8*, i8*, i8*, i8*, i8*, i8*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias "unpacked"="0", i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias "unpacked"="2", i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, [36864 x %"struct.ap_int<8>"]* noalias "unpacked"="4", [36864 x i8]* noalias nocapture readonly "unpacked"="5.0.0.0", [36864 x %"struct.ap_int<8>"]* noalias "unpacked"="6", [36864 x i8]* noalias nocapture readonly "unpacked"="7.0.0.0", [36864 x %"struct.ap_int<8>"]* noalias "unpacked"="8", [36864 x i8]* noalias nocapture readonly "unpacked"="9.0.0.0", [36864 x %"struct.ap_int<8>"]* noalias "unpacked"="10", [36864 x i8]* noalias nocapture readonly "unpacked"="11.0.0.0", [147456 x %"struct.ap_int<8>"]* noalias "unpacked"="12", [147456 x i8]* noalias nocapture readonly "unpacked"="13.0.0.0", [147456 x %"struct.ap_int<8>"]* noalias "unpacked"="14", [147456 x i8]* noalias nocapture readonly "unpacked"="15.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0, i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_last_V4)
  ret void
}

define void @ViT_Block_hw_stub_wrapper(i8*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i8*, i8*, i8*, i8*, i8*, i8*) #6 {
entry:
  %14 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %15 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %malloccall = tail call i8* @malloc(i64 36864)
  %16 = bitcast i8* %malloccall to [36864 x %"struct.ap_int<8>"]*
  %malloccall1 = tail call i8* @malloc(i64 36864)
  %17 = bitcast i8* %malloccall1 to [36864 x %"struct.ap_int<8>"]*
  %malloccall2 = tail call i8* @malloc(i64 36864)
  %18 = bitcast i8* %malloccall2 to [36864 x %"struct.ap_int<8>"]*
  %malloccall3 = tail call i8* @malloc(i64 36864)
  %19 = bitcast i8* %malloccall3 to [36864 x %"struct.ap_int<8>"]*
  %malloccall4 = tail call i8* @malloc(i64 147456)
  %20 = bitcast i8* %malloccall4 to [147456 x %"struct.ap_int<8>"]*
  %malloccall5 = tail call i8* @malloc(i64 147456)
  %21 = bitcast i8* %malloccall5 to [147456 x %"struct.ap_int<8>"]*
  %22 = bitcast i8* %8 to [36864 x i8]*
  %23 = bitcast i8* %9 to [36864 x i8]*
  %24 = bitcast i8* %10 to [36864 x i8]*
  %25 = bitcast i8* %11 to [36864 x i8]*
  %26 = bitcast i8* %12 to [147456 x i8]*
  %27 = bitcast i8* %13 to [147456 x i8]*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %14, i8* %0, i1* %1, i1* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %15, i8* %4, i1* %5, i1* %6, i1* %7, [36864 x %"struct.ap_int<8>"]* %16, [36864 x i8]* %22, [36864 x %"struct.ap_int<8>"]* %17, [36864 x i8]* %23, [36864 x %"struct.ap_int<8>"]* %18, [36864 x i8]* %24, [36864 x %"struct.ap_int<8>"]* %19, [36864 x i8]* %25, [147456 x %"struct.ap_int<8>"]* %20, [147456 x i8]* %26, [147456 x %"struct.ap_int<8>"]* %21, [147456 x i8]* %27)
  %28 = bitcast [36864 x %"struct.ap_int<8>"]* %16 to %"struct.ap_int<8>"*
  %29 = bitcast [36864 x %"struct.ap_int<8>"]* %17 to %"struct.ap_int<8>"*
  %30 = bitcast [36864 x %"struct.ap_int<8>"]* %18 to %"struct.ap_int<8>"*
  %31 = bitcast [36864 x %"struct.ap_int<8>"]* %19 to %"struct.ap_int<8>"*
  %32 = bitcast [147456 x %"struct.ap_int<8>"]* %20 to %"struct.ap_int<8>"*
  %33 = bitcast [147456 x %"struct.ap_int<8>"]* %21 to %"struct.ap_int<8>"*
  call void @ViT_Block_hw_stub(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %14, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %15, %"struct.ap_int<8>"* %28, %"struct.ap_int<8>"* %29, %"struct.ap_int<8>"* %30, %"struct.ap_int<8>"* %31, %"struct.ap_int<8>"* %32, %"struct.ap_int<8>"* %33)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %14, i8* %0, i1* %1, i1* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %15, i8* %4, i1* %5, i1* %6, i1* %7, [36864 x %"struct.ap_int<8>"]* %16, [36864 x i8]* %22, [36864 x %"struct.ap_int<8>"]* %17, [36864 x i8]* %23, [36864 x %"struct.ap_int<8>"]* %18, [36864 x i8]* %24, [36864 x %"struct.ap_int<8>"]* %19, [36864 x i8]* %25, [147456 x %"struct.ap_int<8>"]* %20, [147456 x i8]* %26, [147456 x %"struct.ap_int<8>"]* %21, [147456 x i8]* %27)
  ret void
}

declare void @ViT_Block_hw_stub(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*)

declare i1 @fpga_fifo_not_empty_7(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_7(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_7(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
