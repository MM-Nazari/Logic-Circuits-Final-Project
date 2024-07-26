`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:47 01/05/2022 
// Design Name: 
// Module Name:    tb_calculate_new_capacity 
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
module tb_calculate_new_capacity(
    );

reg [7:0] park_location;
reg [7:0] parking_capacity;
wire [7:0] new_capacity;
calculate_new_capacity hh ( park_location , parking_capacity , new_capacity );
initial 
begin
park_location <= 8'b00000100 ;
parking_capacity <= 8'b10100000;
#20;
end
endmodule
