module rom (n1, n2, result);

input [3:0] n1 ;

// Signed first number.
input [3:0] n2 ;
output [7:0] result ; // Signed second number.

// Result = n1 x n2.
wire [7:0] result ;
wire [3:0] n1_mag ;
wire [3:0] n2_mag ;
reg [7:0] product ;

assign n1_mag = __________________ ; // get magnitude of n1
assign n2_mag = __________________ ; // get magnitude of n2

always @ (n1_mag or n2_mag) begin
    case ({n1_mag, n2_mag})
        17 : product = ____ ;
        18 : product = ____ ;
        19 : product = ____ ;
        20 : product = ____ ;
        21 : product = ____ ;
        22 : product = ____ ;
        23 : product = ____ ;
        24 : product = ____ ;
        33: product = ____ ;
        ___: product = ____ ;
        ___: product = ____ ;
        ___: product = ____ ;
        ___: product = ____ ;
        ___: product = ____ ;
        ___: product = ____ ;
        ___: product = ____ ;
        49 : product = ____ ;
        ___: product = ___ ;
        ___: product = ____;
        ___: product = ___ ;
        ___: product = ___ ;
        ___: product = ___ ;
        ___: product = ___ ;
        ___: product = ___ ;
        65 : product = ___ ;
        ___ : product = ___ ;
        ___ : product = ___ ;
        ___ : product = ___ ;
        ____: product = ___ ;
        ___ : product = ___ ;
        ___ : product = ___ ;
        ____: product = ___ ;
        81 : product = _____;
        ___: product = ____ ;
        ___: product = ____ ;
        ___: product = ____ ;
        ___: product = ____ ;
        ___: product = ____ ;
        ___: product = ____ ;
         ___: product = ____ ;
        97 : product = ___ ;
        ___: product = ___ ;
        ___: product = ____;
        ___: product = ___ ;
        ___: product = ___ ;
        ___: product = ___ ;
        ___: product = ___ ;
        ___: product = ___ ;
        113: product = ___ ;
        ___ : product = ___ ;
        ___ : product = ___ ;
        ___ : product = ___ ;
        ____: product = ___ ;
        ___ : product = ___ ;
        ___ : product = ___ ;
        ____: product = ___ ;
        129: product = ___ ;
        ___ : product = ___ ;
        ___ : product = ___ ;
        ___ : product = ___ ;
        ____: product = ___ ;
        ___ : product = ___ ;
        ___ : product = ___ ;
        ____: product = ___ ;
        default : product = 0 ; // Clear the result.
    endcase
end

assign result = ____________________________________;

endmodule
