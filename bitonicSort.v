`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 10:48:31 PM
// Design Name: 
// Module Name: bitonicSort
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


module bitonicSort #(parameter WIDTH = 8)(input [WIDTH-1:0] in1, in2, in3, in4, in5, in6, in7, in8,
                   input clk,
                   output reg [WIDTH-1:0] out1, out2, out3, out4, out5, out6, out7, out8
);
    reg [WIDTH-1:0] stage11, stage12, stage13, stage14, stage15, stage16, stage17, stage18;
    reg [WIDTH-1:0] stage21, stage22, stage23, stage24, stage25, stage26, stage27, stage28;
    reg [WIDTH-1:0] stage31, stage32, stage33, stage34, stage35, stage36, stage37, stage38;
    reg [WIDTH-1:0] stage41, stage42, stage43, stage44, stage45, stage46, stage47, stage48;
    reg [WIDTH-1:0] stage51, stage52, stage53, stage54, stage55, stage56, stage57, stage58;
    reg [WIDTH-1:0] stage61, stage62, stage63, stage64, stage65, stage66, stage67, stage68;

    task comparator;
        input [WIDTH-1:0] i1, i2;
        output [WIDTH-1:0] o1, o2;

        begin
            if (i1 > i2)
                begin
                    o2 = i1;
                    o1 = i2;  
                end
            else
            begin
                    o1 = i1;
                    o2 = i2;
            end
        end
    endtask
    
    always@(posedge clk)begin
        comparator(in1, in2, stage11, stage12);
        comparator(in3, in4, stage14, stage13);
        comparator(in5, in6, stage15, stage16);
        comparator(in7, in8, stage18, stage17);
        
        comparator(stage11, stage13, stage21, stage23);
        comparator(stage12, stage14, stage22, stage24);
        comparator(stage15, stage17, stage27, stage25);
        comparator(stage16, stage18, stage28, stage26);
        
        comparator(stage21, stage22, stage31, stage32);
        comparator(stage23, stage24, stage33, stage34);
        comparator(stage25, stage26, stage36, stage35);
        comparator(stage27, stage28, stage38, stage37);
        
        comparator(stage31, stage35, stage41, stage45);
        comparator(stage32, stage36, stage42, stage46);
        comparator(stage33, stage37, stage43, stage47);
        comparator(stage34, stage38, stage44, stage48);
        
        comparator(stage41, stage43, stage51, stage53);
        comparator(stage42, stage44, stage52, stage54);
        comparator(stage45, stage47, stage55, stage57);
        comparator(stage46, stage48, stage56, stage58);
        
        comparator(stage51, stage52, out1, out2);
        comparator(stage53, stage54, out3, out4);
        comparator(stage55, stage56, out5, out6);
        comparator(stage57, stage58, out7, out8);
  
    end
    
endmodule
