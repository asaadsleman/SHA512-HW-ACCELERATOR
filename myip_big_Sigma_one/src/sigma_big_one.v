//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 01:05:54 PM
// Design Name: 
// Module Name: big_sigma_one
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



`define Sigma1(x) (((x >>> 14)|(x<<<50)) ^ ((x >>> 18)|(x<<<46)) ^ ((x >>> 41)|(x<<<23)))

module big_sigma_one(
        input [63:0] x,
        output wire [63:0] S1);

        assign S1 =`Sigma1(x);
        
endmodule