// Q2 Testbench

`include "eight_bit_buffer.v"
`timescale 1ns / 1ns

module tb();

// I/O
reg [7:0] I;
reg E;
wire [7:0] D;
integer i;

// GKTWAVE
initial begin : GKTWAVE
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
end

// Start-Up
initial begin : stimmichecks
    // Clear registers
    I = 8'h00;

    $display("EBB - EN OFF");
    // Test Cycle w/ ENABLE OFF
    for (i = 0; i < 8; i = i + 1) begin
        #10 I = 8'h00; // clear I
        E = 0;
        I[i] = 1;
        $display("I = %b, D = %b", I, D);
    end

    $display("EBB - EN ON");
    // Test Cycle w/ ENABLE ON
    for (i = 0; i < 7; i = 1 + i) begin
        #10 I = 8'h00; // clear I
        E = 1;
        I[i] = 1;
        $monitor("I = %b, D = %b", I, D); //$display caused lagging, just print when signal changes
    end
end

// Instantiate Buffer
EightBitBuffer U1 (

    .E(E),
    .I(I),
    .D(D)

);

endmodule