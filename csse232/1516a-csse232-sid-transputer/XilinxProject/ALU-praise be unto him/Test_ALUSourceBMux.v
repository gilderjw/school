`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:45:58 10/30/2015
// Design Name:   ALUSourceBMux
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/Milestone 4/AluTheGOD/Test_ALUSrcB.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUSourceBMux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_ALUSrcB;

	// Inputs
	reg [1:0] ALUSrcB;
	reg [15:0] Three;
	reg [15:0] Two;
	reg [15:0] One;
	reg [15:0] Zero;

	// Outputs
	wire [15:0] Output;

	// Instantiate the Unit Under Test (UUT)
	ALUSourceAMux uut (
		.ALUSrcA(ALUSrcB), 
		.Three(Three), 
		.Two(Two), 
		.One(One), 
		.Zero(Zero), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		ALUSrcB = 0;
		Three = 3;
		Two = 2;
		One = 1;
		Zero = 0;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(ALUSrcB=0;ALUSrcB<=3;ALUSrcB=ALUSrcB+1)
		
			#100
			if(ALUSrcB==Output)
			begin
			$display( Output, "ok");
			end
			
	end
    
endmodule

