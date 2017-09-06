`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:45:58 10/30/2015
// Design Name:   ALUSourceAMux
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/Milestone 4/AluTheGOD/Test_ALUSrcA.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUSourceAMux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_ALUSrcA;

	// Inputs
	reg [1:0] ALUSrcA;
	reg [15:0] Three;
	reg [15:0] Two;
	reg [15:0] One;
	reg [15:0] Zero;


	// Outputs
	wire [15:0] Output;

	// Instantiate the Unit Under Test (UUT)
	ALUSourceAMux uut (
		.ALUSrcA(ALUSrcA), 
		.Three(Three), 
		.Two(Two), 
		.One(One), 
		.Zero(Zero), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		ALUSrcA = 0;
		Three = 3;
		Two = 2;
		One = 1;
		Zero = 0;
	

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(ALUSrcA=0;ALUSrcA<=3;ALUSrcA=ALUSrcA+1)
		
			#100
			if(ALUSrcA==Output)
			begin
			$display( Output, "ok");
			end
			
	end
      
endmodule

