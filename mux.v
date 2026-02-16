module mux(input a,
input sel,
input b,
output c
);

assign c= (~sel&a)|(sel&b);

endmodule
