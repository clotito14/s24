/*
    Chase Lotito - SIUC
    ECE426 - Lab 5 - Design of Memory in Verilog
    Section B: ROM Square Root Circuit
        -> sq_root root unsigned 0-15
            -> provide 3 decimals
*/

module rom_b (n, sq_root);

// I/O
input [3:0] n;               // unsigned number
output reg [11:0] sq_root;   // answer = n**1/2

wire [1:0] sq_root_int;      // integer part of sq_root
wire [9:0] sq_root_dp;       // decimal part of sq_root

// procedural block to compute roots as inputs come in
always @ (n)
begin
    case (n)
        0 :sq_root <= 0;
        1 :sq_root <= {2'd1, 10'd0};
        2 :sq_root <= {2'd1, 10'd414};
        3 :sq_root <= {2'd1, 10'd732};
        4 :sq_root <= {2'd2, 10'd0};
        5 :sq_root <= {2'd2, 10'd236};
        6 :sq_root <= {2'd2, 10'd450};
        7 :sq_root <= {2'd2, 10'd646};
        8 :sq_root <= {2'd2, 10'd828};
        9 :sq_root <= {2'd3, 10'd0};
        10 :sq_root <= {2'd3, 10'd162};
        11 :sq_root <= {2'd3, 10'd317};
        12 :sq_root <= {2'd3, 10'd464};
        13 :sq_root <= {2'd3, 10'd606};
        14 :sq_root <= {2'd3, 10'd742};
        15 :sq_root <= {2'd3, 10'd873};
        default: sq_root <= 12'd0; // reset by default
    endcase
end

// continuous assignments for int and decimal parts
assign sq_root_int = sq_root [11:10];
assign sq_root_dp = sq_root [9:0];

endmodule
