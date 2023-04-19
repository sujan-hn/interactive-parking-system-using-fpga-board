`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 20:56:45
// Design Name: 
// Module Name: parking_slot
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


module parking_slot(input clock, input[3:0]slots_sw,input rst, output reg[3:0]avail_led , output [6:0]seg ,output reg[3:0]en);
 
 
 reg[3:0]disp;

 
wire slow_clk_1;
wire slow_clk_100;

slow_clk_1 s2(clock,slow_clk_1); 
slow_clk_100 s3(clock,slow_clk_100);



always @(slots_sw)
begin
case(slots_sw)
0:avail_led=4'b1111;
1:avail_led=4'b1110;
2:avail_led=4'b1101;
3:avail_led=4'b1100;
4:avail_led=4'b1011;
5:avail_led=4'b1010;
6:avail_led=4'b1001;
7:avail_led=4'b1000;
8:avail_led=4'b0111;
9:avail_led=4'b0110;
10:avail_led=4'b0101;
11:avail_led=4'b0100;
12:avail_led=4'b0011;
13:avail_led=4'b0010;
14:avail_led=4'b0001;
15:avail_led=4'b0000;
endcase
end


reg[3:0] out;

always @(slots_sw)
begin
case(slots_sw)
0:out=0;
1:out=3;
2:out=3;
4:out=3;
8:out=3;
3:out=2;
6:out=2;
5:out=2;
9:out=2;
10:out=2;
12:out=2;
7:out=1;
11:out=1;
13:out=1;
14:out=1;
15:out=0;
endcase
end

reg [2:0] scroll=0;
reg[3:0] first,second,third,fourth;



always @(posedge slow_clk_1 or posedge rst)
begin
if(rst || scroll==7)
scroll<=0;
else
scroll<=scroll+1;
end



always @(posedge slow_clk_1)
if(slots_sw[0]&slots_sw[1]&slots_sw[2]&slots_sw[3]==1)//FULL-0
begin

case(scroll)
0:
begin
fourth=5;
third=5;
second=5;
first=8;//F
end

1:
begin
fourth=5;
third=5;
second=8;
first=9;//U
end

2:
begin
fourth=5;
third=8;
second=9;
first=10;//L
end

3:
begin
fourth=8;
third=9;
second=10;
first=10;//L
end

4:
begin
fourth=9;
third=10;
second=10;
first=5;//-
end



5:
begin
fourth=10;
third=10;
second=5;
first=5;  
end



6:
begin
fourth=10;
third=5;
second=5;
first=out;  
end



7:
begin
fourth=5;
third=5;
second=out;
first=5; 
end

endcase
end


else //OPEN-"OUT"
begin

case(scroll)
0:
begin
fourth=5;
third=5;
second=5;
first=0;//F
end

1:
begin
fourth=5;
third=5;
second=0;
first=11;//P
end

2:
begin
fourth=5;
third=0;
second=11;
first=6;//E
end

3:
begin
fourth=0;
third=11;
second=6;
first=7;//N
end

4:
begin
fourth=11;
third=6;
second=7;
first=5;//-
end



5:
begin
fourth=6;
third=7;
second=5;
first=out;  
end



6:
begin
fourth=7;
third=5;
second=out;
first=5;  
end



7:
begin
fourth=5;
third=out;
second=5;
first=5; 
end

endcase
end


reg [2:0]count=0;
always @(posedge slow_clk_100 or posedge rst)
begin
if(rst || count==7)
count<=0;
else
count<=count+1;


case(count)

0:
begin
disp=first;
en=4'b1110;
end


1:
begin
disp=second;
en=4'b1101;
end

2:
begin
disp=third;
en=4'b1011;
end


3:
begin
disp=fourth;
en=4'b0111;
end
endcase
end

 svn_seg s1(disp, seg);


endmodule