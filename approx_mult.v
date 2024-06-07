`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2024 10:46:49
// Design Name: 
// Module Name: approx_mult
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

module approx_mult(
input [7:0]a,input [7:0]b,output[15:0]o);

wire p70,p61,p52,p43,p34,p25,p16,p07,p71,p62,p53,p44,p35,p26,p17,p72,p63,p54,p45,p36,p27,p73,p64,p55,p46,p37,p74,p65,p56,p47,p75,p66,p57,p76,p67,p77;
wire e1,e2,s1,c1,cout1;
wire s2,c2;
wire s3,c3,cout2;
wire s4,c4,cout3;
wire s5,c5,s6,c6,s7,c7,s8,c8,s9,c9,s10,c10,s11,c11;
wire s12,c12,c13,c14,c15,c16,c17,c18,c19;
assign p70=a[7]&b[0];
assign p61=a[6]&b[2];
assign p52=a[5]&b[2];
assign p43=a[4]&b[3];
assign p34=a[3]&b[4];
assign p25=a[2]&b[5];
assign p16=a[1]&b[6];
assign p07=a[0]&b[7];
assign p71=a[7]&b[1];
assign p62=a[6]&b[2];
assign p53=a[5]&b[3];
assign p44=a[4]&b[4];
assign p35=a[3]&b[5];
assign p26=a[2]&b[6];
assign p17=a[1]&b[7];
assign p72=a[7]&b[3];
assign p63=a[6]&b[3];
assign p54=a[5]&b[4];
assign p45=a[4]&b[5];
assign p36=a[3]&b[6];
assign p27=a[2]&b[7];
assign p73=a[7]&b[3];
assign p64=a[6]&b[4];
assign p55=a[5]&b[5];
assign p46=a[4]&b[6];
assign p37=a[3]&b[7];
assign p74=a[7]&b[4];
assign p65=a[6]&b[5];
assign p56=a[5]&b[6];
assign p47=a[4]&b[7];
assign p75=a[7]&b[5];
assign p66=a[6]&b[6];
assign p57=a[5]&b[7];
assign p76=a[7]&b[6];
assign p67=a[6]&b[7];
assign p77=a[7]&b[7];

or_4 r1(p70,p61,p52,p43,e1);
or_4 r2(p34,p25,p16,p07,e2);
excomp_4 p1(p71,p62,p53,p44,e1,s1,c1,cout1);
fa f1(p35,p26,p17,s2,c2);
excomp_4 p2(p72,p63,p54,p45,cout1,s3,c3,cout2);
ha h1(p36,p27,s4,c4);
excomp_4 p3(p73,p64,p55,p46,cout2,s5,c5,cout3);
fa f2(p74,p65,cout3,s6,c6);

fa f3(s1,s2,c1,s7,c7);
comp_4 p4(s3,c3,c2,s4,s8,c8);
comp_4 p5(s5,c5,c4,p37,s9,c9);
comp_4 p6(s6,p56,p47,1'b0,s10,c10);
comp_4 p7(c6,p75,p66,p57,s11,c11);
ha h4(p76,p67,s12,c12);

fa f5(s7,c7,e2,o[8],c13);
fa f6(s8,c8,c13,o[9],c14);
fa f7(s9,c9,c14,o[10],c15);
fa f8(s10,c10,c15,o[11],c16);
fa f9(s11,c11,c16,o[12],c17);
fa f10(s12,c12,c17,o[13],c18);
ha h2(p77,c18,o[14],o[15]);

assign o[7:0]=8'b00000110;
endmodule
