/**
 * @file vit_block_tb.cpp
 * @brief Testbench for the ViT block accelerator.
 */

#include <iostream>
#include <cstdlib>
#include <chrono>
#include "vit_params.h"
#include "model/ViT_Block.hpp"


// ------------------------------------------------------------
// Initialize AXI-stream input with random packed activations
// ------------------------------------------------------------
template<int NUM_WORDS, int PACK, typename Type>
void initialize_stream_axis(
    hls::stream<axis_t<PACK * Type::width>> &in_stream
) {
    for (int i = 0; i < NUM_WORDS; i++) {
        ap_uint<PACK * Type::width> packed = 0;

        for (int p = 0; p < PACK; p++) {
            ap_int<Type::width> r = (std::rand() % 256) - 128;

            packed.range((p + 1) * Type::width - 1,
                          p      * Type::width) =
                (ap_uint<Type::width>)r;
        }

        axis_t<PACK * Type::width> val;
        val.data = packed;
        val.last = (i == NUM_WORDS - 1);

        in_stream.write(val);
    }
}
//------------------------------------------------------------
// Function to eventually zero arrays to enable faster co-sim
//------------------------------------------------------------
template<typename BusType>
void zero_buffer(BusType *buf, int n)
{
    for (int i = 0; i < n; i++) {
        buf[i] = 0;
    }
}
// ------------------------------------------------------------
// Initialiaze AXI-Stream from File
// ------------------------------------------------------------
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>

template<int NUM_WORDS, int PACK, typename Type>
void initialize_stream_axis_file(
    hls::stream<axis_t<PACK * Type::width>> &in_stream,
    const char *filename
) {

    std::ifstream file(filename);

    if (!file.is_open()) {
        throw std::runtime_error(std::string("Cannot open input file: ") + filename);
    }

    for (int i = 0; i < NUM_WORDS; i++) {
        ap_uint<PACK * Type::width> packed = 0;

        for (int p = 0; p < PACK; p++) {
            long long tmp;

            if (!(file >> tmp)) {
                throw std::runtime_error(
                    "Not enough values in input file. Expected NUM_WORDS * PACK values."
                );
            }

            Type q = (Type)tmp;

            packed.range(
                (p + 1) * Type::width - 1,
                p       * Type::width
            ) = (ap_uint<Type::width>)q;
        }

        axis_t<PACK * Type::width> val;
        val.data = packed;
        val.last = (i == NUM_WORDS - 1);

        in_stream.write(val);
    }


}
// ------------------------------------------------------------
// Read AXI-stream output and check TLAST
// ------------------------------------------------------------
template<int NUM_WORDS, int PACK, typename Type>
void read_stream_axis(
    hls::stream<axis_t<PACK * Type::width>> &out_stream
) {
    bool last_seen = false;

    for (int i = 0; i < NUM_WORDS; i++) {
        axis_t<PACK * Type::width> val = out_stream.read();

        for (int p = 0; p < PACK; p++) {
            ap_uint<Type::width> lane_bits =
                val.data.range((Type::width * (p + 1)) - 1,
                               Type::width * p);

            Type lane_signed;
            lane_signed.range(Type::width - 1, 0) = lane_bits;

            printf("%d\n", (int)lane_signed);
        }

        if (val.last) {
            last_seen = true;
            std::cout << "TLAST received at word " << i << std::endl;
        }
    }

    if (!last_seen) {
        std::cout << "WARNING: TLAST was not received." << std::endl;
    }
}


// ------------------------------------------------------------
// Compute number of tiled memory beats for a weight matrix
//
// Matrix logical shape: K x N
// Tiled as: tiles_K x tiles_N
// Each tile contains Tk*Tn scalar values
// Each bus word contains BUS_ELEMS scalar values
// ------------------------------------------------------------
template<
    int N,
    int K,
    int Tn,
    int Tk,
    int BUS_ELEMS
>
constexpr int tiled_weight_beats()
{
    return (K / Tk) * (N / Tn) * ((Tk * Tn + BUS_ELEMS - 1) / BUS_ELEMS);
}


// ------------------------------------------------------------
// Initialize tiled weight buffer
// ------------------------------------------------------------
template<
    int N,
    int K,
    int Tn,
    int Tk,
    int BUS_ELEMS,
    typename OpType,
    typename BusType
>
void initialize_tiled_weights(BusType *weights)
{
    constexpr int tiles_N = N / Tn;
    constexpr int tiles_K = K / Tk;
    constexpr int beats_per_tile = (Tk * Tn + BUS_ELEMS - 1) / BUS_ELEMS;

    for (int k_tile = 0; k_tile < tiles_K; k_tile++) {
        for (int n_tile = 0; n_tile < tiles_N; n_tile++) {
            int tile_linear = k_tile * tiles_N + n_tile;
            int base = tile_linear * beats_per_tile;

            for (int b = 0; b < beats_per_tile; b++) {
                BusType w = 0;

                for (int s = 0; s < BUS_ELEMS; s++) {
                    int elem_in_tile = b * BUS_ELEMS + s;

                    if (elem_in_tile < Tk * Tn) {
                        ap_int<OpType::width> r = (std::rand() % 256) - 128;

                        w.range((s + 1) * OpType::width - 1,
                                  s      * OpType::width) =
                            (ap_uint<OpType::width>)r;
                    }
                }

                weights[base + b] = w;
            }
        }
    }
}


// ------------------------------------------------------------
// Initialize tiled weight buffer from FILE
// ------------------------------------------------------------
template<
    int K,
    int N,
    int Tk,
    int Tn,
    int SIMD,
    int PE,
    typename OpType,
    typename BusType,
    typename SrcType
>
void initialize_tiled_weights_from_array(
    BusType *weights,
    const SrcType W[K * N]
) {
    static_assert(K % Tk == 0, "K must be divisible by Tk");
    static_assert(N % Tn == 0, "N must be divisible by Tn");
    static_assert(Tk % SIMD == 0, "Tk must be divisible by SIMD");
    static_assert(Tn % PE == 0, "Tn must be divisible by PE");

    static_assert(
        BusType::width == SIMD * PE * OpType::width,
        "This initializer assumes one AXI bus word contains exactly SIMD * PE weights"
    );

    constexpr int tiles_K = K / Tk;
    constexpr int tiles_N = N / Tn;

    constexpr int words_per_tile =
        (Tk / SIMD) * (Tn / PE);

    for (int k_tile = 0; k_tile < tiles_K; k_tile++) {
        for (int n_tile = 0; n_tile < tiles_N; n_tile++) {

            const int tile_id = k_tile * tiles_N + n_tile;
            const int base = tile_id * words_per_tile;

            int word_idx = 0;

            /*
             * This order matches your LinearTiledStreamingOffChip_4
             * consumption order:
             *
             *   n tile
             *     tn group
             *       tk group
             *         packed lanes: s, pe
             */
            for (int tn = 0; tn < Tn / PE; tn++) {
                for (int tk = 0; tk < Tk / SIMD; tk++) {

                    BusType packed = 0;

                    for (int s = 0; s < SIMD; s++) {
                        for (int pe = 0; pe < PE; pe++) {

                            const int lane = s * PE + pe;

                            const int global_k =
                                k_tile * Tk + tk * SIMD + s;

                            const int global_n =
                                n_tile * Tn + tn * PE + pe;

                            const int flat_idx =
                                global_k * N + global_n;

                            OpType w = (OpType)W[flat_idx];

                            packed.range(
                                (lane + 1) * OpType::width - 1,
                                lane       * OpType::width
                            ) = (ap_uint<OpType::width>)w;
                        }
                    }

                    weights[base + word_idx] = packed;
                    word_idx++;
                }
            }
        }
    }
}


// ------------------------------------------------------------
// Main testbench
// ------------------------------------------------------------
int main()
{
    std::cout << "Starting ViT_Block simulation..." << std::endl;

    std::srand(0);

    using op_type = act_0;
    using bus_t   = word_t_bus;

    constexpr int TOKENS = T + 1;
    constexpr int EMBED  = E;
    constexpr int HIDDEN = F;

    constexpr int Tm_   = FC1Cfg::Tm;
    constexpr int Tk_   = FC1Cfg::Tk;
    constexpr int Tn_   = FC1Cfg::Tn;
    constexpr int SIMD_ = FC1Cfg::SIMD;
    constexpr int PE_   = FC1Cfg::PE;

    /*
     * Initialization of variables
     */
    constexpr int IO_PACK = PE_;

    constexpr int BUS_ELEMS = bus_t::width / op_type::width;

    static_assert(bus_t::width % op_type::width == 0,
                  "word_t_bus width must be a multiple of op_type width");

    static_assert((TOKENS * EMBED) % IO_PACK == 0,
                  "Input/output tensor size must be divisible by IO_PACK");

    // Input/output stream word counts
    constexpr int NUM_INPUT_WORDS  = (TOKENS * EMBED) / IO_PACK;
    constexpr int NUM_OUTPUT_WORDS = (TOKENS * EMBED) / IO_PACK;

    // Q/K/V/O projection weights: E x E
    constexpr int Q_BEATS =
        tiled_weight_beats<EMBED, EMBED, Tn_, Tk_, BUS_ELEMS>();

    constexpr int K_BEATS =
        tiled_weight_beats<EMBED, EMBED, Tn_, Tk_, BUS_ELEMS>();

    constexpr int V_BEATS =
        tiled_weight_beats<EMBED, EMBED, Tn_, Tk_, BUS_ELEMS>();

    constexpr int O_BEATS =
        tiled_weight_beats<EMBED, EMBED, Tn_, Tk_, BUS_ELEMS>();

    // MLP weights:
    // up projection:   E -> F
    // down projection: F -> E
    constexpr int W_UP_BEATS =
        tiled_weight_beats<HIDDEN, EMBED, Tn_, Tk_, BUS_ELEMS>();

    constexpr int W_DOWN_BEATS =
        tiled_weight_beats<EMBED, HIDDEN, Tn_, Tk_, BUS_ELEMS>();

    std::cout << "Configuration:" << std::endl;
    std::cout << "  TOKENS       = " << TOKENS << std::endl;
    std::cout << "  EMBED        = " << EMBED << std::endl;
    std::cout << "  HIDDEN       = " << HIDDEN << std::endl;
    std::cout << "  IO_PACK      = " << IO_PACK << std::endl;
    std::cout << "  BUS_ELEMS    = " << BUS_ELEMS << std::endl;
    std::cout << "  INPUT_WORDS  = " << NUM_INPUT_WORDS << std::endl;
    std::cout << "  OUTPUT_WORDS = " << NUM_OUTPUT_WORDS << std::endl;
    std::cout << "  Q_BEATS      = " << Q_BEATS << std::endl;
    std::cout << "  K_BEATS      = " << K_BEATS << std::endl;
    std::cout << "  V_BEATS      = " << V_BEATS << std::endl;
    std::cout << "  O_BEATS      = " << O_BEATS << std::endl;
    std::cout << "  W_UP_BEATS   = " << W_UP_BEATS << std::endl;
    std::cout << "  W_DOWN_BEATS = " << W_DOWN_BEATS << std::endl;

    // Allocate external-memory-like weight buffers
    bus_t *Q_proj = new bus_t[Q_BEATS];
    bus_t *K_proj = new bus_t[K_BEATS];
    bus_t *V_proj = new bus_t[V_BEATS];
    bus_t *O_proj = new bus_t[O_BEATS];

    bus_t *W_up   = new bus_t[W_UP_BEATS];
    bus_t *W_down = new bus_t[W_DOWN_BEATS];

    std::cout << "  Weight Inizialization = " << std::endl;

    // Initialize weights
    //initialize_tiled_weights<EMBED,  EMBED,  Tn_, Tk_, BUS_ELEMS, op_type, bus_t>(Q_proj);

    #ifdef VIT_COSIM_ZERO_WEIGHTS

        std::cout << "  COSIM zero weight initialization" << std::endl;

        zero_buffer(Q_proj, Q_BEATS);
        zero_buffer(K_proj, K_BEATS);
        zero_buffer(V_proj, V_BEATS);
        zero_buffer(O_proj, O_BEATS);
        zero_buffer(W_up,   W_UP_BEATS);
        zero_buffer(W_down, W_DOWN_BEATS);

    #else

    initialize_tiled_weights_from_array<
        E, E,
        FC2Cfg::Tk,
        FC2Cfg::Tn,
        FC2Cfg::SIMD,
        FC2Cfg::PE,
        weight_0,
        word_t_bus,
        act_0
    >(
        Q_proj,
        w_q_0
    );

    initialize_tiled_weights_from_array<
        E, E,
        FC2Cfg::Tk,
        FC2Cfg::Tn,
        FC2Cfg::SIMD,
        FC2Cfg::PE,
        weight_0,
        word_t_bus,
        act_0
    >(
        K_proj,
        w_k_0
    );

    initialize_tiled_weights_from_array<
        E, E,
        FC2Cfg::Tk,
        FC2Cfg::Tn,
        FC2Cfg::SIMD,
        FC2Cfg::PE,
        weight_0,
        word_t_bus,
        act_0
    >(
        V_proj,
        w_v_0
    );

    initialize_tiled_weights_from_array<
        E, E,
        FC2Cfg::Tk,
        FC2Cfg::Tn,
        FC2Cfg::SIMD,
        FC2Cfg::PE,
        weight_0,
        word_t_bus,
        act_0
    >(
        O_proj,
        head_0
    );

    initialize_tiled_weights_from_array<
        HIDDEN, E,
        FC2Cfg::Tk,
        FC2Cfg::Tn,
        FC2Cfg::SIMD,
        FC2Cfg::PE,
        weight_0,
        word_t_bus,
        act_0
    >(
        W_up,
        w_1_0
    );

    initialize_tiled_weights_from_array<
        E, HIDDEN,
        FC2Cfg::Tk,
        FC2Cfg::Tn,
        FC2Cfg::SIMD,
        FC2Cfg::PE,
        weight_0,
        word_t_bus,
        act_0
    >(
        W_down,
        w_2_0
    );

    #endif

    //initialize_tiled_weights<EMBED,  EMBED,  Tn_, Tk_, BUS_ELEMS, op_type, bus_t>(K_proj);
    //initialize_tiled_weights<EMBED,  EMBED,  Tn_, Tk_, BUS_ELEMS, op_type, bus_t>(V_proj);
    //initialize_tiled_weights<EMBED,  EMBED,  Tn_, Tk_, BUS_ELEMS, op_type, bus_t>(O_proj);

    //initialize_tiled_weights<HIDDEN, EMBED,  Tn_, Tk_, BUS_ELEMS, op_type, bus_t>(W_up);
    //initialize_tiled_weights<EMBED,  HIDDEN, Tn_, Tk_, BUS_ELEMS, op_type, bus_t>(W_down);

    // Streams
    hls::stream<axis_t<SIMD_ * op_type::width>> input_stream_axis("input_stream_axis");
    hls::stream<axis_t<IO_PACK * op_type::width>> output_stream_axis("output_stream_axis");

    std::cout << "  Input Stream Inizialization = " << std::endl;

    //initialize_stream_axis<NUM_INPUT_WORDS, IO_PACK, op_type>(input_stream_axis);
    initialize_stream_axis_file<NUM_INPUT_WORDS, FC1Cfg::SIMD, act_0>(input_stream_axis,"/home/fede/PhD/transformer-hls/hls/tb/input.txt");

    std::cout << "Calling ViT_Block..." << std::endl;

    auto start_time = std::chrono::high_resolution_clock::now();

    ViT_Block(
        input_stream_axis,
        output_stream_axis,
        Q_proj,
        K_proj,
        V_proj,
        O_proj,
        W_up,
        W_down
    );

    auto end_time = std::chrono::high_resolution_clock::now();

    std::cout << "Reading output..." << std::endl;

    read_stream_axis<NUM_OUTPUT_WORDS, IO_PACK, op_type>(output_stream_axis);

    std::chrono::duration<double> elapsed = end_time - start_time;

    std::cout << "ViT_Block simulation completed." << std::endl;
    std::cout << "Elapsed host simulation time: "
              << elapsed.count() * 1e3
              << " ms"
              << std::endl;

    delete[] Q_proj;
    delete[] K_proj;
    delete[] V_proj;
    delete[] O_proj;
    delete[] W_up;
    delete[] W_down;

    return 0;
}