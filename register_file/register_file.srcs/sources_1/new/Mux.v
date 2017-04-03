`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UDG CUCEI
// Engineer: Diego Antonio Vallejo Jimenez
// 
// Create Date: 03/06/2017 07:36:47 PM
// Design Name: 
// Module Name: Mux
// Project Name: practica 5
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

module Mux(
    input   [7:0] A, B, C, D,
    input   [1:0] sel,
    output reg  [7:0] out
    );
     
    always @( A or B or C or D or sel)
    case(sel)
        2'b00: 
            out = A;
        2'b01: 
            out = B;
        2'b10: 
            out = C;
        2'b11: 
            out = D;
     endcase
endmodule