// Chase Lotito - SIUC - SP2024
// ECE426L - Chao Lu
// HW2 - Q3 - Minority Function

module MinorityFunction (
    OUT, IN
);
    
    // I/O
    input [3:0] IN;
    output OUT;

    // Intermediary wires
    wire a0, a1, a2, a3;
    wire [3:0] _IN;

    // Gate-level design
    not INV0(_IN[0], IN[0]);
    not INV1(_IN[1], IN[1]);
    not INV2(_IN[2], IN[2]);
    not INV3(_IN[3], IN[3]);

    and AND0(a0, _IN[0], _IN[1], _IN[2], _IN[3]);
    and AND1(a1, _IN[0], _IN[1], _IN[2], IN[3]);
    and AND2(a2, _IN[0], _IN[1], IN[2], _IN[3]);
    and AND3(a3, _IN[0], IN[1], _IN[2], _IN[3]);
    and AND4(a4, IN[0], _IN[1], _IN[2], _IN[3]);

    or OR0(OUT, a0, a1, a2, a3, a4);

endmodule