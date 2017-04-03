`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2017 04:08:21 PM
// Design Name: 
// Module Name: RegFile_TestBench
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


module RegFile_TestBench();

  
  reg clk;
  reg [7:0]  wr_data;
  reg [1:0]  wr_addr;
  reg        wr_en;
  reg [1:0]  read_addr;
  wire [7:0]  read_data;

  
reg_file RF(
   wr_data,
   wr_addr,
   read_addr,
   read_data,
   wr_en,
   clk
  );
  
    initial begin
     wr_data   = 0;
     clk       = 0;
     wr_addr   = 0;
     wr_en     = 0;
     read_addr =0;
     
    end

//TESTBENCH

always #100 clk = ~ clk;
initial
    begin
         #200 
            wr_data = 5;
            wr_addr = 2;
            read_addr = 2;
         #300
            wr_en   = 1;
         #300
            wr_en   = 0;
         #400
            wr_data = 9;
            wr_addr = 3;
            read_addr = 3;
         #800
            wr_en = 1;
         #900
            wr_en = 0;
         #1200 
            wr_data = 255;
            wr_addr = 0;
            read_addr = 0;
          #1300
            wr_en   = 1;
          #1400
            wr_en = 0;
          #1500  $stop;
       end
 

 endmodule
