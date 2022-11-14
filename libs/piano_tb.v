`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 02:45:05 AM
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module testbench(

    );
    
reg clk, reset;
reg [9:0] IOs;
wire beep;

piano PIANOTEST(
        clk,
        IOs,
        reset,
        beep
    );
    

always 
begin
    clk= 1; #5; 
    clk= 0; #5;// 10ns periodend
end
    
initial
begin
    reset = 1;
    IOs = 10'b000_0000000; #10000;
    reset =0;  #200;
    IOs = 10'b001_0000001; #10000000; // Low Do
    IOs = 10'b001_0000010; #10000000; // Low Re
    IOs = 10'b001_0000100; #10000000;
    IOs = 10'b001_0001000; #10000000;
    IOs = 10'b001_0010000; #10000000;
    IOs = 10'b001_0100000; #10000000;
    IOs = 10'b001_1000000; #10000000;
    IOs = 10'b010_0000001; #10000000; // Medium Do
    IOs = 10'b010_0000010; #10000000; // Medium Re
    IOs = 10'b010_0000100; #10000000;
    IOs = 10'b010_0001000; #10000000;
    IOs = 10'b010_0010000; #10000000;
    IOs = 10'b010_0100000; #10000000;
    IOs = 10'b010_1000000; #10000000;
    IOs = 10'b100_0000001; #10000000; // High Do
    IOs = 10'b100_0000010; #10000000; // High Re
    IOs = 10'b100_0000100; #10000000;
    IOs = 10'b100_0001000; #10000000;
    IOs = 10'b100_0010000; #10000000;
    IOs = 10'b100_0100000; #10000000;
    IOs = 10'b100_1000000; #10000000;
    IOs = 10'b000_1000000; #10000000;
    $finish;
end
    
integer lasttime = 0;
integer nowFreq = 0;
always @(beep)
begin
    if (beep == 0)
        nowFreq = 500000000/($time-lasttime);
    lasttime = $time;
end
    
always @(nowFreq)
begin
    $display("freq (HZ):", nowFreq);
end

endmodule
