// Chase Lotito - SIUC Undergraduate - Spring 2024
// ECE426 w/ Chao Lu
// HW5
// Q2: Code FSM from circuit diagram

`timescale 1us / 1us

// The FSM
module fsm(
    clk, z, x
);

// I/O
input clk, x;
output z;
reg A, B;

// Intermediate wires (w1 == x, w2 == B, A == A)
wire w4, w5, w6, w7, w8;

// -- Gate-Level Modelling --
// level 1
not not1(w5, x);
or or1(z, x, B);
nand nand1(w4, x, B);
nand nand2(w6, x, A);
// level 2
nand nand3(w7, B, w5, A);
// level 3
nand nand4(w8, w4, w7, w6);
//---------------------------
// -- DFFs ------------------
initial begin
    A = 0;
    B = 0;
end
always @ (posedge clk) begin
    A <= w8;
    B <= A;
end
// --------------------------
initial begin
    $monitor("[%0t us] x = %d, z = %b, w8 = %b, A = %b, B = %b", $time, x, z, w8, A, B);
end
endmodule
