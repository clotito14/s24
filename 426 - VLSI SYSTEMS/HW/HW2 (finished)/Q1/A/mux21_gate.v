// Chase Lotito - SIUC - ECE426 - HW 2
// Q1-A
    /*
        Use Verilog to describe the following 2:1 Multiplexer
        [GATE-LEVEL MODELING]
    */

module mux21_gate(SEL, A, B, OUT);

    // Initialize I/O
    input SEL, A, B;
    output OUT;

    // Intermediate Signals
    wire inv1, a1, a2;

    // Gate-Level Instantiation
    not INV (inv1, SEL);
    and AND1 (a1, A, inv1);
    and AND2 (a2, B, SEL);
    or OR2 (OUT, a1, a2);

endmodule