`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:16 01/05/2022 
// Design Name: 
// Module Name:    tb_adder_subtractor_4bit 
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
module tb_adder_subtractor_4bit(
    );
reg [3:0] A ;
	reg [3:0] B ;
	reg sel ; // 0: add, 1: subtract
	wire [3:0] S ;
	wire cout ;
	
	adder_subtractor_4bit www1 ( A , B , sel , S , cout ) ;
	initial
begin
 A=4'b0100; B=4'b0100; sel =0;
#100 A=4'b0100; B=4'b1101; sel =0;
#100 A=4'b1101; B=4'b1100; sel =1;
#100 A=4'b0100; B=4'b0100; sel =1;
end

endmodule
