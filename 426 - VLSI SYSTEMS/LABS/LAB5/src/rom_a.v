/*
    Chase Lotito - SIUC
    ECE426 - Lab 5 - Design of Memory in Verilog
    Section A: ROM Squaring Circuit
        -> square unsigned 0-15
        -> square signed -8-7
*/

module rom_a (n, sign, square);

// I/O
input [3:0] n;             // signed number
input sign;                // bit (1 = signed) (0 = unsigned)
output reg [7:0] square;   // answer = n**2

// procedural block to compute squares as inputs come in
always @ (n or sign)
begin
    if (sign == 1'b0)
    begin
        case (n)           // UNSIGNED
            0 :square <= 0;
            1 :square <= 1;
            2 :square <= 4;
            3 :square <= 9;
            4 :square <= 16;
            5 :square <= 25;
            6 :square <= 36;
            7 :square <= 49;
            8 :square <= 64;
            9 :square <= 81;
            10 :square <= 100;
            11 :square <= 121;
            12 :square <= 144;
            13 :square <= 169;
            14 :square <= 196;
            15 :square <= 225;
            default: square <= 1'bx; // invalid input
        endcase
    end
    else
    begin
        case(n)             // SIGNED
            0 :square <= 0;
            1 :square <= 1;
            2 :square <= 4;
            3 :square <= 9;
            4 :square <= 16;
            5 :square <= 25;
            6 :square <= 36;
            7 :square <= 49;
            8 :square <= 64; // -8 x -8
            9 :square <= 49;
            10 :square <= 36;
            11 :square <= 25;
            12 :square <= 16;
            13 :square <= 9;
            14 :square <= 4;
            15 :square <= 1;
            default: square <= 1'bx; // invalid input
        endcase
    end
end

endmodule
