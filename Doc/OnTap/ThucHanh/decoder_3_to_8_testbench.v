`timescale 1ps/1ps
module decoder_3_to_8_tb;
reg [2:0]a;
wire [7:0]y;
decoder_3_to_8 ut(
    .a(a),
    .y(y)
);
initial begin
    $dumpfile("decoder_3_to_8_wave.vcd");
    $dumpvars(0,decoder_3_to_8_tb);
end
initial begin
    a=3'b000;
    #10;
    a=3'b001;
    #10;
    a=3'b010;
    #10;
    a=3'b011;
    #10;
    a=3'b100;
    #10;
    a=3'b101;
    #10;
    a=3'b110;
    #10;
    a=3'b111;
    #10;
    $finish;
end
initial begin
    $monitor("time=%0t a=%b y=%b",
                    $time,a,y);
end
endmodule
