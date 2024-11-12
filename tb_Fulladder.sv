`timescale 1ns / 1ps

module tb_Fulladder;
    logic a,b,carryin;
    logic sum,carryout;
    
    
    FullAdder dut(
    .x(a),
    .y(b),
    .carryin(carryin),
    .sum(sum),
    .carryout(carryout)
    );
    
    initial begin 
            $monitor("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, carryin, sum, carryout);
    end
    initial begin
      
        a = 0; b = 0; carryin = 0; #10;
        a = 0; b = 1; carryin = 0; #10;
        a = 1; b = 0; carryin = 0; #10;
        a = 1; b = 1; carryin = 0; #10;
        a = 0; b = 0; carryin = 1; #10;
        a = 0; b = 1; carryin = 1; #10;
        a = 1; b = 0; carryin = 1; #10;
        a = 1; b = 1; carryin = 1; #10;

        $finish;

    end
    
endmodule
