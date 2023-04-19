`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 20:39:17
// Design Name: 
// Module Name: svn_seg
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




module svn_seg(input[3:0]display, output reg[6:0]seg);

always @(display)
begin
case(display)

0:seg=7'b0000001;//O
1:seg=7'b1001111;// 1 
2:seg=7'b0010010;//2 
3:seg=7'b0000110;//3 
4:seg=7'b1001100;//4 
5:seg=7'b1111110;// -
6:seg=7'b0110000;//E 
7:seg=7'b0001001;//N 
8:seg=7'b0111000;//F
9:seg=7'b1000001;//U
10:seg=7'b1110001;// L 
11:seg=7'b0011000;//P

  



endcase
end  
endmodule
