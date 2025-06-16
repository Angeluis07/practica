module eje9(
  input w,
  input clk,
  output q1,
  output q0,
  output z_s
);

assign z_s = q1 & q0;

wire d1, d0;

assign d1 = (w & q0) | (q1 & ~q0);
assign d0 = (q1 & ~q0) | (q1 & w) | (w & ~q0);

flip_flop_d FFD_1(
  .clk(clk),
  .d(d1),
  .q(q1)
);
flip_flop_d FFD_2(
  .clk(clk),
  .d(d0),
  .q(q0)
);

endmodule