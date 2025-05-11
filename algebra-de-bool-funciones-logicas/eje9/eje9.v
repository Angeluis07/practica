///Modulo para la operación AND
module eje9(
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    input wire E,
    output wire f,
    output wire f_2,
    output wire g,
    output wire g_2,
    output wire h,
    output wire h_2,
    output wire i,
    output wire i_2
);

assign f = (A & ~B & C) | (~A & B & ~C) | (A & B & C);

assign f_2 = (~A & B & ~C) | (A & C);

assign g = (A | ~B) & (A | ~B | ~C) & (B | C | ~D) & (~A | B | ~C | D);

assign g_2 = (~B & ~C & ~D) | (~A & ~B & C) | (A & C & D) | (A & B & D) | (A & B & C);

assign h = (A | B | C) & (~A | ~B | ~C) & (A | ~B | C);

assign h_2 = (~A & C) | (A & ~B) | (A & ~C);

assign i = (~A & B & ~C & D & ~E) | (~A & ~B & ~C & D & E) | (A & ~B & ~C & D & E) | (A & B & ~C & ~D & ~E) | (~A & B & C & D & ~E) | (~A & B & C & ~D & E) | (~A & ~B & ~C & ~D & ~E) | (~A & ~B & C & D & E) | (A & B & ~C & D & ~E) | (A & B & ~C & D & E);

assign i_2 = (~A & ~B & ~C & ~D & ~E) | (~A & B & C & ~D & E) | (~A & ~B & D & E) | (~B & ~C & D & E) | (A & B & ~C & ~E) | (~A & B & D & ~E) | (A & B & ~C & D);
endmodule
