`include "../eje2/eje2.v"
module eje6_flip_flop(
  input [3:0] b,
  input clk,
  output wire [3:0] q// Inicialización de salida a 0
);
genvar i;
generate
  for(i = 0; i < 4; i = i + 1)begin
    flip_flop_d ffd(
        .clk(clk),
        .d(b[i]),
        .q(q[i])
    );
  end
endgenerate
endmodule

module eje6_latch(
  input[3:0] b,
  input enable,
  output wire [3:0] q
);

genvar j;
generate
  for(j = 0; j < 4; j = j + 1)begin
    latch_d ld(
      .d(b[j]),
      .enable(enable),
      .q(q[j])
    );
  end
endgenerate


endmodule