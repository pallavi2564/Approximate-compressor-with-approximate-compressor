`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2024 10:33:04
// Design Name: 
// Module Name: comp_4
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


module comp_4(input p,q,r,s,output sum,carry );

wire l,m,n;
assign l=p^q;
assign m=p&q;
assign n=p|q;
//assign sum=((p|r)&(~(q^s)))|(r&p);
//assign carry=q|s;
//assign sum=((p^q)^(r^s))|(p&q);
//assign carry =(((p^q)&(r|s))|(p&q));
assign sum=l^n;
assign carry=((m&(~l))|(n&l));
endmodule
