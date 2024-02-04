// Lotito - Q3 - Testbench

`include "MinorityFunction.v"
`timescale 1ns/1ns

module tb();

// I/O
reg [3:0] I;
wire O;

// GTKWAVE
initial begin : GTKWAVE
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
end

// STIMULUS
initial begin : stimmychecks
    reg [4:0] stimmyVect;

    for (stimmyVect = 0; stimmyVect < 16; stimmyVect = stimmyVect + 1)
        #10 I[3:0] = stimmyVect;

end

// DISPLAY!
always @ (I) begin
    $monitor("IN: {%b}, OUT: %b", I, O);
end

// Instantiate module
MinorityFunction U1 (
    .OUT(O),
    .IN(I)
);

endmodule