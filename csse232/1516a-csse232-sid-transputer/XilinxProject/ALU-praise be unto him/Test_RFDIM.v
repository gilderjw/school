`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:27:30 11/03/2015
// Design Name:   RegisterFileDataInputMux
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/ALU-praise be unto him/Test_RFDIM.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterFileDataInputMux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_RFDIM;

	// Inputs
	reg [1:0] RFWD;
	reg [15:0] Three;
	reg [15:0] Two;
	reg [15:0] One;
	reg [15:0] Zero;

	// Outputs
	wire [15:0] Output;

	// Instantiate the Unit Under Test (UUT)
	RegisterFileDataInputMux uut (
		.RFWD(RFWD), 
		.Three(Three), 
		.Two(Two), 
		.One(One), 
		.Zero(Zero), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		RFWD = 0;
		Three = 3;
		Two = 2;
		One = 1;
		Zero = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(RFWD=0;RFWD<=3;RFWD=RFWD+1)
		
			#100
			if(RFWD==Output)
			begin
			$display( Output, "ok");
			end

	end
      
endmodule

