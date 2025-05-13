module eje3_a(
    input wire E0,
    input wire E1,
    input wire E2,
    input wire E3,
    input wire E4,
    input wire E5,
    input wire E6,
    input wire E7,
    input wire E8,
    input  wire E9,
    output reg A,
    output reg B,
    output reg C,
    output reg D
);


// Codificador de decimal a binario donde si ningun boton es presionado el valor de salida es 1111
always @(*) begin
    if ((E0 | E1 | E2 | E3 | E4 | E5 | E6 | E7 | E8 | E9) == 0) begin
        {A, B , C, D} = 4'b1111;
    end else if (E0 == 1) begin
        {A, B , C, D} = 4'b0000;
    end else begin
        A = E8 | E9;
        B = E4 | E5 | E6 | E7;
        C = E2 | E3 | E6 | E7;
        D = E1 | E3 | E5 | E7 | E9;
    end
end




endmodule