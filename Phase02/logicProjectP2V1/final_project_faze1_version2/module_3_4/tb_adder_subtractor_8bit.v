`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:25 01/05/2022 
// Design Name: 
// Module Name:    tb_adder_subtractor_8bit 
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
module tb_adder_subtractor_8bit(
    );
	 reg [7:0] A ;
	reg [7:0] B ;
	reg sel ; // 0: add, 1: subtract
	wire [7:0] S ;
	wire cout ;

adder_subtractor_8bit eee1 ( A , B , sel , S , cout ) ;

initial
begin
A=8'b00010100; B=8'b11010100; sel =0;
#100 A=8'b01001100; B=8'b11010101; sel =0;
#100 A=8'b01010110; B=8'b11010000; sel =0;
#100 A=8'b00010101; B=8'b01010000; sel =0;


#100 A=8'b11110100; B=8'b11010110; sel =1;
#100 A=8'b00110100; B=8'b00010100; sel =1;
#100 A=8'b0101011; B=8'b00110100; sel =1;
#100 A=8'b0010000; B=8'b00000100; sel =1;

end


endmodule
