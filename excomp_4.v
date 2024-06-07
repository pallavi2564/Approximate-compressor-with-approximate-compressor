`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2024 11:05:42
// Design Name: 
// Module Name: excomp_4
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

module excomp_4(input a3,input a2,input a1,input a0,input cin,output sum,output carry,output cout);

wire s;
fa f1(a3,a2,a1,s,cout);
fa f2(s,a0,cin,sum,carry);
endmodule
