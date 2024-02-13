/*
Chase Lotito - SIUC Undergrad - SP2024
ECE426 - HW 4 - Q1
*/

module ff (
    reset_n, clk, data, select, d, data_out
);
    
// I/O
input reset_n, clk, data, select;
output data_out, d;

// Procedurals and continuous assignment
reg data_out;
wire d;

assign d = select ? data : data_out;

always @(posedge clk or reset_n) begin
    if (reset_n == 0)
        data_out = 0;
    else
        data_out <= d;
end

endmodule