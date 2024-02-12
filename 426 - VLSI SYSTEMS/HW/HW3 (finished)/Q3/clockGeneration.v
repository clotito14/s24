/*
Chase Lotito - SIUC - SP2024
ECE426 - Chao Lu
HW3 - Q3 - Clock Generation
*/

`timescale 1ns / 1ns

// Work done here
module clock();

// Duty Cycle Parameters (50%, 10 cycles)
parameter TON = 10;
parameter TOFF = 10;
parameter cycles = 10;

// let me see the signals!
initial begin : GTKWAVE
    $dumpfile("clock.vcd");
    $dumpvars(0, clk);
end

// I/O, Reg, Wire
reg clk;

initial begin
    // Setting clock duty cycle
    repeat(cycles) begin
        clk = 0;
        #TOFF 
        clk = 1;
        #TON 
        clk = 0;
    end
end

endmodule