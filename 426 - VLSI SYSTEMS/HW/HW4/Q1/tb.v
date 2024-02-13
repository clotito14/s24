// Chase Lotito - HW4 Q1 Testbench

`include "q1.v"
`timescale 1us/1us

module tb ();

initial begin : GTKWAVE
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end
    
endmodule