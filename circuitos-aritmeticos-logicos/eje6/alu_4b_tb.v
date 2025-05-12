`timescale 1ns/1ps

module alu_4b_tb();

reg [3:0] A;
reg [3:0] B;
reg [3:0] op;
wire [3:0] result;


alu_4b UUT(
    .A(A),
    .B(B),
    .op(op),
    .result(result)
);

initial begin
    $dumpfile("alu_4b_tb.vcd");
    $dumpvars(0, alu_4b_tb);
    $display("Time\tOp\tA\tB\tResult");

    // Prueba para cada operación
        
        // Operación: AND
        A = 4'b1010; B = 4'b1100; op = 4'b0001; // Espera: 1000
        #10;
        $display("%0t\t%4b\t%4b\t%4b\t%4b",$time, op, A, B, result);
        
        // Operación: OR
        A = 4'b1010; B = 4'b1100; op = 4'b0010; // Espera: 1110
        #10;
        $display("%0t\t%4b\t%4b\t%4b\t%4b",$time, op, A, B, result);
        
        // Operación: XOR
        A = 4'b1010; B = 4'b1100; op = 4'b0011; // Espera: 0110
        #10;
        $display("%0t\t%4b\t%4b\t%4b\t%4b",$time, op, A, B, result);
        
        // Operación: Suma
        A = 4'b0101; B = 4'b0011; op = 4'b0101; // Espera: 0110
        #10;
        $display("%0t\t%4b\t%4b\t%4b\t%4b",$time, op, A, B, result);
        
        // Operación: Resta
        A = 4'b1001; B = 4'b0010; op = 4'b0110; // Espera: 0111 (9-2=7)
        #10;
        $display("%0t\t%4b\t%4b\t%4b\t%4b",$time, op, A, B, result);
        
        // Operación: Comparación (A<B)
        A = 4'b0011; B = 4'b1010; op = 4'b1001; // Espera: 0001 (true)
        #10;
        $display("%0t\t%4b\t%4b\t%4b\t%4b",$time, op, A, B, result);
        
        A = 4'b1010; B = 4'b0011; op = 4'b1001; // Espera: 0000 (false)
        #10;
        $display("%0t\t%4b\t%4b\t%4b\t%4b",$time, op, A, B, result);
        
        // Operación: Comparación (A==B)
        A = 4'b1111; B = 4'b1111; op = 4'b1010; // Espera: 0001 (true)
        #10;
        $display("%0t\t%4b\t%4b\t%4b\t%4b",$time, op, A, B, result);
        
        A = 4'b1010; B = 4'b1111; op = 4'b1010; // Espera: 0000 (false)
        #10;
        $display("%0t\t%4b\t%4b\t%4b\t%4b",$time, op, A, B, result);
        
        // Operación: Desplazar a la derecha
        A = 4'b1010; op = 4'b1101; // Espera: 0101 (se pierde el bit menos significativo)
        #10;
        $display("%0t\t%4b\t%4b\t----\t%4b",$time, op, A, result);
        
        // Operación: Desplazar a la izquierda
        A = 4'b0101; op = 4'b1110; // Espera: 1010 
        #10;
        $display("%0t\t%4b\t%4b\t----\t%4b",$time, op, A, result);
        
        $finish;

end




endmodule

