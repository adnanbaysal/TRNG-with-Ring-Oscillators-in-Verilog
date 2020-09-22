`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:16:09 12/27/2013
// Design Name:   ROUND
// Module Name:   C:/Users/adnan/Desktop/AKADEMIK/2013Guz/GomSis/Project/HW/PP0_OT0/new_sources/PostProcessing/testbench/TB_ROUND.v
// Project Name:  atlys_ethernet_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ROUND
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_ROUND;

	// Inputs
	reg [31:0] D_IN;
	reg [7:0] K_IN;

	// Outputs
	wire [31:0] D_OUT;

	// Instantiate the Unit Under Test (UUT)
	ROUND uut (
		.D_IN(D_IN), 
		.K_IN(K_IN), 
		.D_OUT(D_OUT)
	);

	initial begin
		// Initialize Inputs
		D_IN = 0;
		K_IN = 0;

		// Wait 100 ns for global reset to finish
		#10;
      K_IN = 8'b11111111;
		// Add stimulus here

	end
      
endmodule

