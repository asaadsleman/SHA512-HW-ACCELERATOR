//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 10:23:16 AM
// Design Name: 
// Module Name: sigma_small_zero
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

`define sigma0(x) (((x >>> 1)|(x <<<63)) ^((x >>> 8)|(x<<<56)) ^(x >>7))

module sigma_small_zero(
        input [63:0] x,
        output wire [63:0] s0);

        assign s0 =`sigma0(x);
        
endmodule
