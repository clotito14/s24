// Chase Lotito - SIUC Undergraduate - Spring 2024
// ECE426 w/ Chao Lu
// HW5
// testbench for Q1


`include "q1.v"
`timescale 1us / 1us

module testbench();

// GTKWAVE
initial begin : GTKWAVE
    $dumpfile("q1.vcd");
    $dumpvars(0, testbench);
end

// I/O
wire out;
reg reset, clk, in;

// Initial Conditions
initial begin : initalConditions
    clk = 0;
    reset = 0;
    in = 0;
end

// Clock
always begin
    #10 clk = ~clk;
end

// Stimulus
always begin : Stimulus
    repeat(10)
        in = #5 ~in;
    #100 $finish;
end

// Instantiate the FSM
sequence U1 (
    .clk(clk),
    .reset(reset),
    .out(out),
    .in(in)
);

endmodule
