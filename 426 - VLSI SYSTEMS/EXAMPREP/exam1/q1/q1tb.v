// Q1 Testbench

`include "q1.v"
`timescale 1us / 1us

module q1tb();

// GTKWAVE
initial begin : GTKWAVE
  $dumpfile("q1tb.vcd");
  $dumpvars(0, q1tb);
end

// I/O
reg reset, enable, D;
wire clock, Q;

// Initial conditions

initial begin: initials
  reset <= 1;
  enable <= 0;
  D <= 0;
end

initial begin : stimmychecks
  reset <= #15 1'b0;
  reset <= #35 1'b1;
  enable <= #55 1'b1;
  D <= #25 1'b1;
  D <= #65 1'b0;
  #100 $finish;
end

// Instantiate module
q1 U1 (
  .reset(reset),
  .enable(enable),
  .clock(clock),
  .D(D),
  .Q(Q)
);

endmodule
