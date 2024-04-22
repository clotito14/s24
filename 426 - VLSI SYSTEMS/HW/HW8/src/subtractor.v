/*
    Chase Lotito - SIUC
    ECE426 - HW8 - Pipelined Subtractor
*/

module subtractor (clk, n1, n2, subtract);

// I/O
input clk;
input [11:0] n1;
input [11:0] n2;
output [12:0] subtract;

reg [12:0] subtract;
wire [12:0] signe_n1;
wire [12:0] signe_n2;

reg [12:0] twosc_n2;
reg [12:0] n1_reg1;

wire [6:0] sub_lsb;
reg [6:0] sub_lsb_2;
reg [12:6] twosc_n2_2;
reg [12:6] n1_reg2;

wire [12:6] sub_msb;
wire [12:0] sub_next;

assign signe_n1 = _______________; // sign extend n1
assign signe_n2 = _______________; // sign extend n2

always @ (posedge clk) // Pipeline 1, clk (1)
begin
twosc_n2 <= __________; // compute twos complement of signe_n2
n1_reg1 <= ___________; // preserve n1
end

assign sub_lsb = __________; // Add least 6 significant bits, sub_lsb [6] is the carry.

always @ (posedge clk) //pipeline 1, clk (2), register LSB to continue addition of MSB.
begin
sub_lsb_2 <= __________; // preserve LSB sum, sum_lsb_2 [6] is the carry.
twosc_n2_2 <= ________; // preserve MSB of n2 for further processing.
n1_reg2 <= _________; // preserve MSB of n1_reg1
end

// Add msbs with carry.
assign sub_msb = ________; // add MSBs with carry
assign sub_next = ________; // put together MSB & LSB of the final result

always @ (posedge clk) // Pipeline 2, clk (2), register the final result
begin
subtract <= ________;
end

endmodule
