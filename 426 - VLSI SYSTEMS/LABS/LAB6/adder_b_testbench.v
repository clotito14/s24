// Test bench for adder design

`define clkperiodby2 5	// Operate at 50 MHz.
`include "adder_b.v" 	// This is the design.

module adder_b_testbench ; 

reg      clk ;
reg    	[15:0]  n1 ;
reg    	[15:0]  n2 ;

wire 	[16:0] 	sum ;

adder_b U1 (.clk(clk), .n1(n1), .n2(n2), .sum(sum) ) ;

initial 
begin						// Apply different sets of inputs.
 
  clk = 1'b0 ;  n1 = 16'h0 ;  n2 = 16'h0 ;

  #10  n1 = 16'h0001 ; n2 = 16'h0101 ;

  #10  n1 = 16'h0fff ; n2 = 16'h0fff ;

  #10  n1 = 16'h7fff ;  n2 = 16'h7fff ;

  #10  n1 = 16'h8000 ;  n2 = 16'h8000 ;

  #10  n1 = 16'h0001 ;  n2 = 16'h0001 ;

  #10  n1 = 16'hffff ;  n2 = 16'h0001 ;

  #10  n1 = 16'h7fff ;  n2 = 16'h7fff ;

  #10  n1 = 16'h5555 ;  n2 = 16'haaaa ;

  #10  n1 = 16'h0000 ;  n2 = 16'h0000 ;

  #10  $stop ;
end

initial

  $monitor($time, " ns  clk =%b n1 = %h  n2 = %h  sum = %h", clk, n1, n2, sum);

always

  #`clkperiodby2 clk <= ~clk ;		// Toggle the clock.

endmodule


