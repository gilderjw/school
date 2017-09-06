`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:00:37 10/30/2015
// Design Name:   PCSelectMux
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/Milestone 4/AluTheGOD/Test_PCSelectMux.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCSelectMux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_PCSelectMux;

	// Inputs
	reg PCSrc;
	reg [15:0] One;
	reg [15:0] Zero;

	// Outputs
	wire [15:0] Output;

	// Instantiate the Unit Under Test (UUT)
	PCSelectMux uut (
		.PCSrc(PCSrc), 
		.One(One), 
		.Zero(Zero),  
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		PCSrc = 0;
		One = 1;
		Zero = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	for(PCSrc=0;PCSrc<=1;PCSrc=PCSrc+1)
		
			#100
			if(PCSrc==Output)
			begin
			$display( Output, "ok");
			end
			
	end
endmodule

