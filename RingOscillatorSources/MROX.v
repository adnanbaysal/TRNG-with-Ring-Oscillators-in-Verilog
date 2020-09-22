`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:26 12/03/2013 
// Design Name: 
// Module Name:    MROX 
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
module MROX #(
	parameter CN=3,
	parameter CW=4
)
(
   input RESET,
   output CLK_O
);
	
	(* KEEP="TRUE" *) wire [CN-1:0] mrx;
	
	(* KEEP="TRUE" *) RO #(.CW(CW)) ROs[CN-1:0](
		.RESET(RESET),
		.CLK_O(mrx)
	);
	
	assign CLK_O = ^mrx;
endmodule
	
//(* KEEP="TRUE" *)	wire [0:1] x;
////(* KEEP="TRUE" *)	wire [1:0] y;

//	assign CLK_O = ^x;

//	assign x[0] = ^mrx[6:2];
//	assign x[1] = ^mrx[1:0];

//	assign x[0] = ^mrx[14:9];
//	assign x[1] = ^mrx[ 8:3];
//	assign x[2] = ^mrx[ 2:0];

//	assign x[0] = ^mrx[7:2];
//	assign x[1] = ^mrx[1:0];
//
//	assign x[0] = ^mrx[8:3];
//	assign x[1] = ^mrx[2:0];

//	assign x[0] = ^mrx[9:4];
//	assign x[1] = ^mrx[3:0];

//	assign x[0] = ^mrx[10:5];
//	assign x[1] = ^mrx[ 4:0];

//	assign x[0] = ^mrx[11:6];
//	assign x[1] = ^mrx[ 5:0];

//	assign x[0] = ^mrx[12:7];
//	assign x[1] = ^mrx[ 6:2];
//	assign x[2] = mrx[0];

//	assign x[0] = ^mrx[13:8];
//	assign x[1] = ^mrx[ 7:2];
//	assign x[2] = ^mrx[ 1:0];

//	assign x[0] = ^mrx[16:11];
//	assign x[1] = ^mrx[10: 5];
//	assign x[2] = ^mrx[ 4: 0];

//	assign x[0] = ^mrx[18:13];
//	assign x[1] = ^mrx[12: 7];
//	assign x[2] = ^mrx[ 6: 1];
//	assign x[3] = mrx[0];

//	assign x[0] = ^mrx[20:15];
//	assign x[1] = ^mrx[14: 9];
//	assign x[2] = ^mrx[ 8: 3];
//	assign x[3] = ^mrx[ 2: 0];

//	assign x[0] = ^mrx[22:17];
//	assign x[1] = ^mrx[16:11];
//	assign x[2] = ^mrx[10: 5];
//	assign x[3] = ^mrx[ 4: 0];

//	assign x[0] = ^mrx[25:20];
//	assign x[1] = ^mrx[19:14];
//	assign x[2] = ^mrx[13: 8];
//	assign x[3] = ^mrx[ 7: 2];
//	assign x[4] = ^mrx[ 1: 0];

//	assign x[0] = ^mrx[29:24];
//	assign x[1] = ^mrx[23:18];
//	assign x[2] = ^mrx[17:12];
//	assign x[3] = ^mrx[11: 6];
//	assign x[4] = ^mrx[ 5: 0];
	
//	assign x[0] = ^mrx[34:29];
//	assign x[1] = ^mrx[28:23];
//	assign x[2] = ^mrx[22:17];
//	assign x[3] = ^mrx[16:11];
//	assign x[4] = ^mrx[10: 5];
//	assign x[5] = ^mrx[ 4: 0];

//	assign x[0] = ^mrx[42:37];
//	assign x[1] = ^mrx[36:31];
//	assign x[2] = ^mrx[30:25];
//	assign x[3] = ^mrx[24:19];
//	assign x[4] = ^mrx[18:13];
//	assign x[5] = ^mrx[12: 7];
//	assign x[6] = ^mrx[ 6: 1];
//	
//	assign y[0] = ^x[0:5];
//	assign y[1] = x[6]^mrx[0];

