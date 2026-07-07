module comparator_1bit(
    input a,
    input b,
    output  equal
);
wire out1;
xor_gate xor1(
    .a(a),
    .b(b),
    .y(out1)
);
not_gate not1(
    .a(out1),
    .y(equal)
);
endmodule
