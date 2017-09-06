`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:32:20 11/03/2015
// Design Name:   RegisterFileWriteAddressMux
// Module Name:   /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/ALU-praise be unto him/Test_RFWAM.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterFileWriteAddressMux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_RFWAM;

	// Inputs
	reg RFWA;
	reg [3:0] InstructionRegister;

	// Outputs
	wire [3:0] Output;

	// Instantiate the Unit Under Test (UUT)
	RegisterFileWriteAddressMux uut (
		.RFWA(RFWA), 
		.InstructionRegister(InstructionRegister), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		RFWA = 0;
		InstructionRegister = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		if(Output==InstructionRegister)
		begin
		RFWA=1;
		#10
		if(Output==4'hD)
		$display ("good");
		end
		

	end
      
endmodule

