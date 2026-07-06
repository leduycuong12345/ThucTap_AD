`timescale 1ns/1ps
module half_adder_tb;
reg a;
reg b;
wire sum;
wire carry;
half_adder uut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);
initial begin
    $dumpfile("half_adder_wave.vcd");
    $dumpvars(0,half_adder_tb);
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
    $monitor("time=$0t a=%b b=%b sum=%b carry=%b",
                    $time,a,b,sum,carry);
end
endmodule