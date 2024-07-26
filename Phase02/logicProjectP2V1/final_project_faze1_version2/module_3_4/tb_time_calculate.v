`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:06 01/05/2022 
// Design Name: 
// Module Name:    tb_time_calculate 
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
module tb_time_calculate(
    );
reg [7:0] time_out;
reg [7:0] time_in;
wire [7:0] time_total;
time_calculate tt1 ( time_out , time_in , time_total ) ;
initial 
begin
time_out <= 8'b00001000 ;
time_in <= 8'b00000100 ;
#20 ;
time_out <= 8'b00001100 ;
time_in <= 8'b00000110 ;
#20 ;
end
endmodule
