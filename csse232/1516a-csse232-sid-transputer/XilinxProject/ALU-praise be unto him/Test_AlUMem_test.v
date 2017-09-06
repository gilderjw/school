// Verilog test fixture created from schematic /home/wangs4/1516a-csse232-sid-transputer/XilinxProject/ALU-praise be unto him/Test_ALUMem.sch - Tue Nov  3 18:56:22 2015

`timescale 1ns / 1ps

module Test_ALUMem_Test_ALUMem_sch_tb();

// Inputs
   reg [15:0] Ainput;
   reg [15:0] Binput;
   reg [3:0] opcodeinput;
   reg CLK;
   reg [14:0] AddressIn;
   reg [0:0] Writeenable;

// Output
   wire [15:0] dataOut;

// Bidirs

// Instantiate the UUT
   Test_ALUMem UUT (
		.Ainput(Ainput), 
		.Binput(Binput), 
		.opcodeinput(opcodeinput), 
		.CLK(CLK), 
		.AddressIn(AddressIn), 
		.Writeenable(Writeenable), 
		.dataOut(dataOut)
   );
// Initialize Inputs

  
       initial begin
		Ainput = 0;
		Binput = 0;
		opcodeinput = 0;
		CLK = 0;
		AddressIn = 0;
		Writeenable = 0;
		#100
		opcodeinput=0;
		Ainput=1;
		Binput=0;
		AddressIn=0;
		Writeenable=1;
		#100
		if(dataOut==1)
		$display ("+ good");
		
		opcodeinput=1;
		#100
		if(dataOut==0)
		$display("good");
		
		
		Ainput=10;
		Binput=15;
		AddressIn=0;
		Writeenable=1;
		opcodeinput=0;
		#100
		if(dataOut==25)
		$display ("+ good");
		
		opcodeinput=1;
		#100
		if(dataOut==4'b1010)
		$display("good");
		
		
		
		
		
		
		
		
		
		
		
		

		
		
		
 end
	always #2 CLK = ~CLK;
endmodule
