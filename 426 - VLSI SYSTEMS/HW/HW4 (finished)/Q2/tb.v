// Chase Lotito - HW4 Q2 Testbench

`include "q2.v"
`timescale 1us/1us

module tb ();

initial begin : GTKWAVE
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end

// I/O
reg reset_n, clk, in0, in1, sel;
wire d1, out;

// CLOCK (start @ 0, 10us pulses, 5 cycles)
parameter cycles = 10;
initial begin : CLOCK
    clk = 0;
    repeat (cycles) begin
        #10 clk = ~clk;
    end
end

initial begin : stimmychecks
    in0 = 1'b0;
    in1 = 1'b1;
    reset_n = 1'b1;

    #10 // first posedge clk
    sel = 1'b1; // send in1 to d1

    #20
    sel = 1'b0; // send in0 to d1

    #20
    sel = 1'b1; // send in1 to d1

    #25 // middle of clk on
    reset_n = 1'b0; // reset!
    

end

// Module instantiation
ss U1 (
    .reset_n(reset_n),
    .clk(clk),
    .in0(in0),
    .in1(in1),
    .sel(sel),
    .d1(d1),
    .out(out)
);

endmodule