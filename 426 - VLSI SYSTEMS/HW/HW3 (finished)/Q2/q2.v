// Lotito - ECE426 HW3 - Q2
// Timing diagrams with initial and always blocks

`timescale 1us/1us

module q2 (

);

initial begin : GTKWAVE
    $dumpfile("q2.vcd");
    $dumpvars(0, q2);
end

reg test_pattern;
parameter idle = 300;

initial begin 
    #1000 $finish;
end

always begin
    test_pattern <= 1;
    test_pattern <= #20 0;
    test_pattern <= #50 1;
    test_pattern <= #90 0;
    test_pattern <= #140 1;
    test_pattern <= #200 0;
    #idle;

end

endmodule