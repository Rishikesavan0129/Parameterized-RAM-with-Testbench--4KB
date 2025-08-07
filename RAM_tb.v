`timescale 1ns / 1ps
module RAM_tb;
reg clk,reset,we;
reg[7:0]din;
reg[11:0]addr;
wire[7:0] dout;
integer i,j;
RAM dut(
.clk(clk),
.reset(reset),
.we(we),
.din(din),
.addr(addr),
.dout(dout));
initial begin
clk=0;
forever #5 clk<=~clk;
end

initial begin
reset=1; we= 0;
din =0; addr=0;
#10;
reset = 0;
#10;
we=1;
for(i=0;i<16;i=i+1)begin
addr=i;
din=i+100;
#10;
end
we=0;
for(j=0;j<16;j=j+1)begin
addr=j;
#10;
$display("Read: addr=%d,dout=%d",addr,dout);
end
#20;
$finish;
end
endmodule
