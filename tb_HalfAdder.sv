`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:45:13 PM
// Design Name: 
// Module Name: tb_HalfAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps


module tb_HalfAdder;
    logic a ,b ,sum ,carry;
    
    HalfAdder dut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);
    
    initial begin
    
    $display("Time\t a\t b\t sum carry");
$display("------------------------");
a = 0; b = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum ,carry);
a = 0; b = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum ,carry);
a = 1; b = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum ,carry);
a = 1; b = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum ,carry);

$finish;

    end
endmodule
