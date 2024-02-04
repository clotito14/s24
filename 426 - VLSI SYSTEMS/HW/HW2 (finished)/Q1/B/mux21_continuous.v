// Chase Lotito
// Q1-B
    // 2:1 Multiplexer with Continuous Assignment Statements

module mux21_continuous( SEL, A, B, OUT );
    // I/O
    input SEL, A, B;
    output OUT;

    // Continuous Assignment Approach
    assign OUT = (~SEL & A) | (SEL & B );
endmodule
