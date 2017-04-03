`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UdeG CUCEI
// Engineer: Diego Antonio Vallejo Jimenez
// 
// Create Date: 03/26/2017 05:56:12 PM
// Design Name: 
// Module Name: Reg_File
// Project Name: Practica 7
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// demasiados problemas con la salida de lectura...
//////////////////////////////////////////////////////////////////////////////////

module reg_file(
input  [7:0] w_data,
input  [1:0] w_addr,
input  [1:0] r_addr,
output [7:0] r_data,
input        w_en,
input        clk
);

 wire en1, en2, en3, en4;
 wire [7:0] q1, q2, q3, q4;
 
decodificador Dec24(
     {en4,en3,en2,en1},    
     w_addr,
     w_en    
     );

flipFlopD8 A(w_data,q1,en1,clk,0);
flipFlopD8 B(w_data,q2,en2,clk,0);
flipFlopD8 C(w_data,q3,en3,clk,0);
flipFlopD8 D(w_data,q4,en4,clk,0);

Mux multx( q1,q2,q3,q4, r_addr, r_data );
endmodule