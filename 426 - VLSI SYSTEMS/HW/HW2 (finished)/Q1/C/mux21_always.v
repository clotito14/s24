// Chase Lotito - SIUC
// Q1-C
    // 2:1 Mux - Always Procedure Block

module mux21_always ( SEL, A, B, OUT );
    
    // I/O
    input SEL, A, B;
    output OUT;

    // Procedural 
    reg OUT;

    // Always Block Approach
    always @(SEL or A or B) begin
        if(SEL) 
            OUT = B;
        else
            OUT = A;
    end

endmodule