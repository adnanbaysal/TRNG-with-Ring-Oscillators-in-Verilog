`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:19 12/16/2013 
// Design Name: 
// Module Name:    S5 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module S5(
    input  [4:0] D_IN,
    output reg [3:0] D_OUT
);
	always @(D_IN) begin
		case(D_IN)
			 0 : D_OUT = 9;
			 1 : D_OUT = 0;
			 2 : D_OUT = 4;
			 3 : D_OUT = 11;
			 4 : D_OUT = 13;
			 5 : D_OUT = 12;
			 6 : D_OUT = 3;
			 7 : D_OUT = 15;
			 8 : D_OUT = 1;
			 9 : D_OUT = 10;
			10 : D_OUT = 2;
			11 : D_OUT = 6;
			12 : D_OUT = 7;
			13 : D_OUT = 5;
			14 : D_OUT = 8;
			15 : D_OUT = 14;
			16 : D_OUT = 3;
			17 : D_OUT = 12;
			18 : D_OUT = 6;
			19 : D_OUT = 13;
			20 : D_OUT = 5;
			21 : D_OUT = 7;
			22 : D_OUT = 1;
			23 : D_OUT = 9;
			24 : D_OUT = 15;
			25 : D_OUT = 2;
			26 : D_OUT = 0;
			27 : D_OUT = 4;
			28 : D_OUT = 11;
			29 : D_OUT = 10;
			30 : D_OUT = 14;
			31 : D_OUT = 8;
		endcase
	end
endmodule
