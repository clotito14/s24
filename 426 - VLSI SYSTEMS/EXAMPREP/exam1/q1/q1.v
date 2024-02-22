// Chase Lotito - SIUC - SP2024
// ECE426 Midterm Exam Prep
// Q1: Complete the timing diagram for the following piece of code.
//     Assume that Q starts at 1 and that Q is a signal.
//     Assume all delays are negligible.

`timescale 1us / 1us

module q1(
  reset, enable, clock, D, Q
);

// I/O
input reset,enable, D;
output clock, Q;
reg clock, Q;

//Initial conditions
initial begin: initals
  clock = 0;
end

// CLOCK FUNCTIONALITY
always #10 clock = ~clock; 

always @ (reset, enable, clock, D) begin
  if (reset == 1'b0)
    Q <= 1'b0;
  else if (enable == 1'b1 && clock == 1'b1)
    Q <= D;
  else
    Q <= Q;
end

endmodule
