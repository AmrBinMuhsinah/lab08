`timescale 1ns / 1ps

module FullAdder(
    input logic x,
    input logic y,
    input logic carryin,
    
    output logic sum,
    output logic carryout
    );
     logic sumH;
     logic carry1,carry2;
     
    HalfAdder a1(.sum(sumH),.carry(carry1),.a(x),.b(y));
    
    HalfAdder a2 (.sum(sum),.carry(carry2),.a(carryin),.b(sumH));
    or FULLOR(carryout,carry1,carry2);
  
    
endmodule
