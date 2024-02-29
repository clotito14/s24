// Chase Lotito - HW4 Q1 Testbench

`include "q1.v"
`timescale 1us/1us

module tb ();

initial begin : GTKWAVE
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end
    
// I/O
reg reset_n, clk, data, select;
wire d, data_out;

// CLOCK (start @ 0, 10us pulses, 5 cycles)
parameter cycles = 10;
initial begin : CLOCK
    clk = 0;
    repeat (cycles) begin
        #10 clk = ~clk;
    end
end

initial begin : stimmychecks
    reset_n = 1'b1; // no reset
    select = 1'b1; // send data to d
    data = 1'b1; // set data to 1

    #20 // prove posedge clk works
    select = 1'b1; // send data to d
    data = 1'b0; // set data to 1

    #5 // test async reset
    reset_n = 0;
    select = 0; // for d = data_out

    #5 // select=0, data=1 but it won't be registered!
    reset_n = 1;
    data = 1'b1;

    #5 // set data high and send to output
    select = 1'b1;


end

// Instantiate ff module
ff U1 (
    .reset_n(reset_n),
    .clk(clk),
    .data(data),
    .select(select),
    .d(d),
    .data_out(data_out)
);

endmodule