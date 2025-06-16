module eje3(
  input re,
  input clk,
  output q1,
  output q0
);

wire j1, k1, j0, k0;

assign j1 = ~re & ~q1 & q0;
assign k1 = re | q0;
assign j0 = ~re;
assign k0 = 1'b1;

flip_flop_jk S1(
  .J(j1),
  .K(k1),
  .Clk(clk),
  .Q(q1)
);

flip_flop_jk S0(
  .J(j0),
  .K(k0),
  .Clk(clk),
  .Q(q0)
);

endmodule