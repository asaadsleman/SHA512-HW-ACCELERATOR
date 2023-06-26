//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 02:38:20 PM
// Design Name: 
// Module Name: ch_cal
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

`define Ch(x, y, z) ((x & y) ^ (~x & z))

module ch_cal(
        input [63:0] x,
        input [63:0] y,
        input [63:0] z,
        output wire [63:0] ch);

        assign ch =`Ch(x,y,z);

   
endmodule
