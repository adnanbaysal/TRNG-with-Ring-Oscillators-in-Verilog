`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:56:09 01/11/2014
// Design Name:   ENC
// Module Name:   C:/Users/adnan/Desktop/AKADEMIK/2013Guz/GomSis/Project/HW/PP0_OT0/new_sources/PostProcessing/testbench/TB_ENC.v
// Project Name:  atlys_ethernet_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ENC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_ENC;

	// Inputs
	reg [31:0] D_IN;
	reg [7:0] K_IN;
	reg CLK;

	// Outputs
	wire [31:0] D_OUT;

	// Instantiate the Unit Under Test (UUT)
	ENC uut (
		.D_IN(D_IN), 
		.K_IN(K_IN), 
		.CLK(CLK), 
		.D_OUT(D_OUT)
	);

	initial begin
		// Initialize Inputs
		D_IN = 0;
		K_IN = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#2;
      D_IN = 1;
		K_IN = 1;
		#2;
      D_IN = 2;
		K_IN = 2;
		#2;
      D_IN = 3;
		K_IN = 3;
		#2;
      D_IN = 4;
		K_IN = 4;
		#2;
      D_IN = 5;
		K_IN = 5;
		#2;
      D_IN = 6;
		K_IN = 6;
		#2;
      D_IN = 7;
		K_IN = 7;
		#2;
      D_IN = 8;
		K_IN = 8;
		#2;
      D_IN = 9;
		K_IN = 9;
		#2;
      D_IN = 10;
		K_IN = 10;
		#2;
      D_IN = 11;
		K_IN = 11;
		// Add stimulus here
	end
	
	always #1 CLK = !CLK;
      
endmodule

