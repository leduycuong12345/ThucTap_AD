`timescale 1ps/1ps

module not_gate_tb_wave;
reg a;
wire y;
not_gate ut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("not_gate_wave.vcd");
    $dumpvars(0,not_gate_tb_wave);
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
