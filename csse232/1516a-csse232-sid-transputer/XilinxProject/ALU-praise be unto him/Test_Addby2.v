`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:14:05 10/30/2015
// Design Name:   Addby2
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/Milestone 4/AluTheGOD/Test_Addby2.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Addby2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Addby2;

	// Inputs
	reg [15:0] oldPC;

	// Outputs
	wire [15:0] nextPC;

	// Instantiate the Unit Under Test (UUT)
	Addby2 uut (
		.oldPC(oldPC), 
		.nextPC(nextPC)
	);

	initial begin
		// Initialize Inputs
		oldPC = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		if(nextPC==1)begin
			oldPC = 16'hAAAF;
			#100;
			if(nextPC==16'hAAB0)begin
			$display("addby2 good");
			end end

	end
      
endmodule

