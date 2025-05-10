///Modulo para la operación AND
module eje5(
    input wire A,
    input wire B,
    input wire C,
    output wire f_1,
    output wire g_1,
    output wire h_1,
    output wire l_1,
    output wire f_2,
    output wire g_2,
    output wire h_2,
    output wire l_2
);

    assign f_1 = A & ((~A) | (A & B));

    assign f_2 = A & B;

    assign g_1 = (B & C) | (~B & C);

    assign g_2 = C;

    assign h_1 = (A & B) | (A & (B | C)) | (B & (B | C));

    assign h_2 = (B) | (A & C);

    assign l_1 = (A | ~A) & ((A & B) | (A & B & ~C));

    assign l_2 = A & B;

endmodule
