/*
    Chase Lotito - SIUC - SP2024
    ECE426 - Chao Lu
    HW 2 - Q6 - Circuit Implementation
*/

module CircuitImplementation (
    Y, A, B, C, D
);

// I/O
input A, B, C, D;
output Y;

// Other connections
wire _D, na0, a0, xno0, o0, no0;

// Gate-Level Logic
not NOT0(_D, D);

nand NAND0(na0, A, B); // LEVEL 1
and AND0(a0, C, _D);

xnor XNOR0(xno0, na0, a0); // LEVEL 2

or OR0(o0, na0, xno0); // LEVEL 3
nor NOR0(no0, xno0, a0);

nor NOR1(Y, o0, no0); // OUTPUT

endmodule