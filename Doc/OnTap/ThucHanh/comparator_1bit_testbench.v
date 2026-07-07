`timescale 1ns/1ps
module comparator_1bit_tb;
reg a;
reg b;
wire equal;
comparator_1bit uut(
    .a(a),
    .b(b),
    .equal(equal)
);
initial begin
    $dumpfile("comparator_1bit.vcd");
    $dumpvars(0,comparator_1bit_tb);
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
    $monitor("time=%0t a=%b b=%b equal=%b"
                ,$time,a,b,equal);
end
endmodule