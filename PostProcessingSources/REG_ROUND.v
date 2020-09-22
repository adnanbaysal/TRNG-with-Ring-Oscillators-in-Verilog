`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:39 12/27/2013 
// Design Name: 
// Module Name:    REG_ROUND 
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
module REG_ROUND(
    input [31:0] D_IN,
    input [7:0] K_IN,
    input CLK,
    output [31:0] D_OUT
    );

	reg [31:0] d_in_reg;
	
	always @(posedge CLK) d_in_reg = D_IN;
	
	ROUND ROUND (
    .D_IN(d_in_reg), 
    .K_IN(K_IN), 
    .D_OUT(D_OUT)
    );
endmodule
