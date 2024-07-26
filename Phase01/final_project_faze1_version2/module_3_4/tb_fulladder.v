`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:15 01/05/2022 
// Design Name: 
// Module Name:    tb_fulladder 
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
module tb_fulladder(
    );
reg a,b,cin;
wire s,c;
fulladder ff1(s,c,a,b,cin);
initial
begin
a = 1;
b = 0;
cin = 0;
#20;
a = 1;
b = 1 ;
cin = 0 ;
end
endmodule
