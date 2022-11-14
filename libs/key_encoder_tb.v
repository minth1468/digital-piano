`timescale 1ns / 1ns
`include "key_encoder.v"

module key_encoder_tb();

reg [9:0] IOs;
reg clk;
wire [4:0] notecode;

// key_encoder DUT(.IOs(IOs),.clk_5MHz(clk),.notecode(notecode));

key_encoder ENCODER(clk, IOs, notecode);

always 
begin
    clk= 1; #5; 
    clk= 0; #5;// 10ns periodend
end

initial begin

    // $dumpfile("key_encoder_tb.vcd");
    // $dumpvars(0, key_encoder_tb);
    // $dumpvars;

    IOs = 10'b001_0000001; #20; // Low Do
    IOs = 10'b001_0000010; #20; // Low Re
    IOs = 10'b010_0000001; #20; // Medium Do
    IOs = 10'b010_0000010; #20; // Medium Re
    IOs = 10'b100_0000001; #20; // High Do
    IOs = 10'b100_0000010; #20; // High Re
    IOs = 10'b000_1000000; #20;

    // $display("complete");

end
      
endmodule