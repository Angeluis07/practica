///Modulo para la operación AND
module eje10(
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    input wire E,
    output wire P,
    output wire X,
    output wire T
);

assign P = (~A & B & ~C & D & E) | (~A & C & ~D & E) | (~A & ~B & D & E) | (~A & ~B & ~C & D) | (A & B & C & E) | (A & ~B & D & E) | (A & ~B & ~C & E);

assign X = ~E;

assign T = (~A & ~B & ~C & ~D & ~E) | (~A & ~B & ~C & D & E) | (~A & ~B & C & D & ~E) | (~A & B & C & ~D & ~E) | (~A & B & C & D & E) | (~A & B & ~C & ~D & E) | (A & B & ~C & ~D & ~E) | (A & B & ~C & D & E) | (A & B & C & D & ~E) | (A & ~B & C & ~D & E) | (A & ~B & ~C & D & ~E);

endmodule
