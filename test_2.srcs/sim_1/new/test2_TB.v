`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/26 08:00:43
// Design Name: 
// Module Name: test2_TB
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



module test2_TB();
    reg clk;
    reg [3:0] A1;
	wire [6:0]	LED7S;
	wire [7:0] B;
	test2 u0 (
	 .clk(clk),
	 .A(A1),
	 .LED7S(LED7S),
	 .B(B));
	 initial 
   begin 
    #100 $finish;
    end 
	 initial begin 
	 #0 A1=4'd0;#10 A1=4'd1;#5 A1=4'd2;#5 A1=4'd3;#5 A1=4'd4;#5 A1=4'd5;#5 A1=4'd6;
	 #5 A1=4'd7;
	 #5 A1=4'd8;
	 #5 A1=4'd9;
	 #5 A1=4'd10;
	 #5 A1=4'd11;
	 #5 A1=4'd12;#5 A1=4'd13;#5 A1=4'd14;#5 A1=4'd15;end
	 endmodule

