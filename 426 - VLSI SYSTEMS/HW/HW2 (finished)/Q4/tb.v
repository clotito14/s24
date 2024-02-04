// Lotito - Q4 Testbench

`include "EvenParityGenerator.v"
`timescale 1ns/1ns

module tb();

// I/O
reg [7:0] I;
wire OP;

// GTKWAVE 
initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
end

// Stimulus
initial begin : stimmychecks
   
    // loop through all 256 inputs!
    reg [8:0] iv;
    for(iv = 0; iv < 256; iv=iv+1)
       #10 I = iv;

    #10 $finish; // break!
end

// Monitor and log changes in input
always@(I)
    $monitor("I = {%b}, Parity: %b", I, OP);

// Initialize module
EvenParityGenerator U1 (
    .OP(OP), .I(I)
);

endmodule