`timescale 1ns/1ps
module fullAdder_boolean_tb;
reg a;
reg b;
reg cin;
wire sum;
wire cout;
fullAdder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);
initial begin
    $dumpfile("fullAdder_boolean.vcd");
    $dumpvars(0,fullAdder_boolean_tb);
end
initial begin
    a=0;b=0;cin=0;
    #10;
    a=0;b=0;cin=1;
    #10;
    a=0;b=1;cin=0;
    #10;
    a=0;b=1;cin=1;
    #10;
    a=1;b=0;cin=0;
    #10;
    a=1;b=0;cin=1;
    #10;
    a=1;b=1;cin=0;
    #10;
    a=1;b=1;cin=1;
    #10;
    $finish;
end
initial begin
    $monitor("time=%0t a=%b b=%b cin=%b sum=%b cout=%b",
                    $time,a,b,cin,sum,cout);
end
endmodule