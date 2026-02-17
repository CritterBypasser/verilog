module nbitcomp #(parameter N=32)
(
input [N-1:0] a,b,
output reg greater, lesser, equal
    );
    
    always @(*) begin
    greater=1'b0;
    lesser=1'b0;
    equal=1'b0;
    
    if (a>b) begin
    greater=1'b1;
    end
    
    else if (a<b) begin
    lesser=1'b1;
    end
    
    else begin
    equal=1'b1;
    end
    end
endmodule
