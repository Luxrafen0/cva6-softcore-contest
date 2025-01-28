`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 12:13:31 PM
// Design Name: 
// Module Name: frontend_iso
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


module frontend_iso(

    input logic clk_i,
    output logic fetch_entry_valid_o
    );
    
   frontend front
   (
     .clk_i,
     .fetch_entry_valid_o
   );
endmodule
