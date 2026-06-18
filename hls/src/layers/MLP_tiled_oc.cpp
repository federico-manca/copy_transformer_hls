#include "MLP_tiled_oc.hpp"
#include "parameters/vit_params.h"


void Relu_tiled_oc(hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &in, hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out) {
    ReLuTiled<T+1,F, FC1Cfg::Tm, FC1Cfg::PE,act_0>(in, out);
}




void FC1_tiled_oc_2( const word_t_bus* in_w, hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &in, hls::stream<ap_uint<FC2Cfg::PE*act_0::width>> &out) {
    //printf("--------------MLP1---------------\n");
    //hls::stream<ap_uint<8*16*weight_0::width>> w_stream;
    //hls::stream<ap_uint<FC1Cfg::PE*accumulation::width>> bias_stream("b_stream1");
    #pragma HLS DATAFLOW
    hls::stream<ap_uint<FC1Cfg::PE*FC1Cfg::SIMD*weight_0::width>> out_w("out_w1");

    //#pragma HLS STREAM variable=bias_stream depth=1024
    #pragma HLS STREAM variable=out_w depth=64

    static constexpr int SIMD = FC1Cfg::SIMD;
    static constexpr int PE   = FC1Cfg::PE;
    static constexpr int Tm   = FC1Cfg::Tm;
    static constexpr int Tk   = FC1Cfg::Tk;
    static constexpr int Tn   = FC1Cfg::Tn;
    static constexpr int BusWidth = word_t_bus::width / weight_0::width;

    WeightTiledStreaming_3<T+1,E,F,Tm,Tk,Tn,SIMD,PE,BusWidth,weight_0>(in_w, out_w);
    //BiasTiledStreaming<T+1,E,F,Tm,Tk,Tn,SIMD,PE,accumulation>(bias_stream,MLP_B_3072); //MLP!_B
    //LinearTiledStreamingOffChip<T+1,E,F,Tm,Tk,Tn,SIMD,PE,act_0,weight_0,accumulation>(in, out,in_w,bias_stream);
    //LinearTiledStreamingOffChip_2<T+1,E,F,Tm,Tk,Tn,SIMD,PE,BusWidth,act_0,weight_0,accumulation>(in, out,out_w,bias_stream);
    //LinearTiledStreamingOffChip_3<T+1,E,F,Tm,Tk,Tn,SIMD,PE,BusWidth,act_0,weight_0,accumulation>(in, out,out_w,MLP_B_3072);
    //LinearTiledStreamingOffChip_4<T+1,E,F,Tm,Tk,Tn,SIMD,PE,BusWidth,act_0,weight_0,accumulation>(in, out,out_w,MLP_B_3072);
    Linear_Layer<T + 1, E, F, Tm, Tk, Tn, SIMD, PE, BusWidth, MULT_fc1, 16, 0, act_0, weight_0, accumulation>(in, out, out_w, bias_1_0);


}

void FC2_tiled_oc_2( const word_t_bus* in_w, hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in, hls::stream<ap_uint<FC2Cfg::PE*act_0::width>> &out) {
    //printf("--------------MLP1---------------\n");
    //hls::stream<ap_uint<8*16*weight_0::width>> w_stream;
    //hls::stream<ap_uint<FC2Cfg::PE*accumulation::width>> bias_stream("b_stream2");
    #pragma HLS DATAFLOW
    hls::stream<ap_uint<FC2Cfg::PE*FC2Cfg::SIMD*weight_0::width>> out_w("out_w2");

    //#pragma HLS STREAM variable=bias_stream depth=1024
    #pragma HLS STREAM variable=out_w depth=64


	
    static constexpr int SIMD = FC2Cfg::SIMD;
    static constexpr int PE   = FC2Cfg::PE;
    static constexpr int Tm   = FC2Cfg::Tm;
    static constexpr int Tk   = FC2Cfg::Tk;
    static constexpr int Tn   = FC2Cfg::Tn;
    static constexpr int BusWidth = word_t_bus::width / weight_0::width;

    WeightTiledStreaming_3<T+1,F,E,Tm,Tk,Tn,SIMD,PE,BusWidth,weight_0>(in_w, out_w);
    //BiasTiledStreaming<T+1,F,E,Tm,Tk,Tn,SIMD,PE,accumulation>(bias_stream,MLP_B_768); //MLP!_B
    //LinearTiledStreamingOffChip<T+1,E,F,Tm,Tk,Tn,SIMD,PE,act_0,weight_0,accumulation>(in, out,in_w,bias_stream);
    //LinearTiledStreamingOffChip_2<T+1,F,E,Tm,Tk,Tn,SIMD,PE,BusWidth,act_0,weight_0,accumulation>(in, out,out_w,bias_stream);
    //LinearTiledStreamingOffChip_3<T+1,F,E,Tm,Tk,Tn,SIMD,PE,BusWidth,act_0,weight_0,accumulation>(in, out,out_w,MLP_B_768);
    //LinearTiledStreamingOffChip_4<T+1,F,E,Tm,Tk,Tn,SIMD,PE,BusWidth,act_0,weight_0,accumulation>(in, out,out_w,MLP_B_768);
    Linear_Layer<T + 1, F, E, Tm, Tk, Tn, SIMD, PE, BusWidth, MULT_fc2, 16, 0, act_0, weight_0, accumulation>(in, out, out_w, bias_2_0);

}


void axis_to_apuint(hls::stream<axis_t<FC1Cfg::SIMD*act_0::width>> &in,hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &out ){
    constexpr int input_words = ((T+1)*(E))/ FC1Cfg::SIMD;
    for(int i=0; i < input_words; i++){
        #pragma HLS PIPELINE II=1
        axis_t<FC1Cfg::SIMD*act_0::width> pkt = in.read();
        pkt.last = (i == input_words - 1);
        out.write(pkt.data);
    }
}

void apuint_to_axis(hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &in, hls::stream<axis_t<FC1Cfg::PE*act_0::width>> &out ){
    constexpr int output_words = ((T+1)*E) / FC1Cfg::PE;
    for(int i=0; i < output_words; i++){
        #pragma HLS PIPELINE II=1
        axis_t<FC1Cfg::PE*act_0::width> pkt;
        ap_uint<FC1Cfg::PE*act_0::width> val = in.read();
        pkt.data = val;
        pkt.keep = -1;   // all bytes valid (safe default)
        pkt.strb = -1;
        pkt.last = (i == output_words - 1);
        out.write(pkt);
    }
}



void MLP_tiled_oc(const word_t_bus* in_w_up, const word_t_bus* in_w_down, 
                  hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> &in, 
                  hls::stream<ap_uint<FC1Cfg::PE*act_0::width>> &out) {


#pragma HLS DATAFLOW


    hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> input_stream("input_stream");
    hls::stream<ap_uint<FC1Cfg::PE*act_0::width>>   fc1("fc1");
    hls::stream<ap_uint<FC1Cfg::PE*act_0::width>>   relu("relu");
    hls::stream<ap_uint<FC1Cfg::PE*act_0::width>>   output_stream("output_stream");

    #pragma HLS STREAM variable=input_stream depth=64
    #pragma HLS STREAM variable=output_stream depth=64
    #pragma HLS STREAM variable=fc1 depth=64
    #pragma HLS STREAM variable=relu depth=64

    // All 3 stages in a single flat DATAFLOW region
    
    //We tested this by itself and it doesn't deadlock
    #if _HLS_DEBUG
        std::cout << "MLP::FC1::COMP..." << std::endl;
    #endif
    FC1_tiled_oc_2(in_w_up,       in, fc1);
    Relu_tiled_oc(fc1,            relu);
    #if _HLS_DEBUG
        std::cout << "MLP::FC2::COMP..." << std::endl;
    #endif
    FC2_tiled_oc_2(in_w_down,     relu,          out);

}

void MLP_tiled_oc_ip(const word_t_bus* in_w_up, const word_t_bus* in_w_down, 
                  hls::stream<axis_t<FC1Cfg::SIMD*act_0::width>> &in, 
                  hls::stream<axis_t<FC1Cfg::PE*act_0::width>> &out) {

#pragma HLS INTERFACE axis port=in
#pragma HLS INTERFACE axis port=out
#pragma HLS INTERFACE m_axi port=in_w_up   offset=slave bundle=gmem0 max_read_burst_length=64 num_read_outstanding=16 depth=147456
#pragma HLS INTERFACE s_axilite port=in_w_up    bundle=control
#pragma HLS INTERFACE m_axi port=in_w_down  offset=slave bundle=gmem1 max_read_burst_length=64 num_read_outstanding=16 depth=147456
#pragma HLS INTERFACE s_axilite port=in_w_down  bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS DATAFLOW


    hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> input_stream("input_stream");
    hls::stream<ap_uint<FC1Cfg::PE*act_0::width>>   fc1("fc1");
    hls::stream<ap_uint<FC1Cfg::PE*act_0::width>>   relu("relu");
    hls::stream<ap_uint<FC1Cfg::PE*act_0::width>>   output_stream("output_stream");

    #pragma HLS STREAM variable=input_stream depth=64
    #pragma HLS STREAM variable=output_stream depth=64
    #pragma HLS STREAM variable=fc1 depth=64
    #pragma HLS STREAM variable=relu depth=64

    // All 5 stages in a single flat DATAFLOW region
    axis_to_apuint(in,            input_stream);

    //We tested this by itself and it doesn't deadlock

    FC1_tiled_oc_2(in_w_up,       input_stream, fc1);
    Relu_tiled_oc(fc1,            relu);
    
    FC2_tiled_oc_2(in_w_down,     relu,          output_stream);
    

    //
    apuint_to_axis(output_stream, out);
}




