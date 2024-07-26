`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:02 01/05/2022 
// Design Name: 
// Module Name:    tb_parking_capacity_counter 
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
module tb_parking_capacity_counter(
    );
reg [7:0] new_capacity;
wire [3:0] parked;
wire [3:0] empty;
wire [3:0] w1,w2,w3,w4,w5,w6,w7,w8;

parking_capacity_counter pp1 ( new_capacity , parked , empty , w1,w2,w3,w4,w5,w6,w7,w8  ) ; 
initial
begin
new_capacity <= 8'b10101010 ;
#20 ;
new_capacity <= 8'b10111011 ;
#20 ;
new_capacity <= 8'b10000000 ;
#20 ;
end
endmodule
