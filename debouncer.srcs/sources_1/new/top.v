`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2019 09:20:56 AM
// Design Name: 
// Module Name: top
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


module top(
    input mclk,
    input BTN0,
    input BTN1,
    output [7:0] LED
    );
    
    wire incr;
    wire rst;
    
    debouncer d1(.b(BTN0), .d(incr), .clk(mclk));
    debouncer d2(.b(BTN1), .d(rst), .clk(mclk));
    counter c1(.clk(mclk), .incr(incr), .rst(rst), .q(LED));
    
endmodule
