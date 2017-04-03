`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2017 01:44:03 PM
// Design Name: 
// Module Name: flipFlopD8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module flipFlopD8(
input wire [7:0] D,
output reg [7:0] Q,
input wire enable,clk,rst);
always @(posedge clk)
begin
if(rst)
    Q = 1'b0;
else if(enable)
    Q = D;
end
endmodule
