`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:25:49 12/27/2013
// Design Name:   S5
// Module Name:   C:/Users/adnan/Desktop/AKADEMIK/2013Guz/GomSis/Project/HW/PP0_OT0/new_sources/PostProcessing/testbench/TB_S5.v
// Project Name:  atlys_ethernet_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: S5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_S5;

	// Inputs
	reg [4:0] D_IN;

	// Outputs
	wire [3:0] D_OUT;

	// Instantiate the Unit Under Test (UUT)
	S5 uut (
		.D_IN(D_IN), 
		.D_OUT(D_OUT)
	);
	
	integer i;
	
	initial begin
		// Initialize Inputs
		D_IN = 0;
		// Wait 100 ns for global reset to finish
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		#10;
		D_IN = D_IN+1;
		// Add stimulus here

	end
      
endmodule

