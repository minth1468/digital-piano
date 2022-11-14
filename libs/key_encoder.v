`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 12:45:46 AM
// Design Name: 
// Module Name: key_encoder
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


module key_encoder(clk_5MHz, IOs, notecode);

input  clk_5MHz;
input  wire [9:0] IOs;
output reg [4:0] notecode;


	
/*****************************************************************************/
always @ (posedge clk_5MHz)
begin
    if (IOs[8]+IOs[9]+IOs[7] == 1 && IOs[0] + IOs[1] + IOs[2] + IOs[3] + IOs[4] + IOs[5] + IOs[6] == 1)
        notecode = 7*IOs[8]+14*IOs[9] + IOs[0] + IOs[1]*2 + IOs[2]*3 + IOs[3]*4 + IOs[4]*5 + IOs[5]*6 + IOs[6]*7;
    else
        notecode = 0;
    
end

endmodule
