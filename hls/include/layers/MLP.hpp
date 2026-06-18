#include "types.h"
#include "activations.h"
#include "linear.h"
#include "ap_fixed.h"
#include "MLP1.h"
#include "MLP2.h"
#include "normalizations.hpp"
#include "NORM_1.h"


void FC1(hls::stream<act_0> &in, hls::stream<act_0>&out);

void FC2(hls::stream<act_0> &in, hls::stream<act_0> &out);


void Relu(hls::stream<act_0> &in, hls::stream<act_0> &out);

void MLP(hls::stream<act_0> &input, hls::stream<act_0> &output);

static const accumulation mean_1[E] = NORM_1_Running_Mean;
static const accumulation var_1[E] = NORM_1_Running_Var;
static const accumulation scale_1[E] = NORM_1_W;
static const accumulation bias_1[E] = NORM_1_B;

void NORMALIZATION(hls::stream<accumulation> &in, hls::stream<act_0>&out, const accumulation mean[E],
	const accumulation var[E],
	const accumulation weight[E],
	const accumulation bias[E]);
