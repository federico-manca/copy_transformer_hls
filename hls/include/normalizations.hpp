#pragma once
#include <hls_stream.h>
#include <cassert>
#include <limits>
#include "activations.h"
#include "parameters/vit_params.h"

//---------------------------------------------------------//


template<
	int A, //Tokens
	int B, //Embedding dimension
	typename ActType,
	typename CoeffType
>
void ADDNORM(
		hls::stream<ActType> &residual,
		hls::stream<ActType> &input,
		hls::stream<ActType> &output,
		const CoeffType running_mean[B],
		const CoeffType running_std[B],
		const CoeffType weight[B],
		const CoeffType bias[B]
		){
	//In this block we need to add the residual to the actual input, and then normalize it.
	//It could make sense to add some kind of template to select which normalization function we want to use, but
	//for now I will stick to BatchNorm.

	//The MHA writes T tokens x E embeddimg_dimension = T x I dimension for each head x H number of heads
	//The MLP writes the same. So, we need in input the T and E parameters


	ActType res, val, mean,std,scale,Bias;
	ap_int<16> sum[A][B];
	ActType out;

	for(int a = 0; a < A; a++){
		for(int b = 0; b < B; b++){
			res = residual.read();
			val = input.read();
			mean = running_mean[b];
			std = running_std[b];
			scale = weight[b];
			Bias = bias[b];

			out = (((res+val) - mean) * std) * scale + Bias;
			output.write((ActType)out);
		}
	}




}

//---------------------------------------------------------//


template<
	int A, //Tokens
	int B, //Embedding dimension
	typename InType,
	typename OutType,
	typename CoeffType
>
void BATCHNORM(
		hls::stream<InType> &input,
		hls::stream<OutType> &output,
		const CoeffType running_mean[B],
		const CoeffType running_std[B],
		const CoeffType weight[B],
		const CoeffType bias[B]
		){
	//In this block we need to perform Batch Normalization
	//Parameters are already saved on-chip


	InType val;
	CoeffType mean,std,scale,Bias;
	OutType out;

	for(int a = 0; a < A; a++){
		//printf("[");
		for(int b = 0; b < B; b++){
			val = input.read();
			//printf("BatchNorm input: %f\n", (float)val);
			mean = running_mean[b];
			std = running_std[b];
			scale = weight[b];
			Bias = bias[b];
			//printf("Mean: %f , std: %f , scale: %f , Bias:%f \n", (float)mean,(float)std,(float)scale,(float)Bias);

			out = (OutType)(((val - mean) * std) * scale + Bias);
			//printf("%f ,",(float)out);
			//printf("BatchNorm out: %f \n",(float)out);
			output.write((OutType)out);
		}

		//printf("]\n");
	}
}

//---------------------------------------------------------//


template<
	int A, //Tokens
	int B, //Embedding dimension
	int PE,
	typename InType,
	typename OutType,
	typename CoeffType
>
void BATCHNORM_tiled(
		hls::stream<ap_uint<PE*InType::width>> &input,
		hls::stream<ap_uint<PE*OutType::width>> &output,
		hls::stream<ap_uint<PE*CoeffType::width>> &running_mean,
		hls::stream<ap_uint<PE*CoeffType::width>> &running_std,
		hls::stream<ap_uint<PE*CoeffType::width>> &weight,
		hls::stream<ap_uint<PE*CoeffType::width>> &bias
		){
	//In this block we need to perform Batch Normalization
	//Parameters are already saved on-chip


	ap_uint<PE*CoeffType::width> out_word;

	#pragma HLS ARRAY_PARTITION variable=running_mean type=cyclic factor=PE
	#pragma HLS ARRAY_PARTITION variable=running_std  type=cyclic factor=PE
	#pragma HLS ARRAY_PARTITION variable=weight       type=cyclic factor=PE
	#pragma HLS ARRAY_PARTITION variable=bias         type=cyclic factor=PE

	//constexpr int W = CoeffType::width;

	for(int a = 0; a < A; a++){
		//printf("[");
		for(int b = 0; b < B/PE; b++){
			ap_uint<PE*InType::width> val_packed = input.read();
			ap_uint<PE*CoeffType::width> mean_packed = running_mean.read();
			ap_uint<PE*CoeffType::width> bias_packed = bias.read();
			ap_uint<PE*CoeffType::width> weight_packed = weight.read();
			ap_uint<PE*CoeffType::width> inv_std_packed = running_std.read();


			for(int pe=0; pe < PE; pe++){
				#pragma HLS UNROLL
				ap_uint<InType::width>   val_slice    = val_packed.range((pe+1)*InType::width - 1, pe*InType::width);
				ap_uint<CoeffType::width> mean_slice   = mean_packed.range((pe+1)*CoeffType::width - 1, pe*CoeffType::width);
				ap_uint<CoeffType::width> bias_slice   = bias_packed.range((pe+1)*CoeffType::width - 1, pe*CoeffType::width);
				ap_uint<CoeffType::width> weight_slice = weight_packed.range((pe+1)*CoeffType::width - 1, pe*CoeffType::width);
				ap_uint<CoeffType::width> invstd_slice = inv_std_packed.range((pe+1)*CoeffType::width - 1, pe*CoeffType::width);

				out_word.range((pe+1)*CoeffType::width - 1, pe*CoeffType::width) = (((val_slice - mean_slice) * invstd_slice) * weight_slice + bias_slice);

			}
			output.write((OutType)out_word);
		}

	}
}
//---------------------------------------------------------//
template<
    int A,       // tokens
    int B,       // embedding dimension
    int PE,
    int SHIFT,
    typename InType,
    typename OutType
>
void BATCHNORM_tiled_quantized(
    hls::stream<ap_uint<PE * InType::width>> &input,
    hls::stream<ap_uint<PE * OutType::width>> &output,
    const int32_t bn_mul[B],
    const int32_t bn_add[B]
) {
    static_assert(B % PE == 0, "B must be divisible by PE");

	#ifdef _HLS_DEBUG
		//printf("BATCH\n");
	#endif

    typedef ap_int<48> AccType;

    for (int a = 0; a < A; a++) {
        for (int b = 0; b < B; b += PE) {
#pragma HLS PIPELINE II=1

            ap_uint<PE * InType::width> in_word = input.read();
            ap_uint<PE * OutType::width> out_word = 0;

            for (int pe = 0; pe < PE; pe++) {
#pragma HLS UNROLL

                const int c = b + pe;

                ap_uint<InType::width> in_bits =
                    in_word.range(
                        (pe + 1) * InType::width - 1,
                        pe * InType::width
                    );

                InType q_in = (InType)in_bits;

                AccType acc =
                    (AccType)q_in * (AccType)bn_mul[c]
                    + (AccType)bn_add[c];

                AccType rq = RoundShiftSigned<AccType, SHIFT>::apply(acc);

                // Match your activation quantizer range.
                // Use [-128, 127] for full signed int8.
                // Use [-127, 127] if you use narrow-range symmetric int8.
                const AccType q_max = ((AccType)1 << (OutType::width - 1)) - 1;
                const AccType q_min = -((AccType)1 << (OutType::width - 1));

                if (rq > q_max) {
                    rq = q_max;
                } else if (rq < q_min) {
                    rq = q_min;
                }

                OutType q_out = (OutType)rq;

                out_word.range(
                    (pe + 1) * OutType::width - 1,
                    pe * OutType::width
                ) = (ap_uint<OutType::width>)q_out;

				#ifdef _HLS_DEBUG
					//printf("%f\n", (float)q_out);
				#endif
            }

            output.write(out_word);
        }
    }
}
//---------------------------------------------------------//
template<
	int A,
	int B,
	int PE,
	typename AccType
>
void ParameterPacker(
    hls::stream<ap_uint<PE*AccType::width>> &output,
    const AccType param[B]
) {

	#pragma HLS ARRAY_PARTITION variable=param cyclic factor=PE
	ap_uint<PE*AccType::width> param_packed;

    for(int a=0; a < A; a++){
		for(int b=0; b< B/PE; b++){
			for(int pe=0; pe < PE; pe++){

				param_packed.range((pe+1)*AccType::width - 1,pe*AccType::width) = param[pe+b];
			}
		output.write(param_packed);
		}
    }
}



//---------------------------------------------------------//


template<
	int A, //Tokens
	int B, //Embedding dimension
	typename ActType
	>
void RESIDUAL(
		hls::stream<ActType> &residual,
		hls::stream<ActType> &input,
		hls::stream<ActType> &output
		){
	//In this block we need to add the residual to the actual input.


	ActType res, val;
	ActType out;

	
	for(int a = 0; a < A; a++){
		#pragma HLS LOOP_FLATTEN
		//printf("riga %d [", a);
		for(int b = 0; b < B; b++){
			res = residual.read();
			val = input.read();

			

			out = res+val;
			//printf("%f ,",(float)out);
			output.write((ActType)out);
		}

		//printf("]\n");
	}




}
