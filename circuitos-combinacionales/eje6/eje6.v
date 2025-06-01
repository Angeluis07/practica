// Codificador hamming (12,8) con paridad par
module eje6_cod (
    input [7:0] datos,
    output [11:0] codigoH
);

//datos = {d1,d2,d3,d4,d5,d6,d7,d8}


wire p1 = datos[7] ^ datos[6] ^ datos[4] ^ datos[3] ^ datos[1];
wire p2 = datos[7] ^ datos[5] ^ datos[4] ^ datos[2] ^ datos[1];
wire p3 = datos[6] ^ datos[5] ^ datos[4] ^ datos[0];
wire p4 = datos[3] ^ datos[2] ^ datos[1] ^ datos[0];

//codigoH = {p1,p2,d1,p3,d2,d3,d4,p4,d5,d6,d7,d8}
assign codigoH = {p1 , p2, datos[7], p3, datos[6], datos[5], datos[4], p4, datos[3], datos[2], datos[1], datos[0]};


endmodule

// Corrector hamming (12,8) con paridad par
module eje6_cor (
    input [11:0] codigoH_recibido,
    output reg [7:0] datosCorregidos
);

//codigoH = {p1,p2,d1,p3,d2,d3,d4,p4,d5,d6,d7,d8}
//codigoH = {[11]-p1,[10]-p2,[9]-d1,[8]-p3,[7]-d2,[6]-d3,[5]-d4,[4]-p4,[3]-d5,[2]-d6,[1]-d7,[0]-d8}

wire p1_recibido = codigoH_recibido[11];
wire p2_recibido = codigoH_recibido[10];
wire p3_recibido = codigoH_recibido[8];
wire p4_recibido = codigoH_recibido[4];


wire [7:0] datosEntrada;
assign datosEntrada = {codigoH_recibido[9], codigoH_recibido[7], codigoH_recibido[6], codigoH_recibido[5], codigoH_recibido[3], codigoH_recibido[2], codigoH_recibido[1], codigoH_recibido[0]};

wire [11:0] codigoH_recalculado;

eje6_cod codificador (
    .datos(datosEntrada),
    .codigoH(codigoH_recalculado)
);

wire p1_calculado = codigoH_recalculado[11];
wire p2_calculado = codigoH_recalculado[10];
wire p3_calculado = codigoH_recalculado[8];
wire p4_calculado = codigoH_recalculado[4];

reg [3:0] error_posicion;

always @(*) begin
    error_posicion = 4'b0000; // Inicializamos el registro de errores
    if (p1_recibido != p1_calculado) error_posicion[0] = 1;
    if (p2_recibido != p2_calculado) error_posicion[1] = 1;
    if (p3_recibido != p3_calculado) error_posicion[2] = 1;
    if (p4_recibido != p4_calculado) error_posicion[3] = 1;

    // Si hay un error, corregimos el bit correspondiente
    if (error_posicion != 4'b0000) begin
        case (error_posicion)
            4'b0011: datosCorregidos = {~datosEntrada[7], datosEntrada[6], datosEntrada[5], datosEntrada[4], datosEntrada[3], datosEntrada[2], datosEntrada[1], datosEntrada[0]};
            4'b0101: datosCorregidos = {datosEntrada[7], ~datosEntrada[6], datosEntrada[5], datosEntrada[4], datosEntrada[3], datosEntrada[2], datosEntrada[1], datosEntrada[0]};
            4'b0110: datosCorregidos = {datosEntrada[7], datosEntrada[6], ~datosEntrada[5], datosEntrada[4], datosEntrada[3], datosEntrada[2], datosEntrada[1], datosEntrada[0]};
            4'b0111: datosCorregidos = {datosEntrada[7], datosEntrada[6], datosEntrada[5], ~datosEntrada[4], datosEntrada[3], datosEntrada[2], datosEntrada[1], datosEntrada[0]};
            4'b1001: datosCorregidos = {datosEntrada[7], datosEntrada[6], datosEntrada[5], datosEntrada[4], ~datosEntrada[3], datosEntrada[2], datosEntrada[1], datosEntrada[0]};
            4'b1010: datosCorregidos = {datosEntrada[7], datosEntrada[6], datosEntrada[5], datosEntrada[4], datosEntrada[3], ~datosEntrada[2], datosEntrada[1], datosEntrada[0]};
            4'b1011: datosCorregidos = {datosEntrada[7], datosEntrada[6], datosEntrada[5], datosEntrada[4], datosEntrada[3], datosEntrada[2], ~datosEntrada[1], datosEntrada[0]};
            4'b1100: datosCorregidos = {datosEntrada[7], datosEntrada[6], datosEntrada[5], datosEntrada[4], datosEntrada[3], datosEntrada[2], datosEntrada[1], ~datosEntrada[0]};
        endcase
    end else begin
        // Si no hay error, los datos son los mismos
        datosCorregidos = datosEntrada;
    end
end



endmodule