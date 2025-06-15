module eje7(
  input d,
  input clk,
  output q3,
  output q2,
  output q1,
  output q0
);

flip_flop_d ffd_3(
  .clk(clk),
  .d(d),
  .q(q3)
);
flip_flop_d ffd_2(
  .clk(clk),
  .d(q3),
  .q(q2)
);
flip_flop_d ffd_1(
  .clk(clk),
  .d(q2),
  .q(q1)
);
flip_flop_d ffd_0(
  .clk(clk),
  .d(q1),
  .q(q0)
);

endmodule

