// Chase Lotito - SIUC - ECE426
// HW 2 - Q2-B - 8-bit Bidirectional Buffer

module Bidirectional_Buffer_8 (
    CE, SR, A, B, AOUT, BOUT
);
    
// I/O
input SR, CE;
input [7:0] A;
input [7:0] B;
output [7:0] AOUT;
output [7:0] BOUT;

// Intermediate Wires
wire upEnable;
wire downEnable;
wire _SR;

// Gate-level Model

// ~SR signal
not INV1(_SR, SR);

// SR and CE logic
and AND_upEnable(upEnable, SR, CE);
and AND_downEnable(downEnable, _SR, CE);

// _U for signals moving up
// _D for signals moving down
bufif1 AND0_U(BOUT[0], A[0], upEnable);
bufif1 AND1_U(BOUT[1], A[1], upEnable);
bufif1 AND2_U(BOUT[2], A[2], upEnable);
bufif1 AND3_U(BOUT[3], A[3], upEnable);
bufif1 AND4_U(BOUT[4], A[4], upEnable);
bufif1 AND5_U(BOUT[5], A[5], upEnable);
bufif1 AND6_U(BOUT[6], A[6], upEnable);
bufif1 AND7_U(BOUT[7], A[7], upEnable);
//---------------------------------
bufif1 AND0_D(AOUT[0], B[0], downEnable);
bufif1 AND1_D(AOUT[1], B[1], downEnable);
bufif1 AND2_D(AOUT[2], B[2], downEnable);
bufif1 AND3_D(AOUT[3], B[3], downEnable);
bufif1 AND4_D(AOUT[4], B[4], downEnable);
bufif1 AND5_D(AOUT[5], B[5], downEnable);
bufif1 AND6_D(AOUT[6], B[6], downEnable);
bufif1 AND7_D(AOUT[7], B[7], downEnable);


endmodule