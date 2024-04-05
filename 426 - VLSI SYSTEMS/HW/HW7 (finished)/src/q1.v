// Chase Lotito - SIUC - Spring 2024
// ECE426 - HW7

module rom (n1, n2, result);

input [3:0] n1 ; // first signed Number
input [3:0] n2 ; // second signed Number
output [7:0] result ; // Result = n1 x n2.
wire [7:0] result ;
wire [3:0] n1_mag ;
wire [3:0] n2_mag ;
reg [7:0] product ;

// converting from 2's comp
// gameplan:
//  - check if positive
//      - if yes, just assign
//      - if no, find twos complement
assign n1_mag = (n1[3] == 0) ? n1 : (~n1 + 1); // get magnitude of n1
assign n2_mag = (n2[3] == 0) ? n2 : (~n2 + 1); // get magnitude of n2

always @ (n1_mag or n2_mag) begin
    case ({n1_mag, n2_mag})
        // 1 * n2_mag
        17 : product = 1;
        18 : product = 2;
        19 : product = 3;
        20 : product = 4;
        21 : product = 5;
        22 : product = 6;
        23 : product = 7;
        24 : product = 8;
        // 2 * n2_mag
        33: product = 2;
        34: product = 4;
        35: product =  6;
        36: product =  8;
        37: product =  10;
        38: product =  12;
        39: product =  14;
        40: product =  16;
        // 3 * n2_mag
        49: product = 3;
        50: product = 6;
        51: product = 9;
        52: product = 12;
        53: product = 15;
        54: product = 18;
        55: product = 21;
        56: product = 24;
        // 4 * n2_mag
        65: product = 4;
        66: product = 8;
        67: product = 12;
        68: product = 16;
        69: product = 20;
        70: product = 24;
        71: product = 28;
        72: product = 32;
        // 5 * n2_mag
        81 : product = 5;
        82: product = 10;
        83: product = 15;
        84: product = 20;
        85: product = 25;
        86: product = 30;
        87: product = 35;
        88: product = 40;
        // 6 * n2_mag
        97 : product = 6;
        98: product = 12;
        99: product = 18;
        100: product = 24;
        101: product = 30;
        102: product = 36;
        103: product = 42;
        104: product = 48;
        // 7 * n2_mag
        113: product = 7;
        114: product = 14;
        115: product = 21;
        116: product = 28;
        117: product = 35;
        118: product = 42;
        119: product = 49;
        120: product = 56;
        // 8 * n2_mag
        129: product = 8;
        130: product = 16;
        131: product = 24;
        132: product = 32;
        133: product = 40;
        134: product = 48;
        135: product = 56;
        136: product = 64;
        default : product = 0 ; // Clear the result.
    endcase
end

// check if result should be signed or not via xnor
// if + then give positive product
// if - then give negative product
assign result = (~(n1[3] == 1 ^ n2[3] == 1)) ? product : (~product + 1);

endmodule
