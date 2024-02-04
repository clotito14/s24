// Chase Lotito - SIUC - SP2024
// ECE426 - Chao Lu
// HW 2 - Q5 - MIN(0,2,4,6,9,10,13,15)

// Using a KMAP we get OUT(A,B,C,D) = A'D' + AC'D + B'CD' + ABD

module MinTermRealization (
    OUT, IN
);

// I/O
input [3:0] IN; // the vector is flipped, I = [D, C, B, A]
output OUT;

// Connecting signals
wire and0, and1, and2, and3;
wire [3:0] _IN;

// Gate-level design
not NOT0(_IN[0], IN[0]);
not NOT1(_IN[1], IN[1]);
not NOT2(_IN[2], IN[2]);
not NOT3(_IN[3], IN[3]);

and AND0(and0, _IN[3], _IN[0]); // Level 1
and AND1(and1, IN[3], _IN[1], IN[0]);
and AND2(and2, _IN[2], IN[1], _IN[0]);
and AND3(and3, IN[3], IN[2], IN[0]);

or OR0(OUT, and0, and1, and2, and3); // OUTPUT

endmodule