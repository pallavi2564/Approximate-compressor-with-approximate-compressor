`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2024 10:35:30
// Design Name: 
// Module Name: approx_mult_tb
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


module approx_mult_tb;
reg [7:0]a,b;
wire [15:0]o;

approx_mult uut(.a(a),.b(b),.o(o));
initial begin

a=8'd10;b=8'd10;
#10 a=8'd25;b=8'd25;
#10 a=8'd40;b=8'd40;
#10 a=8'd42;b=8'd42;
#10 a=8'd35;b=8'd35;
end
initial begin
 $monitor("time:%g a=%d  b=%d o=%d ",$time,a,b,o);
  #70 $finish;
  end
endmodule
