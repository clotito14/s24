// Chase Lotito - SIUC Undergrad - Full Adder

`timescale 1us/1us

module FullAdder (
    sum, cout, a, b, cin
);
    
// I/O
input a, b, cin;
output cout, sum;
reg cout, sum; // used in always procedural block ... must be reg as well

always @ (a or b or cin) begin
    sum = a ^ b ^ cin;
    cout = (cin & b) | (a & b) | (a & cin);
end

endmodule
