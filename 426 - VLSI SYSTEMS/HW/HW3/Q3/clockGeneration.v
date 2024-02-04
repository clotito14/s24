/*
Chase Lotito - SIUC - SP2024
ECE426 - Chao Lu
HW3 - Q3 - Clock Generation
*/

`timescale 1ns / 1ns

// Clock buffer
module clk(O, I);
    // I/O
    input I;
    output O;

    buf CLKBUF(O, I);
endmodule

// Work done here
module main();

// let me see the signals!
initial begin : GTKWAVE
    $dumpfile("main.vcd");
    $dumpvars(0, main);
end

// I/O, Reg, Wire
reg clk;
wire outputClock;

// Setting clock duty cycle
reg TON, TOFF;
initial begin : dutyCycle
    TON = 10;
    TOFF = 20;
    clk = 0;
    #200 $finish;
end


always begin
    #TON clk = 1;
    #TOFF clk = 0;
end

// Add buffer initialization
clk U1(
    .O(outputClock),
    .I(clk)
);


endmodule