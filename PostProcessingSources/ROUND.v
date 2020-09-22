`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:45 12/27/2013 
// Design Name: 
// Module Name:    ROUND 
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
module ROUND(
    input [31:0] D_IN,
    input [7:0] K_IN,
    output [31:0] D_OUT
    );
	
	wire [39:0] SML_in;
	wire [31:0] SML_out;
	assign SML_in = {K_IN[7],D_IN[31:28],K_IN[6],D_IN[27:24],K_IN[5],D_IN[23:20],K_IN[4],D_IN[19:16],
						  K_IN[3],D_IN[15:12],K_IN[2],D_IN[11: 8],K_IN[1],D_IN[ 7: 4],K_IN[0],D_IN[ 3: 0]};
	
	SM SM3 (
    .D_IN(SML_in[39:30]), 
    .D_OUT(SML_out[31:24])
   );
	
	SM SM2 (
    .D_IN(SML_in[29:20]), 
    .D_OUT(SML_out[23:16])
   );
	
	SM SM1 (
    .D_IN(SML_in[19:10]), 
    .D_OUT(SML_out[15:8])
   );
	
	SM SM0 (
    .D_IN(SML_in[9:0]), 
    .D_OUT(SML_out[7:0])
   );
	 
	PERM8 PERM8 (
    .D_IN(SML_out), 
    .D_OUT(D_OUT)
   );
endmodule
