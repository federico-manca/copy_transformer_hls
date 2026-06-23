// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of in_q
//        bit 31~0 - in_q[31:0] (Read/Write)
// 0x14 : Data signal of in_q
//        bit 31~0 - in_q[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of in_k
//        bit 31~0 - in_k[31:0] (Read/Write)
// 0x20 : Data signal of in_k
//        bit 31~0 - in_k[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of in_v
//        bit 31~0 - in_v[31:0] (Read/Write)
// 0x2c : Data signal of in_v
//        bit 31~0 - in_v[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of in_o
//        bit 31~0 - in_o[31:0] (Read/Write)
// 0x38 : Data signal of in_o
//        bit 31~0 - in_o[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of in_w_up
//        bit 31~0 - in_w_up[31:0] (Read/Write)
// 0x44 : Data signal of in_w_up
//        bit 31~0 - in_w_up[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of in_w_down
//        bit 31~0 - in_w_down[31:0] (Read/Write)
// 0x50 : Data signal of in_w_down
//        bit 31~0 - in_w_down[63:32] (Read/Write)
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL        0x00
#define CONTROL_ADDR_GIE            0x04
#define CONTROL_ADDR_IER            0x08
#define CONTROL_ADDR_ISR            0x0c
#define CONTROL_ADDR_IN_Q_DATA      0x10
#define CONTROL_BITS_IN_Q_DATA      64
#define CONTROL_ADDR_IN_K_DATA      0x1c
#define CONTROL_BITS_IN_K_DATA      64
#define CONTROL_ADDR_IN_V_DATA      0x28
#define CONTROL_BITS_IN_V_DATA      64
#define CONTROL_ADDR_IN_O_DATA      0x34
#define CONTROL_BITS_IN_O_DATA      64
#define CONTROL_ADDR_IN_W_UP_DATA   0x40
#define CONTROL_BITS_IN_W_UP_DATA   64
#define CONTROL_ADDR_IN_W_DOWN_DATA 0x4c
#define CONTROL_BITS_IN_W_DOWN_DATA 64
