// Chase Lotito - SIUC - SP2024
// ECE426 - HW6 - Q2

module a5_9(dct, dctq);

input [11:0] dct;
output [8:0] dctq;
wire [8:0] dctq;

assign dctq = dct / 8;      // quantize

endmodule
