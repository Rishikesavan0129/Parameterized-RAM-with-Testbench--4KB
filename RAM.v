`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 20:15:19
// Design Name: 
// Module Name: RAM
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


module RAM #(parameter DATAWID=8,ADDERWID=12)(
    input clk,
    input reset,
    input we,
    input [DATAWID-1:0] din,
    input  [ADDERWID-1:0] addr,
    output reg [DATAWID-1:0] dout
    );
    reg[DATAWID-1:0] mem[(2**ADDERWID)-1:0];
    always@(posedge clk )begin
    if(reset)begin
    dout<= 0;
    end 
    else begin
    if(we)
    mem[addr]<=din;
    dout<=mem[addr];
  end
  end
endmodule
