`timescale 1ps/1ps
module or_gate_tb;
reg a;
reg b;
wire y;
or_gate ut(
    .a(a),
    .b(b),
    .y(y)
);
initial begin
    $dumpfile("or_gate_wave.vcd");
    $dumpvars(0,or_gate_tb);
end
initial begin
    a=0;
    b=0;
    #10;

    a=0;
    b=1;
    #10;

    a=1;
    b=0;
    #10;

    a=1;
    b=1;
    #10;

    $finish;
end
initial begin
    $monitor("time=%0t a=%b b=%b y=%b"
        ,$time,a,b,y);
end
endmodule