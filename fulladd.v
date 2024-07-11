// Name: Utkarsha Dongarjal
// Date: 12/07/2024
// Project Name: 4-bit Full adder using Verilog HDL

`timescale 1ns / 1ps


module fulladd(a, b, cin, sum, cout);
    input [3:0] a, b;
    input cin;
    output reg [3:0] sum;
    output reg cout;
    always @ (a or b or cin)
    begin
    {cout, sum} = a + b + cin;
    end
endmodule 

module tb_fulladd;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    
    wire [3:0] sum;
    wire cout;
    
    fulladd uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    initial begin
        a = 0;
        b = 0;
        cin = 0;

        #100;
        
        a = 2;
        b = 3;
        cin = 1;

        #100;

        a = 6;
        b = 2;
        cin = 0;

        #100;

        a = 7;
        b = 3;
        cin = 1;
        #100;

        a = 6;
        b = 6;
        cin = 0;
        #100;

        a = 6;
        b = 6;
        cin = 1;
        #100;

        $finish;
    end
endmodule
