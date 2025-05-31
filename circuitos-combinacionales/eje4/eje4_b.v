module eje4_b(
input wire E1,
input wire E2,
input wire E3,
input wire E4,
output wire A,
output wire B,
output wire C,
output wire D
);

assign A = (E1 & ~E2 & ~E3 & ~E4) | (E1 & ~E2 & ~E3 & E4) | (E1 & ~E2 & E3 & ~E4) | (E1 & ~E2 & E3 & E4) |
           (E1 & E2 & ~E3 & ~E4) | (E1 & E2 & ~E3 & E4) | (E1 & E2 & E3 & ~E4) | (E1 & E2 & E3 & E4);

assign B = (~E1 & E2 & ~E3 & ~E4) | (~E1 & E2 & ~E3 & E4) | (~E1 & E2 & E3 & ~E4) | (~E1 & E2 & E3 & E4) |
           (E1 & ~E2 & ~E3 & ~E4) | (E1 & ~E2 & ~E3 & E4) | (E1 & ~E2 & E3 & ~E4) | (E1 & ~E2 & E3 & E4);

assign C = (~E1 & ~E2 & E3 & ~E4) | (~E1 & ~E2 & E3 & E4) | (~E1 & E2 & ~E3 & ~E4) | (~E1 & E2 & ~E3 & E4) |
           (E1 & ~E2 & E3 & ~E4) | (E1 & ~E2 & E3 & E4) | (E1 & E2 & ~E3 & ~E4) | (E1 & E2 & ~E3 & E4);

assign D = (~E1 & ~E2 & ~E3 & E4) | (~E1 & ~E2 & E3 & ~E4) | (~E1 & E2 & ~E3 & E4) | (~E1 & E2 & E3 & ~E4) |
           (E1 & ~E2 & ~E3 & E4) | (E1 & ~E2 & E3 & ~E4) | (E1 & E2 & ~E3 & E4) | (E1 & E2 & E3 & ~E4);

endmodule
