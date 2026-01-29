module add(
        input a,
        input b,
        input c,
        output reg sum,
        output reg carry
    );
    always @ (*) begin
        sum=a^b^c;
        carry= (a&b) | c&(a^b);
    end
endmodule

module rca(
        input a0,b0,a1,b1,a2,b2,a3,b3,cin,
        output c3,s0,s1,s2,s3
    );
    wire c0,c1,c2;
    add add1 ( .a(a0),.b(b0),.c(cin),.sum(s0),.carry(c0));
    add add2 ( .a(a1),.b(b1),.c(c0),.sum(s1),.carry(c1));
    add add3 ( .a(a2),.b(b2),.c(c1),.sum(s2),.carry(c2));
    add add4 ( .a(a3),.b(b3),.c(c2),.sum(s3),.carry(c3));
endmodule