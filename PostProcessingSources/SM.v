`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:27 12/27/2013 
// Design Name: 
// Module Name:    SM 
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
module SM(
   input [9:0] D_IN,
   output [7:0] D_OUT
);
	wire [7:0] s_out;
	
	S5 S5A (
    .D_IN(D_IN[9:5]), 
    .D_OUT(s_out[7:4])
   );
	
	S5 S5B (
    .D_IN(D_IN[4:0]), 
    .D_OUT(s_out[3:0])
   );
	
	MDS MDS (
    .D_IN(s_out), 
    .D_OUT(D_OUT)
    );
endmodule
