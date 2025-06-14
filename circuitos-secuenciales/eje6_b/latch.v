module latch_d(
  input d,
  input enable,
  output reg q = 0
);

always @(*) begin
  if(enable)
    q = d;
end

endmodule