`timescale 1ps/1ps

`include "rtl/tcam_params.vh"
`include "rtl/comparator_nbit.v"
module comparator_tb;

reg [`SEARCH_KEY_WIDTH-1:0] a;
reg [`SEARCH_KEY_WIDTH-1:0] b;
wire equal;

comparator_n_bit dut(
    .a(a),
    .b(b),
    .equal(equal)
);

initial begin
    
    $display("===== Comparator Test =====");

    //case 1 :Math
    // ==========================================
    // CASE 1: Hai SearchKey giống nhau
    // Expected: equal = 1
    // ==========================================
    a={
        32'hC0A8010A, // Src IP = 192.168.1.10
        32'h0A000005, // Dst IP = 10.0.0.5
        8'h06, // TCP
        16'h0050 // Port 80
    };
    b=a;

    #10;

    if(equal)
        $display("CASE 1 pass");
    else
        $display("CASE 1 fail");

    //case 2:Different port
    // ==========================================
    // CASE 2: Khác Destination Port
    // 80 -> 81
    // Expected: equal = 0
    // ==========================================
    b={
        32'hC0A8010A,
        32'h0A000005,
        8'h06,
        16'h0051
    };

    #10;

    if(equal == 1'b0)
        $display("CASE 1 pass");
    else
        $display("CASE 1 fail");

    //case 3:Difference src ip
    // ==========================================
    // CASE 3: Khác Source IP
    // 192.168.1.10 -> 192.168.1.11
    // Expected: equal = 0
    // ==========================================
    b={
        32'hC0A8010B,
        32'h0A000005,
        8'h06,
        16'h0050
    };

    #10;

    if(equal == 1'b0)
        $display("CASE 3 pass");
    else
        $display("CASE 3 fail");
     // ==========================================
    // CASE 4: Cả hai bằng 0
    // Expected: equal = 1
    // ==========================================

    a = 88'b0;
    b = 88'b0;

    #10;

    if (equal == 1'b1)
        $display("CASE 4 PASS");
    else
        $display("CASE 4 FAIL");

    $finish;
end
endmodule