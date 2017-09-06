`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:47:14 10/22/2015
// Design Name:   RegisterMemoryTester
// Module Name:   C:/Users/suchyb/Desktop/CompArch1/final project stuff/AluTheGOD/RegisterFileTester.v
// Project Name:  AluTheGOD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegisterMemoryTester;

	// Inputs
	reg [3:0] Rs;
	reg [3:0] Rt;
	reg [3:0] Wa;
	reg [15:0] Wd;
	reg [0:0]RegWriteEnable;
	reg [0:0]RegReadEnable;
	reg [0:0]MemWriteEnable;
	reg MemReadEnable;
	reg [15:0]MemDataIn;
	reg CLK;
	wire [15:0]MemOut;
	reg [14:0]MemAddress; 

	// Outputs
	wire [15:0] Aout;
	wire [15:0] Bout;
	wire error;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile register (
		.clk(CLK),
		.AAddress(MemOut[11:8]), 
		.BAddress(MemOut[7:4]), 
		.WriteAddress(Wa), 
		.DataIn(Wd), 
		.A(Aout), 
		.B(Bout), 
		/*.error(error),*/ //THIS IS NOT IMPLEMENTED 
		.RegWrite(RegWriteEnable), 
		.RegRead(RegReadEnable)
	);
	
	memory Mem (
		.addra(MemAddress),
		.dina(MemDataIn),
		.wea(MemWriteEnable),
		.clka(CLK),
		.douta(MemOut),
		.ena(MemReadEnable)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		//Memory
		MemAddress = 16'h2;
		MemWriteEnable = 1;
		MemReadEnable = 0;
		MemDataIn = 16'h2010;
		#100
		MemWriteEnable = 0;
		MemReadEnable = 1;
		#100
		//RegisterFile
		RegWriteEnable = 1;
		RegReadEnable = 0;
		Wa = 0;
		Wd = 16'h1234;
		
		
		// Wait 100 ns for global reset to finish
		#100;
		
		Wa = 1;
		Wd = 16'h5678;
		//Data is written in both registers 1 and 0
		#100
		RegReadEnable=1;
		RegWriteEnable=0;
		#100
		
		if(Aout==16'h1234 && Bout==16'h5678)
		begin 
		$display("Awesome");
		end
		
		  
		

	end
      always #2 CLK = ~CLK;
endmodule

