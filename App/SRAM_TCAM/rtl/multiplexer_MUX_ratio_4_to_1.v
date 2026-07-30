module multiplexer_MUX_ratio_4_to_1(
    input a,
    input b,
    input c,
    input d,
    input [1:0] sel,
    output out
);
wire out1,out2;
MUX2 mux1(
    .a(a),
    .b(b),
    .sel(sel[0]),
    .out(out1)
);
MUX2 mux2(
    .a(c),
    .b(d), 
    .sel(sel[0]),
    .out(out2)
);
MUX2 mux3(
    .a(out1),
    .b(out2),
    .sel(sel[1]),
    .out(out)
);
endmodule
module MUX4(
    input a,
    input b,
    input c,
    input d,
    input [1:0] sel,
    output out
);
wire out1,out2;
MUX2 mux1(
    .a(a),
    .b(b),
    .sel(sel[0]),
    .out(out1)
);
MUX2 mux2(
    .a(c),
    .b(d), 
    .sel(sel[0]),
    .out(out2)
);
MUX2 mux3(
    .a(out1),
    .b(out2),
    .sel(sel[1]),
    .out(out)
);
endmodule