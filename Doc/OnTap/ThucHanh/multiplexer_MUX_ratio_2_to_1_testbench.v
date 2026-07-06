`timescale 1ps/1ps
module multiplexer_MUX_ratio_2_to_1_tb;
reg a;
reg b;
reg sel;
wire out;
multiplexer_MUX_ratio_2_to_1 uut(
    .a(a),
    .b(b),
    .sel(sel),
    .out(out)
);

initial begin
    $dumpfile("multiplexer_MUX_ratio_2_to_1.vcd");
    $dumpvars(0,multiplexer_MUX_ratio_2_to_1_tb);
end
initial begin
    a=0;b=0;sel=0;
    #10;
    a=0;b=0;sel=1;
    #10;
    a=0;b=1;sel=0;
    #10;        
    a=0;b=1;sel=1;
    #10;
    a=1;b=0;sel=0;
    #10;
    a=1;b=0;sel=1;
    #10;
    a=1;b=1;sel=0;
    #10;
    a=1;b=1;sel=1;
    #10;
    $finish;
end
initial begin
    $monitor("time=%0t a=%b b=%b sel=%b out=%b",
                    $time,a,b,sel,out); 
end

endmodule