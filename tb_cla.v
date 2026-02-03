module tb_cla;
  reg [3:0]a,b; 
  reg cin;
  wire [3:0] sum;
  wire cout;
    
  cla uut (
        .a(a), .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
  
  //assign add = {cout, sum};
  initial begin
    a = 2'b1; b = 2'b0; cin = 0; 
    #10;
    
    a = 4'd2; b = 4'd4; cin = 1; 
    #10;
    
    a = 4'hb; b = 4'h5; cin = 0; 
    #10;
    
    a = 5; b = 3; cin = 1;
    #10;
    $finish;
  end
endmodule