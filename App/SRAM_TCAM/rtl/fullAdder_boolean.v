module fullAdder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
wire ab;
wire acin;
wire bcin;
assign sum= a^b^cin;
assign ab=a&b;
assign acin=a&cin;
assign bcin=b&cin;
assign cout= ab|acin|bcin;
endmodule