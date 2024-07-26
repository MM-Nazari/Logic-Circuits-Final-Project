`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:45 01/05/2022 
// Design Name: 
// Module Name:    adder_subtractor_4bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module adder_subtractor_4bit(
	input [3:0] A ,
	input [3:0] B ,
	input sel , // 0: add, 1: subtract
	output [3:0] S ,
	output cout
);
    wire [2:0] cmid;
    adder_subtractor a0(A[0], B[0], sel, sel, S[0], cmid[0]);
    adder_subtractor a1(A[1], B[1], cmid[0], sel, S[1], cmid[1]);
    adder_subtractor a2(A[2], B[2], cmid[1], sel, S[2], cmid[2]);
	 adder_subtractor a3(A[3], B[3], cmid[2], sel, S[3], cout);
	
endmodule
