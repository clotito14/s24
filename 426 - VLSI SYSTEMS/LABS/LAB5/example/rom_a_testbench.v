// Test Bench for ROM based Squaring Circuit 

`include "rom_a.v"  			// Design.

module rom_a_test ; 

reg     [3:0] 	n ;
reg 	sign ;
wire	[7:0] 	square ;

rom_a  u1 (   // Invoke the design.
             .n(n),
             .sign(sign),
             .square(square)

            ); 

integer count ;

initial begin : GTKWAVE
    $dumpfile("rom_a.vcd");
    $dumpvars(0, rom_a_test);
end

initial 

begin

  #7 	sign = 0 ;

for (count = 0; count <17; count = count+1)	// Apply inputs in the range: 0 to +15, every 10 ns.

  #10 n = count ; 

  #10 sign = 1 ;
								// or
for (count = 0; count <17; count = count+1)	// apply inputs in the range: -8 to +7, every 10 ns.

  #10 n = count ; 

  #200

  $stop ;

end


initial

	$monitor($time, " ns  n = %b sign = %b  square = %b", n, sign, square);

endmodule


