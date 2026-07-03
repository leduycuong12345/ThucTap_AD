`timescale 1ps/1ps

module or_gate_tb_wave;
reg a;
wire y;
or_gate ut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("or_gate_wave.vcd");
    $dumpvars(0,or_gate_tb_wave);
end 

initial begin
    a=0;
    #10;

    a=1;
    #10;

    $finish;
end
initial begin
    $monitor("time=%0t a=%b y=%b"
        ,$time,a,y);
end
endmodule
