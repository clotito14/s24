// Chase Lotito - SIUC - SP2024
// ECE426 Midterm Review - Q2
// Q2: Complete the behavioral description in Verilog for a synchronous 4-bit counter

// Requirements
//    1) Synchronous
//    2) 4-bit counter
//    3) When RESET = 0, Q is set to 0 at next rising-edge clock
//    4) When Q = 14, reset Q = 0 at next rising-edge clock

module counter (CLK, Q, RESET);

// I/O
input RESET, CLK;
output [3:0] Q;
reg [3:0] Q;

always @ (posedge CLK or RESET) begin
  if (RESET == 1'b0) begin
    while(CLK != 1'b1) begin
      // literally just wait
    end
    Q = 0;
      
  end
  else if (Q == 14)
    Q <= 0;
  else
    Q <= Q + 1;
end

endmodule
