`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:06:08 12/27/2013 
// Design Name: 
// Module Name:    MUL2 
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
module MUL2(
    input [3:0] D_IN,
    output [3:0] D_OUT
    );

	assign D_OUT = {D_IN[2:1], D_IN[0] ^  D_IN[3], D_IN[3]};
endmodule
