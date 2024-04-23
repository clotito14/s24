// chase lotito - subtractor testbench for HW8

`timescale 1us / 1us
`include "subtractor.v"

module tb();

// GTKWAVE (waveform simulator)
initial begin : GTKWAVE
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end

// I/O
reg clk;
reg [11:0] n1, n2;
wire [12:0] subtract;

// Initialize subtractor
subtractor U1
(
    .clk(clk),
    .n1(n1),
    .n2(n2),
    .subtract(subtract)
);

initial begin : start
    clk = 1'b0;
end

// CLOCK
always begin : clock
   #10 clk = ~clk;
end

// stimulus for subtract = n1 - n2
initial begin : stimulus
    n1 <= 0;
    n2 <= 0;
    #10;
    n1 <= 10;
    n2 <= 5;
    #30;
    n1 <= 60;
    n2 <= 50;
    #100 $finish;
end

endmodule
