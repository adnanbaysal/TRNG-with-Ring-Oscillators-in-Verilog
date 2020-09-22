`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:36 12/03/2013 
// Design Name: 
// Module Name:    RO 
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
module RO #(parameter CW = 4)
(
    (* KEEP="TRUE" *) input RESET,
    output CLK_O
    );

	(* KEEP="TRUE" *) wire [CW:0] chain;
	reg tff = 0;
	
	genvar i;
   generate
      for (i=1; i <= CW; i=i+1) 
      begin: not_seq
         assign chain[i] = !chain[i-1];
      end
   endgenerate
	assign chain[0] = !(chain[CW]|RESET);
	
	always @(posedge chain[0]) begin
		if(RESET) tff = 0;
		else tff = !tff;
	end
	
	assign CLK_O = tff;
endmodule
