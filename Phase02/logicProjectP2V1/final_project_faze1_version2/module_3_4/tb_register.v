`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:01 01/13/2022 
// Design Name: 
// Module Name:    tb_register 
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
module tb_register(
    );
	 
reg [7:0] D;
reg CLK; 
reg RST;
reg en;
wire [7:0] Q;	 

register R1 (	D , CLK , RST , en , Q ); 
 initial begin
RST = 1'b1;
en = 1'b1;
D = 8'b10101111;
#100;
RST = 1'b0;
en = 1'b1;
D = 8'b11111010;
#100;
RST = 1'b1;
en = 1'b0;
D = 8'b11111110;
#100;
RST = 1'b0;
en = 1'b0;
D = 4'b10000011;
#100;
RST = 1'b1;
en = 1'b1;
D = 8'b11110101;

end
initial
begin
CLK = 1'b0;
forever #10 CLK = ~CLK ;
end


endmodule
