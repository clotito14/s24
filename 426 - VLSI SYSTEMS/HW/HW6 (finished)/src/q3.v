// Chase Lotito - SIUC - SP2024
// ECE426 - HW6 - Q3

module tff (
    clk, reset_n, sel, q
);

// I/O
input clk, reset_n, sel;
output q;
reg q;
wire d;

initial q = 1'b0;   // need to prevent unknown

assign d = sel ? !q : q; 

always @ (posedge clk or negedge reset_n) begin
    if(reset_n == 1'b0)
        q = 1'b0;
    else
        q = d;
end

endmodule
