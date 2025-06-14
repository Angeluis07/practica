module eje5(
    input clk,
    input en,
    input j,
    input k,
    input s,
    input r,
    output reg q
);

always @(posedge clk or posedge r or posedge s) begin
  if(r)
    q <= 1'b0;
  else if (s)
    q <= 1'b1;
  else if(en) begin
    case({j,k})
      2'b00: q <= q;
      2'b01: q <= 1'b0;
      2'b10: q <= 1'b1;
      2'b11: q <= ~q;
    endcase
  end
end



endmodule