module multiplexer_MUX_ratio_2_to_1(
    input a,
    input b,
    input sel,
    output out
);
//assign out = sel ? b :a ;
//y = (~s & a) | (s & b);
//assign out= (~sel & a) | (sel & b );
wire out1;
not_gate not1(
    .a(sel),
    .y(out1)
);
wire s1,s2;
and_gate and1(
    .a(a),
    .b(out1),
    .y(s1)
);
and_gate and2(
    .a(b),
    .b(sel),
    .y(s2)
);
or_gate or1(
    .a(s1),
    .b(s2),
    .y(out)
);
endmodule