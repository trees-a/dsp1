`timescale 1ns / 1ps

module tb_counter_4bit;
    // Testbench signals
    reg clk;
    reg reset;
    wire [3:0] q;

    // Instantiate the Unit Under Test (UUT)
    counter_4bit uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Generate clock signal with a 10ns period (100 MHz)
    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        reset = 1;
        
        // keep reset high for 12ns
        #12;
        reset = 0;
        
        // Let the counter run for 25
        #25;
        
        // Apply reset again to check reset
        reset = 1;
        #10;
        reset = 0;
        
        // Run for 16ns
        #16;
        $finish;
    end

endmodule