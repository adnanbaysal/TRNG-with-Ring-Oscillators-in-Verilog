`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:45 12/27/2013 
// Design Name: 
// Module Name:    MUL5 
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
module MUL5(
   input [3:0] D_IN,
   output [3:0] D_OUT
);
	 
	wire [3:0] d_inx2, d_inx4;

	MUL2 X2 (
    .D_IN(D_IN), 
    .D_OUT(d_inx2)
   );
	
	MUL2 X4 (
    .D_IN(d_inx2), 
    .D_OUT(d_inx4)
   );
	
	assign D_OUT = d_inx4 ^ D_IN;
endmodule
