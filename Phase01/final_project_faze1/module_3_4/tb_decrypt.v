`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:36 01/05/2022 
// Design Name: 
// Module Name:    tb_decrypt 
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
module tb_decrypt(
    );
reg	 exit;
reg [2:0] token;
reg [2:0] pattern;
wire  [2:0] park_number;

decrypt dd1 ( exit , token , pattern , park_number ) ;
 initial
 begin
 pattern <= 3'b111 ; 
 token <= 3'b101 ;
 exit <=1'b1 ;
 #20 ;
  pattern <= 3'b001 ; 
 token <= 3'b001 ;
 exit <=1'b0 ;
 #20 ;
 end
endmodule
