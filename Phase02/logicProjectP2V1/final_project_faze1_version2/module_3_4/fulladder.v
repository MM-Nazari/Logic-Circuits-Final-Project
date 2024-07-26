`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:18:26 01/05/2022 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(s,c,a,b,cin);
input a,b,cin;
output s,c;
wire i1,i2,i3;
xor x1(i1,a,b);
and a1(i2,a,b);
xor x2(s,i1,cin);
and a2(i3,i1,cin);
or o1(c,i2,i3);
endmodule
