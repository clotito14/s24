/*
Chase Lotito - SIUC Undergrad - SP2024
ECE426L - Chao Lu

Lab 2 - Testbench
*/

// Set time scale: 1ns units / 1ns precision
`timescale 1ns / 1ns

// Import the design files
`include "decoder_3to8_structural.v"
`include "decoder_3to8_behavioral.v"

// Create testbench module
module testbench();
 
// Initialize I/O
reg [2:0] I; // reg is a storage element in procedural blocks (like initial!)
reg EN;
wire [7:0] D_STRUCTURAL; // wire is for continuous assignments
wire [7:0] D_BEHAVIORAL;

// Start-up procedures:
initial 

begin: tb_stimulus // tb_stimulus = [name_of_block], necessary for blocks with variables  
    // Creating a input vector that will act as the left-hand side of a truth table
    reg [4:0] invect;

    // The for-loop will automatically cycle each input from 0 to 16 (0000 to 1111) 
    for (invect = 0; invect < 16; invect = invect + 1)
        begin
            {EN, I[2], I[1], I[0]} = invect[4:0];
            
            // Display both Structural and Behavioral designs to terminal
            #10 $display ("[STRUCTURAL] EN = %b, INPUT = %b, OUTPUT = %b || 
                [BEHAVIORAL] EN = %b, INPUT = %b, OUTPUT = %b", EN, I, D_STRUCTURAL, EN, I, D_BEHAVIORAL);
        end
end

// Initialize modules!
decoder_3to8_structural U1 (
    .EN(EN),
    .I(I),
    .D(D_STRUCTURAL)
);

decoder_3to8_behavioral U2 (
    .EN(EN),
    .I(I),
    .D(D_BEHAVIORAL)
);
endmodule