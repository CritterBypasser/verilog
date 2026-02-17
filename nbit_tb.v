module nbit_tb #(parameter N=32)();
reg [N-1:0] a, b;
wire greater, lesser, equal;

nbitcomp uut(.a(a), .b(b), .greater(greater), .lesser(lesser), .equal(equal));
initial begin

a=32'hae156535; 
b=32'had18671f;
#10;

a=32'he1e4928a; 
b=32'h1827e31f;
#10;

a=32'hae194309; 
b=32'ha081948e;
#10;

a=5'b01101;
b=4'b1111;
#10;
$finish;
end

endmodule
