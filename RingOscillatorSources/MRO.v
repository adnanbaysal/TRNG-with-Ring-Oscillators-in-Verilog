`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:18 12/03/2013 
// Design Name: 
// Module Name:    MRO 
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
module MRO(
   input RESET,
   (* KEEP="TRUE" *) output [31:0] CLK_O
);

	(* KEEP="TRUE" *) RO #(20) ROs[31:0](
		.RESET(RESET),
		.CLK_O(CLK_O)
	);
endmodule
