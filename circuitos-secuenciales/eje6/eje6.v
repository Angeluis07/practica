`include "../eje2/eje2.v"
//Registro de 4 bits con flip-flop D
module eje6(
    input wire clk,     // Reloj
    input wire d_0,       // Entrada d_0
    input wire d_1,       // Entrada d_1
    input wire d_2,       // Entrada d_2
    input wire d_3,       // Entrada d_3
    output reg [3:0] r4 // Registros de 4 bits
);

wire q_0; // Salida q_0
wire q_1; // Salida q_1
wire q_2; // Salida q_2
wire q_3; // Salida q_3

eje2 flipflop_0(
    .clk(clk),
    .d(d_0),
    .q(q_0)
    
);

eje2 flipflop_1(
    .clk(clk),
    .d(d_1),
    .q(q_1) 
);

eje2 flipflop_2(
    .clk(clk),
    .d(d_2),
    .q(q_2)
);

eje2 flipflop_3(
    .clk(clk),
    .d(d_3),
    .q(q_3)
);

always @(posedge clk) begin
    r4 <= {q_3, q_2, q_1, q_0}; // Asignación de las salidas a los registros de 4 bits
end

endmodule