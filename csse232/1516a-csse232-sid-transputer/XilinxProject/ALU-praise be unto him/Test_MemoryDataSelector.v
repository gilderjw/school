`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:38:08 10/30/2015
// Design Name:   MemoryDataSelector
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/Milestone 4/AluTheGOD/Test_MemoryDataSelector.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MemoryDataSelector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MemoryDataSelector;

	// Inputs
	reg MDin;
	reg [15:0] One;
	reg [15:0] Zero;

	// Outputs
	wire [15:0] Output;

	// Instantiate the Unit Under Test (UUT)
	MemoryDataSelector uut (
		.MDin(MDin), 
		.One(One), 
		.Zero(Zero),
		.Output(Output)
	);

	initial begin
	
		// Initialize Inputs
		MDin = 0;
		One = 1;
		Zero = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	for(MDin=0;MDin<=1;MDin=MDin+1)
		
			#100
			if(MDin==Output)
			begin
			$display( Output, "ok");
			end
	end
endmodule

