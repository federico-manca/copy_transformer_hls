

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
import torchvision
from torch.utils.data import DataLoader
from torchvision import datasets, transforms
import numpy as np
import random
import matplotlib.pyplot as plt
import math     
import torch
from torch.utils.data import DataLoader
from torchvision import datasets, transforms
from brevitas.core.quant import QuantType
from brevitas.core.restrict_val import RestrictValueType
from brevitas.core.scaling import ScalingImplType
from brevitas.nn import QuantConv2d, QuantLinear, QuantReLU 
from brevitas.quant import Int8ActPerTensorFloat, Int8WeightPerTensorFloat
from torchvision import transforms, datasets
from torch.utils.data import DataLoader

torch.__version__
torchvision.__version__
import brevitas
torch.cuda.is_available()    
device = "cuda" if torch.cuda.is_available() else "cpu"
print(f"Using Device: {device}")   
torch.manual_seed(42)
torch.cuda.manual_seed(42)
random.seed(42)       
print(F)
W = int(8)   # total bits
I = int(1)   # integer bits including sign
Fr = W - I


config = {
    "batch_size":32,
    "patch_size": 8,
    "mlp_size": 192*4,
    "embed_dim": 192,
    "num_heads": 4,
    "dropout": 0.1,
    "image_size": 32,
    "num_classes": 10,
    "num_channels": 1,
    "qkv_bias": True,
    "depth": 1,
    "epochs": 10
}


# For test/val
transform_test = transforms.Compose([
    transforms.Pad(2),          # 28x28 -> 32x32
    transforms.ToTensor(),
    transforms.Normalize((0.5), (0.5))
])

# For training (with augmentations)
transform_train = transforms.Compose([
    transforms.Pad(2),          # 28x28 -> 32x32
    #transforms.RandomCrop(28, padding=4),
    transforms.RandomHorizontalFlip(),
    #transforms.ColorJitter(brightness=0.2, contrast=0.2, saturation=0.2, hue=0.2),
    transforms.ToTensor(),
    transforms.Normalize((0.5), (0.5))
])
train_dataset = datasets.MNIST(
    root='./data',
    train=True,
    download=True,
    transform=transform_train
)

test_dataset = datasets.MNIST(
    root='./data',
    train=False,
    download=True,
    transform=transform_test
)

train_loader = DataLoader(train_dataset, batch_size=config["batch_size"])
test_loader = DataLoader(test_dataset, batch_size=config["batch_size"])

def train(model, dataloader, criterion, optimizer, device):
    model.train()
    running_loss, correct, total = 0.0, 0, 0

    for inputs, labels in dataloader:
        inputs, labels = inputs.to(device), labels.to(device)
        optimizer.zero_grad()

        outputs = model(inputs)
        loss = criterion(outputs, labels)
        loss.backward()
        optimizer.step()

        running_loss += loss.item() * inputs.size(0)
        _, predicted = torch.max(outputs, 1)
        correct += (predicted == labels).sum().item()
        total += labels.size(0)

    return running_loss / total, correct / total

def test(model, dataloader, criterion, device):
    model.eval()
    running_loss, correct, total = 0.0, 0, 0

    with torch.no_grad():
        for inputs, labels in dataloader:
            inputs, labels = inputs.to(device), labels.to(device)
            outputs = model(inputs)
            loss = criterion(outputs, labels)

            running_loss += loss.item() * inputs.size(0)
            _, predicted = torch.max(outputs, 1)
            correct += (predicted == labels).sum().item()
            total += labels.size(0)

    return running_loss / total, correct / total


from brevitas.quant import Int8BiasPerTensorFixedPointInternalScaling, Int8WeightPerTensorFixedPoint, Int8WeightPerTensorFloat
from brevitas.quant import Int8ActPerTensorFixedPoint, Int8Bias, Uint8ActPerTensorFloat, Int32Bias
from brevitas.nn import QuantIdentity


class QuantPatchEmbeddings(nn.Module):
    """
    Convert the image into patches and then project them into a vector space.
    """

    def __init__(self, config):
        super().__init__()
        self.image_size = config["image_size"]
        self.patch_size = config["patch_size"]
        self.num_channels = config["num_channels"]
        self.embed_dim = config["embed_dim"]
        self.drop = nn.Dropout(config["dropout"])
        # Calculate the number of patches from the image size and patch size
        self.num_patches = (self.image_size // self.patch_size) ** 2
        
        # Create a projection layer to convert the image into patches
        # The layer projects each patch into a vector of size hidden_size
        
        self.proj = QuantConv2d(
            self.num_channels, 
            self.embed_dim, 
            kernel_size=self.patch_size, 
            stride=self.patch_size,
            bias=True,
            input_quant= Int8ActPerTensorFloat,
            weight_quant = Int8WeightPerTensorFloat,
            bias_quant=Int32Bias,
            output_quant=Int8ActPerTensorFloat,
            return_quant_tensor=True
                            )
        
        # --- CLS Token: Standard Parameter ---
        self.cls_token_param = nn.Parameter(torch.zeros(1, 1, self.embed_dim))

                # --- Positional Embedding: Standard Parameter ---
        self.pos_embed_param = nn.Parameter(torch.zeros(1, 1 + self.num_patches, self.embed_dim))

        # --- CLS Token: Quantizer Wrapper ---
        self.cls_token_quant = QuantIdentity(
            act_quant=self.proj.output_quant,return_quant_tensor=True)
        
        # --- Positional Embedding: Quantizer Wrapper ---
        self.pos_embed_quant = QuantIdentity(
            act_quant=self.proj.output_quant,return_quant_tensor=True)

        nn.init.trunc_normal_(self.cls_token_param, std=0.02)
        nn.init.trunc_normal_(self.pos_embed_param, std=0.02)


    def forward(self, x):
        B = x.shape[0]

        # Project image patches: [B, C, H, W] -> [B, embed_dim, H/P, W/P]
        x = self.proj(x)                  # [B, E, H', W']
        x = x.flatten(2).transpose(1, 2)  # [B, N, E]

        # Expand CLS token to batch size and prepend to patch tokens
        cls_token = self.cls_token_param.expand(B, -1, -1)
        cls_token = self.cls_token_quant(cls_token)  # [B, 1, E]
        x = torch.cat((cls_token, x), dim=1)          # [B, N+1, E]

        positional = self.pos_embed_quant(self.pos_embed_param)

        # Add positional embedding
        x = x + positional

        

        x = self.drop(x)


        return x
    

class QuantMLP(nn.Module):

    def __init__(self, config):
        super().__init__()

        self.fc1 = QuantLinear(
            config["embed_dim"], 
            config["mlp_size"],
            bias=True,
            input_quant= Int8ActPerTensorFloat,
            weight_quant = Int8WeightPerTensorFloat,
            bias_quant=Int32Bias,
            output_quant=Int8ActPerTensorFloat
        )
        self.act = QuantReLU(
            act_quant= Uint8ActPerTensorFloat
        )
        self.drop = nn.Dropout(config["dropout"])
        self.fc2 = QuantLinear(
            config["mlp_size"], 
            config["embed_dim"],
            bias=True,
            #same quantizer for both FC2 Input -- FC1 Output
            input_quant= self.fc1.output_quant,
            weight_quant = Int8WeightPerTensorFloat,
            bias_quant=Int32Bias,
            output_quant=Int8ActPerTensorFloat
        )

        #From the paper https://openaccess.thecvf.com/content/ICCV2021W/NeurArch/papers/Yao_Leveraging_Batch_Normalization_for_Vision_Transformers_ICCVW_2021_paper.pdf
        self.norm = nn.BatchNorm1d(config["mlp_size"])

    def _bn(self, bn, x):              # x: [B, N, D]
        x = x.transpose(1, 2)          # [B, D, N]
        x = bn(x)                      # BN over features
        return x.transpose(1, 2)       # back to [B, N, D]

    def forward(self,x):
        x = self.fc1(x)
        x = self.act(x)
        x = self.drop(x)

        #x = self._bn(self.norm, x)

        x = self.fc2(x)
        x = self.drop(x)

        return x

import torch
import torch.nn.functional as F


def streaming_partial_softmax_torch(
    x: torch.Tensor,
    integerize: bool = True,
    width: int = 16,
    return_uint8: bool = False,
) -> torch.Tensor:

    if x.dim() != 4:
        raise ValueError(f"Expected x with shape [B, H, N, N], got {tuple(x.shape)}")

    Bsz, n_heads, seq_length, seq_length_2 = x.shape

    if seq_length != seq_length_2:
        raise ValueError(f"Expected square attention matrix, got {seq_length} x {seq_length_2}")

    if not integerize:
        return torch.softmax(x, dim=-1)

    original_seq_length = seq_length

    # Pad to next multiple of width
    padded_seq_length = ((seq_length + width - 1) // width) * width
    pad_amount = padded_seq_length - seq_length

    if pad_amount > 0:
        # Pad columns with very negative values so they contribute ~0 to softmax
        x = F.pad(x, pad=(0, pad_amount), mode="constant", value=-128.0)

        # Also pad rows, because this implementation expects square [N, N]
        x = F.pad(x, pad=(0, 0, 0, pad_amount), mode="constant", value=-128.0)

    Bsz, n_heads, seq_length, _ = x.shape
    groups = seq_length // width

    B_bits = 8
    range_scale = 32
    eps_max = range_scale * B_bits / (2 ** B_bits)

    x_int = torch.round(x).clamp(-128, 127).to(torch.int64)

    exp_partial_sum = torch.zeros(
        Bsz, n_heads, seq_length,
        device=x.device,
        dtype=torch.int64,
    )

    global_max = torch.full(
        (Bsz, n_heads, seq_length),
        -128,
        device=x.device,
        dtype=torch.int64,
    )

    for i in range(groups):
        start = i * width
        end = start + width

        block = x_int[..., start:end]

        current_max = block.max(dim=-1).values

        max_shift = torch.floor(
            (current_max - global_max).float() * eps_max
            + 0.5
            + torch.finfo(torch.float32).eps
        ).to(torch.int64)

        mask = current_max > global_max

        shift_sum = torch.where(
            mask,
            max_shift,
            torch.zeros_like(max_shift),
        )

        global_max = torch.where(mask, current_max, global_max)

        diff = global_max.unsqueeze(-1) - block

        shift = torch.floor(
            diff.float() * eps_max
            + 0.5
            + torch.finfo(torch.float32).eps
        ).to(torch.int64)

        shift = shift.clamp(min=0)

        base = torch.full_like(shift, 2 ** 8)
        exp_block = torch.bitwise_right_shift(base, shift)

        exp_sum = exp_block.sum(dim=-1)

        exp_partial_sum = (
            torch.bitwise_right_shift(exp_partial_sum, shift_sum.clamp(min=0))
            + exp_sum
        )

    exp_partial_sum = exp_partial_sum.clamp(min=1)

    exp_partial_sum_inverse = ((2 ** 8 - 1) * (2 ** 8)) // exp_partial_sum

    diff = global_max.unsqueeze(-1) - x_int

    shift = torch.floor(
        diff.float() * eps_max
        + 0.5
        + torch.finfo(torch.float32).eps
    ).to(torch.int64)

    shift = shift.clamp(min=0)

    attn_uint8 = torch.bitwise_right_shift(
        exp_partial_sum_inverse.unsqueeze(-1),
        shift,
    ).clamp(0, 255).to(torch.uint8)

    # Crop back to original [B, H, N, N]
    attn_uint8 = attn_uint8[..., :original_seq_length, :original_seq_length]

    if return_uint8:
        return attn_uint8

    return attn_uint8.to(dtype=x.dtype) / 255.0

import math
import torch
import torch.nn as nn

from brevitas.nn import QuantLinear, QuantIdentity

try:
    from brevitas.quant import (
        Int8ActPerTensorFloat,
        Int8WeightPerTensorFloat,
        Int32Bias,
    )
except ImportError:
    from brevitas.quant.scaled_int import (
        Int8ActPerTensorFloat,
        Int8WeightPerTensorFloat,
        Int32Bias,
    )


# ---------------------------------------------------------------------
# HLS EXP LUT
# ---------------------------------------------------------------------

EXP_LUT_64 = torch.tensor([
    1,   1,   1,   1,   1,   1,   1,   1,
    1,   1,   1,   1,   1,   1,   2,   2,
    2,   2,   2,   2,   2,   2,   2,   3,
    3,   3,   3,   4,   4,   4,   5,   5,
    6,   7,   7,   8,   9,   10,  12,  13,
    15,  17,  19,  21,  24,  27,  30,  34,
    39,  44,  50,  57,  64,  73,  82,  93,
    106, 120, 136, 154, 175, 199, 226, 255
], dtype=torch.int32)


def _value(x):
    """
    Return the floating-point tensor carried by a Brevitas QuantTensor,
    or x itself if x is already a torch.Tensor.
    """
    return x.value if hasattr(x, "value") else x


def _quant_tensor_to_int(x, bit_width=8, signed=True):
    """
    Convert a Brevitas QuantTensor to its integer-domain representation.

    If x is not a QuantTensor, this simply rounds it.
    """

    if hasattr(x, "value") and hasattr(x, "scale"):
        value = x.value
        scale = x.scale

        if hasattr(x, "zero_point") and x.zero_point is not None:
            zero_point = x.zero_point
        else:
            zero_point = 0.0

        x_int = torch.round(value / scale + zero_point)
    else:
        x_int = torch.round(x)

    if signed:
        qmin = -(2 ** (bit_width - 1))
        qmax = 2 ** (bit_width - 1) - 1
    else:
        qmin = 0
        qmax = 2 ** bit_width - 1

    x_int = torch.clamp(x_int, qmin, qmax)

    return x_int.to(torch.int32)


def hls_exp_lut(z):
    """
    PyTorch equivalent of your HLS exp_lut_lookup_int.

    HLS behavior:
        z_clip = clamp(z, -255, 0)
        idx = (z_clip + 255) >> 2
        return exp_lut[idx]
    """

    lut = EXP_LUT_64.to(device=z.device)

    z = z.to(torch.int32)
    z = torch.clamp(z, min=-255, max=0)

    idx = (z + 255) // 4

    return lut[idx]


def hls_lut_softmax(logits_int, softmax_scale=127):
    """
    HLS-like LUT softmax.

    Args:
        logits_int:
            Integer tensor. Softmax is computed over the last dimension.

        softmax_scale:
            Use 127 if your HLS output is interpreted as signed int8.
            Use 255 if your HLS output is interpreted as unsigned uint8.

    Returns:
        Floating tensor approximately in [0, 1].
    """

    logits_int = logits_int.to(torch.int32)

    row_max = logits_int.max(dim=-1, keepdim=True).values

    z = logits_int - row_max

    exp_int = hls_exp_lut(z)

    row_sum = exp_int.sum(dim=-1, keepdim=True).clamp(min=1)

    y_int = (exp_int * softmax_scale) // row_sum

    y_float = y_int.to(torch.float32) / float(softmax_scale)

    return y_float


class HLSLUTSoftmaxSTE(torch.autograd.Function):
    @staticmethod
    def forward(ctx, logits_int_float, softmax_scale):
        logits_int = torch.round(logits_int_float).to(torch.int32)

        with torch.no_grad():
            y = hls_lut_softmax(
                logits_int,
                softmax_scale=softmax_scale,
            )

        ctx.save_for_backward(y)
        return y

    @staticmethod
    def backward(ctx, grad_out):
        (y,) = ctx.saved_tensors

        # Standard softmax Jacobian-vector product:
        # dL/dx = y * (dL/dy - sum_j dL/dy_j * y_j)
        dot = (grad_out * y).sum(dim=-1, keepdim=True)
        grad_logits = y * (grad_out - dot)

        return grad_logits, None

def quant_tensor_to_int_ste(x, bit_width=8, signed=True):
    if hasattr(x, "value") and hasattr(x, "scale"):
        value = x.value
        scale = x.scale

        if hasattr(x, "zero_point") and x.zero_point is not None:
            zero_point = x.zero_point
        else:
            zero_point = 0.0

        x_float = value / scale + zero_point
    else:
        x_float = x

    if signed:
        qmin = -(2 ** (bit_width - 1))
        qmax = 2 ** (bit_width - 1) - 1
    else:
        qmin = 0
        qmax = 2 ** bit_width - 1

    x_q = torch.clamp(torch.round(x_float), qmin, qmax)

    # Straight-through estimator:
    # forward: x_q
    # backward: gradient as if identity
    return x_float + (x_q - x_float).detach()

# ---------------------------------------------------------------------
# Quantized Multi-Head Self-Attention
# ---------------------------------------------------------------------

class QuantMultiHeadSelfAttentionLayer(nn.Module):
    def __init__(self, config):
        super().__init__()

        self.embed_dim = config["embed_dim"]
        self.num_heads = config["num_heads"]
        self.dropout = config.get("dropout", 0.0)

        assert self.embed_dim % self.num_heads == 0

        self.head_dim = self.embed_dim // self.num_heads
        self.scale = self.head_dim ** -0.5

        self.delta_tracking = True

        # ------------------------------------------------------------
        # Quantized Q, K, V projections
        # ------------------------------------------------------------
        self.q_proj = QuantLinear(
            self.embed_dim,
            self.embed_dim,
            bias=True,
            input_quant=Int8ActPerTensorFloat,
            weight_quant=Int8WeightPerTensorFloat,
            bias_quant=Int32Bias,
            output_quant=Int8ActPerTensorFloat,
            return_quant_tensor=True,
        )

        self.k_proj = QuantLinear(
            self.embed_dim,
            self.embed_dim,
            bias=True,
            input_quant=self.q_proj.input_quant,
            weight_quant=Int8WeightPerTensorFloat,
            bias_quant=Int32Bias,
            output_quant=Int8ActPerTensorFloat,
            return_quant_tensor=True,
        )

        self.v_proj = QuantLinear(
            self.embed_dim,
            self.embed_dim,
            bias=True,
            input_quant=self.q_proj.input_quant,
            weight_quant=Int8WeightPerTensorFloat,
            bias_quant=Int32Bias,
            output_quant=Int8ActPerTensorFloat,
            return_quant_tensor=True,
        )

        # Quantize QK^T logits before the LUT softmax.
        self.logit_quant = QuantIdentity(
            act_quant=Int8ActPerTensorFloat,
            return_quant_tensor=True,
        )

        # Quantize softmax output before A @ V.
        self.soft_quant = QuantIdentity(
            act_quant=Int8ActPerTensorFloat,
            return_quant_tensor=True,
        )

        self.drop = nn.Dropout(self.dropout)

        # ------------------------------------------------------------
        # Output projection
        # ------------------------------------------------------------
        self.out_proj = QuantLinear(
            self.embed_dim,
            self.embed_dim,
            bias=True,
            input_quant=Int8ActPerTensorFloat,
            weight_quant=Int8WeightPerTensorFloat,
            bias_quant=Int32Bias,
            output_quant=Int8ActPerTensorFloat,
            return_quant_tensor=False,
        )

    def forward(self, x):
        """
        Input:
            x: [B, N, E]

        Output:
            y: [B, N, E]
        """

        B, N, E = x.shape
        assert E == self.embed_dim

        # ------------------------------------------------------------
        # 1. Quantized projections
        # ------------------------------------------------------------
        q_qt = self.q_proj(x)
        k_qt = self.k_proj(x)
        v_qt = self.v_proj(x)

        q = _value(q_qt)
        k = _value(k_qt)
        v = _value(v_qt)

        # ------------------------------------------------------------
        # 2. Split heads
        #
        # [B, N, E] -> [B, H, N, head_dim]
        # ------------------------------------------------------------
        q = q.view(B, N, self.num_heads, self.head_dim).transpose(1, 2)
        k = k.view(B, N, self.num_heads, self.head_dim).transpose(1, 2)
        v = v.view(B, N, self.num_heads, self.head_dim).transpose(1, 2)

        # ------------------------------------------------------------
        # 3. Attention logits
        #
        # attn_logits: [B, H, N, N]
        # ------------------------------------------------------------
        

        # ------------------------------------------------------------
        attn_logits = torch.matmul(q, k.transpose(-2, -1))

        # Scale by 1 / sqrt(head_dim)
        attn_logits = attn_logits * self.scale

        attn_logits_qt = self.logit_quant(attn_logits)

        attn_logits_int_ste = quant_tensor_to_int_ste(
            attn_logits_qt,
            bit_width=8,
            signed=True,
        )

        attn = HLSLUTSoftmaxSTE.apply(
            attn_logits_int_ste,
            127,
        )

        # Quantize logits before softmax
        """
        attn_logits_qt = self.logit_quant(attn_logits)

        # Convert quantized logits to integer domain,
        # because your HLS LUT softmax operates on integers.
        attn_logits_int = _quant_tensor_to_int(
            attn_logits_qt,
            bit_width=8,
            signed=True,
        )

        # ------------------------------------------------------------
        # 4. HLS-like LUT softmax
        # ------------------------------------------------------------
        attn = hls_lut_softmax(
            attn_logits_int,
            softmax_scale=127,
        )
        """
        # Optional quantization after softmax
        attn_qt = self.soft_quant(attn)
        attn = _value(attn_qt)

        attn = self.drop(attn)

        # ------------------------------------------------------------
        # 5. A @ V
        #
        # attn: [B, H, N, N]
        # v:    [B, H, N, head_dim]
        # p:    [B, H, N, head_dim]
        # ------------------------------------------------------------
        p = torch.matmul(attn, v)

        # ------------------------------------------------------------
        # 6. Merge heads
        #
        # [B, H, N, head_dim] -> [B, N, E]
        # ------------------------------------------------------------
        p = p.transpose(1, 2).contiguous().view(B, N, E)

        # ------------------------------------------------------------
        # 7. Output projection
        # ------------------------------------------------------------
        y = self.out_proj(p)

        return y
class QuantBlockBatch(nn.Module):
    def __init__(self, config):
        super().__init__()
        D = config["embed_dim"]
        self.mha = QuantMultiHeadSelfAttentionLayer(config)
        self.mlp = QuantMLP(config)
        self.bn1 = nn.BatchNorm1d(D)
        self.bn2 = nn.BatchNorm1d(D)

        self.requant_mha = QuantIdentity(act_quant = self.mha.out_proj.output_quant,
                            return_quant_tensor=True)
        self.requant_mlp = QuantIdentity(act_quant = self.mlp.fc2.output_quant,
                            return_quant_tensor=True)

        self.quant_bn1_out = QuantIdentity(
            act_quant=self.mha.q_proj.input_quant, return_quant_tensor=True
        )
        self.quant_bn2_out = QuantIdentity(
            act_quant=self.mlp.fc1.input_quant, return_quant_tensor=True
        )

    def _bn(self, bn, x):              # x: [B, N, D]
        x = x.transpose(1, 2)          # [B, D, N]
        x = bn(x)                      # BN over features
        return x.transpose(1, 2)       # back to [B, N, D]

    def forward(self, x):
        y_in = self.quant_bn1_out(self._bn(self.bn1, x))
        y = self.mha(y_in)
        x = self.requant_mha(x) + y

        z_in = self.quant_bn2_out(self._bn(self.bn2, x))
        z = self.mlp(z_in)
        return self.requant_mlp(x) + z
    
class ViT(nn.Module):
    def __init__(self,config):
        super().__init__()
        print(config)
        embed_dim = config["embed_dim"]
        depth = config["depth"]
        num_classes = config["num_classes"]

        self.patch = QuantPatchEmbeddings(config)
        #self.norm = nn.LayerNorm(embed_dim)
        self.norm = nn.BatchNorm1d(embed_dim)
        self.blocks = nn.ModuleList([
            #QuantBlock(config)
            QuantBlockBatch(config)
            for _ in range(depth)
        ])

        self.head = QuantLinear(
            embed_dim, 
            num_classes,
            bias=True,
            input_quant= self.blocks[-1].quant_bn2_out.act_quant,
            weight_quant = Int8WeightPerTensorFloat,
            bias_quant=Int8Bias,
            output_quant=Int8ActPerTensorFloat            
        )

        
    def _bn(self, bn, x):              # x: [B, N, D]
        x = x.transpose(1, 2)          # [B, D, N]
        x = bn(x)                      # BN over features, if not transpose we bn over tokens
        return x.transpose(1, 2) 

    def forward(self,x):

        x = self.patch(x)  # (B, N, D)
        for block in self.blocks:
            x = block(x)
        x = self._bn(self.norm,x)
        cls_token = x[:, 0]  # Use CLS token
        return self.head(cls_token)




model = ViT(config).to(device)

EPOCHS = config["epochs"]

EPOCHS = 10

vit_optim_train = False

if vit_optim_train:
      criterion = nn.CrossEntropyLoss(label_smoothing=0.1)

      optimizer = torch.optim.AdamW(
      model.parameters(),
      lr=1e-4,
      weight_decay=5e-2
      )

      scheduler = torch.optim.lr_scheduler.ReduceLROnPlateau(
            optimizer,
            mode="min",       # because we monitor val_loss
            factor=0.5,       # new_lr = old_lr * 0.5
            patience=5,       # wait 5 bad epochs before reducing
            threshold=1e-4,
            min_lr=1e-6
            )
else:
      criterion = nn.CrossEntropyLoss()
      optimizer = optim.Adam(model.parameters(), lr=3e-4)

train_ = True

if train_:

      for epoch in range(EPOCHS):
            train_loss, train_acc = train(model, train_loader, criterion, optimizer, device)
            test_loss, test_acc = test(model, test_loader, criterion, device)

            if vit_optim_train:
                  scheduler.step(test_loss)
                  print(
                  f"[Epoch {epoch+1}/{EPOCHS}] "
                  f"LR: {scheduler.get_last_lr()[0]:.6f} | "
                  f"Train Loss: {train_loss:.4f}, Train Acc: {train_acc:.4f} | "
                  f"Test Loss: {test_loss:.4f}, Test Acc: {test_acc:.4f}"
            )
            else:
                  print(f"[Epoch {epoch+1}/{EPOCHS}] "f"Train Loss: {train_loss:.4f}, Train Acc: {train_acc:.4f} | "f"Test Loss: {test_loss:.4f}, Test Acc: {test_acc:.4f}")

      model.to("cpu")
      torch.save(model.state_dict(), "ViT_Quant_1.pth")
else:
      model.load_state_dict(torch.load("./ViT_Quant_1.pth"))
      model.eval()
    

import math
from pathlib import Path

import numpy as np
import torch


# ============================================================
# Fixed-point export format
# ============================================================

INT32_MIN = -(1 << 31)
INT32_MAX = (1 << 31) - 1

# Quantization scales are usually small numbers such as 0.0039.
# Q30 preserves them accurately as int32_t.
SCALE_FRAC_BITS = 30

# BN parameters, attention scale, and generic real-valued params.
# Q16 is safer for values that may be larger than 1.
PARAM_FRAC_BITS = 16


def to_numpy(x):
    if isinstance(x, torch.Tensor):
        return x.detach().cpu().numpy()
    return np.asarray(x)


def flatten_c(x):
    return to_numpy(x).reshape(-1)


def fixed_to_int32_np(x, frac_bits, name=""):
    x = to_numpy(x).astype(np.float64)
    q = np.round(x * float(1 << frac_bits))

    if q.size > 0:
        q_min = q.min()
        q_max = q.max()

        if q_min < INT32_MIN or q_max > INT32_MAX:
            raise OverflowError(
                f"{name} overflows int32_t with frac_bits={frac_bits}: "
                f"min={q_min}, max={q_max}"
            )

    return q.astype(np.int32)


def c_array_str(name, arr, ctype, values_per_line=16):
    arr = flatten_c(arr)

    if ctype == "float":
        vals = [f"{float(v):.8f}f" for v in arr]
    elif ctype == "int8_t":
        vals = [str(int(np.int8(v))) for v in arr]
    elif ctype == "int32_t":
        vals = [str(int(np.int32(v))) for v in arr]
    else:
        raise ValueError(f"Unsupported ctype: {ctype}")

    lines = []
    for i in range(0, len(vals), values_per_line):
        lines.append("    " + ", ".join(vals[i:i + values_per_line]))

    return f"const {ctype} {name}[{len(arr)}] = {{\n" + ",\n".join(lines) + "\n};\n"


def c_scalar_str(name, value, ctype):
    if ctype == "float":
        return f"const {ctype} {name} = {float(value):.8f}f;\n"
    elif ctype == "int32_t":
        return f"const {ctype} {name} = {int(np.int32(value))};\n"
    else:
        raise ValueError(f"Unsupported scalar ctype: {ctype}")


def c_fixed_scalar_str(name, value, frac_bits):
    q = fixed_to_int32_np(np.asarray([value]), frac_bits, name=name)[0]
    return c_scalar_str(name, q, "int32_t")


def c_fixed_array_str(name, arr, frac_bits, values_per_line=16):
    q = fixed_to_int32_np(arr, frac_bits, name=name)
    return c_array_str(name, q, "int32_t", values_per_line=values_per_line)


def quantize_np_to_int8(x, scale, zp=0):
    q = np.round(x / scale).astype(np.int32) + int(zp)
    q = np.clip(q, -128, 127)
    return q.astype(np.int8)


def first_scalar(x):
    if x is None:
        return None

    if isinstance(x, torch.Tensor):
        if x.numel() == 0:
            return None
        return float(x.detach().cpu().reshape(-1)[0])

    if isinstance(x, np.ndarray):
        if x.size == 0:
            return None
        return float(x.reshape(-1)[0])

    return float(x)


def get_quant_scale_from_proxy(proxy):
    for attr in ["scale", "scaling_impl"]:
        if hasattr(proxy, attr):
            obj = getattr(proxy, attr)
            try:
                val = obj() if callable(obj) else obj
                s = first_scalar(val)
                if s is not None:
                    return s
            except Exception:
                pass

    try:
        tq = proxy.fused_activation_quant_proxy.tensor_quant
        if hasattr(tq, "scale"):
            s = first_scalar(tq.scale())
            if s is not None:
                return s
    except Exception:
        pass

    return None


def get_quant_zp_from_proxy(proxy, default=0):
    for attr in ["zero_point"]:
        if hasattr(proxy, attr):
            obj = getattr(proxy, attr)
            try:
                val = obj() if callable(obj) else obj
                zp = first_scalar(val)
                if zp is not None:
                    return int(round(zp))
            except Exception:
                pass

    try:
        tq = proxy.fused_activation_quant_proxy.tensor_quant
        if hasattr(tq, "zero_point"):
            zp = first_scalar(tq.zero_point())
            if zp is not None:
                return int(round(zp))
    except Exception:
        pass

    return int(default)


def get_bn_params(bn):
    rm = to_numpy(bn.running_mean).astype(np.float32)
    rv = to_numpy(bn.running_var).astype(np.float32)
    gamma = to_numpy(bn.weight).astype(np.float32)
    beta = to_numpy(bn.bias).astype(np.float32)
    eps = float(bn.eps)

    rs = 1.0 / np.sqrt(rv + eps)

    return {
        "rm": rm,
        "rs": rs.astype(np.float32),
        "scale": gamma,
        "bias": beta,
    }


def ratio_to_mult_shift(acc_scale, target_scale, shift=16):
    """
    MULT / 2^SHIFT ~= acc_scale / target_scale
    """
    ratio = float(acc_scale) / float(target_scale)
    mult = int(round(ratio * (1 << shift)))
    return mult, shift


def get_quantlinear_export(qlinear, input_act_scale):
    qw = qlinear.quant_weight()

    if not hasattr(qw, "value") or not hasattr(qw, "scale"):
        raise RuntimeError(f"quant_weight() did not return a QuantTensor for {qlinear}")

    w_real = qw.value.detach().cpu()
    w_scale = float(qw.scale.detach().cpu().reshape(-1)[0])

    w_int = torch.round(w_real / w_scale)
    w_int = torch.clamp(w_int, -128, 127).to(torch.int8).numpy()

    # Export linear weights as [in_features, out_features]
    # because PyTorch stores them as [out_features, in_features].
    w_int = w_int.T

    if qlinear.bias is not None:
        bias_scale = float(input_act_scale) * float(w_scale)
        b_real = qlinear.bias.detach().cpu()
        b_int = torch.round(b_real / bias_scale).to(torch.int32).numpy()
    else:
        b_int = np.zeros(qlinear.out_features, dtype=np.int32)

    return w_int, b_int, w_scale, 0


def get_quantconv_export(qconv, input_act_scale):
    qw = qconv.quant_weight()

    if not hasattr(qw, "value") or not hasattr(qw, "scale"):
        raise RuntimeError(f"quant_weight() did not return a QuantTensor for {qconv}")

    w_real = qw.value.detach().cpu()
    w_scale = float(qw.scale.detach().cpu().reshape(-1)[0])

    w_int = torch.round(w_real / w_scale)
    w_int = torch.clamp(w_int, -128, 127).to(torch.int8).numpy()

    if qconv.bias is not None:
        bias_scale = float(input_act_scale) * float(w_scale)
        b_real = qconv.bias.detach().cpu()
        b_int = torch.round(b_real / bias_scale).to(torch.int32).numpy()
    else:
        b_int = np.zeros(qconv.out_channels, dtype=np.int32)

    return w_int, b_int, w_scale, 0


def inspect_exported_weight(name, w_int):
    w_flat = w_int.reshape(-1)
    print(name)
    print("  shape:", w_int.shape)
    print("  min/max:", int(w_flat.min()), int(w_flat.max()))
    print("  nonzero count:", int(np.count_nonzero(w_flat)))
    print("  first 20:", w_flat[:20])


def inspect_exported_bias(name, b_int):
    b_flat = b_int.reshape(-1)
    print(name)
    print("  shape:", b_int.shape)
    print("  min/max:", int(b_flat.min()), int(b_flat.max()))
    print("  nonzero count:", int(np.count_nonzero(b_flat)))
    print("  first 20:", b_flat[:20])

def export_bn_affine_int(
    bn,
    input_scale,
    output_scale,
    output_zp=0,
    input_zp=0,
    shift=16,
):
    rm = to_numpy(bn.running_mean).astype(np.float64)
    rv = to_numpy(bn.running_var).astype(np.float64)
    gamma = to_numpy(bn.weight).astype(np.float64)
    beta = to_numpy(bn.bias).astype(np.float64)
    eps = float(bn.eps)

    inv_std = 1.0 / np.sqrt(rv + eps)

    # y_real = gamma * inv_std * (S_in * (q - zp_in) - rm) + beta
    # q_out = y_real / S_out + zp_out
    alpha = float(input_scale) * gamma * inv_std / float(output_scale)

    beta_q = (
        beta
        - rm * gamma * inv_std
        - float(input_zp) * float(input_scale) * gamma * inv_std
    ) / float(output_scale) + float(output_zp)

    mul = np.round(alpha * (1 << shift)).astype(np.int64)
    add = np.round(beta_q * (1 << shift)).astype(np.int64)

    if mul.min() < INT32_MIN or mul.max() > INT32_MAX:
        raise OverflowError("BN mul overflows int32_t")

    if add.min() < INT32_MIN or add.max() > INT32_MAX:
        raise OverflowError("BN add overflows int32_t")

    return mul.astype(np.int32), add.astype(np.int32), shift

def export_vit_to_c(
    model,
    config,
    out_dir_h="./vit_c_export",
    out_dir_c="./vit_c_export",
    verbose=True,
):
    model.eval()

    out_dir_h = Path(out_dir_h)
    out_dir_h.mkdir(parents=True, exist_ok=True)

    out_dir_c = Path(out_dir_c)
    out_dir_c.mkdir(parents=True, exist_ok=True)

    # ---------------- model paths ----------------
    patch = model.patch
    block = model.blocks[0]
    mha = block.mha
    mlp = block.mlp
    head = model.head

    # ---------------- config ----------------
    in_channels = int(config["num_channels"])
    height = int(config["image_size"])
    width = int(config["image_size"])
    patch_size = int(config["patch_size"])
    embed_dim = int(config["embed_dim"])
    num_heads = int(config["num_heads"])
    num_classes = int(config["num_classes"])

    seq_len = (height // patch_size) * (width // patch_size)
    attn_scale = math.sqrt(embed_dim // num_heads)

    # ---------------- activation scales / zero-points ----------------
    INPUT_SCALE = get_quant_scale_from_proxy(patch.proj.input_quant)
    INPUT_ZERO_PT = get_quant_zp_from_proxy(patch.proj.input_quant, 0)

    patch_out_scale = get_quant_scale_from_proxy(patch.proj.output_quant)
    patch_out_zp = get_quant_zp_from_proxy(patch.proj.output_quant, 0)

    patch_weight_scale = get_quant_scale_from_proxy(patch.proj.weight_quant)

    bn1_out_scale = get_quant_scale_from_proxy(mha.q_proj.input_quant)
    bn1_out_zp = get_quant_zp_from_proxy(mha.q_proj.input_quant, 0)

    bn2_out_scale = get_quant_scale_from_proxy(mlp.fc1.input_quant)
    bn2_out_zp = get_quant_zp_from_proxy(mlp.fc1.input_quant, 0)

    q_out_scale = get_quant_scale_from_proxy(mha.q_proj.output_quant)
    q_out_zp = get_quant_zp_from_proxy(mha.q_proj.output_quant, 0)

    k_out_scale = get_quant_scale_from_proxy(mha.k_proj.output_quant)
    k_out_zp = get_quant_zp_from_proxy(mha.k_proj.output_quant, 0)

    v_out_scale = get_quant_scale_from_proxy(mha.v_proj.output_quant)
    v_out_zp = get_quant_zp_from_proxy(mha.v_proj.output_quant, 0)

    out_proj_in_scale = get_quant_scale_from_proxy(mha.out_proj.input_quant)
    out_proj_in_zp = get_quant_zp_from_proxy(mha.out_proj.input_quant, 0)

    out_proj_out_scale = get_quant_scale_from_proxy(mha.out_proj.output_quant)
    out_proj_out_zp = get_quant_zp_from_proxy(mha.out_proj.output_quant, 0)

    fc1_out_scale = get_quant_scale_from_proxy(mlp.fc1.output_quant)
    fc1_out_zp = get_quant_zp_from_proxy(mlp.fc1.output_quant, 0)

    fc2_in_scale = get_quant_scale_from_proxy(mlp.fc2.input_quant)
    fc2_in_zp = get_quant_zp_from_proxy(mlp.fc2.input_quant, 0)

    fc2_out_scale = get_quant_scale_from_proxy(mlp.fc2.output_quant)
    fc2_out_zp = get_quant_zp_from_proxy(mlp.fc2.output_quant, 0)

    soft_out_scale = None
    soft_out_zp = 0

    if hasattr(mha, "soft_quant") and hasattr(mha.soft_quant, "act_quant"):
        soft_out_scale = get_quant_scale_from_proxy(mha.soft_quant.act_quant)
        soft_out_zp = get_quant_zp_from_proxy(mha.soft_quant.act_quant, 0)

    if soft_out_scale is None:
        soft_out_scale = 1.0 / 255.0
        soft_out_zp = 0

    # Residual output domains
    res1_scale = out_proj_out_scale
    res1_zp = out_proj_out_zp

    res2_scale = fc2_out_scale
    res2_zp = fc2_out_zp

    # Classifier input domain
    head_in_scale = get_quant_scale_from_proxy(head.input_quant)
    head_in_zp = get_quant_zp_from_proxy(head.input_quant, 0)

    debug_scales = {
        "INPUT_SCALE": INPUT_SCALE,
        "patch_out_scale": patch_out_scale,
        "patch_weight_scale": patch_weight_scale,
        "bn1_out_scale": bn1_out_scale,
        "bn2_out_scale": bn2_out_scale,
        "q_out_scale": q_out_scale,
        "k_out_scale": k_out_scale,
        "v_out_scale": v_out_scale,
        "soft_out_scale": soft_out_scale,
        "out_proj_in_scale": out_proj_in_scale,
        "out_proj_out_scale": out_proj_out_scale,
        "fc1_out_scale": fc1_out_scale,
        "fc2_in_scale": fc2_in_scale,
        "fc2_out_scale": fc2_out_scale,
        "head_in_scale": head_in_scale,
    }

    if verbose:
        print("=== Export scales ===")
        for k, v in debug_scales.items():
            print(k, v)

    missing = [k for k, v in debug_scales.items() if v is None]
    if missing:
        raise RuntimeError(f"Missing quant scales for: {missing}")

    # ---------------- weights / biases ----------------
    patch_w, patch_b, patch_w_scale, _ = get_quantconv_export(patch.proj, INPUT_SCALE)

    w_q_0, bias_q_0, wq_scale, _ = get_quantlinear_export(mha.q_proj, bn1_out_scale)
    w_k_0, bias_k_0, wk_scale, _ = get_quantlinear_export(mha.k_proj, bn1_out_scale)
    w_v_0, bias_v_0, wv_scale, _ = get_quantlinear_export(mha.v_proj, bn1_out_scale)
    head_0, bias_h_0, wh_scale, _ = get_quantlinear_export(mha.out_proj, out_proj_in_scale)

    w_1_0, bias_1_0, w1_scale, _ = get_quantlinear_export(mlp.fc1, bn2_out_scale)
    w_2_0, bias_2_0, w2_scale, _ = get_quantlinear_export(mlp.fc2, fc2_in_scale)

    clas_weights_0, clas_bias_0, head_w_scale, _ = get_quantlinear_export(head, head_in_scale)

    # ---------------- cls token / positional encoding ----------------
    cls_token = quantize_np_to_int8(
        to_numpy(patch.cls_token_param),
        patch_out_scale,
        patch_out_zp,
    )

    pos_enc = quantize_np_to_int8(
        to_numpy(patch.pos_embed_param),
        patch_out_scale,
        patch_out_zp,
    )

    # ---------------- BN params ----------------
    bn1 = get_bn_params(block.bn1)
    bn2 = get_bn_params(block.bn2)
    bn_final = get_bn_params(model.norm)

    # ---------------- requant params ----------------
    patch_acc_scale = float(INPUT_SCALE) * float(patch_w_scale)
    PATCH_MULT, PATCH_SHIFT = ratio_to_mult_shift(
        patch_acc_scale,
        patch_out_scale,
        shift=16,
    )
    PATCH_ZERO_PT = int(patch_out_zp)

    MULT_q, SHIFT_q = ratio_to_mult_shift(
        float(bn1_out_scale) * float(wq_scale),
        q_out_scale,
        shift=16,
    )
    ZP_OUT_q = int(q_out_zp)

    MULT_k, SHIFT_k = ratio_to_mult_shift(
        float(bn1_out_scale) * float(wk_scale),
        k_out_scale,
        shift=16,
    )
    ZP_OUT_k = int(k_out_zp)

    MULT_vproj, SHIFT_vproj = ratio_to_mult_shift(
        float(bn1_out_scale) * float(wv_scale),
        v_out_scale,
        shift=16,
    )
    ZP_OUT_vproj = int(v_out_zp)

    # Attention score tensor A = Q @ K^T.
    # qk accumulator scale = q_out_scale * k_out_scale.
    SCALE_x = float(q_out_scale) * float(k_out_scale)
    ZERO_x = 0

    MULT_a, SHIFT_a = ratio_to_mult_shift(
        float(q_out_scale) * float(k_out_scale),
        SCALE_x,
        shift=16,
    )
    ZP_OUT_a = 0

    # Softmax output domain.
    SCALE_x1 = float(soft_out_scale)
    ZERO_x1 = int(soft_out_zp)

    # A @ V -> out_proj input domain.
    MULT_v, SHIFT_v = ratio_to_mult_shift(
        float(SCALE_x1) * float(v_out_scale),
        out_proj_in_scale,
        shift=16,
    )
    ZP_OUT_v = int(out_proj_in_zp)

    # out_proj -> residual add domain.
    MULT_h, SHIFT_h = ratio_to_mult_shift(
        float(out_proj_in_scale) * float(wh_scale),
        out_proj_out_scale,
        shift=16,
    )
    ZP_OUT_h = int(out_proj_out_zp)

    # fc1 -> fc2 input domain.
    MULT_fc1, SHIFT_fc1 = ratio_to_mult_shift(
        float(bn2_out_scale) * float(w1_scale),
        fc2_in_scale,
        shift=16,
    )
    ZP_OUT_fc1 = int(fc2_in_zp)

    # fc2 -> residual add domain.
    MULT_fc2, SHIFT_fc2 = ratio_to_mult_shift(
        float(fc2_in_scale) * float(w2_scale),
        fc2_out_scale,
        shift=16,
    )
    ZP_OUT_fc2 = int(fc2_out_zp)

    # Residual skip requants.
    RATIO, RATIO_SHIFT = ratio_to_mult_shift(
        patch_out_scale,
        res1_scale,
        shift=16,
    )

    RATIO1, RATIO1_SHIFT = ratio_to_mult_shift(
        res1_scale,
        res2_scale,
        shift=16,
    )

    # BN / block scales used by the C path.
    BN_SCALE = patch_out_scale
    BN0_OUT_SCALE = bn1_out_scale
    BN1_SCALE = res1_scale
    MLP_SCALE = bn2_out_scale
    RES2_SCALE = res2_scale

    # Classifier output stays raw int32 logits in current C path.
    HEAD_MULT = 1
    HEAD_SHIFT = 0
    HEAD_ZERO_PT = 0

    bn0_mul, bn0_add, BN0_SHIFT = export_bn_affine_int(
        block.bn1,
        input_scale=BN_SCALE,
        output_scale=BN0_OUT_SCALE,
        output_zp=bn1_out_zp,
        input_zp=0,
        shift=16,
    )
    bn1_mul, bn1_add, BN1_SHIFT = export_bn_affine_int(
    block.bn2,
    input_scale=BN1_SCALE,
    output_scale=MLP_SCALE,
    output_zp=bn2_out_zp,
    input_zp=0,
    shift=16,
    )

    print(f"BN0 MULT: {bn0_mul}, BN0_ADD: {bn0_add}, BN0_SHIFT: {BN0_SHIFT}")

    if verbose:
        print("\n=== Patch requant ===")
        print("patch_acc_scale =", patch_acc_scale)
        print("PATCH_MULT =", PATCH_MULT)
        print("PATCH_SHIFT =", PATCH_SHIFT)
        print("PATCH_ZERO_PT =", PATCH_ZERO_PT)

        print("\n=== Projection requants ===")
        print("MULT_q =", MULT_q, "SHIFT_q =", SHIFT_q, "ZP_OUT_q =", ZP_OUT_q)
        print("MULT_k =", MULT_k, "SHIFT_k =", SHIFT_k, "ZP_OUT_k =", ZP_OUT_k)
        print(
            "MULT_vproj =",
            MULT_vproj,
            "SHIFT_vproj =",
            SHIFT_vproj,
            "ZP_OUT_vproj =",
            ZP_OUT_vproj,
        )

        print("\n=== Attention requants ===")
        print("SCALE_x =", SCALE_x, "ZERO_x =", ZERO_x)
        print("MULT_a =", MULT_a, "SHIFT_a =", SHIFT_a, "ZP_OUT_a =", ZP_OUT_a)
        print("SCALE_x1 =", SCALE_x1, "ZERO_x1 =", ZERO_x1)
        print("MULT_v =", MULT_v, "SHIFT_v =", SHIFT_v, "ZP_OUT_v =", ZP_OUT_v)

        print("\n=== MLP / out proj requants ===")
        print("MULT_h =", MULT_h, "SHIFT_h =", SHIFT_h, "ZP_OUT_h =", ZP_OUT_h)
        print(
            "MULT_fc1 =",
            MULT_fc1,
            "SHIFT_fc1 =",
            SHIFT_fc1,
            "ZP_OUT_fc1 =",
            ZP_OUT_fc1,
        )
        print(
            "MULT_fc2 =",
            MULT_fc2,
            "SHIFT_fc2 =",
            SHIFT_fc2,
            "ZP_OUT_fc2 =",
            ZP_OUT_fc2,
        )

        print("\n=== Exported tensor sanity ===")
        inspect_exported_weight("patch_kernels_0", patch_w)
        inspect_exported_bias("patch_bias_0", patch_b)
        inspect_exported_weight("w_q_0", w_q_0)
        inspect_exported_bias("bias_q_0", bias_q_0)
        inspect_exported_weight("w_1_0", w_1_0)
        inspect_exported_bias("bias_1_0", bias_1_0)
        inspect_exported_weight("clas_weights_0", clas_weights_0)
        inspect_exported_bias("clas_bias_0", clas_bias_0)

    # ---------------- write vit_params.h ----------------
    h_txt = f"""#ifndef VIT_PARAMS_H
#define VIT_PARAMS_H

#include <stddef.h>
#include <stdint.h>

/*
 * No floating-point parameters are exported.
 *
 * Former float scales are exported as int32_t Q{SCALE_FRAC_BITS}:
 *     real_value = value / 2^{SCALE_FRAC_BITS}
 *
 * BN parameters and attention scale are exported as int32_t Q{PARAM_FRAC_BITS}:
 *     real_value = value / 2^{PARAM_FRAC_BITS}
 */

#define SCALE_FRAC_BITS {SCALE_FRAC_BITS}
#define PARAM_FRAC_BITS {PARAM_FRAC_BITS}

enum {{
    IN_CHANNELS = {in_channels},
    HEIGHT = {height},
    WIDTH = {width},
    INPUT_DIM = IN_CHANNELS * HEIGHT * WIDTH,
    PATCH = {patch_size},
    SEQUENCE_LENGTH = (HEIGHT / PATCH) * (WIDTH / PATCH),
    EMBED_DIM = {embed_dim},
    T = SEQUENCE_LENGTH,
    E = EMBED_DIM,
    F = E * 4,
    H = {num_heads},
    OUT_CLS = {num_classes}
}};

extern const int32_t INPUT_SCALE;
extern const int32_t INPUT_ZERO_PT;

extern const int32_t BN_SCALE;
extern const int32_t BN0_OUT_SCALE;
extern const int32_t BN1_SCALE;
extern const int32_t MLP_SCALE;
extern const int32_t RES2_SCALE;

extern const int32_t SCALE_x;
extern const int32_t ZERO_x;
extern const int32_t SCALE_x1;
extern const int32_t ZERO_x1;

extern const int32_t ATTN_SCALE;

extern const int32_t PATCH_MULT;
extern const int32_t PATCH_SHIFT;
extern const int32_t PATCH_ZERO_PT;

extern const int32_t MULT_q;
extern const int32_t SHIFT_q;
extern const int32_t ZP_OUT_q;

extern const int32_t MULT_k;
extern const int32_t SHIFT_k;
extern const int32_t ZP_OUT_k;

extern const int32_t MULT_vproj;
extern const int32_t SHIFT_vproj;
extern const int32_t ZP_OUT_vproj;

extern const int32_t RATIO;
extern const int32_t RATIO1;

extern const int32_t MULT_a;
extern const int32_t SHIFT_a;
extern const int32_t ZP_OUT_a;

extern const int32_t MULT_v;
extern const int32_t SHIFT_v;
extern const int32_t ZP_OUT_v;

extern const int32_t MULT_h;
extern const int32_t SHIFT_h;
extern const int32_t ZP_OUT_h;

extern const int32_t MULT_fc1;
extern const int32_t SHIFT_fc1;
extern const int32_t ZP_OUT_fc1;

extern const int32_t MULT_fc2;
extern const int32_t SHIFT_fc2;
extern const int32_t ZP_OUT_fc2;

extern const int32_t HEAD_MULT;
extern const int32_t HEAD_SHIFT;
extern const int32_t HEAD_ZERO_PT;
extern const int32_t HEAD_IN_SCALE;

extern const int32_t rm_b0[E];
extern const int32_t rs_b0[E];
extern const int32_t scale_b0[E];
extern const int32_t bias_b0[E];

extern const int32_t rm_b1[E];
extern const int32_t rs_b1[E];
extern const int32_t scale_b1[E];
extern const int32_t bias_b1[E];

extern const int32_t rm_bf[E];
extern const int32_t rs_bf[E];
extern const int32_t scale_bf[E];
extern const int32_t bias_bf[E];

extern const int8_t w_q_0[E * E];
extern const int8_t w_k_0[E * E];
extern const int8_t w_v_0[E * E];
extern const int32_t bias_q_0[E];
extern const int32_t bias_k_0[E];
extern const int32_t bias_v_0[E];
extern const int8_t head_0[E * E];
extern const int32_t bias_h_0[E];

extern const int8_t w_1_0[E * F];
extern const int8_t w_2_0[F * E];
extern const int32_t bias_1_0[F];
extern const int32_t bias_2_0[E];

extern const int8_t patch_kernels_0[E * IN_CHANNELS * PATCH * PATCH];
extern const int32_t patch_bias_0[E];
extern const int8_t cls_token_0[E];
extern const int8_t pos_enc_0[(T + 1) * E];

extern const int8_t clas_weights_0[E * OUT_CLS];
extern const int32_t clas_bias_0[OUT_CLS];

#define BN0_SHIFT 16
extern const int32_t bn0_mul[E];
extern const int32_t bn0_add[E];

#define BN1_SHIFT 16
extern const int32_t bn1_mul[E];
extern const int32_t bn1_add[E];

#endif
"""

    (out_dir_h / "vit_params.h").write_text(h_txt)

    # ---------------- write vit_params.c ----------------
    c_parts = ['#include "vit_params.h"\n\n']

    # Scales exported as Q30 int32_t.
    c_parts.append(c_fixed_scalar_str("INPUT_SCALE", INPUT_SCALE, SCALE_FRAC_BITS))
    c_parts.append(c_scalar_str("INPUT_ZERO_PT", INPUT_ZERO_PT, "int32_t"))
    c_parts.append("\n")

    c_parts.append(c_fixed_scalar_str("BN_SCALE", BN_SCALE, SCALE_FRAC_BITS))
    c_parts.append(c_fixed_scalar_str("BN0_OUT_SCALE", BN0_OUT_SCALE, SCALE_FRAC_BITS))
    c_parts.append(c_fixed_scalar_str("BN1_SCALE", BN1_SCALE, SCALE_FRAC_BITS))
    c_parts.append(c_fixed_scalar_str("MLP_SCALE", MLP_SCALE, SCALE_FRAC_BITS))
    c_parts.append(c_fixed_scalar_str("RES2_SCALE", RES2_SCALE, SCALE_FRAC_BITS))
    c_parts.append("\n")

    c_parts.append(c_fixed_scalar_str("SCALE_x", SCALE_x, SCALE_FRAC_BITS))
    c_parts.append(c_scalar_str("ZERO_x", ZERO_x, "int32_t"))
    c_parts.append(c_fixed_scalar_str("SCALE_x1", SCALE_x1, SCALE_FRAC_BITS))
    c_parts.append(c_scalar_str("ZERO_x1", ZERO_x1, "int32_t"))
    c_parts.append("\n")

    # Attention scale exported as Q16 int32_t.
    c_parts.append(c_fixed_scalar_str("ATTN_SCALE", attn_scale, PARAM_FRAC_BITS))
    c_parts.append("\n")

    c_parts.append(c_scalar_str("PATCH_MULT", PATCH_MULT, "int32_t"))
    c_parts.append(c_scalar_str("PATCH_SHIFT", PATCH_SHIFT, "int32_t"))
    c_parts.append(c_scalar_str("PATCH_ZERO_PT", PATCH_ZERO_PT, "int32_t"))
    c_parts.append("\n")

    c_parts.append(c_scalar_str("MULT_q", MULT_q, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_q", SHIFT_q, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_q", ZP_OUT_q, "int32_t"))

    c_parts.append(c_scalar_str("MULT_k", MULT_k, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_k", SHIFT_k, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_k", ZP_OUT_k, "int32_t"))

    c_parts.append(c_scalar_str("MULT_vproj", MULT_vproj, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_vproj", SHIFT_vproj, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_vproj", ZP_OUT_vproj, "int32_t"))
    c_parts.append("\n")

    c_parts.append(c_scalar_str("RATIO", RATIO, "int32_t"))
    c_parts.append(c_scalar_str("RATIO1", RATIO1, "int32_t"))
    c_parts.append("\n")

    c_parts.append(c_scalar_str("MULT_a", MULT_a, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_a", SHIFT_a, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_a", ZP_OUT_a, "int32_t"))

    c_parts.append(c_scalar_str("MULT_v", MULT_v, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_v", SHIFT_v, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_v", ZP_OUT_v, "int32_t"))

    c_parts.append(c_scalar_str("MULT_h", MULT_h, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_h", SHIFT_h, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_h", ZP_OUT_h, "int32_t"))

    c_parts.append(c_scalar_str("MULT_fc1", MULT_fc1, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_fc1", SHIFT_fc1, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_fc1", ZP_OUT_fc1, "int32_t"))

    c_parts.append(c_scalar_str("MULT_fc2", MULT_fc2, "int32_t"))
    c_parts.append(c_scalar_str("SHIFT_fc2", SHIFT_fc2, "int32_t"))
    c_parts.append(c_scalar_str("ZP_OUT_fc2", ZP_OUT_fc2, "int32_t"))

    c_parts.append(c_scalar_str("HEAD_MULT", HEAD_MULT, "int32_t"))
    c_parts.append(c_scalar_str("HEAD_SHIFT", HEAD_SHIFT, "int32_t"))
    c_parts.append(c_scalar_str("HEAD_ZERO_PT", HEAD_ZERO_PT, "int32_t"))

    # Classifier input scale exported as Q30 int32_t.
    c_parts.append(c_fixed_scalar_str("HEAD_IN_SCALE", head_in_scale, SCALE_FRAC_BITS))
    c_parts.append("\n")

    # BN params exported as Q16 int32_t arrays.
    c_parts.append(c_fixed_array_str("rm_b0", bn1["rm"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("rs_b0", bn1["rs"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("scale_b0", bn1["scale"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("bias_b0", bn1["bias"], PARAM_FRAC_BITS))
    c_parts.append("\n")

    c_parts.append(c_fixed_array_str("rm_b1", bn2["rm"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("rs_b1", bn2["rs"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("scale_b1", bn2["scale"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("bias_b1", bn2["bias"], PARAM_FRAC_BITS))
    c_parts.append("\n")

    c_parts.append(c_fixed_array_str("rm_bf", bn_final["rm"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("rs_bf", bn_final["rs"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("scale_bf", bn_final["scale"], PARAM_FRAC_BITS))
    c_parts.append(c_fixed_array_str("bias_bf", bn_final["bias"], PARAM_FRAC_BITS))

    c_parts.append(c_array_str("bn0_mul", bn0_mul, "int32_t"))
    c_parts.append(c_array_str("bn0_add", bn0_add, "int32_t"))
    c_parts.append("\n")

    c_parts.append(c_array_str("bn1_mul", bn1_mul, "int32_t"))
    c_parts.append(c_array_str("bn1_add", bn1_add, "int32_t"))
    c_parts.append("\n")

    c_parts.append("\n")

    

    arrays = [
        ("w_q_0", w_q_0, "int8_t"),
        ("w_k_0", w_k_0, "int8_t"),
        ("w_v_0", w_v_0, "int8_t"),
        ("bias_q_0", bias_q_0, "int32_t"),
        ("bias_k_0", bias_k_0, "int32_t"),
        ("bias_v_0", bias_v_0, "int32_t"),
        ("head_0", head_0, "int8_t"),
        ("bias_h_0", bias_h_0, "int32_t"),
        ("w_1_0", w_1_0, "int8_t"),
        ("w_2_0", w_2_0, "int8_t"),
        ("bias_1_0", bias_1_0, "int32_t"),
        ("bias_2_0", bias_2_0, "int32_t"),
        ("patch_kernels_0", patch_w, "int8_t"),
        ("patch_bias_0", patch_b, "int32_t"),
        ("cls_token_0", cls_token, "int8_t"),
        ("pos_enc_0", pos_enc, "int8_t"),
        ("clas_weights_0", clas_weights_0, "int8_t"),
        ("clas_bias_0", clas_bias_0, "int32_t"),

    ]

    for name, arr, ctype in arrays:
        c_parts.append(c_array_str(name, arr, ctype))
        c_parts.append("\n")

    (out_dir_c / "vit_params.c").write_text("".join(c_parts))

    print(f"Exported to: {out_dir_h / 'vit_params.h'}")
    print(f"Exported to: {out_dir_c / 'vit_params.c'}")


model.eval()

export_vit_to_c(
    model,
    config,
    out_dir_h="../../hls/include/parameters",
    out_dir_c="../../hls/src/parameters",
    verbose=True,
)


import torch
import numpy as np
from pathlib import Path


def flattened_tensor_to_c_float_array(name, x, values_per_line=12):
    """
    x can be [1, H, W] or [C, H, W] or already flat.
    Output is a flattened C float array.
    """
    x = x.detach().cpu().contiguous().view(-1).numpy().astype(np.float32)
    vals = [f"{float(v):.8f}f" for v in x]

    lines = []
    for i in range(0, len(vals), values_per_line):
        lines.append("    " + ", ".join(vals[i:i + values_per_line]))

    body = ",\n".join(lines)
    return f"static const float {name}[{len(x)}] = {{\n{body}\n}};"


def get_one_sample_from_loader_flat(loader, index=0):
    xs = []
    ys = []
    for xb, yb in loader:
        xs.append(xb)
        ys.append(yb)
    x = torch.cat(xs, dim=0)
    y = torch.cat(ys, dim=0)
    return x[index:index+1], int(y[index].item())


def export_flattened_sample_for_vit_c(model, loader, out_path=None, sample_index=0, print_logits=True):
    model.eval()
    device = next(model.parameters()).device

    x, y_true = get_one_sample_from_loader_flat(loader, index=sample_index)
    x = x.to(device)

    with torch.no_grad():
        out = model(x)
        logits = out.value if hasattr(out, "value") else out
        pred = int(torch.argmax(logits, dim=1).item())

    print(f"Sample index: {sample_index}")
    print(f"True label  : {y_true}")
    print(f"Pred label  : {pred}")

    if print_logits:
        print("Logits:")
        print(logits.detach().cpu().numpy())

    # Flattened exactly for ViT-C
    x_flat = x.detach().cpu().contiguous().view(-1)
    c_array = flattened_tensor_to_c_float_array("input_matrix", x_flat)

    print("\nFlattened C input array:\n")
    print(c_array)

    if out_path is not None:
        out_path = Path(out_path)
        out_path.write_text(
            "#ifndef TEST_INPUT_H\n"
            "#define TEST_INPUT_H\n\n"
            "#include <stdint.h>\n\n"
            f"static const int EXPECTED_LABEL = {y_true};\n"
            f"static const int BREVITAS_PRED_LABEL = {pred};\n\n"
            f"{c_array}\n\n"
            "#endif\n"
        )
        print(f"\nSaved test sample to: {out_path}")

    return {
        "x": x.detach().cpu(),
        "x_flat": x_flat,
        "y_true": y_true,
        "pred": pred,
        "logits": logits.detach().cpu(),
        "c_array": c_array,
    }

sample_info = export_flattened_sample_for_vit_c(
    model,
    test_loader,
    out_path="/home/fede/PhD/transformer-hls/hls/tb/input.txt",
    sample_index=2,
    print_logits=True
)


import torch
import numpy as np
from pathlib import Path


def get_one_sample_from_loader_flat(loader, index=0):
    xs = []
    ys = []

    for xb, yb in loader:
        xs.append(xb)
        ys.append(yb)

    x = torch.cat(xs, dim=0)
    y = torch.cat(ys, dim=0)

    return x[index:index + 1], int(y[index].item())


def quantize_input_to_int8(x, input_scale, input_zero_point=0, signed=True):
    """
    Quantize floating-point input tensor to integer values for HLS.

    x_int = round(x / input_scale + input_zero_point)

    For signed int8:
        range = [-128, 127]
    """

    x_np = x.detach().cpu().contiguous().view(-1).numpy().astype(np.float32)

    q = np.round(x_np / float(input_scale) + int(input_zero_point)).astype(np.int32)

    if signed:
        q = np.clip(q, -128, 127)
    else:
        q = np.clip(q, 0, 255)

    return q.astype(np.int32)


def write_single_column_txt(path, values):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)

    values = np.asarray(values).reshape(-1)

    with path.open("w") as f:
        for v in values:
            f.write(f"{int(v)}\n")


def export_flattened_sample_for_hls_input_txt(
    model,
    loader,
    out_path,
    sample_index=0,
    input_scale=None,
    input_zero_point=0,
    signed=True,
    print_logits=True,
):
    model.eval()
    device = next(model.parameters()).device

    x, y_true = get_one_sample_from_loader_flat(loader, index=sample_index)
    x = x.to(device)

    with torch.no_grad():
        out = model(x)
        logits = out.value if hasattr(out, "value") else out
        pred = int(torch.argmax(logits, dim=1).item())

    print(f"Sample index: {sample_index}")
    print(f"True label  : {y_true}")
    print(f"Pred label  : {pred}")

    if print_logits:
        print("Logits:")
        print(logits.detach().cpu().numpy())

    if input_scale is None:
        input_scale = get_quant_scale_from_proxy(model.patch.proj.input_quant)

    input_zero_point = int(input_zero_point)

    x_int = quantize_input_to_int8(
        x,
        input_scale=input_scale,
        input_zero_point=input_zero_point,
        signed=signed,
    )

    write_single_column_txt(out_path, x_int)

    print(f"\nSaved HLS input file to: {out_path}")
    print(f"Number of values written: {len(x_int)}")
    print(f"Input scale: {input_scale}")
    print(f"Input zero-point: {input_zero_point}")
    print(f"Min/max int values: {int(x_int.min())}, {int(x_int.max())}")
    print("First 20 values:")
    print(x_int[:20])

    return {
        "x": x.detach().cpu(),
        "x_int": x_int,
        "y_true": y_true,
        "pred": pred,
        "logits": logits.detach().cpu(),
        "input_scale": input_scale,
        "input_zero_point": input_zero_point,
        "out_path": str(out_path),
    }
sample_info = export_flattened_sample_for_hls_input_txt(
    model,
    test_loader,
    out_path="/home/fede/PhD/transformer-hls/hls/tb/input.txt",
    sample_index=2,
    input_scale=get_quant_scale_from_proxy(model.patch.proj.input_quant),
    input_zero_point=get_quant_zp_from_proxy(model.patch.proj.input_quant, 0),
    signed=True,
    print_logits=True,
)


import torch

activations = {}

def get_activation(name):
    def hook(model, input, output):
        activations[name] = output.detach()
    return hook

targets = ["blocks.0", "blocks.0.mha.softmax","patch", "blocks.0.mha","blocks.0.mha.v_proj","blocks.0.mha.q_proj","blocks.0.mha.k_proj", "blocks.0.mlp", "norm", "blocks.0.bn1", "blocks.0.bn2"]

for name, module in model.named_modules():
    if name in targets:
        module.register_forward_hook(get_activation(name))

model.to("cpu")
#def test(model, dataloader, criterion, device):
model.eval()

with torch.no_grad():
    images, labels = next(iter(test_loader))   # images: [B, 1, 28, 28]
    # Optionally pick just the first sample:
    img = images[0].unsqueeze(0)              # [1, 1, 28, 28]
    lbl = labels[0].unsqueeze(0)              # [1]

    outputs = model(img)
    loss = criterion(outputs, lbl)

    print(f"Image, Label: {lbl}, Output: {outputs}, Loss: {loss.item()}")

N = 17
H = 4
H_dim = 48

print("img shape:", img.shape)

outputs_cpu = outputs.value.cpu().numpy()
img_cpu = img.permute(0, 2, 3, 1).cpu().numpy().flatten()
lbl_cpu = lbl.cpu().numpy()

patch_o = activations["patch"].cpu()
patch_o_int = patch_o

patch_o_int = patch_o.value / patch_o.scale

patch_o_int = patch_o_int.round()

patch_o_int = patch_o_int.flatten()

val = patch_o.value
blocco = model.blocks[0]
out_bn = blocco.quant_bn1_out(blocco._bn(blocco.bn1, val))

print("out_bn", out_bn / 0.036177314817905426)



patch_o = val.numpy().flatten()


patch_o_tp = activations["patch"].cpu()
val = patch_o_tp.value
patch_o_tp = val.numpy().transpose(0, 2, 1).flatten()
norm_patch_o = activations["blocks.0.bn1"].cpu().numpy().transpose(0, 2, 1).flatten()  
norm_patch_2_o = activations["blocks.0.bn2"].cpu().numpy().transpose(0, 2, 1).flatten()
mha_o = activations["blocks.0.mha"].cpu().numpy().flatten()
mlp_o = activations["blocks.0.mlp"].cpu().numpy().flatten()
q_linear = activations["blocks.0.mha.q_proj"].cpu().view(1, N, H, H_dim).transpose(1, 2)#.contiguous().flatten()
v_linear = activations["blocks.0.mha.v_proj"].cpu().view(1, N, H, H_dim).transpose(1, 2)#.contiguous().flatten()
k_linear = activations["blocks.0.mha.k_proj"].cpu().view(1, N, H, H_dim).transpose(1, 2)#.contiguous()#.flatten()

#softmax_module = activations["blocks.0.mha.softmax"].cpu().numpy().flatten()
q_linear_np = q_linear.value.detach().cpu()
k_linear_tp = k_linear.transpose(-2,-1)

k_linear_np = k_linear.value.detach().cpu()
k_linear_np_tp = k_linear_tp.value.detach().cpu()
v_linear_np = v_linear.value.detach().cpu()

q_linear = q_linear.value.numpy()
k_linear_tp = k_linear_tp.value.numpy()

matrix_a = q_linear @ k_linear_tp
matrix_a = matrix_a / 4.0
matrix_a = torch.from_numpy(matrix_a)
matrix_a = F.softmax(matrix_a, dim=-1)

matrix_mha = matrix_a @ v_linear


np.savetxt("mnist_output.txt", outputs_cpu.reshape(-1, 1), fmt="%.16f")
np.savetxt("mnist_input.txt", img_cpu, fmt="%.16f")
np.savetxt("mnist_label.txt", lbl_cpu, fmt="%.16f")
np.savetxt("patch_output.txt", patch_o, fmt="%.16f")
np.savetxt("patch_output_int.txt", patch_o_int, fmt="%d")
np.savetxt("patch_output_tp.txt", patch_o_tp, fmt="%.16f")
np.savetxt("norm_0.txt", norm_patch_o, fmt="%.16f")
np.savetxt("norm_1.txt", norm_patch_2_o, fmt="%.16f")
np.savetxt("mha_0.txt", mha_o, fmt="%.16f")
np.savetxt("mlp_0.txt", mlp_o, fmt="%.16f")
np.savetxt("q.txt", q_linear_np.flatten(), fmt="%.16f")
np.savetxt("v.txt", v_linear_np.flatten(), fmt="%.16f")
#np.savetxt("softmax_logits.txt", softmax_module, fmt="%.16f")
np.savetxt("k.txt", k_linear_np.flatten(), fmt="%.16f")
np.savetxt("k_tp.txt", k_linear_np_tp.flatten(), fmt="%.16f")
np.savetxt("a.txt", matrix_a.flatten(), fmt="%.16f")

print(activations["blocks.0.mha.q_proj"].cpu())

