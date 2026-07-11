`timescale 1ps/1ps

module sram_tb;

parameter DATA_WIDTH=32;
parameter ADDR_WIDTH=8;

reg clk;
reg we;
reg [ADDR_WIDTH-1:0] addr;
reg [DATA_WIDTH-1:0] data_in;

wire [DATA_WIDTH-1:0] data_out;

//Instantiate DUT (Device Under Test)
sram #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
) dut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);

//clock 10ns
always #5 clk=~clk;
initial begin
    //Khởi tạo
    clk=0;
    we=0;
    addr=0;
    data_in=0;

    //===============
    //Ghi dữ liệu vào địa chỉ 5
    //==============

    #10;
    we=1;
    addr=8'd5;
    data_in=32'h12345678;

    //Chờ cạnh lên của clock
    #10;

    //====================
    //đọc lại địa chỉ 5
    //====================
    we=0;
    addr=8'd5;
    $display("Address=%0d Data=%h", addr, data_out);

    if(data_out == 32'h12345678)
        $display("PASS");
    else
        $display("FAIL");
    #10;

    //==================
    //Ghi dữ liệu khác
    //==================
    we=0;
    addr=8'd10;
    data_in=32'hAAAAAAAA;

    #10;
    //Đọc lại
    we=0;
    addr=8'd10;
    
    $display("Address=%0d Data=%h", addr, data_out);

    if(data_out == 32'hAAAAAAAA)
        $display("PASS");
    else
        $display("FAIL");
    #10;
    $finish;
end
endmodule