/* 
    Chase Lotito - ECE426 Final Exam Prep
    Exercise 9 - Pipeline f = ((a | b) + c) * (d & e)
*/ 

`timescale 1ns / 1ns

module exercise9
(
    clk, f, a, b, c, d, e
);

// i/o
input clk;
input [7:0] a, b, c, d, e;
output [15:0] f;

// intermediary wires/registers
reg [7:0] reg1, reg2, reg3, reg4, reg5;
reg [15:0] f;

// pipeline logic
always @ (posedge clk)
begin
    reg1 <= a | b;
    reg2 <= c;
    reg4 <= reg1 + reg2;
    reg3 <= d & e;
    reg5 <= reg4;
    f <= reg4 * reg5;
end

endmodule
