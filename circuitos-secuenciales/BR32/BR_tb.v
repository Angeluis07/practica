`timescale 1ns/1ps

BR_tb module ();



BR UUT(
    
);


initial begin
  $dumpfile("BR_tb.vcd");
  $dumpvars(0, BR_tb);

  $finish;
end

endmodule