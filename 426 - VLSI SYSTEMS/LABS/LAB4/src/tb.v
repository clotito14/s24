// Chase Lotito - ECE426 Lab 4 - Testbench

`include "adder-subtractor-struct-4b.v"
`timescale 1us/1us

module tb();

// GTKWAVE
initial begin : GTKWAVE
    $dumpfile("lab4.vcd");
    $dumpvars(0, tb);
end

reg [3:0] a, b;
reg m;
wire [3:0] rslt, cout;
wire ovf;

initial //display variables

$monitor ("[%3t ns] a=%b, b=%b, m=%b, rslt=%b, cout[3]=%b, cout[2]=%b, ovf=%b", $time, a, b, m, rslt, cout[3], cout[2], ovf);

initial //apply input vectors

begin

//addition
#0  a = 4'b0000; b = 4'b0001; m = 1'b0;
#10 a = 4'b0010; b = 4'b0101; m = 1'b0;
#10 a = 4'b0110; b = 4'b0001; m = 1'b0;
#10 a = 4'b0101; b = 4'b0001; m = 1'b0;

//subtraction
#10 a = 4'b0111; b = 4'b0101; m = 1'b1;
#10 a = 4'b0101; b = 4'b0100; m = 1'b1;
#10 a = 4'b0110; b = 4'b0011; m = 1'b1;
#10 a = 4'b0110; b = 4'b0010; m = 1'b1;

//overflow
#10 a = 4'b0111; b = 4'b0101; m = 1'b0;
#10 a = 4'b1000; b = 4'b1011; m = 1'b0;
#10 a = 4'b0110; b = 4'b1100; m = 1'b1;
#10 a = 4'b1000; b = 4'b0010; m = 1'b1;

#10 $finish;

end

adder_subtractor_struct_4b inst1 ( //instantiate the module
.a(a),
.b(b),
.m(m),
.rslt(rslt),
.cout(cout),
.ovf(ovf)
);

endmodule
