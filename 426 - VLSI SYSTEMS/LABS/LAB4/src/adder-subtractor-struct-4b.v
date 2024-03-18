// Chase Lotito - SIUC - SP2024
// ECE426 - VLSI Lab
// Lab 4: Subtractor Design
// MODULE: 4-bit Adder-Subractor

`timescale 1us/1us
`include "FullAdder.v"

module adder_subtractor_struct_4b (
    a, b, m, rslt, cout, ovf
);

// I/O
input [3:0] a, b;           // 4-bit inputs
input m;                    // mode control
output [3:0] rslt, cout;    // 4-bit result and carrys
output ovf;                 // overflow bit

// Intermediary Wires
wire net0, net1, net2, net3;

////////////////
// GATE-LEVEL //

// overflow
xor xor0 (ovf, cout[2], cout[3]);

// FA0 section
xor xor1 (net0, m, b[0]);
FullAdder FA0 (
    .sum(rslt[0]),
    .cout(cout[0]),
    .a(a[0]),
    .b(net0),
    .cin(m)
);

// FA0 section
xor xor2 (net1, m, b[1]);
FullAdder FA1 (
    .sum(rslt[1]),
    .cout(cout[1]),
    .a(a[1]),
    .b(net1),
    .cin(cout[0])
);

// FA0 section
xor xor3 (net2, m, b[2]);
FullAdder FA2 (
    .sum(rslt[2]),
    .cout(cout[2]),
    .a(a[2]),
    .b(net2),
    .cin(cout[1])
);

// FA0 section
xor xor4 (net3, m, b[3]);
FullAdder FA3 (
    .sum(rslt[3]),
    .cout(cout[3]),
    .a(a[3]),
    .b(net3),
    .cin(cout[2])
);
endmodule
