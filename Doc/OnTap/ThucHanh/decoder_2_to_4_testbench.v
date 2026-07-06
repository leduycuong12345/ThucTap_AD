`timescale 1ps/1ps
module decoder_2_to_4_tb;
reg a;
reg b;
wire [3:0] y;
decoder_2_to_4 ut(
    .a(a),
    .b(b),
    .y(y)
);
initial begin
    $dumpfile("decoder_2_to_4_wave.vcd");
    $dumpvars(0,decoder_2_to_4_tb);
end
initial begin
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    #10;
    $finish;
end
initial begin
    $monitor("time=%0t a=%b b=%b y=%b",
                    $time,a,b,y);
end
endmodule