/// Flip-Flop D


module eje2(
    input clk,
    input d,
    output reg q;
);

always @(posedge clk) begin
    q <= d;
end

endmodule