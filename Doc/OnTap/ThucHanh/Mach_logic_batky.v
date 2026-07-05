//y= (a&b)|(~c)
module logic_batky(
    input a,
    input b,
    input c,
    output y
);
wire t1;
assign t1= a & b;
assign y= t1 | (~c);
endmodule