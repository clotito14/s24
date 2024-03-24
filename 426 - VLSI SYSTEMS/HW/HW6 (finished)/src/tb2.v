// Chase Lotito - HW6 Q2 Testbench

`include "q2.v"

module tb();

initial begin : GTKWAVE
    $dumpfile("q2.vcd");
    $dumpvars(0, tb);
end

// I/O
reg [11:0] dct;
wire [8:0] dctq;

initial begin : stimmy
    dct = 0;
    #10 dct = 8;
    #10 dct = 64;
    #10 dct = 800;
    #10 dct = 1280;
    #10 $finish;
end

// intialize 
a5_9 U1 (
    .dct(dct),
    .dctq(dctq)
);

endmodule
