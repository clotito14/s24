// This ROM stores the square of a number n. 

module rom_a (n, sign, square); 

input [3:0] n ;	  // Signed number.

input sign ;	 // Signed number if it is high and unsigned otherwise. 

output [7:0] square ;		// Result = n x n.

reg [7:0] square ;

always @ (n or sign)

begin

if (sign == 0)	// Output "square" if the input is unsigned. 

   begin

   case (n)

  		0 :	square <= 0 ;  
  		1 :	square <= 1 ;  
  		2 :	square <= 4 ;  
  		3 :	square <= 9 ; 
  		4 :	square <= 16 ;  
  		5 :	square <= 25 ;  
  		6 :	square <= 36 ; 
  		7 :	square <= 49 ;  
  		8 :	square <= 64 ;  
  		9 :	square <= 81 ;  
  		10 :	square <= 100 ;  
  		11 :	square <= 121 ; 
  		12 :	square <= 144 ;  
  		13 :	square <= 169 ;  
  		14 :	square <= 196 ; 
  		15 :	square <= 225 ;  


		default :	square <= 0 ;	// Clear the result.

    endcase

    end

else

   begin

   case (n)	// Output "square" if the input is signed. 

  		0 :	square <= 0 ;  
  		1 :	square <= 1 ;  
  		2 :	square <= 4 ;  
  		3 :	square <= 9 ; 
  		4 :	square <= 16 ;  
  		5 :	square <= 25 ;  
  		6 :	square <= 36 ; 
  		7 :	square <= 49 ;  
  		8 :	square <= 64 ;  
  		9 :	square <= 49 ;  
  		10 :	square <= 36 ;  
  		11 :	square <= 25 ; 
  		12 :	square <= 16 ;  
  		13 :	square <= 9 ;  
  		14 :	square <= 4 ; 
  		15 :	square <= 1 ;  

		default :	square <= 0 ;	// Clear the result.

    endcase

    end

end

endmodule



