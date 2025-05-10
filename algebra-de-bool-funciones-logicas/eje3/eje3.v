///Modulo para la operación AND
module eje2(
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    output wire X
);
    
    assign X = ~(A | B | C);  // Operación NOR entre A, B Y C
endmodule
