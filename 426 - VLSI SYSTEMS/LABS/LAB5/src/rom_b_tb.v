/*
    chase lotito
    lab 5 section a
    rom square root testbench
*/

`include "./rom_b.v"
`timescale 1us / 1us

module rom_b_tb();

// GTKWAVE (waveform simulator)
initial begin : GTKWAVE
    $dumpfile("rom_b.vcd");
    $dumpvars(0, rom_b_tb);
end

// I/O
reg [3:0] n;             // signed number
wire [11:0] sq_root;     // square root of n

// Initialize the Squarer ROM
rom_b U1 (
    .n(n), .sq_root(sq_root)
);

// Send 4-bit numbers 0000 -> 1111
initial begin : stimulus

    // n = 0000 -> 1111
    for(integer i = 0; i < 16; i = i + 1)
        #10 n = i;

    #10 $finish;
end


endmodule
