///Modulo para la operación AND
module eje6(
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    output wire f,
    output wire f_sop,
    output wire f_pos,
    output wire g,
    output wire g_sop,
    output wire g_pos,
    output wire h,
    output wire h_sop,
    output wire h_pos
);

    assign f = (A | (~B & C)) & C;

    assign f_sop = (~A & ~B & C) | (A & ~B & C) | (A & B & C);

    assign f_pos = (A | B | C) & (A | ~B | C) & (A | ~B | ~C) & (~A | B | C) & (~A | ~B | C);

    assign g = (A & ~B & C) | (~A & ~B) | (A & B & ~C & D);

    assign g_sop = (~A & ~B & ~C & ~D) | (~A & ~B & ~C & D) | (~A & ~B & C & ~D) | (~A & ~B & C & D) | (A & ~B & C & ~D) | (A & ~B & C & D) | (A & B & ~C & D);

    assign g_pos = (A | ~B | C | D) & (A | ~B | C | ~D) & (A | ~B | ~C | D) & (A | ~B | ~C | ~D) & (~A | B | C | D) & (~A | B | C | ~D) & (~A | ~B | C | D) & (~A | ~B | ~C | D) & (~A | ~B | ~C | ~D);

    assign h = (A & B) | ((C & D) & ((A & ~B) | (C & D)));

    assign h_sop = (~A & ~B & C & D) | (~A & B & C & D) | (A & ~B & C & D) | (A & B & ~C & ~D) | (A & B & ~C & D) | (A & B & C & ~D) | (A & B & C & D);

    assign h_pos = (A | B | C | D) & (A | B | C | ~D) & (A | B | ~C | D) & (A | ~B | C | D) & (A | ~B | C | ~D) & (A | ~B | ~C | D) & (~A | B | C | D) & (~A | B | C | ~D) & (~A | B | ~C | D);
endmodule
