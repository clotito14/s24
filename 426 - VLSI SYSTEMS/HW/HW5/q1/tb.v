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
reg reset, clk, w;

// Initial Conditions
initial begin : initalConditions
    clk = 0;
    reset = 0;
    w = 0;
end

// Clock
always begin
    #10 clk = ~clk;
end

// Stimulus
initial begin : Stimulus
    repeat(20)
        w = #10 ~w;

    reset <= #50 1'b1;
    #100 $finish;
end

// Instantiate the FSM
mealyFSM U1 (
    .clk(clk),
    .reset(reset),
    .w(w),
    .out(out)
);

endmodule
