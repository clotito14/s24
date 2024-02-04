// Chase Lotito - SIUC - SP2024
// ECE426 - Chao Lu
// HW2 - Q4 - Even Parity Generator

/*
    This approach is more ad hoc and not derived from a truth table
        1) An XNOR gate is high only for all low inputs or even high inputs
        2) Also send all inputs into OR gate to check if all zero
        3) Send out of XNOR and out of OR into AND to get both even
            and at least one input high!
*/

module EvenParityGenerator (
    OP, I
);
    
// I/O
input [7:0] I;
output OP;

// Intermediate wires
wire orOut; // output of OR gate
wire xnorOut; // output of XNOR gate

// Gate-Level Design
xnor XNOR(xnorOut, I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]);
or OR(orOut, I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7]);
and AND(OP, orOut, xnorOut);


endmodule