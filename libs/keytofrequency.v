`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 12:45:46 AM
// Design Name: 
// Module Name: keytofrequency
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


module keytofrequency(clk_5MHz, notecode, countStart);

input  clk_5MHz;
input wire[4:0] notecode;



/*****************************************************************************/
output reg[13:0] countStart;
always @ (posedge clk_5MHz)
begin
    if (notecode == 1)
        countStart = 9579;
    else if  (notecode == 2)
        countStart = 8532;
    else if  (notecode == 3)
        countStart = 7598;
    else if  (notecode == 4)
        countStart = 7163;
    else if  (notecode == 5)
        countStart = 6393;
    else if  (notecode == 6)
        countStart = 5694;
    else if  (notecode == 7)
        countStart = 5070;
    else if  (notecode == 8)
        countStart = 4780;
    else if  (notecode == 9)
        countStart = 4258;
    else if  (notecode == 10)
        countStart = 3793;
    else if  (notecode == 11)
        countStart = 3581;
    else if  (notecode == 12)
        countStart = 3192;
    else if  (notecode == 13)
        countStart = 2860;
    else if  (notecode == 14)
        countStart = 2532;
    else if  (notecode == 15)
        countStart = 2390;
    else if  (notecode == 16)
        countStart = 2129;
    else if  (notecode == 17)
        countStart = 1896;
    else if  (notecode == 18)
        countStart = 1790;
    else if  (notecode == 19)
        countStart = 1594;
    else if  (notecode == 20)
        countStart = 1420;
    else if  (notecode == 21)
        countStart = 1266;
    else
        countStart = 0;
end	

/*****************************************************************************/
// YOU SHOULD UNCOMMENT THIS FOR EXERCISE 2C
// output wire[13:0] countStart;
// blk_mem_gen_0 BRAMROM(
//        .clka(clk_5MHz),
//        .addra(notecode),
//        .douta(countStart),
//        .ena(1)
//       );
   
endmodule

