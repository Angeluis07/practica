module eje8(
  input d,
  input clk,
  input R_L, // 1 desp der, 0 desp izq
  output q3,
  output q2,
  output q1,
  output q0
);

wire d3, d2, d1, d0;

assign d3 = R_L? d : q2;
assign d2 = R_L? q3 : q1;
assign d1 = R_L? q2 : q0;
assign d0 = R_L? q1 : d;

flip_flop_d ff3(.clk(clk), .d(d3), .q(q3));
flip_flop_d ff2(.clk(clk), .d(d2), .q(q2));
flip_flop_d ff1(.clk(clk), .d(d1), .q(q1));
flip_flop_d ff0(.clk(clk), .d(d0), .q(q0));


endmodule