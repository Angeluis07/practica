`timescale 1ns/1ps


module eje5_tb();

reg [3:0] A;
reg [2:0] op;
wire [3:0] datosMod;

eje5 UUT(
    .datos(A),
    .op(op),
    .datosMod(datosMod)
);


initial begin
    $dumpfile("eje5_tb.vcd");
    $dumpvars(0, eje5_tb);
    A = 4'b0111;
    op = 3'b000;
    #10;
    op = 3'b001;
    #10;
    op = 3'b010;
    #10;
    op = 3'b101;
    #10;
    op = 3'b110;
    #10;
    op = 3'b011;
    #10;
    op = 3'b111;
    #10;
    op = 3'b100;
    #10;
    
    $finish;
end

endmodule