/*
    Chase Lotito - SIUC - SP2024
    HW2- Q6 - Testbench
*/

`include "CircuitImplementation.v"
`timescale 1ns/1ns

module tb();

// I/O
reg [3:0] I;
wire Y;

// Module Instantiation!
CircuitImplementation U1 (
    .Y(Y), .A(I[0]), .B(I[1]), .C(I[2]), .D(I[3])
);

// GTKWAVE
initial begin : GTKWAVE
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end

// Stimulus!
initial begin : STIMMYCHECKS
    reg [4:0] iv;

    // Assign input values 0 --> 15
    for(iv = 0; iv < 16; iv = iv + 1)
        #20 I = iv;
    
    #10 $finish; // end stimmy
end

// Monitor and Console Log
always @(Y) begin
    $monitor("{A, B, C, D} = {%b%b%b%b}, Y = %b", I[0], I[1], I[2], I[3], Y);
end

endmodule