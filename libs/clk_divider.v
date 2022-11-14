module clk_divider(clk_in, clk_5MHz, reset);

input clk_in; // 100MHz
output clk_5MHz;
input reset;


clk_wiz_0 CLKGEN(
  .clk_out1(clk_5MHz),
  .reset(reset),
  .locked(),
  .clk_in1(clk_in)
 );
 
endmodule
