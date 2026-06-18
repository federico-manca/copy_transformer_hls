/* The MultiHeadAttention layer is the dedicated module to
 * perform the Attention-mechanism which characterizes the
 * Transformers networks. It is composed of three Linear
 * layers (Q,K,V): the first two (Q,K) feed a Matmul+Scale+Softmax
 * block, which then feeds a Matmul layer, together with
 * the output of the remaining Linear layer (V).
 */

//The weights now are being passed from the memory
#include "MultiHeadAttention_tiled.hpp"
#include "MLP_tiled_oc.hpp"
#include "MM_tiled.hpp"
#include "linear.h"
#include "types.h"
#include "parameters/vit_params.h"


static void Q_linear_tiled(
    const word_t_bus* in_w,
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &in,
    hls::stream<ap_uint<FC2Cfg::PE   * act_0::width>> &out)
{
#pragma HLS DATAFLOW

    hls::stream<ap_uint<FC2Cfg::PE * FC2Cfg::SIMD * weight_0::width>> out_w("q_out_w");
#pragma HLS STREAM variable=out_w depth=64

    static constexpr int SIMD     = FC2Cfg::SIMD;
    static constexpr int PE       = FC2Cfg::PE;
    static constexpr int Tm       = FC2Cfg::Tm;
    static constexpr int Tk       = FC2Cfg::Tk;
    static constexpr int Tn       = FC2Cfg::Tn;
    static constexpr int BusWidth = word_t_bus::width / weight_0::width;

    #if _HLS_DEBUG
        std::cout << "MHA: Q Proj: Weight read ..." << std::endl;
    #endif

    WeightTiledStreaming_3<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, weight_0>(in_w, out_w);

    #if _HLS_DEBUG
        std::cout << "MHA: Q Proj: Computation ..." << std::endl;
    #endif

    Linear_Layer<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, MULT_q, SHIFT_q, ZP_OUT_q, act_0, weight_0, accumulation>(in, out, out_w, bias_q_0);

    //LinearTiledStreamingOffChip_4<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, act_0, weight_0, accumulation>(in, out, out_w, MLP_B_768);
}

static void K_linear_tiled(
    const word_t_bus* in_w,
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &in,
    hls::stream<ap_uint<FC2Cfg::PE   * act_0::width>> &out)
{
#pragma HLS DATAFLOW

    hls::stream<ap_uint<FC2Cfg::PE * FC2Cfg::SIMD * weight_0::width>> out_w("k_out_w");
#pragma HLS STREAM variable=out_w depth=16

    static constexpr int SIMD     = FC2Cfg::SIMD;
    static constexpr int PE       = FC2Cfg::PE;
    static constexpr int Tm       = FC2Cfg::Tm;
    static constexpr int Tk       = FC2Cfg::Tk;
    static constexpr int Tn       = FC2Cfg::Tn;
    static constexpr int BusWidth = word_t_bus::width / weight_0::width;

    #if _HLS_DEBUG
        std::cout << "MHA: K Proj: Weight read ..." << std::endl;
    #endif

    WeightTiledStreaming_3<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, weight_0>(in_w, out_w);

    #if _HLS_DEBUG
        std::cout << "MHA: K Proj: Computation ..." << std::endl;
    #endif

    Linear_Layer<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, MULT_k, SHIFT_k, ZP_OUT_k, act_0, weight_0, accumulation>(in, out, out_w, bias_k_0);


    //LinearTiledStreamingOffChip_4<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, act_0, weight_0, accumulation>(in, out, out_w, MLP_B_768);
}

static void V_linear_tiled(
    const word_t_bus* in_w,
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &in,
    hls::stream<ap_uint<FC2Cfg::PE   * act_0::width>> &out)
{
#pragma HLS DATAFLOW

    hls::stream<ap_uint<FC2Cfg::PE * FC2Cfg::SIMD * weight_0::width>> out_w("v_out_w");
#pragma HLS STREAM variable=out_w depth=64

    static constexpr int SIMD     = FC2Cfg::SIMD;
    static constexpr int PE       = FC2Cfg::PE;
    static constexpr int Tm       = FC2Cfg::Tm;
    static constexpr int Tk       = FC2Cfg::Tk;
    static constexpr int Tn       = FC2Cfg::Tn;
    static constexpr int BusWidth = word_t_bus::width / weight_0::width;

    #if _HLS_DEBUG
        std::cout << "MHA: V Proj: Weight read ..." << std::endl;
    #endif

    WeightTiledStreaming_3<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, weight_0>(in_w, out_w);

    #if _HLS_DEBUG
        std::cout << "MHA: V Proj: Computation ..." << std::endl;
    #endif

    Linear_Layer<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, MULT_vproj, SHIFT_vproj, ZP_OUT_vproj, act_0, weight_0, accumulation>(in, out, out_w, bias_v_0);
    //LinearTiledStreamingOffChip_4<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, act_0, weight_0, accumulation>(in, out, out_w, MLP_B_768);
}

static void Out_linear_tiled(
    const word_t_bus* in_w,
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &in,
    hls::stream<ap_uint<FC2Cfg::PE   * act_0::width>> &out)
{
#pragma HLS DATAFLOW

    hls::stream<ap_uint<FC2Cfg::PE * FC2Cfg::SIMD * weight_0::width>> out_w("o_out_w");
#pragma HLS STREAM variable=out_w depth=64

    static constexpr int SIMD     = FC2Cfg::SIMD;
    static constexpr int PE       = FC2Cfg::PE;
    static constexpr int Tm       = FC2Cfg::Tm;
    static constexpr int Tk       = FC2Cfg::Tk;
    static constexpr int Tn       = FC2Cfg::Tn;
    static constexpr int BusWidth = word_t_bus::width / weight_0::width;

    #if _HLS_DEBUG
        std::cout << "MHA: Out Proj: Weight read ..." << std::endl;
    #endif

    WeightTiledStreaming_3<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, weight_0>(in_w, out_w);

    #if _HLS_DEBUG
        std::cout << "MHA: Out Proj: Computation ..." << std::endl;
    #endif

    Linear_Layer<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, MULT_h, 16, 0, act_0, weight_0, accumulation>(in, out, out_w, bias_h_0);
    //LinearTiledStreamingOffChip_4<T + 1, E, E, Tm, Tk, Tn, SIMD, PE, BusWidth, act_0, weight_0, accumulation>(in, out, out_w, MLP_B_768);
}


static void split_heads(
    hls::stream<ap_uint<FC2Cfg::PE * act_0::width>> &in,
    hls::stream<ap_uint<FC2Cfg::PE * act_0::width>> out[H])
{
#pragma HLS INLINE off

    #if _HLS_DEBUG
        int count = 0;
    #endif

    for (int t = 0; t < T + 1; t++) {
        for (int h = 0; h < H; h++) {
            for (int i = 0; i < I / FC2Cfg::PE; i++) {
#pragma HLS PIPELINE II=1
                out[h].write(in.read());
                #if _HLS_DEBUG
                    count++;
                #endif
            }
        }
    }
    #if _HLS_DEBUG
        std::cout << "MHA: Split Heads --> written values per head = " << count << "\n";
    #endif
}

static void merge_heads(
    hls::stream<ap_uint<FC1Cfg::PE * act_0::width>> in[H],
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &out)
{
#pragma HLS INLINE off

    for (int t = 0; t < T + 1; t++) {
        for (int h = 0; h < H; h++) {
            for (int i = 0; i <  I / FC2Cfg::PE ; i++) {
#pragma HLS PIPELINE II=1
                out.write(in[h].read());
            }
        }
    }
}

void SOFTMAX_tile(hls::stream<ap_uint<FC2Cfg::PE * act_0::width>> &input,
    hls::stream<ap_uint<FC2Cfg::PE * act_0::width>> &output){

    static constexpr int SIMD     = FC2Cfg::SIMD;
    static constexpr int PE       = FC2Cfg::PE;
    static constexpr int Tm       = FC2Cfg::Tm;
    static constexpr int Tk       = FC2Cfg::Tk;
    static constexpr int Tn       = FC2Cfg::Tn;
    static constexpr int BusWidth = word_t_bus::width / weight_0::width;


    SoftmaxTiledStreaming<T+1, T+1, Tm, Tm, PE, act_0, accumulation, 64>(input,output);

}

void MultiHeadAttention_tiled(
    const word_t_bus* in_q,
    const word_t_bus* in_k,
    const word_t_bus* in_v,
    const word_t_bus* in_o,
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &Q_in,
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &K_in,
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> &V_in,
    hls::stream<ap_uint<FC2Cfg::PE   * act_0::width>> &output)
{


#pragma HLS DATAFLOW

    hls::stream<ap_uint<FC2Cfg::PE * act_0::width>> q_lin("q_lin");
    hls::stream<ap_uint<FC2Cfg::PE * act_0::width>> k_lin("k_lin");
    hls::stream<ap_uint<FC2Cfg::PE * act_0::width>> v_lin("v_lin");
    hls::stream<ap_uint<FC1Cfg::SIMD * act_0::width>> out_linear("out_linear");

    hls::stream<ap_uint<FC2Cfg::PE * act_0::width>> Q_1[H];
    hls::stream<ap_uint<FC2Cfg::PE * act_0::width>> K_1[H];
    hls::stream<ap_uint<FC2Cfg::PE * act_0::width>> V_1[H];
    hls::stream<ap_uint<FC1Cfg::PE   * act_0::width>> A[H];
    hls::stream<ap_uint<FC1Cfg::PE   * act_0::width>> A_s[H];
    hls::stream<ap_uint<FC1Cfg::PE   * act_0::width>> A_sx[H];
    hls::stream<ap_uint<FC1Cfg::PE   * act_0::width>> head_out[H];

//#pragma HLS STREAM variable=q_lin depth=150
//#pragma HLS STREAM variable=k_lin depth=150
//#pragma HLS STREAM variable=v_lin depth=150
//#pragma HLS STREAM variable=out_linear depth=150

//#pragma HLS STREAM variable=Q_1 depth=150
//#pragma HLS STREAM variable=K_1 depth=150
//#pragma HLS STREAM variable=V_1 depth=150
//#pragma HLS STREAM variable=A depth=150
//#pragma HLS STREAM variable=head_out depth=2100

    #if _HLS_DEBUG
        std::cout << "MHA: Linear Projections ..." << std::endl;
    #endif

    Q_linear_tiled(in_q, Q_in, q_lin);
    K_linear_tiled(in_k, K_in, k_lin);
    V_linear_tiled(in_v, V_in, v_lin);

    #if _HLS_DEBUG
        std::cout << "MHA: Head Splits ..." << std::endl;
    #endif

    split_heads(q_lin, Q_1);
    split_heads(k_lin, K_1);
    split_heads(v_lin, V_1);

    #if _HLS_DEBUG
        std::cout << "MHA: Head Operations ..." << std::endl;
    #endif

head_split:
    for (int h = 0; h < H; ++h) {
#pragma HLS UNROLL
        
        #if _HLS_DEBUG
            std::cout << "MHA: Head operations: HEAD = " << h << std::endl;
            std::cout << "MHA: Head operations: MM QK^t ..." << std::endl;
        #endif
        MM_tiled(Q_1[h], K_1[h], A[h]);
        //SCALE MISSING
        #if _HLS_DEBUG
            std::cout << "MHA: Head operations: Softmax ..." << std::endl;
        #endif
        SOFTMAX_tile(A[h], A_s[h]);
    
        requant<act_0, act_0, T+1, T+1, MULT_soft, 16, FC2Cfg::PE> (A_s[h], A_sx[h]);

        #if _HLS_DEBUG
            std::cout << "MHA: Head operations: MM AV ..." << std::endl;
        #endif


        //MM_tiled(A_s[h], V_1[h], head_out[h]);
        MM1_tiled(A_sx[h], V_1[h], head_out[h]);
        /*

        MatMul_tiled_Softmax<T+1, I, T+1, FC1Cfg::Tm, FC1Cfg::Tk, 
                        FC1Cfg::Tn, FC1Cfg::SIMD, FC1Cfg::PE, 
                        act_0, accumulation>(
                            Q_1[h], K_1[h], V_1[h], head_out[h]
                        );
        */
    }

    #if _HLS_DEBUG
        printf("MHA: Heads merging ...\n");
    #endif

    merge_heads(head_out, out_linear);

    Out_linear_tiled(in_o, out_linear, output);
}



