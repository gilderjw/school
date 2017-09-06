`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:27 10/30/2015
// Design Name:   ALU
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/Milestone 4/AluTheGOD/Test_ALY.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_ALY;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg [3:0] opcode;

	// Outputs
	wire [15:0] r;
	wire cout;
	wire zero;
	wire error;
	wire [1:0] compareVal;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.opcode(opcode), 
		.r(r), 
		.cout(cout), 
		.zero(zero), 
		.error(error), 
		.compareVal(compareVal)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

