// Test bench for adder_a design

`define CLKPERIODBY2 5 // Operate at 50 MHz.

`timescale 1us / 1us
`include "adder_a.v" // This is the design.

module adder_a_testbench;

reg clk;
reg [15:0] n1;
reg [15:0] n2;
wire [16:0] sum;

adder_a U1 (.clk(clk), .n1(n1), .n2(n2), .sum(sum) );

// GTKWAVE (waveform simulator)
initial begin : GTKWAVE
    $dumpfile("adder_a.vcd");
    $dumpvars(0, adder_a_testbench);
end

initial begin // Apply different sets of inputs.
    clk = 1'b0; n1 = 16'h0; n2 = 16'h0;

    #10 n1 = 16'h0001; n2 = 16'h0101;
    #10 n1 = 16'h0fff; n2 = 16'h0fff;
    #10 n1 = 16'h7fff; n2 = 16'h7fff;
    #10 n1 = 16'h8000; n2 = 16'h8000;
    #10 n1 = 16'h0001; n2 = 16'h0001;
    #10 n1 = 16'hffff; n2 = 16'h0001;
    #10 n1 = 16'h7fff; n2 = 16'h7fff;
    #10 n1 = 16'h5555; n2 = 16'haaaa;
    #10 n1 = 16'h0000; n2 = 16'h0000;

    #20 $finish;
end

initial $monitor("[%0t us] clk =%b n1 = %h n2 = %h sum = %h", $time, clk, n1, n2, sum);

always #`CLKPERIODBY2 clk <= ~clk;  // Toggle the clock.

endmodule


