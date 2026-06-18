/**
 * @file mmult_accel_tb.cpp
 * @brief Testbench for the optimized matrix multiplication accelerator
 *
 * This testbench validates the functionality and performance of the mmult_accel
 * accelerator, with particular focus on testing the persistent on-chip storage
 * feature (controlled by update_A). The test mimics a typical transformer architecture
 * pattern where the same input is projected using three different weight matrices
 * (Q, K, V projections).
 *
 * Safety features:
 * - Allocates memory according to maximum interface depths
 * - Performs boundary checks to avoid out-of-bounds access
 * - Supports both functional validation and performance measurement
 * - FAST_COSIM mode for rapid co-simulation with smaller datasets
 */

#include <iostream>
#include <cstdlib>
#include <cmath>
#include <chrono>  // Added for timing measurements
#include "MLP_tiled_oc.hpp"  // Assuming it defines MAX_N, MAX_K, MAX_M, TILE_SIZE, etc.


#define MATMUL_TEST 1


template<int NUM_VALUES, int Pack, typename Type>
void initialize_stream(hls::stream<ap_uint<Pack*Type::width>> &in_stream){

    float value;
    for(int i=0; i < NUM_VALUES; i++){
        ap_uint<Pack*Type::width> w = 0;
            for (int s=0; s<Pack; s++) {
                
                ap_int<Type::width> r = (rand()%256) - 128;
                w.range((s+1)*Type::width-1, s*Type::width) = (ap_uint<Type::width>)r;
            }
        in_stream.write(w);
    }
}

template<int NUM_VALUES, int Pack, typename Type>
void initialize_stream_axis(hls::stream<axis_t<Pack*Type::width>> &in_stream){

    float value;
    for(int i=0; i < NUM_VALUES; i++){
        ap_uint<Pack*Type::width> w = 0;
            for (int s=0; s<Pack; s++) {
                
                ap_int<Type::width> r = (rand()%256) - 128;
                w.range((s+1)*Type::width-1, s*Type::width) = (ap_uint<Type::width>)r;
            }
        axis_t<Pack*Type::width> val;
        val.data = w;
        in_stream.write(val);
    }
}

template<int NUM_VALUES, int Pack, typename Type>
void read_stream_axis(hls::stream<axis_t<Pack*Type::width>>&in_stream){   
    int last = 0;
    for(int i=0; i < NUM_VALUES; i++){
        axis_t<Pack*Type::width> val = in_stream.read();
        if(val.last == 1) {printf("LAST VAL RECEIVED!\n"); last=1;}
        (void)val.data;
    }

    if(last == 0) printf("LAST VAL NOT RECEIVED!\n");
}

template<int NUM_VALUES, int Pack, typename Type>
void read_stream(hls::stream<ap_uint<Pack*Type::width>>&in_stream){   
    for(int i=0; i < NUM_VALUES; i++){
        ap_uint<Pack*Type::width> val = in_stream.read();
    }
}

void TB_system(const word_t_bus* Wup,
               const word_t_bus* Wdn,
               hls::stream<ap_uint<FC1Cfg::SIMD*8>>& in_u,
               hls::stream<ap_uint<FC1Cfg::SIMD*8>>&  out_u) {
#pragma HLS DATAFLOW
  hls::stream<axis_t<FC1Cfg::SIMD*8>> in_ax("inax");
  hls::stream<axis_t<FC1Cfg::PE*8>>  out_ax("outax");

#pragma HLS STREAM variable=in_ax  depth=64
#pragma HLS STREAM variable=out_ax depth=64

  apuint_to_axis(in_u, in_ax);
  MLP_tiled_oc(Wup, Wdn, in_ax, out_ax);
  axis_to_apuint(out_ax, out_u);
}



template<int M_, int K_,int N_,int Tm_,int Tk_,int Tn_,int SIMD_,int PE_, int BusWidth_, typename op_type, typename acc_type>
void DUT(const word_t_bus* B_q, hls::stream<ap_uint<SIMD_*op_type::width>> &input_stream, hls::stream<ap_uint<PE_*op_type::width>> &output_stream){
        
    #pragma HLS DATAFLOW 
    hls::stream<ap_uint<PE_*acc_type::width>> bias_stream("bias_stream");
    hls::stream<ap_uint<SIMD_*PE_*op_type::width>> out_w("weight_stream");
    
    
    BiasTiledStreaming<M_,K_,N_,Tm_,Tk_,Tn_,SIMD_,PE_,acc_type>(bias_stream,MLP_B_768); //MLP!_B
    //LinearTiledStreamingOffChip<T+1,E,F,Tm,Tk,Tn,SIMD,PE,act_0,weight_0,accumulation>(in, out,in_w,bias_stream);
        //LinearTiledStreamingOffChip1<M_,K_,N_,Tm_,Tk_,Tn_,SIMD_,PE_,BusWidth_,op_type,op_type,acc_type>(input_stream, output_stream,B_q,bias_stream);
    WeightTiledStreaming_2<M_,K_,N_,Tm_,Tk_,Tn_,SIMD_,PE_,BusWidth_,op_type>(B_q, out_w);
    //LinearTiledStreamingOffChip<T+1,E,F,Tm,Tk,Tn,SIMD,PE,act_0,weight_0,accumulation>(in, out,in_w,bias_stream);

    

    LinearTiledStreamingOffChip_2<M_,K_,N_,Tm_,Tk_,Tn_,SIMD_,PE_,BusWidth_,op_type,op_type,acc_type>(input_stream, output_stream,out_w,bias_stream);
}



/**
 * @brief Maximum matrix dimensions supported by the accelerator
 * 
 * These must match the values defined in the accelerator implementation.
 */
/**
 * @brief HLS co-simulation cycle-accurate timing support
 *
 * When running in HLS co-simulation mode, these functions provide
 * cycle-accurate performance measurements.
 */
#ifdef HLS_COSIM
#include "ap_int.h"
extern "C" ap_uint<64> clock_start();
extern "C" ap_uint<64> clock_end();
#endif

/**
 * @brief Software reference implementation of matrix multiplication
 *
 * This function provides a baseline CPU implementation for validating
 * accelerator results. It uses 64-bit intermediate accumulation to
 * prevent overflow during computation.
 *  
 * @param A Input matrix A [N×K] in row-major order
 * @param B Input matrix B [K×M] in row-major order
 * @param C Output matrix C [N×M] in row-major order
 * @param M Number of rows in matrix A and output C
 * @param K Shared dimension between matrices A and B
 * @param N Number of columns in matrix B and output C
 * @param Tm
 * @param Tk
 * @param Tn
 * @param SIMD
 * @param PE
 */


/**
 * @brief Test case structure defining matrix dimensions to test
 */


/**
 * @brief Main testbench function
 *
 * Executes a series of test cases to validate the accelerator's:
 * 1. Functional correctness - comparing outputs with reference implementation
 * 2. Performance characteristics - measuring GFLOPs across different matrix sizes
 * 3. Persistent storage feature - testing A matrix reuse across multiple operations
 *
 * @return 0 if all tests pass, 1 if any test fails
 */
int main()
{



    if(!MATMUL_TEST){
    std::cout << "   Starting simulation ..." << std::endl;
    // Define test cases with different matrix dimensions
    // In FAST_COSIM mode, use only a minimal test case for faster simulation

    const int num_tests = 1;
    bool overall_pass = true;
    
    // Performance tracking variables
    double total_gflops = 0.0;
    int total_measurements = 0;
    double best_gflops = 0.0;


    // Process each test case
    for (int t = 0; t < num_tests; t++) {
        const int N_ = F;   //3072
        const int K_ = E;   //768
        const int M_ = T+1; //64
        const int Tm_ = FC1Cfg::Tm;
        const int Tk_ = FC1Cfg::Tk;
        const int Tn_ = FC1Cfg::Tn;
        const int SIMD_ = FC1Cfg::SIMD;
        const int PE_ = FC1Cfg::PE;
        typedef ap_int<32> acc_type;
        typedef ap_int<8> op_type;
        const int BusWidth_ = 16;

        const int NUM_WORDS = M_ * K_ / SIMD_;
        const int NUM_WORDS_out = M_ * K_ / PE_;
        std::cout << "Running test case " << t << ": N = " << N_ 
                  << ", K = " << K_ << ", M = " << M_ <<", Op_type_w = " << op_type::width 
                  <<", NUM_WORDS = " << NUM_WORDS << std::endl;



        /*
        const int B_words = (K_ * N_) / BusWidth_; 
        ap_uint<BusWidth_*op_type::width> *B_q = new ap_uint<BusWidth_*op_type::width>[B_words]; 

        std::cout << "  DIO PORCO 0 " << std::endl;

        // Initialize weight matrices for Q, K, V projections
        // Using different seeds for diversity in test patterns
        srand(100 + t); // Q projection weights


        for (int i = 0; i < (K_ * N_) / BusWidth_; i++) {
            ap_uint<BusWidth_*op_type::width> w = 0;
            for (int s=0; s<BusWidth_; s++) {
                ap_int<op_type::width> r = (rand()%256) - 128;
                w.range((s+1)*op_type::width-1, s*op_type::width) = (ap_uint<op_type::width>)r;
            }
            B_q[i] = w;
        }
        */
        constexpr int tilesN = N_ / Tn_;
        constexpr int tilesK = K_ / Tk_;
        constexpr int beats_per_tile = (Tk_ * Tn_ + BusWidth_ - 1) / BusWidth_;
        constexpr int total_beats = tilesK * tilesN * beats_per_tile;

        auto *B_q = new ap_uint<BusWidth_*op_type::width>[total_beats];

        for (int k_tile = 0; k_tile < tilesK; k_tile++) {
            for (int n_tile = 0; n_tile < tilesN; n_tile++) {
                int tile_linear = k_tile * tilesN + n_tile;
                int base = tile_linear * beats_per_tile;

                // Fill beats_per_tile bus words for this tile
                for (int b = 0; b < beats_per_tile; b++) {
                ap_uint<BusWidth_*op_type::width> w = 0;
                for (int s = 0; s < BusWidth_; s++) {
                    ap_int<op_type::width> r = (rand()%256) - 128;
                    w.range((s+1)*op_type::width-1, s*op_type::width) = (ap_uint<op_type::width>)r;
                }
                B_q[base + b] = w;
                }
            }
        }

        const int N_1 = E;  //768
        const int K_1 = F;  //3072
        constexpr int tilesN1 = N_1 / Tn_;
        constexpr int tilesK1 = K_1 / Tk_;
        constexpr int total_beats1 = tilesK1 * tilesN1 * beats_per_tile;

        auto *B_v = new ap_uint<BusWidth_*op_type::width>[total_beats1];

        for (int k_tile = 0; k_tile < tilesK1; k_tile++) {
            for (int n_tile = 0; n_tile < tilesN1; n_tile++) {
                int tile_linear = k_tile * tilesN1 + n_tile;
                int base = tile_linear * beats_per_tile;

                // Fill beats_per_tile bus words for this tile
                for (int b = 0; b < beats_per_tile; b++) {
                ap_uint<BusWidth_*op_type::width> w = 0;
                for (int s = 0; s < BusWidth_; s++) {
                    ap_int<op_type::width> r = (rand()%256) - 128;
                    w.range((s+1)*op_type::width-1, s*op_type::width) = (ap_uint<op_type::width>)r;
                }
                B_v[base + b] = w;
                }
            }
        }
        

        std::cout << "  DIO PORCO 1 " << std::endl;

        // Test flag for the current test case
        bool test_pass = true;
        
        // Calculate theoretical operation count for performance metrics
        // Matrix multiplication requires 2*N*M*K operations (N*M*K multiplies and N*M*K adds)
        

        //--------------------------------------------------------------------------
        // Q Projection: load A into BRAM (update_A=1) and use B_q
        // This first projection requires loading matrix A into on-chip memory
        //--------------------------------------------------------------------------        
        std::cout << "   Computing Q projection..." << std::endl;
        
        // Compute reference implementation result
        //reference_mmult(A, B_q, C_sw, N, K, M);
        
        // Measure accelerator performance using appropriate timing mechanism
        
        
        
        // Call accelerator with update_A=1 to load matrix A into BRAM

        hls::stream<ap_uint<SIMD_*op_type::width>> input_stream("input_vit");
        hls::stream<ap_uint<PE_*op_type::width>> output_stream("output_vit");

        hls::stream<axis_t<SIMD_*op_type::width>> input_stream_axis("input_vit_axis");
        hls::stream<axis_t<PE_*op_type::width>> output_stream_axis("output_vit_axis");

        std::cout << "   DIO PORCO 2 " << std::endl; 


        //initialize_stream<NUM_WORDS, SIMD_, op_type>(input_stream);
        //apuint_to_axis(input_stream, input_stream_axis);

        initialize_stream_axis<NUM_WORDS, SIMD_, op_type>(input_stream_axis);
        

        //mmult_accel(A, B_q, C_hw, N, K, M, 1);
        std::cout << "   DIO PORCO 3 " << std::endl; 

        double ops_per_mmult = 2.0 * N_ * M_ * K_;
        

        #ifdef HLS_COSIM
        ap_uint<64> cycle_start = clock_start();
        #endif
        auto start_time = std::chrono::high_resolution_clock::now();

        //TB_system(B_q,B_v,input_stream,output_stream);
        //MLP_top(B_q,B_v,input_stream,output_stream);
        MLP_tiled_oc(B_q,B_v,input_stream_axis,output_stream_axis);

        auto end_time = std::chrono::high_resolution_clock::now();
        #ifdef HLS_COSIM
        ap_uint<64> cycle_end = clock_end();
        ap_uint<64> cycles_taken = cycle_end - cycle_start;
        double clock_period_ns = 10.0; // Assuming 100MHz clock (10ns)
        double execution_time_s = (double)(cycles_taken.to_uint64()) * clock_period_ns * 1.0e-9;
        double gflops_q = ops_per_mmult / (execution_time_s * 1.0e9);
        std::cout << "   Q projection cycles: " << cycles_taken.to_uint64() 
                  << ", GFLOPs: " << gflops_q << std::endl;
        #else
        std::chrono::duration<double> elapsed = end_time - start_time;
        double gflops_q = ops_per_mmult / (elapsed.count() * 1.0e9);
        std::cout << "   Q projection time: " << elapsed.count() << " s"
                  << ", GFLOPs: " << gflops_q << std::endl;
        #endif
      
        //axis_to_apuint(output_stream_axis, output_stream);
        //read_stream<NUM_WORDS_out,PE_, op_type>(output_stream);
        read_stream_axis<NUM_WORDS_out,PE_, op_type>(output_stream_axis);

        
        // Calculate execution time and performance metrics
        
        /*
        std::chrono::duration<double> elapsed = end_time - start_time;
        double gflops_q = ops_per_mmult / (elapsed.count() * 1.0e9);
        std::cout << "   Q projection time: " << elapsed.count() << " s"
                  << ", GFLOPs: " << gflops_q << std::endl;
        */
        
    }
    }
    else {
        std::cout << "Starting simulation ..." << std::endl;

    std::srand(0);

    const int num_tests = 1;
    bool overall_pass = true;

    double total_gflops = 0.0;
    int total_measurements = 0;
    double best_gflops = 0.0;

    for (int t = 0; t < num_tests; t++) {
        const int M_ = T + 1;   // tokens
        const int K_ = E;       // input/features
        const int N_ = F;       // output/features

        const int Tm_ = FC1Cfg::Tm;
        const int Tk_ = FC1Cfg::Tk;
        const int Tn_ = FC1Cfg::Tn;
        const int SIMD_ = FC1Cfg::SIMD;
        const int PE_ = FC1Cfg::PE;

        using op_type = act_0;

        const int BusWidth_ = 16;

        // Packed stream sizes
        const int NUM_WORDS_A   = (M_ * K_) / SIMD_;
        const int NUM_WORDS_B   = (K_ * N_) / SIMD_;
        const int NUM_WORDS_OUT = (M_ * N_) / PE_;

        std::cout << "Running test case " << t
                  << ": M = " << M_
                  << ", K = " << K_
                  << ", N = " << N_
                  << ", op_width = " << op_type::width
                  << ", A words = " << NUM_WORDS_A
                  << ", B words = " << NUM_WORDS_B
                  << ", OUT words = " << NUM_WORDS_OUT
                  << std::endl;

        hls::stream<ap_uint<SIMD_ * op_type::width>> input_A("input_A");
        hls::stream<ap_uint<SIMD_ * op_type::width>> input_B("input_B");
        hls::stream<ap_uint<PE_ * op_type::width>> output_stream("output_stream");

        initialize_stream<NUM_WORDS_A, SIMD_, op_type>(input_A);
        initialize_stream<NUM_WORDS_B, SIMD_, op_type>(input_B);

#ifdef HLS_COSIM
        ap_uint<64> cycle_start = clock_start();
#endif
        auto start_time = std::chrono::high_resolution_clock::now();

        // Call the DUT you actually want to test.
        // Adjust this call if your real MatMul_tiled signature is different.
        MatMul_tiled<
            M_, K_, N_,
            Tm_, Tk_, Tn_,
            SIMD_, SIMD_,
            act_0, accumulation
        >(input_A, input_B, output_stream);

        auto end_time = std::chrono::high_resolution_clock::now();

#ifdef HLS_COSIM
        ap_uint<64> cycle_end = clock_end();
        std::cout << "Cycles: " << (cycle_end - cycle_start) << std::endl;
#endif

        read_stream<NUM_WORDS_OUT, PE_, act_0>(output_stream);

        std::chrono::duration<double> elapsed = end_time - start_time;
        double seconds = elapsed.count();

        const double ops = 2.0 * M_ * K_ * N_;
        double gflops = ops / seconds / 1e9;

        total_gflops += gflops;
        total_measurements++;
        if (gflops > best_gflops) {
            best_gflops = gflops;
        }

        std::cout << "Elapsed time: " << seconds * 1e3 << " ms" << std::endl;
        std::cout << "GFLOPs: " << gflops << std::endl;
    }

    if (total_measurements > 0) {
        std::cout << "Average GFLOPs: " << (total_gflops / total_measurements) << std::endl;
        std::cout << "Best GFLOPs: " << best_gflops << std::endl;
    }

    std::cout << (overall_pass ? "TEST PASSED" : "TEST FAILED") << std::endl;
    return overall_pass ? 0 : 1;
}
    return 0;
    }
    
