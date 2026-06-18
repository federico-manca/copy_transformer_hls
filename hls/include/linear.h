
#pragma once
#include <hls_stream.h>
#include <cassert>

//Considerare di creare un array array[heads][tokens][tokens] per generare la matrixe A=QxKt
//e poi fare la partition completa della dimensione heads
//#pragma HLS ARRAY_PARTITION variable=array complete dim=0





/*
	 *  ____________		 ___________
	 * |			|		|			|
	 * |			|		|			|
	 A |			|		|			|
     * |			|  X  B |			|
	 * |			|		|			|
	 * |____________|       |___________|
 * 		|	|	|	|			  C
 *
 *
 *
 *
 *
 *
 */






//------------------------------------//
template<
	int A,
    int B,
    int C,
    int D,
    typename ActType,
    typename CoeffType
>
void LinearTokenBatchReshape(
    hls::stream<ActType> &input,
    hls::stream<ActType> (&output)[D],
    const CoeffType W[B][C],
    const CoeffType Bias[C]
) {
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=W complete dim=2
#pragma HLS ARRAY_PARTITION variable=Bias complete dim=1

    static_assert(C % D == 0, "Embedded dimension E not divisible by H");
    const int P = C / D;

    ActType acc[A][C];
#pragma HLS ARRAY_PARTITION variable=acc complete dim=2
#pragma HLS ARRAY_PARTITION variable=output complete dim=1


    init:for (int t = 0; t < A; t++) {
        for (int o = 0; o < C; o++) {
            acc[t][o] = Bias[o];
        }
    }

    body:for (int t = 0; t < A; t++) {
        for (int e = 0; e < B; e++) {
            ActType val = input.read();
            //printf("Linear input value: %f\n", (float)val);
            for (int o = 0; o < C; o++) {
                acc[t][o] += W[e][o] * val;
            }
        }
    }

    write:for (int t = 0; t < A; t++) {
    	//printf("[");

        for (int p = 0; p < P; p++) {

            for (int h = 0; h < D; h++) {
				#pragma HLS UNROLL
                output[h].write(acc[t][h * P + p]);
                //if(h==0)
                //printf("%f,", (float)(acc[t][h * P + p]));
            }
        }
    	//printf("]\n");

    }
}


//-----------------------------------------------------//
template<
	int A,
	int B,
	int C,
	int D,
	typename ActType,
	typename CoeffType
>
void LinearTokenBatchReshapeTranspose(
    hls::stream<ActType> &input,
    hls::stream<ActType> (&output)[D],
    const CoeffType W[B][C],
    const CoeffType Bias[C]
) {
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=W complete dim=2
#pragma HLS ARRAY_PARTITION variable=Bias complete dim=1

    static_assert(C % D == 0, "Embedded dimension E not divisible by H");
    const int P = C / D;

    ActType acc[A][C];
#pragma HLS ARRAY_PARTITION variable=acc complete dim=2

    init: for (int t = 0; t < A; t++) {
        for (int o = 0; o < C; o++) {
            acc[t][o] = Bias[o];
        }
    }

    body:for (int t = 0; t < A; t++) {
            for (int e = 0; e < B; e++) {
                ActType val = input.read();
                //printf("Linear input value: %f\n", (float)val);
                for (int o = 0; o < C; o++) {
                    acc[t][o] += W[e][o] * val;
                }
            }
        }

    write: for (int p = 0; p < P; p++) {
    	//printf("[");
        for (int t = 0; t < A; t++) {
            for (int h = 0; h < D; h++) {
#pragma HLS UNROLL
                output[h].write(acc[t][h * P + p]);
                //if(h==0)
                //printf("%f ,",(float)acc[t][h * P + p]);


            }
        }
        //printf("]\n");
    }

}
//-----------------------------------------------------//

template<
	int A,
    int B,
    int C,
    int D,
    typename ActType,
    typename CoeffType
>
void MatMul(
    hls::stream<ActType> &matrix1,
    hls::stream<ActType> &matrix2,
    hls::stream<ActType> &output
) {
#pragma HLS INLINE off
	static_assert(B == D, "Input matrices dimension mismatch");  // <- FIXED with semicolon

    ActType matrix_A[A][B];
    ActType matrix_Out[A][C];
#pragma HLS ARRAY_PARTITION variable=matrix_A complete dim=1
#pragma HLS ARRAY_PARTITION variable=matrix_Out complete dim=1

    for (int a = 0; a < A; a++) {
        for (int b = 0; b < B; b++) {
            matrix_A[a][b] = matrix1.read();
        }
    }

    for (int a = 0; a < A; a++) {
        for (int c = 0; c < C; c++) {
            matrix_Out[a][c] = 0;
        }
    }

    for (int c = 0; c < C; c++) {
        for (int b = 0; b < B; b++) {
            ActType val = matrix2.read();
            for (int a = 0; a < A; a++) {
                matrix_Out[a][c] += matrix_A[a][b] * val;
            }
        }
    }

    for (int a = 0; a < A; a++) {
#pragma HLS PIPELINE II=1
        for (int c = 0; c < C; c++) {
            output.write(matrix_Out[a][c]);
        }
    }
}

//-----------------------------------------------------//

template<
    int M,                    // Output size
    int N,                    // Input size
    typename ActType,         // Activation (input/output) type
    typename CoeffType        // Weight/Bias type
>
void LinearBasic(
    hls::stream<ActType> &input,
    hls::stream<ActType> &output,
    const CoeffType W[M][N],  // Weights
    const CoeffType B[M]      // Biases
) {
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=W complete dim=2
#pragma HLS ARRAY_PARTITION variable=B complete dim=1

    ActType acc[M];
#pragma HLS ARRAY_PARTITION variable=acc complete dim=1

    init: for (int m = 0; m < M; m++) {
#pragma HLS UNROLL
        acc[m] = 0;
    }

    body: for (int n = 0; n < N; n++) {
#pragma HLS PIPELINE II=1
        ActType val = input.read();
        for (int m = 0; m < M; m++) {
#pragma HLS UNROLL
            acc[m] += W[m][n] * val;
        }
    }

    write: for (int m = 0; m < M; m++) {
        output.write(acc[m] + B[m]);
    }
}

//-----------------------------------------------------//
template<
	int A,
	int B,
	int C,
	typename ActType,
	typename CoeffType
>
void LinearTokenBatch(
    hls::stream<ActType> &input,
    hls::stream<ActType> &output,
    const CoeffType W[B][C],
    const CoeffType Bias[C]
) {
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=W complete dim=2
#pragma HLS ARRAY_PARTITION variable=Bias complete dim=1


    ActType acc[A][C];
#pragma HLS ARRAY_PARTITION variable=acc complete dim=1


    init: for (int t = 0; t < A; t++) {
        for (int o = 0; o < C; o++) {
            acc[t][o] = Bias[o];
        }
    }

    body: for (int t = 0; t < A; t++) {
        for (int e = 0; e < B; e++) {
            ActType val = input.read();
            for (int o = 0; o < C; o++) {
                acc[t][o] += W[e][o] * val;
            }
        }
    }

    write: for (int p = 0; p < A; p++) {
        for (int t = 0; t < C; t++) {
                output.write(acc[p][t]);
            }
        }

}


//------------------------------------//
//
//
// These are just ideas, will need to work on them
/////////// NOT GOOD ///////////////
template<
	int M,
	int K,
	int N,
	int Tm,
	int Tk,
	int Tn,
	int SIMD,
	int PE,
    typename ActType,
    typename CoeffType,
    typename AccType
>
void LinearTiledStreaming(
    hls::stream<ap_uint<SIMD*ActType::width>> &input,
    hls::stream<ap_uint<PE * ActType::width>> &output,
    hls::stream<ap_uint<SIMD*PE*CoeffType::width>> &W,
    hls::stream<ap_uint<PE*AccType::width>> &Bias
) {

    ActType buff_int[Tm][K];
    AccType C_tile[Tm][Tn];

    #pragma HLS ARRAY_PARTITION variable=buff_int cyclic factor=SIMD dim=2
    #pragma HLS ARRAY_PARTITION variable=C_tile cyclic factor=PE dim=2




    for(int m=0; m < M; m+=Tm){
    	//---Init Buffer------
        for(int tm=0; tm < Tm; tm++){
            for(int k=0; k < K/SIMD; k++){
                ap_uint<SIMD*ActType::width> val = input.read();
                for (int s = 0; s < SIMD; s++) {
					#pragma HLS UNROLL
                    ap_uint<ActType::width> a_bits = val.range((s+1)*ActType::width - 1, s*ActType::width);
                    buff_int[tm][k*SIMD+s] = (ActType)(a_bits);
                }
            }
        }
        //--------------------


        for(int n=0; n<N; n +=Tn){
        	//---C_tile initialization-----
			for(int tn=0; tn < Tn/PE; tn++){
				ap_uint<PE*AccType::width> bias_packed = Bias.read();
				for(int tm=0; tm < Tm; tm++){
        			for(int pe=0; pe < PE; pe++){
						#pragma HLS UNROLL
        				ap_uint<AccType::width> bias_bits = bias_packed.range((pe+1)*AccType::width - 1,pe*AccType::width);
        				C_tile[tm][pe + tn*PE] = bias_bits;
        			}

        		}
        	}
			//-----------------------------

            for(int k=0; k<K; k+=Tk){
				for(int tn=0; tn < Tn/PE; tn++){
					for(int tk=0; tk < Tk/SIMD; tk++){
						ap_uint<PE*SIMD*CoeffType::width> w_packed = W.read();
						for(int tm=0; tm < Tm; tm++){
                            for(int kk=0; kk< SIMD; kk++){
								
                                for(int pe=0; pe < PE; pe++){
                                  #pragma HLS UNROLL


                                	ap_uint<CoeffType::width> w_bits = w_packed.range((kk*PE+(pe+1))*CoeffType::width - 1,(kk*PE+pe)*CoeffType::width);
                                    CoeffType w = (CoeffType)w_bits;
                                    C_tile[tm][pe + tn*PE] += buff_int[tm][k + kk + tk*SIMD] * w;
                                }
                            }
                        }

                    }
                }


            }

            for (int tm = 0; tm < Tm; tm++) {
                for (int tn = 0; tn < Tn/PE; tn++) {

                    ap_uint<PE * ActType::width> out_word = 0;
                    
                    

                    for (int p = 0; p < PE; p++) {
						#pragma HLS UNROLL
                        // lane is AccType::width bits
                        ap_uint<AccType::width> lane = (ap_uint<AccType::width>) C_tile[tm][tn*PE + p];  // or wherever each lane lives
                        ActType out_val = (ActType) lane; // Optional: apply activation function here
                        out_word.range((p+1)*ActType::width - 1, p*ActType::width) = out_val;
                        }

                        output.write(out_word);
                }
            }
        }
    }


}
//---------------Off-Chip Weights (On-chip Bias)-------//

//--------------------------------------------------------
template<
	int M,
	int K,
	int N,
	int Tm,
	int Tk,
	int Tn,
	int SIMD,
	int PE,
    typename ActType,
    typename CoeffType,
    typename AccType
>
void LinearTiledStreamingOffChip(
    hls::stream<ap_uint<SIMD*ActType::width>> &input,
    hls::stream<ap_uint<PE * ActType::width>> &output,
    const ap_uint<SIMD*PE*CoeffType::width>* W_ddr,
    hls::stream<ap_uint<PE*AccType::width>> &Bias
) {

    ActType buff_int[Tm][K];
    AccType C_tile[Tm][Tn];
    int w_idx = 0;

    #pragma HLS ARRAY_PARTITION variable=buff_int cyclic factor=SIMD dim=2
    #pragma HLS ARRAY_PARTITION variable=C_tile complete


    main_loop:for(int m=0; m < M; m+=Tm){
    	//---Init Buffer------
        buff_init:for(int tm=0; tm < Tm; tm++){
            for(int k=0; k < K/SIMD; k++){
                ap_uint<SIMD*ActType::width> val = input.read();
                buff_init_simd: for (int s = 0; s < SIMD; s++) {
		    		#pragma HLS UNROLL
                    ap_uint<ActType::width> a_bits = val.range((s+1)*ActType::width - 1, s*ActType::width);
                    buff_int[tm][k*SIMD+s] = (ActType)(a_bits);
                }
            }
        }
        //--------------------


        for(int n=0; n<N; n +=Tn){
        	//---C_tile initialization-----
			C_tile_init: for(int tn=0; tn < Tn/PE; tn++){
				ap_uint<PE*AccType::width> bias_packed = Bias.read();
				C_tile_for_Tm: for (int tm=0; tm < Tm; tm++){
        			C_tile_for_PE: for(int pe=0; pe < PE; pe++){
					#pragma HLS UNROLL
        				ap_uint<AccType::width> bias_bits = bias_packed.range((pe+1)*AccType::width - 1,pe*AccType::width);
        				C_tile[tm][pe + tn*PE] = bias_bits;
        			}

        		}
        	}
			//-----------------------------

            MAC_compute: for(int k=0; k<K; k+=Tk){
				for(int tn=0; tn < Tn/PE; tn++){
					for(int tk=0; tk < Tk/SIMD; tk++){
						ap_uint<PE*SIMD*CoeffType::width> w_packed = W_ddr[w_idx++];
						for(int tm=0; tm < Tm; tm++){
                            for(int kk=0; kk< SIMD; kk++){

                                for(int pe=0; pe < PE; pe++){
                                  #pragma HLS UNROLL


                                	ap_uint<CoeffType::width> w_bits = w_packed.range((kk*PE+(pe+1))*CoeffType::width - 1,(kk*PE+pe)*CoeffType::width);
                                    CoeffType w = (CoeffType)w_bits;
                                    C_tile[tm][pe + tn*PE] += buff_int[tm][k + kk + tk*SIMD] * w;
                                }
                            }
                        }

                    }
                }


            }

            for (int tm = 0; tm < Tm; tm++) {
                for (int tn = 0; tn < Tn/PE; tn++) {

                    ap_uint<PE * AccType::width> out_word = 0;



                    for (int p = 0; p < PE; p++) {
			#pragma HLS UNROLL
                        // lane is AccType::width bits
                        ap_uint<AccType::width> lane = (ap_uint<AccType::width>) C_tile[tm][tn*PE + p];  // or wherever each lane lives
                        out_word.range((p+1)*AccType::width - 1, p*AccType::width) = lane;
                        }

                        output.write((ActType)out_word);
                }
            }
        }
    }


}

//-----------------------------------------------------//
template<
	int M,
	int K,
	int N,
	int Tm,
	int Tk,
	int Tn,
	int SIMD,
	int PE,
	typename CoeffType
>
void WeightTiledStreaming(
    hls::stream<ap_uint<SIMD*PE*CoeffType::width>> &output,
    const CoeffType W[K][N]
) {

	//#pragma HLS ARRAY_PARTITION variable=W cyclic factor=SIMD dim=1
	//#pragma HLS ARRAY_PARTITION variable=W cyclic factor=PE   dim=2
	
  #pragma HLS ARRAY_RESHAPE variable=W block factor=SIMD dim=1
  #pragma HLS ARRAY_RESHAPE variable=W block factor=PE   dim=2

  ap_uint<SIMD*PE*CoeffType::width> w_packed;

    for(int m=0; m < M; m+=Tm){
        for(int n=0; n<N; n +=Tn){
            for(int k=0; k<K; k+=Tk){
				for(int tn=0; tn < Tn/PE; tn++){
					for(int tk=0; tk < Tk/SIMD; tk++){
						for(int kk=0; kk< SIMD; kk++){
							//#pragma HLS UNROLL
							for(int pe=0; pe < PE; pe++){
							#pragma HLS PIPELINE

								w_packed.range((kk*PE+(pe+1))*CoeffType::width - 1,(kk*PE+pe)*CoeffType::width) = W[k + kk + tk*SIMD][n + pe + tn*PE];
							}
						}
						output.write(w_packed);

                    }
                }


            }
        }
    }
}
////////////////////////////////////////////////////////////

template<int BusWidth, typename CoeffType>
void burst_read_beats(
    const ap_uint<BusWidth*CoeffType::width>* W_ddr,
    int N_beats,
    hls::stream<ap_uint<BusWidth*CoeffType::width>> &output)
{
    #pragma HLS INLINE off
    for (int i = 0; i < N_beats; i++) {
        #pragma HLS PIPELINE II=1
        output.write(W_ddr[i]);
    }
}


template<int BusWidth, int PE, int SIMD, typename CoeffType>
void packer_to_packs(
    hls::stream<ap_uint<BusWidth*CoeffType::width>>& in_beats,
    hls::stream<ap_uint<PE*SIMD*CoeffType::width>>& out_packs,
    int N_out_words)
{
#pragma HLS INLINE off

    static const int IN_W  = BusWidth * CoeffType::width;
    static const int OUTW  = PE * SIMD * CoeffType::width;
    static const int RES_W = OUTW + IN_W;

    ap_uint<RES_W> buf = 0;
    int valid = 0;

    for (int produced = 0; produced < N_out_words; ) {
#pragma HLS PIPELINE II=1
        if (valid < OUTW) {
            ap_uint<IN_W> beat = in_beats.read();
            buf.range(valid + IN_W - 1, valid) = beat;
            valid += IN_W;
        } else {
            ap_uint<OUTW> out = buf.range(OUTW - 1, 0);
            out_packs.write(out);
            buf >>= OUTW;
            valid -= OUTW;
            produced++;
        }
    }
}
//-----------------------------------------------------//
template<int Tk, int Tn, int SIMD, int PE, int BusWidth, typename CoeffType>
void WeightTiledStreaming1(
    const ap_uint<BusWidth*CoeffType::width>* W_ddr_tile,
    hls::stream<ap_uint<PE*SIMD*CoeffType::width>> &out_packs)
{
#pragma HLS INLINE off

    hls::stream<ap_uint<BusWidth*CoeffType::width>> burst_reads("burst_reader");

    const int total_elems = Tk * Tn;
    const int N_beats = (total_elems + BusWidth - 1) / BusWidth;  // ceil
    const int N_out_words = (Tk / SIMD) * (Tn / PE);

    burst_read_beats<BusWidth, CoeffType>(W_ddr_tile, N_beats, burst_reads);
    packer_to_packs<BusWidth, PE, SIMD, CoeffType>(burst_reads, out_packs, N_out_words);
}

//-----------------------------------------------------//
//--------------------------------------------------------
template<
  int M,int K,int N,int Tm,int Tk,int Tn,int SIMD,int PE,int BusWidth,
  typename ActType, typename CoeffType, typename AccType
>
void LinearTiledStreamingOffChip1(
    hls::stream<ap_uint<SIMD*ActType::width>> &input,
    hls::stream<ap_uint<PE * ActType::width>> &output,
    const ap_uint<BusWidth*CoeffType::width>* W_ddr,
    hls::stream<ap_uint<PE*AccType::width>> &Bias
) {

    ActType buff_int[Tm][K];
    AccType C_tile[Tm][Tn];
    int w_idx = 0;

    
    hls::stream<ap_uint<PE*SIMD*CoeffType::width>> output_w("packed_w");
    //#pragma HLS STREAM variable=output_w depth=64

    #pragma HLS ARRAY_PARTITION variable=buff_int cyclic factor=SIMD dim=2
    #pragma HLS ARRAY_PARTITION variable=C_tile cyclic factor=PE dim=2
    #pragma HLS BIND_STORAGE variable=C_tile type=ram_t2p impl=bram


    main_loop:for(int m=0; m < M; m+=Tm){

    	//---Init Buffer------
        buff_init:for(int tm=0; tm < Tm; tm++){
            for(int k=0; k < K/SIMD; k++){
                ap_uint<SIMD*ActType::width> val = input.read();
                buff_init_simd: for (int s = 0; s < SIMD; s++) {
		    		#pragma HLS UNROLL
                    ap_uint<ActType::width> a_bits = val.range((s+1)*ActType::width - 1, s*ActType::width);
                    buff_int[tm][k*SIMD+s] = (ActType)(a_bits);
                }
            }
        }
        //--------------------


        for(int n=0; n<N; n +=Tn){

        	//---C_tile initialization-----
			C_tile_init: for(int tn=0; tn < Tn/PE; tn++){
				ap_uint<PE*AccType::width> bias_packed = Bias.read();
				C_tile_for_Tm: for (int tm=0; tm < Tm; tm++){
                    #pragma HLS PIPELINE II=1
        			C_tile_for_PE: for(int pe=0; pe < PE; pe++){
					    #pragma HLS UNROLL
        				ap_uint<AccType::width> bias_bits = bias_packed.range((pe+1)*AccType::width - 1,pe*AccType::width);
        				C_tile[tm][pe + tn*PE] = bias_bits;
        			}

        		}
        	}
			//-----------------------------

            MAC_compute: for(int k=0; k<K; k+=Tk){

                /*
                If N-fastest: tile_linear = k_tile * tilesN + n_tile

                If K-fastest: tile_linear = n_tile * tilesK + k_tile

                [Tile_0, Tile_1, .....]

                */

                const int tilesN = N / Tn;
                const int beats_per_tile = (Tk*Tn + BusWidth - 1) / BusWidth;

                int k_tile = k / Tk; //indicates to which tile we arrived
                int n_tile = n / Tn;

                int tile_linear = k_tile * tilesN + n_tile;

                const ap_uint<BusWidth*CoeffType::width>* W_tile_ptr =
                    W_ddr + tile_linear * beats_per_tile;

                
                    // [Tile 0][Tile 1].......
                    // [Tile N]
                

                WeightTiledStreaming1<Tk,Tn,SIMD,PE,BusWidth,CoeffType>(W_tile_ptr,output_w);


				for(int tn=0; tn < Tn/PE; tn++){
					for(int tk=0; tk < Tk/SIMD; tk++){
						ap_uint<PE*SIMD*CoeffType::width> w_packed = output_w.read();

						for(int tm=0; tm < Tm; tm++){

                            AccType acc[PE];
                            #pragma HLS ARRAY_PARTITION variable=acc complete

                            for (int pe = 0; pe < PE; pe++) {
                                #pragma HLS UNROLL
                                    acc[pe] = C_tile[tm][tn*PE + pe];
                                }

                            for(int kk=0; kk< SIMD; kk++){
                                #pragma HLS UNROLL
                                ActType a = buff_int[tm][k + tk*SIMD + kk];

                                for(int pe=0; pe < PE; pe++){
                                    #pragma HLS UNROLL

                                    int lane = kk*PE + pe; // matches your current extraction
                                    int lo = lane * CoeffType::width;
                                    int hi = (lane + 1) * CoeffType::width - 1;
                                    ap_uint<CoeffType::width> w_bits = w_packed.range(hi, lo);
                                    CoeffType w = (CoeffType)w_bits;

                                    acc[pe] += a * w;
                        
                                }
                            
                            

                            }
                            for (int pe = 0; pe < PE; pe++) {
                                #pragma HLS UNROLL
                                C_tile[tm][tn*PE + pe] = acc[pe];
                                }
                        }

                    }
                }


            }

            for (int tm = 0; tm < Tm; tm++) {
                for (int tn = 0; tn < Tn/PE; tn++) {

                    ap_uint<PE * AccType::width> out_word = 0;



                    for (int p = 0; p < PE; p++) {
			#pragma HLS UNROLL
                        // lane is AccType::width bits
                        ap_uint<AccType::width> lane = (ap_uint<AccType::width>) C_tile[tm][tn*PE + p];  // or wherever each lane lives
                        out_word.range((p+1)*AccType::width - 1, p*AccType::width) = lane;
                        }

                        output.write((ActType)out_word);
                }
            }
        }
    }


}

//-----------------------------------------------------//

template<
	int M,
	int K,
	int N,
	int Tm,
	int Tk,
	int Tn,
	int SIMD,
	int PE,
	typename AccType
>
void BiasTiledStreaming(
    hls::stream<ap_uint<PE*AccType::width>> &output,
    const AccType B[N]
) {

	#pragma HLS ARRAY_PARTITION variable=B cyclic factor=PE
	ap_uint<PE*AccType::width> bias_packed;

    for(int m=0; m < M; m+=Tm){
        for(int n=0; n<N; n +=Tn){
            for(int tn=0; tn < Tn/PE; tn++){
                for(int pe=0; pe < PE; pe++){
                    #pragma HLS UNROLL
                    bias_packed.range((pe+1)*AccType::width - 1,pe*AccType::width) = B[n + pe + tn*PE];
                }
                output.write(bias_packed);
            }
            }
        }
    }



//-----------------------------------------------------//
template<
	int T_h,
	int I_w,
	int SIMD,
	int PE,
	int Heads,
	int T_w,
    typename ActType
	>
void LinearSplitterStreaming(
    hls::stream<ActType> &input,
    hls::stream<ActType> (&output)[Heads]
) {

	  static_assert(I_w % Heads == 0, "I_w must be divisible by Heads");
	  static_assert(I_w == Heads * T_w, "I_w must equal Heads * T_w");
	  static_assert(T_h > 0 && T_w > 0, "T_h and T_w must be positive");
	  // For perfect MxM tiles to softmax with no buffering:
	  static_assert(T_h == T_w, "Set T_h == T_w (M) for square MxM tiles");

	  // Stream order: row-major; for each row, emit H contiguous chunks
	  RowLoop:
	  for (int r = 0; r < T_h; ++r) {
	    HeadLoop:
	    for (int h = 0; h < Heads; ++h) {
	      ChunkLoop:
	      for (int c = 0; c < T_w; ++c) {
	#pragma HLS PIPELINE II=1
	        ActType val = input.read();
	        output[h].write(val);
	      }
	    }
	  }
	}
//---------------------------------------------------




//------------------------------------//

//TO DO!!!!
/*
 * #ifndef HLS_DEBUG
#define HLS_DEBUG 0
#endif

#if HLS_DEBUG
  #include <cstdio>
  #define DBG_PRINTF(...) std::printf(__VA_ARGS__)
#else
  #define DBG_PRINTF(...) do {} while (0)
#endif
 *
 *
 *
 *
 *
 * for (int t = 0; t < A; t++) {
    DBG_PRINTF("[");
    for (int p = 0; p < P; p++) {
        for (int h = 0; h < D; h++) {
#pragma HLS UNROLL
            output[h].write(acc[t][h * P + p]);
            if (h == 0) DBG_PRINTF("%f,", (float)acc[t][h * P + p]);
        }
    }
    DBG_PRINTF("]\n");
}
 * */


////////////////////////////////////////////////

//-----------------------------------------------------//
template<int M, int K, int N, int Tm, int Tk, int Tn, int SIMD, int PE, int BusWidth, typename CoeffType>
void WeightTiledStreaming_2(
    const ap_uint<BusWidth*CoeffType::width>* W_ddr_tile,
    hls::stream<ap_uint<PE*SIMD*CoeffType::width>> &out_packs)
{

    hls::stream<ap_uint<BusWidth*CoeffType::width>> burst_reads("burst_reader");
    #pragma HLS STREAM variable=burst_reads depth=64

    const int total_elems = Tk * Tn;
    const int N_beats = (total_elems + BusWidth - 1) / BusWidth;  // ceil
    const int N_out_words = (Tk / SIMD) * (Tn / PE);

    const int tilesN = N / Tn;
    const int beats_per_tile = (Tk*Tn + BusWidth - 1) / BusWidth;



    for(int m=0; m < M; m+= Tm){
        for(int n=0; n < N; n+= Tn){
            for(int k=0; k < K; k+= Tk){
                int k_tile = k / Tk; //indicates to which tile we arrived
                int n_tile = n / Tn;
                int tile_linear = k_tile * tilesN + n_tile;
                const ap_uint<BusWidth*CoeffType::width>* W_tile_ptr = W_ddr_tile + tile_linear * beats_per_tile;

                burst_read_beats<BusWidth, CoeffType>(W_tile_ptr, N_beats, burst_reads);
                packer_to_packs<BusWidth, PE, SIMD, CoeffType>(burst_reads, out_packs, N_out_words);

            }
        }
    }

    
}

//-----------------------------------------------------//
//--------------------------------------------------------
template<
  int M,int K,int N,int Tm,int Tk,int Tn,int SIMD,int PE,int BusWidth,
  typename ActType, typename CoeffType, typename AccType
>
void LinearTiledStreamingOffChip_2(
    hls::stream<ap_uint<SIMD*ActType::width>> &input,
    hls::stream<ap_uint<PE * ActType::width>> &output,
    hls::stream<ap_uint<PE * SIMD * ActType::width>> &output_w,
    hls::stream<ap_uint<PE*AccType::width>> &Bias
) {

    ActType buff_int[Tm][K];
    AccType C_tile[Tm][Tn];
    int w_idx = 0;


    #pragma HLS ARRAY_PARTITION variable=buff_int cyclic factor=SIMD dim=2
    #pragma HLS ARRAY_PARTITION variable=C_tile cyclic factor=PE dim=2
    #pragma HLS BIND_STORAGE variable=C_tile type=ram_t2p impl=bram


    main_loop:for(int m=0; m < M; m+=Tm){

    	//---Init Buffer------
        buff_init:for(int tm=0; tm < Tm; tm++){
            for(int k=0; k < K/SIMD; k++){
                ap_uint<SIMD*ActType::width> val = input.read();
                buff_init_simd: for (int s = 0; s < SIMD; s++) {
		    		#pragma HLS UNROLL
                    ap_uint<ActType::width> a_bits = val.range((s+1)*ActType::width - 1, s*ActType::width);
                    buff_int[tm][k*SIMD+s] = (ActType)(a_bits);
                }
            }
        }
        //--------------------


        for(int n=0; n<N; n +=Tn){

        	//---C_tile initialization-----
			C_tile_init: for(int tn=0; tn < Tn/PE; tn++){
				ap_uint<PE*AccType::width> bias_packed = Bias.read();
				C_tile_for_Tm: for (int tm=0; tm < Tm; tm++){
        			C_tile_for_PE: for(int pe=0; pe < PE; pe++){
					    #pragma HLS UNROLL
        				ap_uint<AccType::width> bias_bits = bias_packed.range((pe+1)*AccType::width - 1,pe*AccType::width);
        				C_tile[tm][pe + tn*PE] = bias_bits;
        			}

        		}
        	}
			//-----------------------------

            MAC_compute: for(int k=0; k<K; k+=Tk){

                /*
                If N-fastest: tile_linear = k_tile * tilesN + n_tile

                If K-fastest: tile_linear = n_tile * tilesK + k_tile

                [Tile_0, Tile_1, .....]

                */

                //read Weight here


				for(int tn=0; tn < Tn/PE; tn++){
					for(int tk=0; tk < Tk/SIMD; tk++){
						ap_uint<PE*SIMD*CoeffType::width> w_packed = output_w.read();

						for(int tm=0; tm < Tm; tm++){

                            AccType acc[PE];
                            #pragma HLS ARRAY_PARTITION variable=acc complete

                            for (int pe = 0; pe < PE; pe++) {
                                #pragma HLS UNROLL
                                    acc[pe] = C_tile[tm][tn*PE + pe];
                                }

                            for(int kk=0; kk< SIMD; kk++){
                                #pragma HLS UNROLL
                                ActType a = buff_int[tm][k + tk*SIMD + kk];

                                for(int pe=0; pe < PE; pe++){
                                    #pragma HLS UNROLL

                                    int lane = kk*PE + pe; // matches your current extraction
                                    int lo = lane * CoeffType::width;
                                    int hi = (lane + 1) * CoeffType::width - 1;
                                    ap_uint<CoeffType::width> w_bits = w_packed.range(hi, lo);
                                    CoeffType w = (CoeffType)w_bits;

                                    acc[pe] += a * w;
                        
                                }
                            
                            

                            }
                            for (int pe = 0; pe < PE; pe++) {
                                #pragma HLS UNROLL
                                C_tile[tm][tn*PE + pe] = acc[pe];
                                }
                        }

                    }
                }


            }

            for (int tm = 0; tm < Tm; tm++) {
                for (int tn = 0; tn < Tn/PE; tn++) {

                    ap_uint<PE * AccType::width> out_word = 0;



                    for (int p = 0; p < PE; p++) {
			#pragma HLS UNROLL
                        // lane is AccType::width bits
                        ap_uint<AccType::width> lane = (ap_uint<AccType::width>) C_tile[tm][tn*PE + p];  // or wherever each lane lives
                        out_word.range((p+1)*AccType::width - 1, p*AccType::width) = lane;
                        }

                        output.write((ActType)out_word);
                }
            }
        }
    }


}

////////////////////////////////////////////



///////////////////////////////////
template<
  int M,int K,int N,int Tm,int Tk,int Tn,int SIMD,int PE,int BusWidth,
  typename ActType, typename CoeffType, typename AccType
>
void LinearTiledStreamingOffChip_3(
    hls::stream<ap_uint<SIMD*ActType::width>> &input,
    hls::stream<ap_uint<PE * ActType::width>> &output,
    hls::stream<ap_uint<PE * SIMD * CoeffType::width>> &output_w,
    const AccType B[N]
) {

    ActType buff_int[Tm][K];
    AccType C_tile[Tm][Tn];
    int w_idx = 0;


    #pragma HLS ARRAY_PARTITION variable=buff_int cyclic factor=SIMD dim=2
    #pragma HLS ARRAY_PARTITION variable=C_tile cyclic factor=PE dim=2
    //#pragma HLS BIND_STORAGE variable=C_tile type=ram_t2p impl=bram
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=PE
    


    main_loop:for(int m=0; m < M; m+=Tm){

    	//---Init Buffer------
        buff_init:for(int tm=0; tm < Tm; tm++){
            for(int k=0; k < K/SIMD; k++){
                ap_uint<SIMD*ActType::width> val = input.read();
                buff_init_simd: for (int s = 0; s < SIMD; s++) {
		    		#pragma HLS UNROLL
                    ap_uint<ActType::width> a_bits = val.range((s+1)*ActType::width - 1, s*ActType::width);
                    buff_int[tm][k*SIMD+s] = (ActType)(a_bits);
                }
            }
        }
        //--------------------


        for(int n=0; n<N; n +=Tn){

        	//---C_tile initialization-----
			C_tile_init: for(int tn=0; tn < Tn/PE; tn++){
				//ap_uint<PE*AccType::width> bias_packed = Bias.read();
				C_tile_for_Tm: for (int tm=0; tm < Tm; tm++){
                    #pragma HLS PIPELINE II=1
        			C_tile_for_PE: for(int pe=0; pe < PE; pe++){
					    #pragma HLS UNROLL
        				//ap_uint<AccType::width> bias_bits = bias_packed.range((pe+1)*AccType::width - 1,pe*AccType::width);
                        ap_uint<AccType::width> bias_bits = B[n + pe + tn*PE];
        				C_tile[tm][pe + tn*PE] = bias_bits;
        			}

        		}
        	}
			//-----------------------------

            MAC_compute: for(int k=0; k<K; k+=Tk){

                /*
                If N-fastest: tile_linear = k_tile * tilesN + n_tile

                If K-fastest: tile_linear = n_tile * tilesK + k_tile

                [Tile_0, Tile_1, .....]

                */

                //read Weight here

                

				for(int tn=0; tn < Tn/PE; tn++){
					for(int tk=0; tk < Tk/SIMD; tk++){
						ap_uint<PE*SIMD*CoeffType::width> w_packed = output_w.read();

						for(int tm=0; tm < Tm; tm++){
                            #pragma HLS UNROLL factor=1
                            
                            AccType acc[PE];
                            #pragma HLS ARRAY_PARTITION variable=acc complete

                            for (int pe = 0; pe < PE; pe++) {
                                #pragma HLS UNROLL
                                    acc[pe] = C_tile[tm][tn*PE + pe];
                                }

                            for(int kk=0; kk< SIMD; kk++){
                                #pragma HLS UNROLL
                                ActType a = buff_int[tm][k + tk*SIMD + kk];

                                for(int pe=0; pe < PE; pe++){
                                    #pragma HLS UNROLL

                                    int lane = kk*PE + pe; // matches your current extraction
                                    int lo = lane * CoeffType::width;
                                    int hi = (lane + 1) * CoeffType::width - 1;
                                    ap_uint<CoeffType::width> w_bits = w_packed.range(hi, lo);
                                    CoeffType w = (CoeffType)w_bits;

                                    acc[pe] += a * w;
                        
                                    }
                        
                                }

                            for (int pe = 0; pe < PE; pe++) {
                                #pragma HLS UNROLL
                                C_tile[tm][tn*PE + pe] = acc[pe];
                                }
                        }

                    }
                }


            }

            for (int tm = 0; tm < Tm; tm++) {
                for (int tn = 0; tn < Tn/PE; tn++) {

                    ap_uint<PE * ActType::width> out_word = 0;



                    for (int p = 0; p < PE; p++) {
			#pragma HLS UNROLL
                        // lane is AccType::width bits
                        ap_uint<ActType::width> lane = (ap_uint<ActType::width>) (ActType)C_tile[tm][tn*PE + p];  // or wherever each lane lives
                        out_word.range((p+1)*ActType::width - 1, p*ActType::width) = lane;
                        }

                        output.write(out_word);
                }
            }
        }
    }


}



/////////////////////////////////////
//@WORK IN PROGRESS//@WORK IN PROGRESS//@WORK IN PROGRESS//@WORK IN PROGRESS
///////////////////////////////////
template<int M, int K, int N, int Tm, int Tk, int Tn, int SIMD, int PE, int BusWidth, typename CoeffType>
void WeightTiledStreaming_3(
    const ap_uint<BusWidth*CoeffType::width>* W_ddr_tile,
    hls::stream<ap_uint<PE*SIMD*CoeffType::width>> &out_packs)
{

    hls::stream<ap_uint<BusWidth*CoeffType::width>> burst_reads("burst_reader");
    #pragma HLS STREAM variable=burst_reads depth=64

    const int total_elems = Tk * Tn;
    const int N_beats = (total_elems + BusWidth - 1) / BusWidth;  // ceil
    const int N_out_words = (Tk / SIMD) * (Tn / PE);

    const int tilesN = N / Tn;
    const int beats_per_tile = (Tk*Tn + BusWidth - 1) / BusWidth;



    for(int m=0; m < M; m+= Tm){
        for(int k=0; k < K; k+= Tk){
            for(int n=0; n < N; n+= Tn){
                int k_tile = k / Tk; //indicates to which tile we arrived
                int n_tile = n / Tn;
                int tile_linear = k_tile * tilesN + n_tile;
                const ap_uint<BusWidth*CoeffType::width>* W_tile_ptr = W_ddr_tile + tile_linear * beats_per_tile;

                burst_read_beats<BusWidth, CoeffType>(W_tile_ptr, N_beats, burst_reads);
                packer_to_packs<BusWidth, PE, SIMD, CoeffType>(burst_reads, out_packs, N_out_words);

            }
        }
    }

    
}

///////////////////////////////////

template<
  int M,int K,int N,int Tm,int Tk,int Tn,int SIMD,int PE,int BusWidth,
  typename ActType, typename CoeffType, typename AccType
>
void LinearTiledStreamingOffChip_4(
    hls::stream<ap_uint<SIMD*ActType::width>> &input,
    hls::stream<ap_uint<PE * ActType::width>> &output,
    hls::stream<ap_uint<PE * SIMD * CoeffType::width>> &output_w,
    const AccType B[N]
) {

    static_assert(M > 0 && K > 0 && N > 0, "M, K, N must be positive");
    static_assert(Tm > 0 && Tk > 0 && Tn > 0, "Tm, Tk, Tn must be positive");
    static_assert(SIMD > 0 && PE > 0, "SIMD and PE must be positive");

    static_assert(M % Tm == 0, "M must be divisible by Tm");
    static_assert(K % Tk == 0, "K must be divisible by Tk");
    static_assert(N % Tn == 0, "N must be divisible by Tn");

    static_assert(Tk % SIMD == 0, "Tk must be divisible by SIMD");
    static_assert(Tn % PE == 0, "Tn must be divisible by PE");

    ActType buff_int[Tm][Tk];
    AccType C_tile[Tm][N]; //8x384 array x 8

    #pragma HLS ARRAY_PARTITION variable=buff_int cyclic factor=SIMD dim=2
    #pragma HLS ARRAY_PARTITION variable=C_tile cyclic factor=PE dim=2
    #pragma HLS BIND_STORAGE variable=C_tile type=ram_t2p impl=bram
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=PE
    
    #if _HLS_DEBUG
        int inp_reads = 0;
        int w_reads = 0;
    #endif

    for(int m=0; m < M; m+=Tm){

    	//---Init Buffer------
        for(int n=0; n<N; n +=Tn){
            for(int tm=0; tm < Tm; tm++){           
                //---C_tile initialization-----
                for(int tn=0; tn < Tn/PE; tn++){
                    for(int pe=0; pe < PE; pe++){
                            #pragma HLS UNROLL
                            //ap_uint<AccType::width> bias_bits = bias_packed.range((pe+1)*AccType::width - 1,pe*AccType::width);
                            C_tile[tm][n + pe + tn*PE] = B[n + pe + tn*PE];
                        }
                    }
                }
            }
        //--------------------
        for(int k=0; k<K; k+=Tk){
            //Init Input Buffer Tm x Tk
            for(int tm=0; tm < Tm; tm++){     
                for(int tk=0; tk < Tk/SIMD; tk++){
                    
                    ap_uint<SIMD*ActType::width> val = input.read();
                    
                    buff_init_simd: for (int s = 0; s < SIMD; s++) {
                        #pragma HLS UNROLL
                        ap_uint<ActType::width> a_bits = val.range((s+1)*ActType::width - 1, s*ActType::width);
                        buff_int[tm][s + tk*SIMD] = (ActType)(a_bits);
                        }
                    }
                }

            for(int n=0; n<N; n +=Tn){
                for(int tn=0; tn < Tn/PE; tn++){
                    for(int tk=0; tk < Tk/SIMD; tk++){
                        
                        ap_uint<PE*SIMD*CoeffType::width> w_packed = output_w.read(); 
                        

                        for(int tm=0; tm < Tm; tm++){
                            #pragma HLS UNROLL factor=1
                            
                            AccType acc[PE];
                            #pragma HLS ARRAY_PARTITION variable=acc complete

                            for (int pe = 0; pe < PE; pe++) {
                                #pragma HLS UNROLL
                                    acc[pe] = C_tile[tm][n + pe + tn*PE];
                                }

                            for(int s=0; s< SIMD; s++){
                                #pragma HLS UNROLL
                                ActType a = buff_int[tm][tk*SIMD + s];

                                for(int pe=0; pe < PE; pe++){
                                    #pragma HLS UNROLL

                                    int lane = s*PE + pe; // matches your current extraction
                                    int lo = lane * CoeffType::width;
                                    int hi = (lane + 1) * CoeffType::width - 1;
                                    ap_uint<CoeffType::width> w_bits = w_packed.range(hi, lo);
                                    CoeffType w = (CoeffType)w_bits;

                                    acc[pe] += a * w;
                        
                                    }
                        
                                }

                            for (int pe = 0; pe < PE; pe++) {
                                #pragma HLS UNROLL
                                C_tile[tm][n + pe + tn*PE] = acc[pe];
                                }
                            }
                        }
                    }
                }
            }

            //Here I have the full Tm x N array ready to be written
            for(int n=0; n < N; n+=Tn){
                for (int tm = 0; tm < Tm; tm++) {
                    for (int tn = 0; tn < Tn/PE; tn++) {
                        ap_uint<PE * ActType::width> out_word = 0;
                        //Packing result with factor PE
                        for (int pe = 0; pe < PE; pe++) {
                            #pragma HLS UNROLL
                            // lane is AccType::width bits
                            ap_uint<ActType::width> lane = (ap_uint<ActType::width>) (ActType)C_tile[tm][n + tn*PE + pe];  // or wherever each lane lives
                            out_word.range((pe+1)*ActType::width - 1, pe*ActType::width) = lane;
                            }
                        output.write(out_word);
                        }
                    }
                }
        }
    }

///////////////////////////////////


/// @brief ///////////////////////
/// @tparam AccType 
/// @tparam OutType 
/// @tparam MULT 
/// @tparam SHIFT 
/// @tparam OUT_ZERO_PT 
/// @param acc 
/// @return 
template<typename AccType, typename OutType, int MULT, int SHIFT, int OUT_ZERO_PT>
OutType requant_scalar(AccType acc) {
#pragma HLS INLINE

    static_assert(SHIFT >= 0, "SHIFT must be non-negative");

    typedef ap_int<AccType::width + 32> WideType;

    WideType prod = (WideType)acc * (WideType)MULT;
    WideType rq;

    if (SHIFT == 0) {
        rq = prod;
    } else {
        WideType half = (WideType)1 << (SHIFT - 1);

        // Round-to-nearest, away from zero
        if (prod >= 0) {
            rq = (prod + half) >> SHIFT;
        } else {
            rq = -((-prod + half) >> SHIFT);
        }
    }

    rq += OUT_ZERO_PT;

    /*
     * Match your Brevitas integer range.
     *
     * Your Python helper currently uses signed int8 range:
     *     [-128, 127]
     *
     * If your Brevitas quantizer uses narrow_range=True,
     * use [-127, 127] instead.
     */
    const WideType q_max = ((WideType)1 << (OutType::width - 1)) - 1;
    const WideType q_min = -((WideType)1 << (OutType::width - 1));

    if (rq > q_max) {
        rq = q_max;
    } else if (rq < q_min) {
        rq = q_min;
    }

    return (OutType)rq;
}


/// @brief //////////////////
/// The following template implements a Brevitas-like Linear layer, where the accumulator gets
/// quantized with a certain output scale, expressed in the form of MULT / 2^SHIFT. The input
/// is expected to be already quantized with the right input scale.
/// @tparam ActType 
/// @tparam CoeffType 
/// @tparam AccType 
/// @tparam M 
/// @tparam K 
/// @tparam N 
/// @tparam Tm 
/// @tparam Tk 
/// @tparam Tn 
/// @tparam SIMD 
/// @tparam PE 
/// @tparam BusWidth 
/// @tparam MULT 
/// @tparam SHIFT 
/// @tparam OUT_ZERO_PT 
/// @param input 
/// @param output 
/// @param output_w 
/// @param B 
template<
  int M, int K, int N,
  int Tm, int Tk, int Tn,
  int SIMD, int PE, int BusWidth,
  int MULT, int SHIFT, int OUT_ZERO_PT,
  typename ActType, typename CoeffType, typename AccType
>
void Linear_Layer(
    hls::stream<ap_uint<SIMD*ActType::width>> &input,
    hls::stream<ap_uint<PE * ActType::width>> &output,
    hls::stream<ap_uint<PE * SIMD * CoeffType::width>> &output_w,
    const AccType B[N]
) {

    static_assert(M > 0 && K > 0 && N > 0, "M, K, N must be positive");
    static_assert(Tm > 0 && Tk > 0 && Tn > 0, "Tm, Tk, Tn must be positive");
    static_assert(SIMD > 0 && PE > 0, "SIMD and PE must be positive");

    static_assert(M % Tm == 0, "M must be divisible by Tm");
    static_assert(K % Tk == 0, "K must be divisible by Tk");
    static_assert(N % Tn == 0, "N must be divisible by Tn");

    static_assert(Tk % SIMD == 0, "Tk must be divisible by SIMD");
    static_assert(Tn % PE == 0, "Tn must be divisible by PE");

    ActType buff_int[Tm][Tk];
    AccType C_tile[Tm][N]; //8x384 array x 8

    #pragma HLS ARRAY_PARTITION variable=buff_int cyclic factor=SIMD dim=2
    #pragma HLS ARRAY_PARTITION variable=C_tile cyclic factor=PE dim=2
    #pragma HLS BIND_STORAGE variable=C_tile type=ram_t2p impl=bram
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=PE
    
    #if _HLS_DEBUG
        int inp_reads = 0;
        int w_reads = 0;
    #endif

    for(int m=0; m < M; m+=Tm){

    	//---Init Buffer------
        for(int n=0; n<N; n +=Tn){
            for(int tm=0; tm < Tm; tm++){           
                //---C_tile initialization-----
                for(int tn=0; tn < Tn/PE; tn++){
                    for(int pe=0; pe < PE; pe++){
                            #pragma HLS UNROLL
                            //ap_uint<AccType::width> bias_bits = bias_packed.range((pe+1)*AccType::width - 1,pe*AccType::width);
                            C_tile[tm][n + pe + tn*PE] = B[n + pe + tn*PE];
                        }
                    }
                }
            }
        //--------------------
        for(int k=0; k<K; k+=Tk){
            //Init Input Buffer Tm x Tk
            for(int tm=0; tm < Tm; tm++){     
                for(int tk=0; tk < Tk/SIMD; tk++){
                    
                    ap_uint<SIMD*ActType::width> val = input.read();
                    
                    buff_init_simd: for (int s = 0; s < SIMD; s++) {
                        #pragma HLS UNROLL
                        ap_uint<ActType::width> a_bits = val.range((s+1)*ActType::width - 1, s*ActType::width);
                        buff_int[tm][s + tk*SIMD] = (ActType)(a_bits);
                        }
                    }
                }

            for(int n=0; n<N; n +=Tn){
                for(int tn=0; tn < Tn/PE; tn++){
                    for(int tk=0; tk < Tk/SIMD; tk++){
                        
                        ap_uint<PE*SIMD*CoeffType::width> w_packed = output_w.read(); 
                        

                        for(int tm=0; tm < Tm; tm++){
                            #pragma HLS UNROLL factor=1
                            
                            AccType acc[PE];
                            #pragma HLS ARRAY_PARTITION variable=acc complete

                            for (int pe = 0; pe < PE; pe++) {
                                #pragma HLS UNROLL
                                    acc[pe] = C_tile[tm][n + pe + tn*PE];
                                }

                            for(int s=0; s< SIMD; s++){
                                #pragma HLS UNROLL
                                ActType a = buff_int[tm][tk*SIMD + s];

                                for(int pe=0; pe < PE; pe++){
                                    #pragma HLS UNROLL

                                    int lane = s*PE + pe; // matches your current extraction
                                    int lo = lane * CoeffType::width;
                                    int hi = (lane + 1) * CoeffType::width - 1;
                                    ap_uint<CoeffType::width> w_bits = w_packed.range(hi, lo);
                                    CoeffType w = (CoeffType)w_bits;

                                    acc[pe] += a * w;
                        
                                    }
                        
                                }

                            for (int pe = 0; pe < PE; pe++) {
                                #pragma HLS UNROLL
                                C_tile[tm][n + pe + tn*PE] = acc[pe];
                                }
                            }
                        }
                    }
                }
            }

            //Here I have the full Tm x N array ready to be written
            for(int n=0; n < N; n+=Tn){
                for (int tm = 0; tm < Tm; tm++) {
                    for (int tn = 0; tn < Tn/PE; tn++) {
                        ap_uint<PE * ActType::width> out_word = 0;
                        //Packing result with factor PE
                        for (int pe = 0; pe < PE; pe++) {
                            #pragma HLS UNROLL
                            // lane is AccType::width bits
                            AccType acc = C_tile[tm][n + tn * PE + pe];

                            ActType q = requant_scalar<
                                AccType,
                                ActType,
                                MULT,
                                SHIFT,
                                OUT_ZERO_PT
                            >(acc);

                            out_word.range(
                                (pe + 1) * ActType::width - 1,
                                pe * ActType::width
                            ) = (ap_uint<ActType::width>)q;

                            #ifdef _HLS_DEBUG
                                //printf("%f\n", (float)(q));
                            #endif
                        }

                        output.write(out_word);
                        }
                    }
                }
        }
    }


////////////////////////////////////
// Specialized Matmul to perform QxK^T
template<
  int M, int K, int N,
  int Tm, int Tk, int Tn,
  int SIMD, int PE,
  int MULT, int SHIFT, int OUT_ZERO_PT,
  typename ActType,
  typename AccType
>
void MatMul_QK_tiled(
    hls::stream<ap_uint<SIMD * ActType::width>> &input_Q,
    hls::stream<ap_uint<SIMD * ActType::width>> &input_K,
    hls::stream<ap_uint<PE * ActType::width>> &output
) {
    // Q: [M, K] = [tokens, head_dim]
    // K: [N, K] = [tokens, head_dim]
    // Output: [M, N] = Q @ K^T

    ActType buff_K[N][K];
#pragma HLS ARRAY_PARTITION variable=buff_K cyclic factor=SIMD dim=2

    ActType tile_Q[Tm][K];
#pragma HLS ARRAY_PARTITION variable=tile_Q cyclic factor=SIMD dim=2

    AccType C_tile[Tm][Tn];
#pragma HLS ARRAY_PARTITION variable=C_tile cyclic factor=PE dim=2

    // ------------------------------------------------------------
    // Load K normally: token-major, feature-major
    // K[token][dim]
    // ------------------------------------------------------------
    for (int n = 0; n < N; n++) {
        for (int k = 0; k < K; k += SIMD) {
#pragma HLS PIPELINE II=1
            ap_uint<SIMD * ActType::width> val_K = input_K.read();

            for (int s = 0; s < SIMD; s++) {
#pragma HLS UNROLL
                ap_uint<ActType::width> k_bits =
                    val_K.range((s + 1) * ActType::width - 1,
                                 s      * ActType::width);

                ActType k_val;
                k_val.range(ActType::width - 1, 0) = k_bits;

                buff_K[n][k + s] = k_val;
            }
        }
    }

    // ------------------------------------------------------------
    // For each Q tile
    // ------------------------------------------------------------
    for (int m = 0; m < M; m += Tm) {

        // Load Q tile: Q[m + tm][k]
        for (int tm = 0; tm < Tm; tm++) {
            for (int k = 0; k < K; k += SIMD) {
#pragma HLS PIPELINE II=1
                ap_uint<SIMD * ActType::width> val_Q = input_Q.read();

                for (int s = 0; s < SIMD; s++) {
#pragma HLS UNROLL
                    ap_uint<ActType::width> q_bits =
                        val_Q.range((s + 1) * ActType::width - 1,
                                     s      * ActType::width);

                    ActType q_val;
                    q_val.range(ActType::width - 1, 0) = q_bits;

                    tile_Q[tm][k + s] = q_val;
                }
            }
        }

        // Compute output tile [Tm, Tn]
        for (int n = 0; n < N; n += Tn) {

            // Initialize C tile
            for (int tm = 0; tm < Tm; tm++) {
                for (int tn = 0; tn < Tn; tn++) {
#pragma HLS PIPELINE II=1
                    C_tile[tm][tn] = 0;
                }
            }

            // Dot product over head_dim
            for (int k = 0; k < K; k += SIMD) {
                for (int tm = 0; tm < Tm; tm++) {
                    for (int tn = 0; tn < Tn; tn += PE) {
#pragma HLS PIPELINE II=1
                        for (int s = 0; s < SIMD; s++) {
#pragma HLS UNROLL
                            ActType q_val = tile_Q[tm][k + s];

                            for (int pe = 0; pe < PE; pe++) {
#pragma HLS UNROLL
                                int token_j = n + tn + pe;

                                C_tile[tm][tn + pe] +=
                                    q_val * buff_K[token_j][k + s];
                            }
                        }
                    }
                }
            }

            // Write output tile
            for (int tm = 0; tm < Tm; tm++) {
                for (int tn = 0; tn < Tn; tn += PE) {
#pragma HLS PIPELINE II=1
                    ap_uint<PE * ActType::width> out_word = 0;

                    for (int pe = 0; pe < PE; pe++) {
#pragma HLS UNROLL
                        AccType acc = C_tile[tm][tn*PE + pe];

                        ActType q = requant_scalar<
                                AccType,
                                ActType,
                                MULT,
                                SHIFT,
                                OUT_ZERO_PT
                            >(acc);


                        out_word.range((pe + 1) * ActType::width - 1,
                                        pe      * ActType::width) =
                            (ap_uint<ActType::width>)q;
                    }

                    output.write(out_word);
                }
            }
        }
    }
}

////////////////////////////////////

template<
  int M, int K, int N,
  int Tm, int Tk, int Tn,
  int SIMD, int PE,
  int MULT, int SHIFT, int OUT_ZERO_PT,
  typename ActType,
  typename AccType
>
void MatMul_KV_tiled(
    hls::stream<ap_uint<PE*ActType::width>> &input_A,
    hls::stream<ap_uint<PE*ActType::width>> &input_B,
    hls::stream<ap_uint<PE * ActType::width>> &output
) {
    //I will, initially, fully buffer the input_B matrix, and then multiply it with the input_A matrix
    //The input_A matrix will be received in tiles of dimension Tm x Tk

    ActType buff_B[K][N];

    #pragma HLS ARRAY_PARTITION variable=buff_B cyclic factor=SIMD dim=2


    ActType tile_A[Tm][K];

    #pragma HLS ARRAY_PARTITION variable=tile_A cyclic factor=SIMD dim=2

    AccType C_tile[Tm][Tn];

    #pragma HLS ARRAY_PARTITION variable=C_tile cyclic factor=PE dim=2

    load_B:
    for (int k = 0; k < K; k+=Tk) {
        for (int n = 0; n < N; n+=Tn) {
            for(int tk=0; tk < Tk; tk++){
                for(int tn=0; tn < Tn/PE; tn++){
                    ap_uint<PE*ActType::width> val_B = input_B.read();
                    for(int pe=0; pe < PE; pe++){
                        #pragma HLS UNROLL 
                        ap_uint<ActType::width> b_bits = val_B.range((pe+1)*ActType::width - 1, pe*ActType::width);
                        buff_B[tk + k][n + pe + tn*PE] = (ActType)(b_bits);
                    }
                }
            }
        }
            
    }

    // -------------------- Q x K^T (logits) --------------------
    matmul_core:
    for(int m=0; m < M; m+= Tm){

        //---Init Buffer------

        buff_init:for(int tm=0; tm < Tm; tm++){
            for(int k=0; k < K/SIMD; k++){
                ap_uint<SIMD*ActType::width> val_A = input_A.read();
                buff_init_simd: for (int s = 0; s < SIMD; s++) {
		    		#pragma HLS UNROLL
                    ap_uint<ActType::width> a_bits = val_A.range((s+1)*ActType::width - 1, s*ActType::width);
                    tile_A[tm][k*SIMD+s] = (ActType)(a_bits);
                }
            }
        }
        
        

        //Initialize Output_tile
        for(int n=0; n < N; n+=Tn){

            //---C_tile initialization-----
			C_tile_init: for(int tm=0; tm < Tm; tm++){
				//ap_uint<PE*AccType::width> bias_packed = Bias.read();
				C_tile_for_Tn: for (int tn=0; tn < Tn/PE; tn++){
                    #pragma HLS PIPELINE II=1
                    for(int pe=0; pe < PE; pe++){
                        #pragma HLS UNROLL
                        C_tile[tm][pe + tn*PE] = (AccType)(0);
                        }
        		    }
        	    }
        	
			//-----------------------------

            for(int k=0; k < K; k+=Tk){

                for(int tm=0; tm < Tm; tm++){
                    
                    for(int tk = 0; tk < Tk/SIMD; tk++){

                        for(int tn = 0; tn < Tn/PE; tn++){
                            #pragma HLS PIPELINE II=1
                            for(int s=0; s < SIMD; s++){
                                for(int pe=0; pe < PE; pe++){
                                    C_tile[tm][pe + tn*PE] += tile_A[tm][k + tk*SIMD + s] * buff_B[tk + k][n + pe + tn*PE];
                                }
                            }

                        }
                    }

                }
            }

            for (int tm = 0; tm < Tm; tm++) {
                for (int tn = 0; tn < Tn/PE; tn++) {
                    #pragma HLS PIPELINE II=1
                    ap_uint<PE * ActType::width> out_word = 0;

                    for (int pe = 0; pe < PE; pe++) {
			            #pragma HLS UNROLL
                        // lane is AccType::width bits
                        AccType acc = C_tile[tm][tn*PE + pe];

                        ActType q = requant_scalar<
                                AccType,
                                ActType,
                                MULT,
                                SHIFT,
                                OUT_ZERO_PT
                            >(acc);


                        out_word.range((pe + 1) * ActType::width - 1,
                                        pe      * ActType::width) =
                            (ap_uint<ActType::width>)q;                        
                    }
                        output.write(out_word);
                }
            }
    
        }
    }
}

////////////////////////////////////
/// @brief /////////////////////////
/// @tparam ActType 
/// @tparam AccType 
/// @tparam M 
/// @tparam K 
/// @tparam N 
/// @tparam Tm 
/// @tparam Tk 
/// @tparam Tn 
/// @tparam SIMD 
/// @tparam PE 
/// @param input_A 
/// @param input_B 
/// @param output 
template<
  int M,int K,int N,int Tm,int Tk,int Tn,int SIMD,int PE,
  typename ActType,typename AccType
>
void MatMul_tiled(
    hls::stream<ap_uint<PE*ActType::width>> &input_A,
    hls::stream<ap_uint<PE*ActType::width>> &input_B,
    hls::stream<ap_uint<PE * ActType::width>> &output
) {
    //I will, initially, fully buffer the input_B matrix, and then multiply it with the input_A matrix
    //The input_A matrix will be received in tiles of dimension Tm x Tk

    ActType buff_B[K][N];

    #pragma HLS ARRAY_PARTITION variable=buff_B cyclic factor=SIMD dim=2


    ActType tile_A[Tm][K];

    #pragma HLS ARRAY_PARTITION variable=tile_A cyclic factor=SIMD dim=2

    AccType C_tile[Tm][Tn];

    #pragma HLS ARRAY_PARTITION variable=C_tile cyclic factor=PE dim=2

    load_B:
    for (int k = 0; k < K; k+=Tk) {
        for (int n = 0; n < N; n+=Tn) {
            for(int tk=0; tk < Tk; tk++){
                for(int tn=0; tn < Tn/PE; tn++){
                    ap_uint<PE*ActType::width> val_B = input_B.read();
                    for(int pe=0; pe < PE; pe++){
                        #pragma HLS UNROLL 
                        ap_uint<ActType::width> b_bits = val_B.range((pe+1)*ActType::width - 1, pe*ActType::width);
                        buff_B[tk + k][n + pe + tn*PE] = (ActType)(b_bits);
                    }
                }
            }
        }
            
    }

    // -------------------- Q x K^T (logits) --------------------
    matmul_core:
    for(int m=0; m < M; m+= Tm){

        //---Init Buffer------

        buff_init:for(int tm=0; tm < Tm; tm++){
            for(int k=0; k < K/SIMD; k++){
                ap_uint<SIMD*ActType::width> val_A = input_A.read();
                buff_init_simd: for (int s = 0; s < SIMD; s++) {
		    		#pragma HLS UNROLL
                    ap_uint<ActType::width> a_bits = val_A.range((s+1)*ActType::width - 1, s*ActType::width);
                    tile_A[tm][k*SIMD+s] = (ActType)(a_bits);
                }
            }
        }
        
        

        //Initialize Output_tile
        for(int n=0; n < N; n+=Tn){

            //---C_tile initialization-----
			C_tile_init: for(int tm=0; tm < Tm; tm++){
				//ap_uint<PE*AccType::width> bias_packed = Bias.read();
				C_tile_for_Tn: for (int tn=0; tn < Tn/PE; tn++){
                    #pragma HLS PIPELINE II=1
                    for(int pe=0; pe < PE; pe++){
                        #pragma HLS UNROLL
                        C_tile[tm][pe + tn*PE] = (AccType)(0);
                        }
        		    }
        	    }
        	
			//-----------------------------

            for(int k=0; k < K; k+=Tk){

                for(int tm=0; tm < Tm; tm++){
                    
                    for(int tk = 0; tk < Tk/SIMD; tk++){

                        for(int tn = 0; tn < Tn/PE; tn++){
                            #pragma HLS PIPELINE II=1
                            for(int s=0; s < SIMD; s++){
                                for(int pe=0; pe < PE; pe++){
                                    C_tile[tm][pe + tn*PE] += tile_A[tm][k + tk*SIMD + s] * buff_B[tk + k][n + pe + tn*PE];
                                }
                            }

                        }
                    }

                }
            }

            for (int tm = 0; tm < Tm; tm++) {
                for (int tn = 0; tn < Tn/PE; tn++) {
                    #pragma HLS PIPELINE II=1
                    ap_uint<PE * ActType::width> out_word = 0;

                    for (int pe = 0; pe < PE; pe++) {
			            #pragma HLS UNROLL
                        // lane is AccType::width bits
                        ap_uint<ActType::width> lane = (ap_uint<ActType::width>) (ActType)C_tile[tm][tn*PE + pe];  // or wherever each lane lives
                        out_word.range((pe+1)*ActType::width - 1, pe*ActType::width) = lane;
                        }

                        output.write(out_word);
                }
            }
    
        }
    }
}


// MatMul with online Softmax:
// O = softmax(Q K^T) V
template<
  int M, int K, int N,
  int Tm, int Tk, int Tn,
  int SIMD, int PE,
  typename ActType,
  typename AccType
>
void MatMul_tiled_Softmax(
    hls::stream<ap_uint<SIMD * ActType::width>> &input_A, // Q, packed along K
    hls::stream<ap_uint<PE   * ActType::width>> &input_B, // K^T, packed along N
    hls::stream<ap_uint<SIMD * ActType::width>> &input_V, // V, packed along K
    hls::stream<ap_uint<SIMD * ActType::width>> &output
) {
#pragma HLS INLINE off

    static_assert(K  % Tk   == 0, "K must be divisible by Tk");
    static_assert(Tk % SIMD == 0, "Tk must be divisible by SIMD");
    static_assert(Tn % PE   == 0, "Tn must be divisible by PE");
    static_assert(K  % SIMD == 0, "K must be divisible by SIMD");

    constexpr int W = ActType::width;

    // exp_lut_lookup_int() is assumed to return exp(z) in Q0.8-like scale.
    // Example: exp(0) ~= 255 or 256.
    constexpr int EXP_FRAC_BITS = 8;

    // ------------------------------------------------------------
    // K^T buffer:
    // buff_B[k][n] = K[n][k]
    // ------------------------------------------------------------
    ActType buff_B[K][N];
#pragma HLS ARRAY_PARTITION variable=buff_B cyclic factor=SIMD dim=1
#pragma HLS ARRAY_PARTITION variable=buff_B cyclic factor=PE   dim=2

    // ------------------------------------------------------------
    // V buffer:
    // buff_V[n][k] = V[n][k]
    // ------------------------------------------------------------
    ActType buff_V[N][K];
#pragma HLS ARRAY_PARTITION variable=buff_V cyclic factor=SIMD dim=2

    // ------------------------------------------------------------
    // Q tile:
    // tile_A[tm][k] = Q[m + tm][k]
    // ------------------------------------------------------------
    ActType tile_A[Tm][K];
#pragma HLS ARRAY_PARTITION variable=tile_A cyclic factor=SIMD dim=2

    // ------------------------------------------------------------
    // Logits tile:
    // C_tile[tm][tn] = Q[m + tm] dot K[n + tn]
    // ------------------------------------------------------------
    AccType C_tile[Tm][Tn];
#pragma HLS ARRAY_PARTITION variable=C_tile cyclic factor=PE dim=2

    // ------------------------------------------------------------
    // Online softmax state
    // ------------------------------------------------------------
    AccType row_max[Tm];
    ap_uint<32> row_sum[Tm];
    bool first_n_tile[Tm];

#pragma HLS ARRAY_PARTITION variable=row_max complete
#pragma HLS ARRAY_PARTITION variable=row_sum complete
#pragma HLS ARRAY_PARTITION variable=first_n_tile complete

    // ------------------------------------------------------------
    // Output accumulator:
    // O_acc[tm][k] accumulates sum_j exp(score_j - max) * V[j][k]
    // ------------------------------------------------------------
    AccType O_acc[Tm][K];
#pragma HLS ARRAY_PARTITION variable=O_acc cyclic factor=SIMD dim=2

    // ============================================================
    // 1. Load K^T into buff_B[K][N]
    // ============================================================
load_B:
    for (int k0 = 0; k0 < K; k0 += Tk) {
        for (int n0 = 0; n0 < N; n0 += Tn) {
            for (int tk = 0; tk < Tk; tk++) {
                for (int tn_pack = 0; tn_pack < Tn / PE; tn_pack++) {
#pragma HLS PIPELINE II=1
                    ap_uint<PE * W> val_B = input_B.read();

                    for (int pe = 0; pe < PE; pe++) {
#pragma HLS UNROLL
                        ap_uint<W> b_bits =
                            val_B.range((pe + 1) * W - 1, pe * W);

                        ActType b_val;
                        b_val.range(W - 1, 0) = b_bits;

                        buff_B[k0 + tk][n0 + tn_pack * PE + pe] = b_val;
                    }
                }
            }
        }
    }

    // ============================================================
    // 2. Load V into buff_V[N][K]
    //
    // Convention: V stream is packed along K with SIMD.
    // ============================================================
load_V:
    for (int n0 = 0; n0 < N; n0 += Tn) {
        for (int tn = 0; tn < Tn; tn++) {
            for (int k_pack = 0; k_pack < K / SIMD; k_pack++) {
#pragma HLS PIPELINE II=1
                ap_uint<SIMD * W> val_V = input_V.read();

                for (int s = 0; s < SIMD; s++) {
#pragma HLS UNROLL
                    ap_uint<W> v_bits =
                        val_V.range((s + 1) * W - 1, s * W);

                    ActType v_val;
                    v_val.range(W - 1, 0) = v_bits;

                    buff_V[n0 + tn][k_pack * SIMD + s] = v_val;
                }
            }
        }
    }

    // ============================================================
    // 3. Process Q tiles
    // ============================================================
matmul_core:
    for (int m0 = 0; m0 < M; m0 += Tm) {

        // --------------------------------------------------------
        // 3.1 Load Q tile
        // --------------------------------------------------------
    load_Q:
        for (int tm = 0; tm < Tm; tm++) {
            for (int k_pack = 0; k_pack < K / SIMD; k_pack++) {
#pragma HLS PIPELINE II=1
                ap_uint<SIMD * W> val_A = input_A.read();

                for (int s = 0; s < SIMD; s++) {
#pragma HLS UNROLL
                    ap_uint<W> a_bits =
                        val_A.range((s + 1) * W - 1, s * W);

                    ActType a_val;
                    a_val.range(W - 1, 0) = a_bits;

                    tile_A[tm][k_pack * SIMD + s] = a_val;
                }
            }
        }

        // --------------------------------------------------------
        // 3.2 Initialize online softmax state and output accumulator
        // --------------------------------------------------------
    init_state:
        for (int tm = 0; tm < Tm; tm++) {
#pragma HLS UNROLL
            row_max[tm] = 0;
            row_sum[tm] = 0;
            first_n_tile[tm] = true;
        }

    init_O_acc:
        for (int tm = 0; tm < Tm; tm++) {
            for (int k_pack = 0; k_pack < K / SIMD; k_pack++) {
#pragma HLS PIPELINE II=1
                for (int s = 0; s < SIMD; s++) {
#pragma HLS UNROLL
                    O_acc[tm][k_pack * SIMD + s] = 0;
                }
            }
        }

        // ========================================================
        // 4. Scan all K/V token tiles
        // ========================================================
    n_tile_loop:
        for (int n0 = 0; n0 < N; n0 += Tn) {

            // ----------------------------------------------------
            // 4.1 Initialize logits tile
            // ----------------------------------------------------
        init_C_tile:
            for (int tm = 0; tm < Tm; tm++) {
                for (int tn_pack = 0; tn_pack < Tn / PE; tn_pack++) {
#pragma HLS PIPELINE II=1
                    for (int pe = 0; pe < PE; pe++) {
#pragma HLS UNROLL
                        C_tile[tm][tn_pack * PE + pe] = 0;
                    }
                }
            }

            // ----------------------------------------------------
            // 4.2 Compute complete QK^T tile
            // ----------------------------------------------------
        compute_logits:
            for (int k0 = 0; k0 < K; k0 += Tk) {
                for (int tm = 0; tm < Tm; tm++) {
                    for (int tn_pack = 0; tn_pack < Tn / PE; tn_pack++) {
                        for (int tk_pack = 0; tk_pack < Tk / SIMD; tk_pack++) {
#pragma HLS PIPELINE II=1
                            for (int s = 0; s < SIMD; s++) {
#pragma HLS UNROLL
                                int k_idx = k0 + tk_pack * SIMD + s;
                                ActType q_val = tile_A[tm][k_idx];

                                for (int pe = 0; pe < PE; pe++) {
#pragma HLS UNROLL
                                    int tn = tn_pack * PE + pe;
                                    int n_idx = n0 + tn;

                                    C_tile[tm][tn] +=
                                        q_val * buff_B[k_idx][n_idx];
                                }
                            }
                        }
                    }
                }
            }

            // ====================================================
            // 4.3 Online softmax update + O_acc update
            // ====================================================
        online_softmax:
            for (int tm = 0; tm < Tm; tm++) {

                // ------------------------------------------------
                // Compute max of current logits tile row
                // ------------------------------------------------
                AccType local_tile_max = C_tile[tm][0];

            tile_max_loop:
                for (int tn = 1; tn < Tn; tn++) {
#pragma HLS PIPELINE II=1
                    if (C_tile[tm][tn] > local_tile_max) {
                        local_tile_max = C_tile[tm][tn];
                    }
                }

                // ------------------------------------------------
                // Update running max and rescale previous state
                // ------------------------------------------------
                AccType new_max;

                if (first_n_tile[tm]) {
                    new_max = local_tile_max;
                    row_max[tm] = new_max;
                    first_n_tile[tm] = false;
                } else {
                    new_max =
                        (local_tile_max > row_max[tm])
                        ? local_tile_max
                        : row_max[tm];

                    AccType alpha =
                        exp_lut_lookup_int<AccType, 64>(
                            row_max[tm] - new_max
                        );

                    // row_sum *= alpha
                    row_sum[tm] =
                        (ap_uint<32>)(
                            ((ap_uint<64>)row_sum[tm] *
                             (ap_uint<16>)alpha) >> EXP_FRAC_BITS
                        );

                    // O_acc *= alpha
                    for (int k_pack = 0; k_pack < K / SIMD; k_pack++) {
#pragma HLS PIPELINE II=1
                        for (int s = 0; s < SIMD; s++) {
#pragma HLS UNROLL
                            int k_idx = k_pack * SIMD + s;

                            O_acc[tm][k_idx] =
                                (AccType)(
                                    ((ap_int<64>)O_acc[tm][k_idx] *
                                     (ap_int<64>)((ap_uint<16>)alpha))
                                    >> EXP_FRAC_BITS
                                );
                        }
                    }

                    row_max[tm] = new_max;
                }

                // ------------------------------------------------
                // Add current tile contribution:
                //
                // p = exp(C_tile - row_max)
                // row_sum += p
                // O_acc += p * V
                // ------------------------------------------------
                for (int tn_pack = 0; tn_pack < Tn / PE; tn_pack++) {

                    ap_uint<16> p_lane[PE];
#pragma HLS ARRAY_PARTITION variable=p_lane complete

                    // Compute PE softmax numerators
                    for (int pe = 0; pe < PE; pe++) {
#pragma HLS UNROLL
                        int tn = tn_pack * PE + pe;

                        AccType p =
                            exp_lut_lookup_int<AccType, 64>(
                                C_tile[tm][tn] - row_max[tm]
                            );

                        p_lane[pe] = (ap_uint<16>)p;
                    }

                    // Update row_sum
                    for (int pe = 0; pe < PE; pe++) {
#pragma HLS UNROLL
                        row_sum[tm] += p_lane[pe];
                    }

                    // Update O_acc over K channels
                    for (int k_pack = 0; k_pack < K / SIMD; k_pack++) {
#pragma HLS PIPELINE II=1
                        for (int s = 0; s < SIMD; s++) {
#pragma HLS UNROLL
                            int k_idx = k_pack * SIMD + s;

                            AccType add_acc = 0;

                            for (int pe = 0; pe < PE; pe++) {
#pragma HLS UNROLL
                                int tn = tn_pack * PE + pe;
                                int n_idx = n0 + tn;

                                add_acc +=
                                    (AccType)(
                                        (ap_int<64>)p_lane[pe] *
                                        (ap_int<64>)buff_V[n_idx][k_idx]
                                    );
                            }

                            O_acc[tm][k_idx] += add_acc;
                        }
                    }
                }
            }
        }

        // ========================================================
        // 5. Final normalization and output
        //
        // O = O_acc / row_sum
        // ========================================================
    write_output:
        for (int tm = 0; tm < Tm; tm++) {
            for (int k_pack = 0; k_pack < K / SIMD; k_pack++) {
#pragma HLS PIPELINE II=1
                ap_uint<SIMD * W> out_word = 0;

                for (int s = 0; s < SIMD; s++) {
#pragma HLS UNROLL
                    int k_idx = k_pack * SIMD + s;

                    AccType out_acc;

                    if (row_sum[tm] == 0) {
                        out_acc = 0;
                    } else {
                        out_acc =
                            (AccType)(
                                (ap_int<64>)O_acc[tm][k_idx] /
                                (ap_int<64>)row_sum[tm]
                            );
                    }

                    ActType out_val = (ActType)out_acc;

                    out_word.range((s + 1) * W - 1, s * W) =
                        out_val.range(W - 1, 0);
                }

                output.write(out_word);
            }
        }
    }
}

