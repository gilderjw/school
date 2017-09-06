`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:11:58 10/30/2015
// Design Name:   WriteDecoder
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/Milestone 4/AluTheGOD/Test_decoder.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: WriteDecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_decoder;

	// Inputs
	reg [3:0] RD;

	// Outputs
	wire [15:0] Output;

	// Instantiate the Unit Under Test (UUT)
	WriteDecoder uut (
		.RD(RD), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		RD = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

