module traffic(
    input clk,          // 100 MHz clock
    output reg R,
    output reg G,
    output reg B
);

reg [26:0] counter = 0;   // 27 bits enough for 100M
reg [1:0] state = 0;

always @(posedge clk) begin
    if(counter == 100_000_000 - 1) begin
        counter <= 0;
        state <= state + 1;
    end
    else begin
        counter <= counter + 1;
    end
end

always @(*) begin
    case(state)
        2'd0: {R,G,B} = 3'b100; // Red
        2'd1: {R,G,B} = 3'b110; // Green
        2'd2: {R,G,B} = 3'b010; // yellow
        2'd3: {R,G,B} = 3'b111; // White
        default: {R,G,B} = 3'b000;
    endcase
end

endmodule