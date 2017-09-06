`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:11:14 11/08/2015
// Design Name:   adder
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/ALU-praise be unto him/Test_adder.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_adder;

	// Inputs
	reg [15:0]A;
	reg [15:0]B;

	// Outputs
   wire  [15:0]Out;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.A(A), 
		.B(B), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		A = 16'h5;
		B = 16'h8;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		$display (Out,13);

	end
      
endmodule

