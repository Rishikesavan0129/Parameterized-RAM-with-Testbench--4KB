`timescale 1ns / 1ps
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
