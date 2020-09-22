`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:07 12/27/2013 
// Design Name: 
// Module Name:    MDS 
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
module MDS(
   input [7:0] D_IN,
   output [7:0] D_OUT
);
	wire [3:0] ax2, ax5, bx2;

	MUL2 Ax2 (
    .D_IN(D_IN[7:4]), 
    .D_OUT(ax2)
   );
	
	MUL2 Bx2 (
    .D_IN(D_IN[3:0]), 
    .D_OUT(bx2)
   );
	
	MUL5 Ax5 (
    .D_IN(D_IN[7:3]), 
    .D_OUT(ax5)
   );
	
	assign D_OUT = {{ax5 ^ bx2}, {ax2 ^ D_IN[3:0]}};
endmodule
