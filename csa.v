module add(
        input a,
        input b,
        input c,
        output sum,
        output carry
    );
 
  assign sum=a^b^c;
  assign carry= (a&b) | c&(a^b);
 
endmodule

module csa(
    input [3:0] a,b,
    input [3:0] cin,
    output [4:0] sout,
    output [2:0] s,
    output cout
    );
    wire [3:0] cbtw;
    wire [2:0] carry;
    add add0 (.a(a[0]),.b(b[0]),.c(cin[0]),.sum(sout[0]),.carry(cbtw[0]));
    add add1 (.a(a[1]),.b(b[1]),.c(cin[1]),.sum(s[0]),.carry(cbtw[1]));
    add add2 (.a(a[2]),.b(b[2]),.c(cin[2]),.sum(s[1]),.carry(cbtw[2]));
    add add3 (.a(a[3]),.b(b[3]),.c(cin[3]),.sum(s[2]),.carry(cbtw[3]));
    
    
    add add4 (.a(cbtw[0]),.b(s[0]),.c(0),.sum(sout[1]),.carry(carry[0]));
    add add5 (.a(cbtw[1]),.b(s[1]),.c(carry[0]),.sum(sout[2]),.carry(carry[1]));
    add add6 (.a(cbtw[2]),.b(s[2]),.c(carry[1]),.sum(sout[3]),.carry(carry[2]));
    add add7 (.a(cbtw[3]),.b(0),.c(carry[2]),.sum(sout[4]),.carry(cout));
endmodule
