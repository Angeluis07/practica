///Modulo para la operación AND
module eje7(
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    input wire x,
    input wire y,
    input wire z,
    output wire Y,
    output wire Y_2,
    output wire Z,
    output wire Z_2,
    output wire F2,
    output wire F2_2
);

assign Y = (~A & D) | (A & ~C & D) | (A & ~B & C) | (A & B & C & D);

assign Y_2 = ((~A | (A & ~C) | (A & B & C)) & D) | (A & ~B & C);

assign Z = (B & D) | (A & ~C & D);

assign Z_2 = (B | (A & ~C)) & D;

assign F2 = (~x & ~y & z) | (~x & y & z) | (x & ~y);

assign F2_2 = (~x & z) | (x & ~y);
endmodule
