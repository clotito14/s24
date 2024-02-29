// Chase Lotito - SIUC Undergraduate - Spring 2024
// ECE426 w/ Chao Lu
// HW5
// Q1: Design a Mealy-type FSM that cdan act as a sequence detector.

`timescale 1us / 1us

module sequence (
    clk, reset, out, in
);

// I/O
input reset, clk, in;
output out;

reg out;
reg [1:0] present, next; // p for present-state, n for next-state

// Parameters for cases
// 3 cases, so lets use 2-bits
parameter A = 2'b01, B = 2'b10, C = 2'b11;  // we will count 1, 2, 3

initial begin
    present = A;    // at the start we being at A
end

// No specific requirements, so let's go synchronous reset
always @ (posedge clk) begin
    if (reset == 1'b1)
        next = A;

    case(present)
        A: next = in ? B : C;
        B: next = in ? B : C;
        C: next = in ? B : C;
        default: next = 2'bxx;
    endcase

    // 

    // Output Logic
    out = next;
end

endmodule
