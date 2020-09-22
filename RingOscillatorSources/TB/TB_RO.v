`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:59:18 12/03/2013
// Design Name:   RO
// Module Name:   C:/Users/adnan/Desktop/calisanEthernet/ethernet_calisan/new_sources/RandSources/TB/TB_RO.v
// Project Name:  atlys_ethernet_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_RO;

	// Inputs
	reg RESET;

	// Outputs
	wire CLK_O;

	// Instantiate the Unit Under Test (UUT)
	RO uut (
		.RESET(RESET), 
		.CLK_O(CLK_O)
	);

	initial begin
		// Initialize Inputs
		RESET = 1;

		// Wait 100 ns for global reset to finish
		#100;
		RESET = 0;
        
		// Add stimulus here

	end
      
endmodule

