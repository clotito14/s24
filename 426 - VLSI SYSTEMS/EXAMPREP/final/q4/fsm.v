/*
    Chase Lotito - ECE426 Final Exam Revisions
    Q4 - Design a Moore FSM where '101' input sequence give output of 1
         (X is input and Y is output)
*/

`timescale 1us / 1us

module fsm(clk, x, y);

// i/o
input clk, x;
output y;

reg[1:0] state;

parameter [1:0] A = 2'b00;
parameter [1:0] B = 2'b01;
parameter [1:0] C = 2'b10;

initial state = A;

always @ (posedge clk) begin
    case(state)
        A : state = x ? B : A;
        B : state = x ? C : B;
        C : state = x ? A : C;
        default : state <= 2'bxx;   // something wrong occurred.
    endcase
end

assign y = (state == C);

endmodule
