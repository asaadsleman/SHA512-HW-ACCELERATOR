//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 02:21:26 PM
// Design Name: 
// Module Name: maj_cal
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
`define Maj(x, y, z) ((x & y) ^ (x & z) ^ (y & z))

module maj_cal(
        input [63:0] x,
        input [63:0] y,
        input [63:0] z,
        output wire [63:0] maj);

        assign maj =`Maj(x,y,z);

   
endmodule
