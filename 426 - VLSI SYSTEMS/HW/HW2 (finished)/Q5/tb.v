// Lotito - Q5 - Testbench

`include "MinTermRealization.v"
`timescale 1ns/1ns

module tb();

// I/O
reg [3:0] IN;
wire OUT;

// GTKWAVE
initial begin : GTKWAVE
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end

initial begin : stim
    reg [4:0] iv; // one extra bit so we catch when it overflows
    // Send all 16 inputs to circuit
    for(iv = 0; iv < 16; iv = iv + 1)
        #20 IN = iv;
    #20 $finish;
end

// Instantiate module
MinTermRealization U1 (
    .OUT(OUT), .IN(IN)
);

// CONSOLE LOG
always @(IN or OUT) begin
    $monitor("INPUT = {%b}, MINTERM = %d, OUT = %b", IN, IN, OUT);
end

endmodule
