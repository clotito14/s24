/*
Chase Lotito - SIUC Undergraduate - SP2024
ECE426 - Chao Lu
LAB3 - 4-bit Adders
*/

// 4-BIT RIPPLE-CARRY ADDER

// Full Adder Block

`include "FullAdder.v"
`timescale 1us/1us

module RippleCarryAdder_4bit (
    sum, cout, a, b, cin
);

// I/O
input [3:0] a, b;
input cin;
output [3:0] sum;
output cout;
    
// Intermediate wires
wire [3:0] c; // for carries between blocks

FullAdder U0 (
    .sum(sum[0]),
    .cout(c[0]),
    .a(a[0]),
    .b(b[0]),
    .cin(cin)
);
FullAdder U1 (
    .sum(sum[1]),
    .cout(c[1]),
    .a(a[1]),
    .b(b[1]),
    .cin(c[0])
);
FullAdder U2 (
    .sum(sum[2]),
    .cout(c[2]),
    .a(a[2]),
    .b(b[2]),
    .cin(c[1])
);
FullAdder U3 (
    .sum(sum[3]),
    .cout(c[3]),
    .a(a[3]),
    .b(b[3]),
    .cin(c[2])
);

assign cout = c[3];

endmodule