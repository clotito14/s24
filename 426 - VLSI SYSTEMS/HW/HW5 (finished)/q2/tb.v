// Chase Lotito - SIUC Undergraduate - Spring 2024
// ECE426 w/ Chao Lu
// HW5
// testbench for Q2
`include "q2.v"
`timescale 1us / 1us

module testbench();

// GTKWAVE
initial begin : GTKWAVE
    $dumpfile("q2.vcd");
    $dumpvars(0, testbench);
end

//--------------------------
// I/O
reg clk, x;
wire z;

// Initals
initial begin : initalConditions
   clk = 0;
   x = 0;
end

// CLOCK
always begin : clock
   #10 clk = ~clk;
end

// PROGRAM LIFETIME
initial begin : programLifeTime
    #100 $finish;
end

// STIMULUS
initial begin : stimmychecks
    repeat(20)
        x = #3 ~x;
end

// MODULE INSTANTIATION
fsm U1 (
    .clk(clk),
    .z(z),
    .x(x)
);

endmodule
