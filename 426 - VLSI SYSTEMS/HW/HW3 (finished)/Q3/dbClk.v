/*
Chase Lotito - SIUC - SP2024
ECE426 - Chao Lu
HW3 - Q3 - Clock Generation
*/

`timescale 1ns / 1ns

// Work done here
module DoubleClock();

// Duty Cycle Parameters (50%, 10 cycles)
parameter TON1 = 10;
parameter TOFF1 = 10;

parameter TON2 = 20;
parameter TOFF2 = 20;

parameter cycles1 = 20;
parameter cycles2 = 10;

parameter phase = 5;

// let me see the signals!
initial begin : GTKWAVE
    $dumpfile("clock2.vcd");
    $dumpvars(0, DoubleClock);
end

// I/O, Reg, Wire
reg clk1, clk2;

// CLOCK 1
initial begin
    // Setting clock duty cycle
    repeat(cycles1) begin
        clk1 = 0;
        #TOFF1 
        clk1 = 1;
        #TON1 
        clk1 = 0;
    end
end

// CLOCK 2
initial begin
    // Setting clock duty cycle
    clk2 = 1;
    #phase
    repeat(cycles2) begin
        clk2 = 0;
        #TOFF2 
        clk2 = 1;
        #TON2 
        clk2 = 0;
    end
end

endmodule