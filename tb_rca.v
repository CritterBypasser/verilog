`timescale 1ns/1ps

module tb_rca;

    // Inputs
    reg a0, b0, a1, b1, a2, b2, a3, b3;
    reg cin;

    // Outputs
    wire s0, s1, s2, s3;
    wire c3;
    
    

    // DUT instantiation
    rca dut (
        .a0(a0), .b0(b0),
        .a1(a1), .b1(b1),
        .a2(a2), .b2(b2),
        .a3(a3), .b3(b3),
        .cin(cin),
        .c3(c3),
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .s3(s3)
    );

    initial begin
        // 1+12
        a0=1;a1=0;a2=0;a3=0;
        b0=0;b1=0;b2=1;b3=1;
        cin=0;
        #10;
        
        // 5+10+1
        a0=1;a1=0;a2=1;a3=0;
        b0=0;b1=1;b2=0;b3=1;
        cin=1;
        #10;
        
        // 6+5
        a0=0;a1=1;a2=1;a3=0;
        b0=1;b1=0;b2=1;b3=0;
        cin=0;
        #10;

        $finish;
    end

endmodule
