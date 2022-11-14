`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2022 09:52:53 AM
// Design Name: 
// Module Name: piano
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


module piano(
clk_in,
        IOs,
        reset,
        beep
    );
    input  clk_in;
input  reset;
input  wire [9:0] IOs;
output beep;

wire clk_5MHz;
wire [4:0] notecode;
wire[13:0] countStart;

clk_divider CLKDIV(clk_in, clk_5MHz, reset);
key_encoder ENCODER(clk_5MHz, IOs, notecode);
keytofrequency TOFREQ(clk_5MHz, notecode, countStart);
PWMcontroller PWMCTRL(clk_5MHz, countStart, reset, beep);
endmodule
