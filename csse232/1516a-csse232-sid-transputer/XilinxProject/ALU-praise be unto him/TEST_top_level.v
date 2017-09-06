// Verilog test fixture created from schematic C:\Users\suchyb\Desktop\CompArch1\final project stuff\XilinxProject\ALU-praise be unto him\TopLevel.sch - Wed Nov 11 02:11:13 2015

`timescale 1ns / 1ps

module TopLevel_TopLevel_sch_tb();

// Inputs
   reg CLK;

// Output
   wire [15:0] BOutput;
   wire [15:0] instruction;
   wire C_PCWrite;
   wire C_MDin;
   wire C_MRead;
   wire C_MWrite;
   wire C_RFRead;
   wire C_RDWrite;
   wire C_SPWrite;
   wire C_AWrite;
   wire C_BWrite;
   wire C_ALUInA;
   wire C_ALUOutWrite;
   wire C_Branch;
   wire C_SPRel;
   wire C_PshPop;
   wire [1:0] C_PCSrc;
   wire [1:0] C_MAddr;
   wire [1:0] C_RFWA;
   wire [1:0] C_ALUInB;
   wire [3:0] C_ALUOp;
   wire [3:0] C_DEBUG_NextState;
   wire [2:0] C_RFWD;
   wire [15:0] MemoryOut;
   wire [15:0] MemoryAddress;
   wire [15:0] PCVal;
   wire [15:0] ALUOutResult;

   wire C_IRWrite;
   wire [15:0] AOutput;

// Bidirs

// Instantiate the UUT
   TopLevel UUT (
		.CLK(CLK), 
		.BOutput(BOutput), 
		.instruction(instruction), 
		.C_PCWrite(C_PCWrite), 
		.C_MDin(C_MDin), 
		.C_MRead(C_MRead), 
		.C_MWrite(C_MWrite), 
		.C_RFRead(C_RFRead), 
		.C_RDWrite(C_RDWrite), 
		.C_SPWrite(C_SPWrite), 
		.C_AWrite(C_AWrite), 
		.C_BWrite(C_BWrite), 
		.C_ALUInA(C_ALUInA), 
		.C_ALUOutWrite(C_ALUOutWrite), 
		.C_Branch(C_Branch), 
		.C_SPRel(C_SPRel), 
		.C_PshPop(C_PshPop), 
		.C_PCSrc(C_PCSrc), 
		.C_MAddr(C_MAddr), 
		.C_RFWA(C_RFWA), 
		.C_ALUInB(C_ALUInB), 
		.C_ALUOp(C_ALUOp), 
		.C_DEBUG_NextState(C_DEBUG_NextState), 
		.C_RFWD(C_RFWD), 
		.MemoryOut(MemoryOut), 
		.MemoryAddress(MemoryAddress), 
		.PCVal(PCVal), 
		.ALUOutResult(ALUOutResult), 
		.C_IRWrite(C_IRWrite), 
		.AOutput(AOutput)
   );
   initial begin
	CLK = 0;
end
	always begin
		#5 CLK = !CLK;
	end
endmodule
