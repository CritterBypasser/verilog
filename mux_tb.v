module mux_tb();
reg a,b,sel;
wire c;

mux uut (.a(a), .b(b), .c(c), .sel(sel));
initial begin
$dumpfile("mux.vcd");
$dumpvars(0,mux_tb);
end

initial begin 
$monitor("$time a=%b b=%b c=%b sel=%b",$time,a,b,c,sel);

#10;
a=1'b0;
b=1'b1;
sel=1'b1;
#10;
a=1'b0; 
b=1'b1;
sel=1'b0;

#10;
a=1'b0; 
b=1'b0;
sel=1'b0;

#30 $finish;

end
endmodule
