// Lotito - ECE426 HW3 - Q1
// Timing diagrams in initial block

module q1 (

);

initial begin : GTKWAVE
    $dumpfile("q1.vcd");
    $dumpvars(0, q1);
end

reg test_pattern, test_pattern2, test_pattern3;

initial begin
    test_pattern = 1;
    #20 test_pattern = 0;
    #30 test_pattern = 1;
    #40 test_pattern = 1;
    #50 test_pattern = 0;
    #60 test_pattern = 1;
end

initial begin
    test_pattern2 = 1;
    test_pattern2 = #20 0;
    test_pattern2 = #30 1;
    test_pattern2 = #40 1;
    test_pattern2 = #50 0;
    test_pattern2 = #60 1;
end

initial begin // using non-blocking assignments, which happen in "parallel"
    test_pattern3 <= 1;
    test_pattern3 <= #20 0;
    test_pattern3 <= #50 1;
    test_pattern3 <= #90 1;
    test_pattern3 <= #140 0;
    test_pattern3 <= #200 1;
end

endmodule