`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:00 12/03/2013 
// Design Name: 
// Module Name:    M_MROX 
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
module M_MROX(
   input RESET,
   (* KEEP="TRUE" *) output [39:0] CLK_O
);
	(* KEEP="TRUE" *) MROX #(.CW(24),.CN(15)) MROXs[39:0](
		.RESET(RESET),
		.CLK_O(CLK_O)
	);
endmodule
