`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:42 12/27/2013 
// Design Name: 
// Module Name:    ENC 
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
module ENC(
    input [31:0] D_IN,
    input [7:0] K_IN,
    input CLK,
    output reg [31:0] D_OUT
   );
	
(* KEEP="TRUE" *)	wire [351:0] data_chain;
	wire [31:0] d_out_wire;
	reg [7:0] k_in_reg = 0;
	
	always @(posedge CLK) begin
		k_in_reg = K_IN;
		D_OUT = d_out_wire;
	end
	
	REG_ROUND RND0 (
    .D_IN(D_IN), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[351:320])
   );
	
	REG_ROUND RND1 (
    .D_IN(data_chain[351:320]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[319:288])
   );
	
	REG_ROUND RND2 (
    .D_IN(data_chain[319:288]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[287:256])
   );
	
	REG_ROUND RND3 (
    .D_IN(data_chain[287:256]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[255:224])
   );
	
	REG_ROUND RND4 (
    .D_IN(data_chain[255:224]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[223:192])
   );
	
	REG_ROUND RND5 (
    .D_IN(data_chain[223:192]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[191:160])
   );
	
	REG_ROUND RND6 (
    .D_IN(data_chain[191:160]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[159:128])
   );
	
	REG_ROUND RND7 (
    .D_IN(data_chain[159:128]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[127:96])
   );
	
	REG_ROUND RND8 (
    .D_IN(data_chain[127:96]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[95:64])
   );
	
	REG_ROUND RND9 (
    .D_IN(data_chain[95:64]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[63:32])
   );
	
	REG_ROUND RND10 (
    .D_IN(data_chain[63:32]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(data_chain[31:0])
   );
	
	REG_ROUND RND11 (
    .D_IN(data_chain[31:0]), 
    .K_IN(k_in_reg), 
    .CLK(CLK), 
    .D_OUT(d_out_wire)
   );
endmodule
