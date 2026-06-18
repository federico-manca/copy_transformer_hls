#include "model/ViT_Block.hpp"

#define HLS_DEBUG_ true


// ------------------------------------------------------------
// Duplicate one packed stream into two packed streams
// ------------------------------------------------------------
template<typename ActTypeT, int M_T, int N_T, int PE_T>
void duplicate_stream(
    hls::stream<ap_uint<ActTypeT::width * PE_T>> &in,
    hls::stream<ap_uint<ActTypeT::width * PE_T>> &out_0,
    hls::stream<ap_uint<ActTypeT::width * PE_T>> &out_1
) {
    static_assert((M_T * N_T) % PE_T == 0,
                  "M*N must be divisible by PE");

    const int NUM_PACKETS = (M_T * N_T) / PE_T;

    for (int i = 0; i < NUM_PACKETS; i++) {
#pragma HLS PIPELINE II=1
        ap_uint<ActTypeT::width * PE_T> val = in.read();

        out_0.write(val);
        out_1.write(val);
    }
}


// ------------------------------------------------------------
// Duplicate one packed stream into three packed streams
// ------------------------------------------------------------
template<typename ActTypeT, int M_T, int N_T, int PE_T>
void triplicate_stream(
    hls::stream<ap_uint<ActTypeT::width * PE_T>> &in,
    hls::stream<ap_uint<ActTypeT::width * PE_T>> &out_0,
    hls::stream<ap_uint<ActTypeT::width * PE_T>> &out_1,
    hls::stream<ap_uint<ActTypeT::width * PE_T>> &out_2
) {
    static_assert((M_T * N_T) % PE_T == 0,
                  "M*N must be divisible by PE");

    const int NUM_PACKETS = (M_T * N_T) / PE_T;

    for (int i = 0; i < NUM_PACKETS; i++) {
#pragma HLS PIPELINE II=1
        ap_uint<ActTypeT::width * PE_T> val = in.read();

        out_0.write(val);
        out_1.write(val);
        out_2.write(val);
    }
}


// ------------------------------------------------------------
// First normalization layer
// ------------------------------------------------------------
void BatchNorm_tiled_0(
    hls::stream<ap_uint<FC1Cfg::PE * act_0::width>> &in,
    hls::stream<ap_uint<FC1Cfg::PE * act_0::width>> &out
) {
    /*
    hls::stream<ap_uint<FC1Cfg::PE * accumulation::width>> mean_stream("bn0_mean_stream");
    hls::stream<ap_uint<FC1Cfg::PE * accumulation::width>> std_stream("bn0_std_stream");
    hls::stream<ap_uint<FC1Cfg::PE * accumulation::width>> weight_stream("bn0_weight_stream");
    hls::stream<ap_uint<FC1Cfg::PE * accumulation::width>> bias_stream("bn0_bias_stream");


#pragma HLS STREAM variable=mean_stream   depth=4
#pragma HLS STREAM variable=std_stream    depth=4
#pragma HLS STREAM variable=weight_stream depth=4
#pragma HLS STREAM variable=bias_stream   depth=4
*/


#pragma HLS DATAFLOW

    /*
     * Replace mean_1 with the correct parameter arrays if you have:
     * mean_0, std_0, weight_0, bias_0.
     *
     * I kept mean_1 everywhere because that is what your original code used.
     */

     /*
    ParameterPacker<T + 1, E, FC1Cfg::PE, accumulation>(mean_stream,   mean_0);
    ParameterPacker<T + 1, E, FC1Cfg::PE, accumulation>(std_stream,    mean_0);
    ParameterPacker<T + 1, E, FC1Cfg::PE, accumulation>(weight_stream, mean_0);
    ParameterPacker<T + 1, E, FC1Cfg::PE, accumulation>(bias_stream,   mean_0);
    BATCHNORM_tiled<T + 1, E, FC1Cfg::PE, act_0, act_0, accumulation>(
        in,
        out,
        mean_stream,
        std_stream,
        weight_stream,
        bias_stream
    );
    */

    BATCHNORM_tiled_quantized<
    T + 1,
    E,
    FC1Cfg::PE,
    BN0_SHIFT,
    act_0,
    act_0
    >(
    in,
    out,
    bn0_mul,
    bn0_add
    );
}


// ------------------------------------------------------------
// Second normalization layer
// ------------------------------------------------------------
void BatchNorm_tiled_1(
    hls::stream<ap_uint<FC1Cfg::PE * act_0::width>> &in,
    hls::stream<ap_uint<FC1Cfg::PE * act_0::width>> &out
) {
    /*
    hls::stream<ap_uint<FC1Cfg::PE * accumulation::width>> mean_stream("bn1_mean_stream");
    hls::stream<ap_uint<FC1Cfg::PE * accumulation::width>> std_stream("bn1_std_stream");
    hls::stream<ap_uint<FC1Cfg::PE * accumulation::width>> weight_stream("bn1_weight_stream");
    hls::stream<ap_uint<FC1Cfg::PE * accumulation::width>> bias_stream("bn1_bias_stream");

#pragma HLS STREAM variable=mean_stream   depth=4
#pragma HLS STREAM variable=std_stream    depth=4
#pragma HLS STREAM variable=weight_stream depth=4
#pragma HLS STREAM variable=bias_stream   depth=4

#pragma HLS DATAFLOW

    
     * Replace mean_1 with the correct parameter arrays if available:
     * mean_2, std_2, weight_2, bias_2, etc.
     
    ParameterPacker<T + 1, E, FC1Cfg::PE, accumulation>(mean_stream,   mean_0);
    ParameterPacker<T + 1, E, FC1Cfg::PE, accumulation>(std_stream,    mean_0);
    ParameterPacker<T + 1, E, FC1Cfg::PE, accumulation>(weight_stream, mean_0);
    ParameterPacker<T + 1, E, FC1Cfg::PE, accumulation>(bias_stream,   mean_0);

    BATCHNORM_tiled<T + 1, E, FC1Cfg::PE, act_0, act_0, accumulation>(
        in,
        out,
        mean_stream,
        std_stream,
        weight_stream,
        bias_stream
    );
    */

    BATCHNORM_tiled_quantized<
    T + 1,
    E,
    FC1Cfg::PE,
    BN1_SHIFT,
    act_0,
    act_0
    >(
    in,
    out,
    bn1_mul,
    bn1_add
    );
}


// ------------------------------------------------------------
// ViT Block
// ------------------------------------------------------------
void ViT_Block_Core(
    hls::stream<ap_uint<act_0::width * FC1Cfg::SIMD>> &in,
    hls::stream<ap_uint<act_0::width * FC1Cfg::PE>> &out,

    const word_t_bus *in_q,
    const word_t_bus *in_k,
    const word_t_bus *in_v,
    const word_t_bus *in_o,

    const word_t_bus *in_w_up,
    const word_t_bus *in_w_down
) {
#if _HLS_DEBUG
    std::cout << "Inside ViT Core..." << std::endl;
#endif

    constexpr int M = T + 1;
    constexpr int N = E;
    constexpr int PE = FC1Cfg::PE;
    constexpr int NUM_PACKETS = (M * N) / PE;

    // --------------------------------------------------------
    // Streams for first residual branch and MHA branch
    // --------------------------------------------------------
    hls::stream<ap_uint<act_0::width * PE>> res("res");
    hls::stream<ap_uint<act_0::width * PE>> res_rq("res_rq");

    hls::stream<ap_uint<act_0::width * PE>> x1("x1");
    hls::stream<ap_uint<act_0::width * PE>> norm_out("norm_out");

    hls::stream<ap_uint<act_0::width * PE>> Q_in("Q_in");
    hls::stream<ap_uint<act_0::width * PE>> K_in("K_in");
    hls::stream<ap_uint<act_0::width * PE>> V_in("V_in");

    hls::stream<ap_uint<act_0::width * PE>> out_mha("out_mha");
    hls::stream<ap_uint<act_0::width * PE>> out_mha_q("out_mha_q");
    hls::stream<ap_uint<act_0::width * PE>> out_res_0("out_res_0");

    // --------------------------------------------------------
    // Streams for second residual branch and MLP branch
    // --------------------------------------------------------
    hls::stream<ap_uint<act_0::width * PE>> res_1("res_1");
    hls::stream<ap_uint<act_0::width * PE>> res_1_rq("res_1_rq");

    hls::stream<ap_uint<act_0::width * PE>> x2("x2");
    hls::stream<ap_uint<act_0::width * PE>> norm_out_1("norm_out_1");

    hls::stream<ap_uint<act_0::width * PE>> mlp_out("mlp_out");

#pragma HLS STREAM variable=res       depth=3072
#pragma HLS STREAM variable=res_rq    depth=3072
#pragma HLS STREAM variable=res_1     depth=3072
#pragma HLS STREAM variable=res_1_rq  depth=3072

#pragma HLS STREAM variable=Q_in      depth=3072
#pragma HLS STREAM variable=K_in      depth=3072
#pragma HLS STREAM variable=V_in      depth=3072

#pragma HLS DATAFLOW

    // --------------------------------------------------------
    // First block:
    //
    //        input, scale = BN_SCALE
    //       /                    \
    //    res                      norm -> Q/K/V -> MHA
    //     |                                      |
    //  requant                                  |
    // BN_SCALE -> BN1_SCALE                     |
    //     |                                      |
    //     +---------------- residual add <-------+
    //
    // out_res_0 scale = BN1_SCALE
    // --------------------------------------------------------

#if _HLS_DEBUG
    std::cout << "First Duplication..." << std::endl;
#endif

    duplicate_stream<act_0, M, N, PE>(
        in,
        res,
        x1
    );

#if _HLS_DEBUG
    std::cout << "First BatchNorm..." << std::endl;
#endif

    /*
     * Expected scale behavior:
     *
     * x1       : BN_SCALE
     * norm_out : BN0_OUT_SCALE
     *
     * BatchNorm_tiled_0 must implement:
     *     dequant with BN_SCALE
     *     batchnorm affine
     *     quantize to BN0_OUT_SCALE
     *
     * In integer HLS this should be done directly with fixed-point arithmetic.
     */
    BatchNorm_tiled_0(
        x1,
        norm_out
    );

#if _HLS_DEBUG
    std::cout << "First Triplicate..." << std::endl;
#endif

    triplicate_stream<act_0, M, N, PE>(
        norm_out,
        Q_in,
        K_in,
        V_in
    );

#if _HLS_DEBUG
    std::cout << "MHA..." << std::endl;
#endif

    /*
     * Expected scale behavior inside MultiHeadAttention_tiled:
     *
     * Q_in/K_in/V_in : BN0_OUT_SCALE
     *
     * q_proj output  : q_out_scale    using MULT_q
     * k_proj output  : k_out_scale    using MULT_k
     * v_proj output  : v_out_scale    using MULT_vproj
     *
     * QK output      : SCALE_x        using MULT_a
     * softmax output : SCALE_x1
     * AV output      : out_proj input using MULT_v
     * out projection : BN1_SCALE      using MULT_h
     *
     * Therefore out_mha must be in BN1_SCALE domain.
     */
    MultiHeadAttention_tiled(
        in_q,
        in_k,
        in_v,
        in_o,
        Q_in,
        K_in,
        V_in,
        out_mha
    );

#if _HLS_DEBUG
    std::cout << "Requant first residual branch..." << std::endl;
#endif

    /*
     * Residual skip branch:
     *
     * res    : BN_SCALE
     * res_rq : BN1_SCALE
     *
     * RATIO / 2^RATIO_SHIFT ~= BN_SCALE / BN1_SCALE
     */
    requant<
        act_0,
        act_0,
        M,
        N,
        RATIO,
        RATIO_SHIFT,
        PE
    >(
        res,
        res_rq
    );

    

#if _HLS_DEBUG
    std::cout << "First Residual..." << std::endl;
#endif

    /*
     * Both operands must now be in BN1_SCALE domain:
     *
     * out_mha : BN1_SCALE
     * res_rq  : BN1_SCALE
     *
     * out_res_0 remains BN1_SCALE.
     */
    ResidualAddRequantSameScale<
        T + 1,
        E,
        FC1Cfg::PE,
        OUT_RES_0,
        16,
        0,
        act_0,
        ap_int<16>
    >(
        out_mha,
        res_rq,
        out_res_0
    );

    // --------------------------------------------------------
    // Second block:
    //
    //      out_res_0, scale = BN1_SCALE
    //       /                         \
    //    res_1                         norm -> MLP
    //      |                                  |
    //   requant                              |
    // BN1_SCALE -> RES2_SCALE                |
    //      |                                  |
    //      +------------- residual add <------+
    //
    // out scale = RES2_SCALE
    // --------------------------------------------------------

#if _HLS_DEBUG
    std::cout << "Second Duplication..." << std::endl;
#endif

    duplicate_stream<act_0, M, N, PE>(
        out_res_0,
        res_1,
        x2
    );

#if _HLS_DEBUG
    std::cout << "Second BatchNorm..." << std::endl;
#endif

    /*
     * Expected scale behavior:
     *
     * x2         : BN1_SCALE
     * norm_out_1 : MLP_SCALE
     *
     * BatchNorm_tiled_1 must implement:
     *     dequant with BN1_SCALE
     *     batchnorm affine
     *     quantize to MLP_SCALE
     */
    BatchNorm_tiled_1(
        x2,
        norm_out_1
    );

#if _HLS_DEBUG
    std::cout << "MLP..." << std::endl;
#endif

    /*
     * Expected scale behavior inside MLP_tiled_oc:
     *
     * norm_out_1 : MLP_SCALE
     *
     * fc1 output : fc2 input scale using MULT_fc1
     * fc2 output : RES2_SCALE      using MULT_fc2
     *
     * Therefore mlp_out must be in RES2_SCALE domain.
     */
    MLP_tiled_oc(
        in_w_up,
        in_w_down,
        norm_out_1,
        mlp_out
    );

#if _HLS_DEBUG
    std::cout << "Requant second residual branch..." << std::endl;
#endif

    /*
     * Residual skip branch:
     *
     * res_1    : BN1_SCALE
     * res_1_rq : RES2_SCALE
     *
     * RATIO1 / 2^RATIO1_SHIFT ~= BN1_SCALE / RES2_SCALE
     */
    requant<
        act_0,
        act_0,
        M,
        N,
        RATIO1,
        RATIO1_SHIFT,
        PE
    >(
        res_1,
        res_1_rq
    );

#if _HLS_DEBUG
    std::cout << "Last Residual..." << std::endl;
#endif

    /*
     * Both operands must now be in RES2_SCALE domain:
     *
     * mlp_out  : RES2_SCALE
     * res_1_rq : RES2_SCALE
     *
     * out is in RES2_SCALE domain.
     */
    ResidualAddRequantSameScale<
        T + 1,
        E,
        FC1Cfg::PE,
        OUT_RES_1,
        16,
        0,
        act_0,
        ap_int<16>
    >(
        mlp_out,
        res_1_rq,
        out
    );

}





void ViT_Block(
    hls::stream<axis_t<act_0::width * FC1Cfg::SIMD>> &in,
    hls::stream<axis_t<act_0::width * FC1Cfg::PE>> &out,

    const word_t_bus *in_q,
    const word_t_bus *in_k,
    const word_t_bus *in_v,
    const word_t_bus *in_o,

    const word_t_bus *in_w_up,
    const word_t_bus *in_w_down
) {

    #pragma HLS INTERFACE axis port=in
    #pragma HLS INTERFACE axis port=out

    #pragma HLS INTERFACE m_axi port=in_w_up   offset=slave bundle=gmem0 max_read_burst_length=64 num_read_outstanding=16 depth=VIT_W_UP_DEPTH
    #pragma HLS INTERFACE s_axilite port=in_w_up    bundle=control
    #pragma HLS INTERFACE m_axi port=in_w_down  offset=slave bundle=gmem1 max_read_burst_length=64 num_read_outstanding=16 depth=VIT_W_UP_DEPTH
    #pragma HLS INTERFACE s_axilite port=in_w_down  bundle=control

    #pragma HLS INTERFACE m_axi port=in_q   offset=slave bundle=Q max_read_burst_length=64 num_read_outstanding=16 depth=VIT_LIN_DEPTH
    #pragma HLS INTERFACE s_axilite port=in_q    bundle=control

    #pragma HLS INTERFACE m_axi port=in_k  offset=slave bundle=K max_read_burst_length=64 num_read_outstanding=16 depth=VIT_LIN_DEPTH
    #pragma HLS INTERFACE s_axilite port=in_k  bundle=control

    #pragma HLS INTERFACE m_axi port=in_v  offset=slave bundle=V max_read_burst_length=64 num_read_outstanding=16 depth=VIT_LIN_DEPTH
    #pragma HLS INTERFACE s_axilite port=in_v  bundle=control

    #pragma HLS INTERFACE m_axi port=in_o  offset=slave bundle=OUT_M max_read_burst_length=64 num_read_outstanding=16 depth=VIT_LIN_DEPTH
    #pragma HLS INTERFACE s_axilite port=in_o  bundle=control

    #pragma HLS INTERFACE s_axilite port=return bundle=control

    #pragma HLS DATAFLOW

    hls::stream<ap_uint<FC1Cfg::SIMD*act_0::width>> input_stream("input_stream");
    hls::stream<ap_uint<FC1Cfg::PE*act_0::width>>   output_stream("output_stream");


    axis_to_apuint(in,            input_stream);

    ViT_Block_Core(input_stream, output_stream, in_q, in_k, in_v,in_o, in_w_up, in_w_down);

    apuint_to_axis(output_stream, out);

    
}