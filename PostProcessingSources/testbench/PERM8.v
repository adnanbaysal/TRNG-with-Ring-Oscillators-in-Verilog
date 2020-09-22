`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:21 12/27/2013 
// Design Name: 
// Module Name:    PERM8 
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
module PERM8(
    input [31:0] D_IN,
    output [31:0] D_OUT
    );

	assign D_OUT = {D_IN[31:28],D_IN[19:16],D_IN[15:12],D_IN[3:0],D_IN[23:20],D_IN[27:24],D_IN[7:4],D_IN[11:8]};
endmodule
