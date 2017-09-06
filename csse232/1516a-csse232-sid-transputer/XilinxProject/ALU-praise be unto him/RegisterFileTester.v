`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:47:14 10/22/2015
// Design Name:   RegisterFile
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

module RegisterFileTester;

	// Inputs
	reg [3:0] Rs;
	reg [3:0] Rt;
	reg [3:0] Wa;
	reg [15:0] Wd;
	reg WriteEnable;
	reg ReadEnable;
	reg CLK;

	// Outputs
	wire [15:0] Aout;
	wire [15:0] Bout;
	wire error;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile uut (
		.clk(CLK),
		.AAddress(Rs), 
		.BAddress(Rt), 
		.WriteAddress(Wa), 
		.DataIn(Wd), 
		.A(Aout), 
		.B(Bout), 
		/*.error(error),*/ //THIS IS NOT IMPLEMENTED 
		.RegWrite(WriteEnable), 
		.RegRead(ReadEnable)
	);

	initial begin
		// Initialize Inputs
		Rs = 0;
		Rt = 0;
		Wa = 0;
		Wd = 0;
		WriteEnable = 0;
		ReadEnable = 0;
		CLK = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		#100
		WriteEnable = 1;
		Wa = 4'h0;
		Wd = 16'h0000;
		
		#10
		WriteEnable = 1;
		Wa = 4'h1;
		Wd = 16'h0001;
		
		#10
		WriteEnable = 1;
		Wa = 4'h2;
		Wd = 16'h0002;
		
		#10
		WriteEnable = 1;
		Wa = 4'h3;
		Wd = 16'h0003;
		
		#10
		WriteEnable = 1;
		Wa = 4'h4;
		Wd = 16'h0004;
		
		#10
		WriteEnable = 1;
		Wa = 4'h5;
		Wd = 16'h0005;
		
		#10
		WriteEnable = 1;
		Wa = 4'h6;
		Wd = 16'h0006;
		
		#10
		WriteEnable = 1;
		Wa = 4'h7;
		Wd = 16'h0007;
		
		#10
		WriteEnable = 1;
		Wa = 4'h8;
		Wd = 16'h0008;
		
		#10
		WriteEnable = 1;
		Wa = 4'h9;
		Wd = 16'h0009;
		
		#10
		WriteEnable = 1;
		Wa = 4'hA;
		Wd = 16'h000A;
		
		#10
		WriteEnable = 1;
		Wa = 4'hB;
		Wd = 16'h000B;
		
		#10
		WriteEnable = 1;
		Wa = 4'hC;
		Wd = 16'h000C;
		
		#10
		WriteEnable = 1;
		Wa = 4'hD;
		Wd = 16'h000D;
		
		#10
		WriteEnable = 1;
		Wa = 4'hE;
		Wd = 16'h000E;
		
		#10
		WriteEnable = 1;
		Wa = 4'hF;
		Wd = 16'h000F;
		
		#10
		
		WriteEnable = 0;
		ReadEnable = 1;
		
		Rs = 4'h0000;
		#5
		if(Aout == 0000)
		begin
		$display("Test 0 correct");
		end
      
#10
		
		Rs = 4'h0001;
		#5
		if(Aout == 4'h0001)
		begin
		$display("Test 1 correct");
		end
        
#10
		
		Rs = 4'h0002;
		#5
		if(Aout == 4'h0002)
		begin
		$display("Test 2 correct");
		end
        
#10
		
		Rs = 4'h0003;
		#5
		if(Aout == 4'h0003)
		begin
		$display("Test 3 correct");
		end
   #10
		
		Rs = 4'h0004;
		#5
		if(Aout == 4'h0004)
		begin
		$display("Test 4 correct");
		end
  #10
		
		Rs = 4'h0005;
		#5
		if(Aout == 4'h0005)
		begin
		$display("Test 5 correct");
		end
 #10
		
		Rs = 4'h0006;
		#5
		if(Aout == 4'h0006)
		begin
		$display("Test 6 correct");
		end
 #10
		
		Rs = 4'h0007;
		#5
		if(Aout == 4'h0007)
		begin
		$display("Test 7 correct");
		end
 #10
		
		Rs = 4'h0008;
		#5
		if(Aout == 4'h0008)
		begin
		$display("Test 8 correct");
		end
        #10
		
		Rs = 4'h0009;
		#5
		if(Aout == 4'h0009)
		begin
		$display("Test 9 correct");
		end
        #10
		
		Rs = 4'h000A;
		#5
		if(Aout == 4'h000A)
		begin
		$display("Test A correct");
		end
        #10
		
		Rs = 4'h000B;
		#5
		if(Aout == 4'h000B)
		begin
		$display("Test B correct");
		end
        #10
		
		Rs = 4'h000C;
		#5
		if(Aout == 4'h000C)
		begin
		$display("Test C correct");
		end
        #10
		
		Rs = 4'h000D;
		#5
		if(Aout == 4'h000D)
		begin
		$display("Test D correct");
		end
        #10
		
		Rs = 4'h000E;
		#5
		if(Aout == 4'h000E)
		begin
		$display("Test E correct");
		end
        #10
		
		Rs = 4'h000F;
		#5
		if(Aout == 4'h000F)
		begin
		$display("Test F correct");
		end
        
		  
		

	end
      always #2 CLK = ~CLK;
endmodule

