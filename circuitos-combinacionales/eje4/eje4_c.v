module eje4_c(
    input [3:0] bits,
    output reg [6:0] Cod_Hamming
    //output [6:0] Cod_Hamming
);

wire p1 = bits[3] ^ bits[2] ^ bits[0];
wire p2 = bits[3] ^ bits[1] ^ bits[0];
wire p3 = bits[2] ^ bits[1] ^ bits[0];

//assign Cod_Hamming = {p1, p2, bits[3], p3, bits[2], bits[1], bits[0]};
 
always @(*) begin
    Cod_Hamming[6] = p1; // Paridad 1
    Cod_Hamming[5] = p2; // Paridad 2
    Cod_Hamming[4] = bits[3]; // Dato 1
    Cod_Hamming[3] = p3; // Paridad 3
    Cod_Hamming[2] = bits[2]; // Dato 2
    Cod_Hamming[1] = bits[1]; // Dato 3
    Cod_Hamming[0] = bits[0]; // Dato 4
    // Cod_Hamming[6:0] = {p1, p2, bits[3], p3, bits[2], bits[1], bits[0]};
end

endmodule