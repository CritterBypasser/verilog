module csa_tb;

    // Inputs
    reg  [3:0] a, b;
    reg  [3:0] cin;
    reg [3:0] cbtw;

    // Outputs
    wire [2:0] s;
    wire [4:0] sout;
    wire cout;

    
    csa uut (
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .sout(sout),
        .cout(cout)
    );

    initial begin
        // Test 1
        a   = 4'b0000;
        b   = 4'b0000;
        cin = 4'b0000;
        #10;

        // Test 2
        a   = 4'b0011;
        b   = 4'b0101;
        cin = 4'b0001;
        #10;

        // Test 3
        a   = 4'b1111;
        b   = 4'b0001;
        cin = 4'b0000;
        #10;

        // Test 4
        a   = 4'b1010;
        b   = 4'b0101;
        cin = 4'b0101;
        #10;

        // Test 5 (all 1s – worst case carry)
        a   = 4'b1111;
        b   = 4'b1111;
        cin = 4'b0001;
        #10;

        $finish;
    end

endmodule
