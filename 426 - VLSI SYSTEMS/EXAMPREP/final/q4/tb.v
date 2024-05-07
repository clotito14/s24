/*
    fsm.v testbench
*/

`timescale 1us / 1us
`include "./fsm.v"

module tb();

initial begin : GTKWAVE
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end

// i/o
reg clk, x;
wire y;

// initialize fsm
fsm u1 (
    .clk(clk),
    .x(x),
    .y(y)
);

// initial conditions
initial begin : start
    clk = 0;
    x = 0;
end

// clk
always #10 clk = ~clk;

initial begin : stimulus
    #5 x = 1;
    #10 x = 0;
    #10 x = 1;
    #50 $finish;
end

endmodule
