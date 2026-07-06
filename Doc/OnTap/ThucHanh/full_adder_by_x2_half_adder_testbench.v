`timescale 1ns/1ps
module full_adder_by_x2_half_adder_tb;
reg a;
reg b;
reg cin;
wire sum;
wire cout;
full_adder_by_x2_half_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
); 
initial begin
    $dumpfile("full_adder_by_x2_half_adder.vcd");
    $dumpvars(0,full_adder_by_x2_half_adder_tb);
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