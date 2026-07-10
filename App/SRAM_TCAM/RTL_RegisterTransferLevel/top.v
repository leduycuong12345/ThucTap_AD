module top #(
    parameter KEY_WIDTH  = 24,
    parameter ADDR_WIDTH = 8
)(
    input                       clk,
    input                       rst,

    // Search request từ Packet Parser (hoặc Testbench)
    input                       search_valid,
    input  [KEY_WIDTH-1:0]      search_key,

    // Search result
    output                      match_valid,
    output [ADDR_WIDTH-1:0]      rule_id
);

//====================================================
// Internal Signals
//====================================================

// Search key sau khi lưu vào Input Register
wire [KEY_WIDTH-1:0] search_key_reg;

// Địa chỉ đọc SRAM
wire [ADDR_WIDTH-1:0] sram_addr;

// Rule đọc từ SRAM
wire [KEY_WIDTH-1:0] rule_data;

// Kết quả comparator
wire rule_match;


//====================================================
// Module Instantiation
//====================================================

// Input Register
// input_register u_input_register(
// );

// Counter
// counter u_counter(
// );

// SRAM
// sram u_sram(
// );

// Comparator
// comparator u_comparator(
// );

// Priority Encoder
// priority_encoder u_priority_encoder(
// );

endmodule