// Testbench for Q2-B - Chase Lotito

`include "BidirectionalBuffer_8.v"
`timescale 1ns/1ns

module tb();

// I/O
reg SR, CE;
reg [7:0] A;
reg [7:0] B;
wire [7:0] AOUT;
wire [7:0] BOUT;

// GTKWAVE
initial begin : GTKWAVE
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end

// Stimulus
initial begin : stimmychecks
    // Not Enabled
    SR = 0;
    CE = 0;
    A[7:0] = 8'hff;
    B[7:0] = 8'hff;
    #50;

    //Upward Enabled
    SR = 1;
    CE = 1;
    A[7:0] = 8'haa;
    #50;

    //Downward Enabled
    SR = 0;
    CE = 1;
    B[7:0] = 8'haa;

    #50 $finish;
end

// Display!
always @ (SR or CE or A or B) begin
   #10 $display("SR = %b, CE = %b, A = {%b}, B = {%b} | AOUT = {%b}, BOUT = {%b} ", SR, CE, A, B, AOUT, BOUT);
end

Bidirectional_Buffer_8 bb8 (
    .CE(CE),
    .SR(SR),
    .A(A),
    .B(B),
    .AOUT(AOUT),
    .BOUT(BOUT)
);

endmodule