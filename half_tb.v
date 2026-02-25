`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2026 10:00:25
// Design Name: 
// Module Name: half_tb
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


module half_tb(

    );
    reg a,b;
    wire sum,carry;
    half_adder uut(.a(a),.b(b),.sum(sum),.carry(carry));
    initial begin
    a= 1001;
    b= 0001;
    #10;
    a= 1111;
    b= 0000;
    #10
    a= 1010;
    b= 0101;
    #10;
    a= 1100;
    b= 0010;
    #10;
    
    $finish;
end
endmodule
