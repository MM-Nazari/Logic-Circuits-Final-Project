`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:49:54 01/03/2022 
// Design Name: 
// Module Name:    tb_priority_encoder_8x3 
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
module tb_park_space_number(
    );
reg enable ;
reg [7:0] parking_capacity;
wire [2:0] park_number;

park_space_number X2 ( enable , parking_capacity , park_number );
initial
begin
enable <= 1'b1 ;
parking_capacity <= 8'b10000000 ;
#20 ;
parking_capacity <= 8'b11000010 ;
#20 ;
parking_capacity <= 8'b01000100 ;
#20 ;
parking_capacity <= 8'b10100010 ;
enable <= 1'b0 ;
parking_capacity <= 8'b10000000 ;
#20 ;
end

endmodule