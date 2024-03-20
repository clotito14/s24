// Chase Lotito - HW6 Q1 Testbench

`include "q3.v"

module tb();

initial begin : GTKWAVE
    $dumpfile("q3.vcd");
    $dumpvars(0, tb);
end

// I/O
reg clk, reset_n, sel;
wire q;

initial begin : stimmy
    clk = 1'b0;
    reset_n = 1'b1;
    sel = 1'b0;
    
    repeat(15)
        #15 sel = ~sel;

    reset_n = 1'b0;

    repeat(15)
        #15 sel = ~sel;

    #10 $finish;
end

always #10 clk = ~clk;

// intialize 
tff U1 (
    .clk(clk),
    .reset_n(reset_n),
    .sel(sel),
    .q(q)
);

endmodule
