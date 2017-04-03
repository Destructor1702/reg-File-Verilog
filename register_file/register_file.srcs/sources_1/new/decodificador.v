`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Udg CUCEI
// Engineer: Diego Antonio Vallejo Jimenez
// 
// Create Date: 03/08/2017 04:30:51 PM
// Design Name: 
// Module Name: decodificador
// Project Name: Practica 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:Problemas hubo que cambiar la configuracion de este modulo e la practica 7
// 
//////////////////////////////////////////////////////////////////////////////////


module decodificador(
    output reg  [3:0]out,    
    input  wire [1:0]a,
    input  wire      enable    
    );
    
    always @(a or enable)
        if(enable == 1)
            case (a) 
                2'b00:
                    out = 4'b1000;
                2'b01:
                    out = 4'b0100;
                2'b10:
                    out = 4'b0010;   
                2'b11:
                    out = 4'b0001; 
                               
            endcase
         else
                   out = 4'b0000; 
endmodule
