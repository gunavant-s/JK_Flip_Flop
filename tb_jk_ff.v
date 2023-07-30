`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Gunavant 
// 
// Create Date: 30.07.2023 07:26:34
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff;
    reg clk;
    reg j;
    reg k;
    wire q;
    
    jk_ff DUT(.clk(clk),
              .j(j),
              .k(k),
              .q(q)
              );
              
    initial begin
        clk = 0;
        j = 0;
        k = 0;
        #10 j = 0; k = 1;
        #10 j = 1; k = 0;
        #10 j = 0; k = 1;
        #10 j = 1; k = 1;
        #5 $stop;
    end 
    
    always #5 clk = ~clk;
        
endmodule
