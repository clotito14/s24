// Chase Lotito - SIUC Undergraduate - Spring 2024
// ECE426 w/ Chao Lu
// HW5
// Q1: Design a Mealy-type FSM that cdan act as a sequence detector.

`timescale 1us / 1us

module mealyFSM (
    clk, reset, w, out
);

// I/O
input clk, reset, w;
output out;             // wire for continuous assignment

reg [1:0] present, next; // p for present-state, n for next-state

// Parameters for cases
// 3 cases, so lets use 2-bits
parameter A = 2'b01, B = 2'b10, C = 2'b11;  // we will count 1, 2, 3 
// Initial Conditions
initial begin
    present = A;
end

// Console log
always @ (w, out) begin
    $monitor("[PRESENT] = %d | [NEXT] = %d, w = %b | [OUTPUT] = %b \n", present, next, w, out);
end

// Next-State Combinational Logic
always @ (w, present) begin
    case (present)
        A: next = w ? C : B;
        B: next = w ? C : B;
        C: next = w ? C : B;
        default: next = 2'bxx;
    endcase
end

// Sequential Logic
// using posedge reset because not specified in problem statement.
always @ (posedge clk, posedge reset) begin
    if (reset == 1'b1)
        present <= A;
    else
        present <= next;
end

// Output Logic
assign out = ( (present == B) && (w == 1'b0) ) || ( (present == C) && (w == 1'b1) );

endmodule
