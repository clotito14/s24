// Test Bench for ROM based Square Root Circuit 

`include "rom_b.v"  // Design.

module rom_b_testbench; 

reg  [3:0] 	n ;
wire [11:0] 	sq_root ;

rom_b  u1(   .n(n),
             .sq_root(sq_root)
         ); 

integer count ;

initial 

begin

  #7 	

for (count = 0; count <17; count = count+1)	// Apply inputs in the range: 0 to 15, every 10 ns.

  #10 n = count ; 


  #200

  $stop ;

end


initial
	$monitor($time, " ns  n = %2d  sq_root = %10d", n, sq_root);

endmodule


