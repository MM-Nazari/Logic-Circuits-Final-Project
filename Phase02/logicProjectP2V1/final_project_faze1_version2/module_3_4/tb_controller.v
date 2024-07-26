`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:53 01/13/2022 
// Design Name: 
// Module Name:    tb_controller 
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
module tb_controller(
    );
reg [2:0] system_token ; 
reg request ;
reg [7:0] TimeData ; 
reg reset ;
reg clock ;
reg confirm ;
reg [2:0] user_token ;
wire [7:0] data_Q ;
wire [7:0] data_P ;
//
//wire Q  ;
//wire P ;
//wire [2:0] state ;
//parameter A=3'b000 , B = 3'b001 , C = 3'b010 , D = 3'b011 , E = 3'b100 ;
//assign state = A ;
//
controller C1 ( system_token , request , TimeData , reset , clock , confirm , user_token , data_Q , data_P );
//
initial
begin
clock = 1'b0;
forever #10 clock = ~clock ;
end
//
initial
begin
system_token <= 3'b001 ;
request <= 1'b1 ;
TimeData  <= 8'b00001111 ;
reset <= 1'b1 ;
confirm <= 1'b1 ;
user_token <= 3'b001 ;
#100 ;
system_token <= 3'b011 ;
request <= 1'b1 ;
TimeData  <= 8'b00001011 ;
reset <= 1'b1 ;
confirm <= 1'b1 ;
user_token <= 3'b011 ;
#100;
system_token <= 3'b001 ;
request <= 1'b1 ;
TimeData  <= 8'b00001111 ;
reset <= 1'b1 ;
confirm <= 1'b1 ;
user_token <= 3'b111 ;
#100 ;
end

endmodule
