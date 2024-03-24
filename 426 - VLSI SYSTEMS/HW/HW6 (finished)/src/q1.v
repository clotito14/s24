// Chase Lotito - SIUC - SP2024
// ECE426 - HW6 - Q1

module multiply(data, product_11, product_15);

input [7:0] data;
output [11:0] product_11;
output [11:0] product_15;
wire [11:0] product_11;
wire [11:0] product_15;

assign product_11 = 8*data + 2*data + data;
assign product_15 = 8*data + 4*data + 2*data + data;

endmodule 
