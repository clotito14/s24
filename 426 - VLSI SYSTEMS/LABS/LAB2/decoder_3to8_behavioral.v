/*
Chase Lotito - SIUC Undergrad - SP2024
ECE426L - Chao Lu

Lab 2: 3-to-8 Decoder - Behavioral Design
*/

module decoder_3to8_behavioral (EN, I, D);

// I/O
input EN;
input [2:0] I;
output [7:0] D;

// This allows us to set the value of D
reg [7:0] D;

// Check if EN or I changes (enable on or off, new input)
always @(EN or I) begin

    // Clears output vector to 00000000
    D = 8'h00;

    // Check if EN is HIGH
    if (EN == 1) begin
        // Check input then set output bit accordingly
        if (I[2] == 0 & I[1] == 0 & I[0] == 0) // e.g. sees input of 000
            D[0] = 1; // 000000001
        else if (I[2] == 0 & I[1] == 0 & I[0] == 1)
            D[1] = 1;
        else if (I[2] == 0 & I[1] == 1 & I[0] == 0)
            D[2] = 1;
        else if (I[2] == 0 & I[1] == 1 & I[0] == 1)
            D[3] = 1;
        else if (I[2] == 1 & I[1] == 0 & I[0] == 0)
            D[4] = 1;
        else if (I[2] == 1 & I[1] == 0 & I[0] == 1)
            D[5] = 1;
        else if (I[2] == 1 & I[1] == 1 & I[0] == 0)
            D[6] = 1;
        else if (I[2] == 1 & I[1] == 1 & I[0] == 1)
            D[7] = 1;
    end
end

endmodule