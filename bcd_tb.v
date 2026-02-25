module bcd_tb ; 
    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    // Outputs
    wire [3:0] sum;
    wire carry;
    bcd uut (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .sum(sum), 
        .carry(carry)
    );

    initial begin
        // Apply Inputs
        {a,b,cin} = 4'd0;    #100;
        a = 4'd6;  b = 4'd9;  cin = 4'd0;   #100;
        a = 4'd3;  b = 4'd3;  cin = 4'd1;   #100;
        a = 4'd4;  b = 4'd5;  cin = 4'd0;   #100;
        a = 4'd8;  b = 4'd2;  cin = 4'd0;   #100;
        a = 4'd9;  b = 4'd4;  cin = 4'd1;   #100;
        $finish;
    end
endmodule