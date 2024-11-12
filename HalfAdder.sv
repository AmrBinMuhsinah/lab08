`timescale 1ns / 1ps

module HalfAdder(
       input logic a,
       input logic b,
       output sum,
	   output carry 	 
	   );

    xor (sum, a, b);
    and (carry, a, b);
endmodule
