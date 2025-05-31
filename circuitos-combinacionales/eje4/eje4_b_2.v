module eje4_b_2 (
    input [3:0] BN,
    output reg [3:0] G

);


    always @(*) begin
        if( BN <= 4'd15) begin
            // Como pasar de BN->G
            /*
            1 - El bit MSB se mantiene
            2 - De izq a derecha aplicamos suma binaria para cada par adyacente de bits (el acarreo se descarta)
            por ejemplo =  0011 -> 0 se fija, 0+0 = 0, 0+1 = 1, 1+1 = 0 (1 de acarreo descartado)
                        --> 0010
            para esto utilizaremos el operador XOR ( ^ ) que devuelve 1 si son diferentes
            recordar que eun reg de bits
            se ordena asi:
            G[MSB _ _ _ LSB]
            */
            G[3] = BN[3]; //MSB
            G[2] = BN[3] ^ BN[2];
            G[1] = BN[2] ^ BN[1];
            G[0] = BN[1] ^ BN[0];

        end else begin
            G = 4'bxxxx;
        end
    end
endmodule