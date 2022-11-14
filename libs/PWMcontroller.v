`timescale 1ns / 1ps

module PWMcontroller(
        clk_5MHz,
        countStart,
        reset,
        beep
    );
    
input clk_5MHz;
input [13:0] countStart;
input reset;
output reg beep;


reg beep_r;
reg [13:0] count;  

initial begin
    count = 0;
end
  
// write your code here
// you can also modify other parts.

always @(posedge clk_5MHz)
begin  
    if (reset || countStart == 0)
    begin
        beep = 0;
    end 
    else
    begin
        count = count + 1;
        if (count >= countStart)
        begin
            beep = ~beep;
            count = 0;
        end
    end
end 

endmodule
