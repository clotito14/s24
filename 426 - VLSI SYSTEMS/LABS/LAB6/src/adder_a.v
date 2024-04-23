// chase lotito - ece426 lab 6 - adder a

// Addition of two 16 bits, 2's complement nos., n1 and n2.  All the 16 bits addition at one stroke without any pipeline.
// Result is 17 bits.

`timescale 1us / 1us

module adder_a (clk, n1, n2, sum);

// i/o
input clk;
input [15:0] n1, n2;
output [16:0] sum ;

reg [16:0] sum;
wire [16:0] sum_i;

assign sum_i = {n1[15], n1} + {n2[15], n2};    // Add after sign extension - Result (i).

// Frequency of operation is not relevant since this is a combination circuit.
// Pipeline 1, clk (1), register final result (i).
always @ (posedge clk) begin
    sum <= sum_i;
end

endmodule
