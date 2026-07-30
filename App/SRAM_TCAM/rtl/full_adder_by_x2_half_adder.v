module full_adder_by_x2_half_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
wire carry1;
wire carry2;
wire sum1;
half_adder ha1(
    .a(a),
    .b(b),
    .sum(sum1),
    .carry(carry1)
);
half_adder ha2(
    .a(sum1),
    .b(cin),
    .sum(sum),
    .carry(carry2)
);
assign cout= carry1|carry2;
endmodule
//iverilog -o full_adder_by_x2_half_adder half_adder.v full_adder_by_x2_half_
//adder.v full_adder_by_x2_half_adder_testbench.v