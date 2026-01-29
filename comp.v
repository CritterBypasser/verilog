module comp(
    input [3:0] a,
    input [3:0] b,
    output L,
    output E,
    output S
    );
    wire [3:0] nota, notb;
    wire [3:0] x;
    wire y0, y1, y2, y3, y4, y5;
    assign nota =~a;
    assign notb =~b;
    assign x[0]=~((nota[0]&b[0]) | (notb[0] & a[0]));
    assign x[1]= ~((nota[1]&b[1]) | (notb[1] & a[1]));
    assign x[2]= ~((nota[2]&b[2]) | (notb[2] & a[2]));
    assign x[3]= ~((nota[3]&b[3]) | (notb[3] & a[3]));
    assign y0 = x[3] & nota[2] & b[2];
    assign y1= x[3] & notb[2] & a[2];
    assign y2= x[2] &  x[3] & nota[1] & b[1];
    assign y3= x[2] &  x[3] & notb[1] & a[1];
    assign y4= x[1] & x[2] &  x[3] & nota[0] & b[0];
    assign y5= x[1] & x[2] &  x[3] & notb[0] & a[0];
    assign E= x[0]&x[1]&x[2]&x[3];
    assign S= (nota[3]&b[3]) | y0 | y2| y4;
    assign L= (notb[3]&a[3]) | y1| y3| y5;
endmodule
