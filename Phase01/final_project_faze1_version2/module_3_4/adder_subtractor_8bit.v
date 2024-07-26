`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:13 01/05/2022 
// Design Name: 
// Module Name:    adder_subtractor_8bit 
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
module adder_subtractor_8bit(
	input [7:0] A ,
	input [7:0] B ,
	input sel , // 0: add, 1: subtract
	output [7:0] S ,
	output cout
);
    wire [6:0] cmid;
    adder_subtractor a0(A[0], B[0], sel, sel, S[0], cmid[0]);
    adder_subtractor a1(A[1], B[1], cmid[0], sel, S[1], cmid[1]);
    adder_subtractor a2(A[2], B[2], cmid[1], sel, S[2], cmid[2]);
	 adder_subtractor a3(A[3], B[3], cmid[2], sel, S[3], cmid[3]);
	 adder_subtractor a4(A[4], B[4], cmid[3], sel, S[4], cmid[4]);
	 adder_subtractor a5(A[5], B[5], cmid[4], sel, S[5], cmid[5]);
	 adder_subtractor a6(A[6], B[6], cmid[5], sel, S[6], cmid[6]);
    adder_subtractor a7(A[7], B[7], cmid[6], sel, S[7], cout);
endmodule