`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2019 08:03:21 AM
// Design Name: 
// Module Name: debouncer
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


module debouncer(
    input b,
    output reg d,
    input clk
    );
    
    
    reg [1:0] state;
    
    
    always @(posedge clk) begin
        
        case (state)
            2'b00: begin
            if (b == 1) begin
            state   <= 2'b01;
            d       <= 2'b00;
        end
            else begin
            state   <= 2'b00;
            d       <= 2'b00;
        end
        end
            2'b01: begin
            state   <= 2'b11;
            d       <= 2'b00;
        end
            2'b11: begin
            if (b == 0) begin
            state   <= 2'b10; 
            d       <= 2'b00;
        end
            else begin
            state   <= 2'b11;
            d       <= 2'b00;
        end    
        end
            2'b10: begin
            state   <= 2'b00;
            d       <= 2'b01;
        end
        default: begin
            state <=2'b00;
            end
        endcase
    end
    
endmodule
