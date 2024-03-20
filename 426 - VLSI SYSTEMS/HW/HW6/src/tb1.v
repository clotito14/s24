// Chase Lotito - HW6 Q1 Testbench

`include "q1.v"

module tb();

initial begin : GTKWAVE
    $dumpfile("q1.vcd");
    $dumpvars(0, tb);
end

// I/O
reg [7:0] data;
wire [11:0] product_11;
wire [11:0] product_15;

initial begin : stimmy
    data = 0;
    #10 data = 1;
    #10 data = 5;
    #10 data = 9;
    #10 data = 15;
    #10 $finish;
end

// intialize multiplier
multiply U1 (
    .data(data),
    .product_11(product_11),
    .product_15(product_15)
);

endmodule
