`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2025 10:18:35 PM
// Design Name: 
// Module Name: bitonicSort_tb
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


module bitonicSort_tb;
reg [7:0] in1, in2, in3, in4, in5, in6, in7, in8;
reg clk;
wire [7:0] out1, out2, out3, out4, out5, out6, out7, out8;

bitonicSort dut0(.in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), .in6(in6), .in7(in7), .in8(in8), .clk(clk), 
.out1(out1), .out2(out2), .out3(out3), .out4(out4), .out5(out5), .out6(out6), .out7(out7), .out8(out8));



    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        in1 = 8'd3;
        in2 = 8'd1;
        in3 = 8'd4;
        in4 = 8'd1;
        in5 = 8'd5;
        in6 = 8'd9;
        in7 = 8'd1;
        in8 = 8'd1;
//        in9 = 8'd1;

        #20;
        $finish;
    end

endmodule
