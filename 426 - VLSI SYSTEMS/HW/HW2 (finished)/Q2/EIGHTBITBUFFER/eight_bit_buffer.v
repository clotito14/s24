// Chase Lotito - SIUC
// Q2
    // Tristate buffer with Primivitives
    // EIGHT BIT BUFFER

module EightBitBuffer ( E, I, D );
    
    // I/O
    input E;
    input [7:0] I;
    output [7:0] D;

    // Note I don't need intermediate wires!
    
    // Instantiate the buffers!
    bufif1 BUF0(D[0], I[0], E);
    bufif1 BUF1(D[1], I[1], E);
    bufif1 BUF2(D[2], I[2], E);
    bufif1 BUF3(D[3], I[3], E);
    bufif1 BUF4(D[4], I[4], E);
    bufif1 BUF5(D[5], I[5], E);
    bufif1 BUF6(D[6], I[6], E);
    bufif1 BUF7(D[7], I[7], E);

endmodule