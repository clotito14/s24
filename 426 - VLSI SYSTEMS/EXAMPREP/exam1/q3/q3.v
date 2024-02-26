// Chase Lotito - SIUC - SPRING 2024
// ECE426 - midterm exam review - q3
// Completing the Verilog code for the FSM

module simple (resetn, clk, w, z);

// I/O
input resetn, clk, w;
output z;

// The FSM also needs its current-state and next-state variables
// (since it is only 3 states, we can use 2-bits)
reg [1:0] y, Y; // y=D, Y=Q of a D-Flip-Flop

// Set params for states
parameter [1:0] A = 2'b00;
parameter [1:0] B = 2'b01;
parameter [1:0] C = 2'b10;

// Combinational logic
always @ (w,y) begin
  case(y)
    A: if(w) Y <= B; else Y <= A;
    B: if(w) Y <= C; else Y <= A;
    C: if(w) Y <= C; else(w) Y <=A;
    default: Y <= 2'bxx;
  endcase
end

// Sequential Logic
always @ (posedge clk) begin
  if (resetn == 1'b0)i
    y <= 2'b00;
  else
    y <= Y;
end

// Define the output combinational logic
assign z = (y == C);
endmodule
