/// Flip-Flop D


module flip_flop_d(
    input clk,
    input d,
    output reg q = 0
);

always @(posedge clk) begin
    q <= d;
end

endmodule