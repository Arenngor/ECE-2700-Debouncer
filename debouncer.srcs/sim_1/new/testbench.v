`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2019 08:16:10 AM
// Design Name: 
// Module Name: testbench
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


module testbench;
    
    reg b;
    wire d;
    reg clk;
    
    debouncer uut(.b(b), .d(d), .clk(clk));
    
    initial begin
    b = 0;
    clk = 0;
    #10
    
    forever #10 clk = ~clk;
    end
    
    always @(posedge clk) begin
        assign b = ~b;    
    end
    
endmodule
