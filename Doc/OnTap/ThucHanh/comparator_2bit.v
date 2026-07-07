module comparator_2bit(
    input [1:0] a,
    input [1:0] b,
    output equal
);
wire equal1,equal2;
comparator_1bit comp1_1(
    .a(a[0]),
    .b(b[0]),
    .equal(equal1)
);
comparator_1bit comp1_2(
    .a(a[1]),
    .b(b[1]),
    .equal(equal2)
);
assign equal= equal1 & equal2;
endmodule
module comparator_2bit_with_generate(
    input [1:0] a,
    input [1:0] b,
    output equal
);
wire [1:0] equal_bit;
genvar i;
generate
    for (i = 0; i < 2; i = i + 1) begin : cmp
        comparator_1bit u_cmp(
            .a(a[i]),
            .b(b[i]),
            .equal(equal_bit[i])
        );
    end
endgenerate
assign equal = &equal_bit;// reduction AND
endmodule