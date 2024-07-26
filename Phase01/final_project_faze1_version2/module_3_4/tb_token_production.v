`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:17:03 01/03/2022 
// Design Name: 
// Module Name:    tb_token_production 
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
module tb_token_production(
    );
reg [2:0] park_number;
reg [2:0] pattern;
wire [2:0] token;
token_production B1 ( park_number , pattern , token ) ;
 initial
 begin
 pattern <= 3'b111 ; 
 park_number <= 3'b101 ;
 #20 ;
  pattern <= 3'b001 ; 
 park_number <= 3'b001 ;
 #20 ;
 end
endmodule
