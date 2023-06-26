//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 11:12:23 AM
// Design Name: 
// Module Name: sigma_small_one
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

`define sigma1(x) (((x >>> 19)|(x<<<45)) ^ ((x >>> 61)|(x<<3)) ^ ((x >>6)))


module sigma_small_one(
        input [63:0] x,
        output wire [63:0] s1);

        assign s1 =`sigma1(x);
        
endmodule