/*
Chase Lotito - SIUC Undergrad - SP2024
ECE426L - Chao Lu

Lab 2: 3-to-8 Decoder - Structural Design
*/


// The 3-to-8 Decoder takes a 3-bit binary input
// then outputs the associated decimal number (d0-d7)
// The encoder has an enable pin
module decoder_3to8_structural (EN, I, D);

// I/O
input EN;
input [2:0] I;
output [7:0] D;

// This will contain the inverted input
wire [2:0] I_;

// Inverting the input for later
not N0 (I_[0], I[0]); // first bit of input inverted and lives on first bit of I_ wire
not N1 (I_[1], I[1]);
not N2 (I_[2], I[2]);

// Boolean expressions gotten from 3-to-8 decoder truth table
and A0 (D[0], EN, I_[2], I_[1], I_[0]); // 000 D[0] is the first output
and A1 (D[1], EN, I_[2], I_[1], I[0]); // 001
and A2 (D[2], EN, I_[2], I[1], I_[0]); // 010
and A3 (D[3], EN, I_[2], I[1], I[0]); // 011
and A4 (D[4], EN, I[2], I_[1], I_[0]); // 100
and A5 (D[5], EN, I[2], I_[1], I[0]); // 101
and A6 (D[6], EN, I[2], I[1], I_[0]); // 110
and A7 (D[7], EN, I[2], I[1], I[0]); // 111

// For the last case, the decoder will automatically
// output nothing, which is what we want!

endmodule
