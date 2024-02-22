// Q1 Testbench

`include "q2.v"
`timescale 1us / 1us

module q2tb();

// GTKWAVE
initial begin : GTKWAVE
  $dumpfile("q2tb.vcd");
  $dumpvars(0, q2tb);
end

// I/O
reg RESET, CLK;
wire [3:0] Q;

// Initial conditions

initial begin: initials
  RESET <= 1'b1;
  CLK <= 1'b0;
end

// CLK
always #10 CLK = ~CLK;

initial begin : stimmychecks
  RESET <= #15 1'b0;
  RESET <= #20 1'b1;
  RESET <= #115 1'b0;
  RESET <= #120 1'b1;
  #500 $finish;
end

// Instantiate module
counter U1 (
  .CLK(CLK),
  .Q(Q),
  .RESET(RESET)
);

endmodule
