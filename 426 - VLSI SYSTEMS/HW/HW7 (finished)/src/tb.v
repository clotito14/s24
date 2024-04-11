// Chase Lotito - HW7 Testbench

`timescale 1ns / 1ns
`include "q1.v"

module tb();
 
initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
end

// I/O
reg [3:0] n1, n2;
wire [7:0] result;
reg [8:0] invect;

// Start-up procedures:
initial begin  
    for (invect = 0; invect < 256; invect = invect + 1)
        begin
            {n1, n2} = invect[7:0];
            
            // Display 
            #10 $display ("[n1]: %b, [n2]: %b, [result]: %b", n1, n2, result);
        end
end

// Initialize modules!
rom U1 (
    .n1(n1),
    .n2(n2),
    .result(result)
);

endmodule
