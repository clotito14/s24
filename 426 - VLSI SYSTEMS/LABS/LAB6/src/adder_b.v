// chase lotito - ece426 lab 6 - adder b
// Addition of two 16 bit, 2's complement nos., n1 and n2. 8 bits addition at a time. Result is 17 bits.

module adder_b ( clk, n1, n2, sum);

// i/o
input clk;
input [15:0] n1;
input [15:0] n2;
output [16:0] sum;

reg [16:0] sum;
wire [8:0] sum_LSB;
reg [8:0] sum_LSB_1;

reg [15:8] n1_reg1;
reg [15:8] n2_reg1;

wire [16:8] sum_MSB;
wire [16:0] sum_next;

assign sum_LSB = n1[7:0] + n2[7:0]; // Add least significant byte.sum_LSB [8] is the carry.

always @ (posedge clk)  // Pipeline 1, clk (1), register LSB to continue addition of MSB.
begin
    sum_LSB_1 <= sum_LSB;   // Preserve LSB sum
    n1_reg1 <= n1[15:8];    // Preserve MSBs
    n2_reg1 <= n2[15:8];
end

// Extend sign & add msbs with carry.
assign sum_MSB = {n1_reg1[15], n1_reg1[15:8]} + {n2_reg1[15], n2_reg1[15:8]} + sum_LSB_1 [8];// Add MSBs with carry.
assign sum_next = {sum_MSB, sum_LSB_1 [7:0]};

always @ (posedge clk)// Pipeline 2, clk (2), register result.
begin
    sum <= sum_next;
end

endmodule
