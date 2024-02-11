// Chase Lotito - SIUC Undergrad - SP2024
// Lab 3 - Part 2 - Carry-Lookahead Adder

// CARRY LOOK AHEAD ADDER USES:
    // c[i] = g[i] | p[i] & c[i-1] (c[-1] = cin)
        // G is CARRY GENERATE --> g = a[i] & b[i]
        // P is CARRY PROPAGATE --> p[i] = a[i] ^ b[i] (xor)
// THE SUM:
    // sum[i] = p[i] ^ c[i-1] = a[i] ^ b[i] ^ c[i-1]
    // 

module CarryLookAheadAdder_4bit (
    sum, cout, a, b, cin
);

// I/O
input [3:0] a, b;
input cin;
output [3:0] sum;
output cout;

// Interconnections!
wire [3:0] c, g, p; // carries, generates, propogates 

// Generate carry bits
assign g[0] = a[0] & b[0];
assign g[1] = a[1] & b[1];
assign g[2] = a[2] & b[2];
assign g[3] = a[3] & b[3];

// Propogate carry bits
assign p[0] = a[0] ^ b[0];    
assign p[1] = a[1] ^ b[1];
assign p[2] = a[2] ^ b[2];
assign p[3] = a[3] ^ b[3];

// Carry bits
assign c[0] = g[0] | ( p[0] & cin );
assign c[1] = g[1] | ( p[1] & c[0] );
assign c[2] = g[2] | ( p[2] & c[1] );
assign c[3] = g[3] | ( p[3] & c[2] );
assign cout = c[3];

// Sum bits
assign sum[0] = p[0] ^ cin;
assign sum[1] = p[1] ^ c[0];
assign sum[2] = p[2] ^ c[1];
assign sum[3] = p[3] ^ c[2];

endmodule