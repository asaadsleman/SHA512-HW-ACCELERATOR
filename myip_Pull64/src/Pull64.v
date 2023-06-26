//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 08:16:16 PM
// Design Name: 
// Module Name: Pull64
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


module Pull64(
    input [63:0] x,
    output wire [63:0] out);
     
      assign out = {x[7:0], x[15:8], x[23:16], x[31:24], x[39:32], x[47:40], x[55:48], x[63:56]};
  
endmodule
