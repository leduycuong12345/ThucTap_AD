`timescale 1ps/1ps
module mutiplexer_MUX_ratio_4_to_1_tb;

reg a, b, c, d;
reg [1:0] sel;
wire out;
multiplexer_MUX_ratio_4_to_1 uut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .out(out)
);
initial begin
    $dumpfile("multiplexer_MUX_ratio_4_to_1.vcd");
    $dumpvars(0,mutiplexer_MUX_ratio_4_to_1_tb);
end
initial begin
    a = 0; b = 0; c = 1; d = 1;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    a = 1; b = 0; c = 1; d = 0;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    $finish;
end   

initial begin
    $monitor("time=%0t a=%b b=%b c=%b d=%b sel=%b out=%b",
                    $time,a,b,c,d,sel,out);
end
endmodule