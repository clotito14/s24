// Chase Lotito - Lab 3 Testbench - Carry Lookahead

`include "CarryLookAheadAdder.v"
`timescale 1us / 1us

module tb_lookahead ();

// I/O
reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

// GTKWAVE
initial begin : GTKWAVE 
    $dumpfile("tb_lookahead.vcd");
    $dumpvars(0, tb_lookahead);
end

initial
begin
    #0 a = 4'b1111; b = 4'b0000; cin = 1'b0;
    #10 a = 4'b1111; b = 4'b0001; cin = 1'b0;
    #10 a = 4'b0011; b = 4'b0111; cin = 1'b0;
    #10 a = 4'b0101; b = 4'b0101; cin = 1'b0;
    #10 a = 4'b1001; b = 4'b1001; cin = 1'b0;
    #10 a = 4'b1110; b = 4'b0001; cin = 1'b0;
    #10 a = 4'b1101; b = 4'b1101; cin = 1'b0;
    #10 a = 4'b1111; b = 4'b1111; cin = 1'b0;
    #10 a = 4'b1111; b = 4'b1111; cin = 1'b0;
    #10 a = 4'b1110; b = 4'b0001; cin = 1'b1;
    #10 a = 4'b1101; b = 4'b1101; cin = 1'b1;
    #10 a = 4'b1110; b = 4'b1111; cin = 1'b1;
    #10 a = 4'b1111; b = 4'b1111; cin = 1'b1;
    #50 $finish;
end 
 
 //instantiate the module into the test bench
CarryLookAheadAdder_4bit U1 (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);
 
initial
begin
 $monitor ($time, "us a=%b, b=%b, cin=%b, cout=%b, sum=%b", a, b, cin, cout, 
sum);
end

endmodule