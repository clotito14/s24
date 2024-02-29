/*
Chase Lotito - SIUC Undergrad - SP2024
ECE426 - HW 4 - Q2
*/

module ss (
    reset_n, clk, in0, in1, sel, d1, out
);
    
// I/O
input reset_n, clk, in0, in1, sel;
output d1, out;

// Procedural and continuous assignments
reg out;
wire d1; // redundant

// Next-state combinational logic
assign d1 = (in0 & ~sel) | (in1 & sel);

// Sequential logic for DFF
always @(posedge clk or reset_n) begin
    // out = 0 if reset_n == 0
    // out = d1 otherwise
    if (reset_n == 0) out <= 0;
    else out <= d1;
end

endmodule