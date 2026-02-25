module bcd(
input [3:0] a,b,
input cin,
output reg carry,
output reg [3:0] sum
    );
    reg [3:0] sum_btw;
    always @(*) begin
    sum_btw=a+b+cin;
    if (sum_btw >9) begin
    sum_btw=sum_btw + 4'd6;
    carry =1;
    sum=sum_btw[3:0];
    end
        else begin
    carry =0;
    sum=sum_btw[3:0];
    end
    end
    endmodule
