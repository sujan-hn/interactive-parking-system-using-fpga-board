`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 20:55:55
// Design Name: 
// Module Name: slow_clk_1
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


module slow_clk_1(input clkin, output reg clkout);

 reg[25:0]count=0;
 
 always @(posedge clkin)
 if(count!=50_000_000-1)
 begin
 count<=count+1;
 clkout<=0;
 
 end
 else
 begin
 count<=0;
 clkout<=1;
 
 end
endmodule