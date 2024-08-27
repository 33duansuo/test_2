`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/26 08:00:17
// Design Name: 
// Module Name: test2
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


module test2(clk,A,LED7S,B);
    input clk;
    input  [3:0]	A;   //
	output reg[6:0]	LED7S; //
	output reg[7:0] B;    //
	wire [3:0] A_vio; 
vio_0 vio0(
  .clk(clk),                // input wire clk
  .probe_out0(A_vio)  // output wire [3 : 0] probe_out0
);
/* ila_0 ila0 (
	.clk(clk), // input wire clk
	.probe0(LED7S) // input wire [6:0] probe0
); */

	
			always @(posedge clk)
			begin
			B <= 8'b11111110;   //
				case(A_vio)
					4'b0000	:	LED7S	<=	7'b1000_000;//7'b0111_111;//
					4'b0001	:	LED7S	<=	7'b1111_001;//7'b0000_110;
					4'b0010	:	LED7S	<=	7'b0100_100;//7'b1011_011;
					4'b0011	:	LED7S	<=	7'b0110_000;//7'b1001_111;
					4'b0100	:	LED7S	<=	7'b0011_001;//7'b1100_110;
					4'b0101	:	LED7S	<=	7'b0010_010;//7'b1101_101;
					4'b0110	:	LED7S	<=   7'b0000_010;//7'b1111_101;
					4'b0111	:	LED7S	<=	7'b1111_000;//7'b0000_111;
					4'b1000	:	LED7S	<=	7'b0000_000;//7'b1111_111;
					4'b1001	:	LED7S	<=	7'b0010_000;//7'b1101_111;
//					4'b1010	:	LED7S	<=	7'b0001_000;//7'b1110_111;
//					4'b1011	:	LED7S	<=	7'b0000_011;//7'b1111_100;
//					4'b1100	:	LED7S	<=	7'b1000_110;//7'b0111_001;
//					4'b1101	:	LED7S	<=	7'b0100_001;//7'b1011_110;
//					4'b1110	:	LED7S	<=	7'b0000_110;//7'b1111_001;
//					4'b1111	:	LED7S	<=	7'b0001_110;//7'b1110_001;
//					default	:	LED7S	<=	7'b1000_000;//7'b0111_111;
				endcase
			end
			
endmodule
