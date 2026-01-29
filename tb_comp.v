module tb_comp;
    reg [3:0] a;
    reg [3:0] b;
    wire L, E, S;
    comp uut (
        .a(a), 
        .b(b),
        .L(L),
        .E(E),
        .S(S)
    );
    initial begin
        a = 4'd5;  b = 4'd5;  #10;
        // A > B
        a = 4'd9;  b = 4'd3;  #10;
        // A < B
        a = 4'd2;  b = 4'd7;  #10;
        // Edge cases
        a = 4'd0;  b = 4'd1;  #10;
        a = 4'd14; b = 4'd7;  #10;
        $finish;
    end
endmodule
