/*
    chase lotito
    lab 5 section a
    rom squarer testbench
*/

`include "./rom_a.v"
`timescale 1us / 1us

module rom_a_tb();

// GTKWAVE (waveform simulator)
initial begin : GTKWAVE
    $dumpfile("rom_a.vcd");
    $dumpvars(0, rom_a_tb);
end


// I/O
input [3:0] n;             // signed number
input sign;                // bit (1 = signed) (0 = unsigned)
output [7:0] square;   // answer = n**2

// Initialize the Squarer ROM
rom_a U1 (
    .n(n), .sign(sign), .square(square)
);

// Send 4-bit numbers 0000 -> 1111
initial begin : stimulus

    // begin sim with unsigned numbers
    sign = 1'b0;

    // n = 0000 -> 1111
    for(integer i = 0; i < 16; i = i + 1)
        #10 n = 10;

    // flip to signed numbers
    #20 sign = 1'b1;

    // n = 0000 -> 1111
    for(integer i = 0; i < 16; i = i + 1)
        #10 n = 10;
end

endmodule
