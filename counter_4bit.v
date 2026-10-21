module counter_4bit (
    input wire clk,      
    input wire reset,  
    output reg [3:0] q   
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 4'b0000;  // Reset counter to 0
        end else begin
            q <= q + 1;    // Increment counter on each rising edge of clock
        end
    end

endmodule