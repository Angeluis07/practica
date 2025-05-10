///Modulo para la operación AND
module eje4(
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    input wire E,
    input wire F,
    output wire f_1,
    output wire g_1,
    output wire h_1,
    output wire f_2,
    output wire g_2,
    output wire h_2
    // Define el módulo `eje4` con entradas `A`, `B`, `C`, `D`, `E`, `F` y salidas `f`, `g`, `h`.
);

    assign f_1 = ~((A & ~B) | (~C & D) | (E & F));

    assign g_1 = ~(~(A | (B & ~C)) | (D & ~(E | ~F)));

    assign h_1 = ~(~(A & B) & ((C & D) | (~E & F)) & ((~(A & B)) | (~(C & D))));

    assign f_2 = (~A | B) & (C | ~D) & (~E | ~F);

    assign g_2 = (A|(B & ~C)) & (~D | E | ~F);

    assign h_2 = (A & B) | ((~C|~D) & (E|~F)) | (A & B & C & D);


endmodule
