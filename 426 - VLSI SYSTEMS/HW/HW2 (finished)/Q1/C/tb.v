// Chase Lotito
// Testbench for Q1-A

`include "mux21_always.v"
`timescale 1ns / 1ns

module tb();

// I/O
reg A, B, SEL;
wire OUT;

// GTKWAVE
initial begin : gtkwave
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
end


// Start-up
initial begin : stimies

    // Initialize counter
    reg [3:0] i;

    for (i = 0; i < 8; i = i + 1) begin
        {A, B, SEL} = i[3:0];
        
        // Display
        #10 $display("[MUX 2:1 INPUT]: A = %b, B = %b, SEL = %b", A, B, SEL);
    end
end

// Initialize module
mux21_always U1 (

    .A(A),
    .B(B),
    .SEL(SEL)

);

endmodule