/*module decoder_2_to_4(
    input a,
    input b,
    output y0,
    output y1,
    output y2,
    output y3
);
assign y0= ~a & ~b;
assign y1= ~a & b;
assign y2= a & ~b;
assign y3= a & b;
endmodule*/
module decoder_2_to_4(
    input a,
    input b,
    output [3:0]y
);
assign y[0]= ~a & ~b;
assign y[1]= ~a & b;
assign y[2]= a & ~b;
assign y[3]= a & b;
endmodule
module decoder_2_to_4_shortcut(
    input [1:0]a,
    output [3:0]y
);
assign y[0]= ~a[1] & ~a[0];
assign y[1]= ~a[1] & a[0];
assign y[2]= a[1] & ~a[0];
assign y[3]= a[1] & ~a[0];
endmodule
module decoder_2_to_4_with_always(
    input [1:0]a,
    output reg [3:0]y
);
always @(*) begin
    case(a)
        2'b00: y=4'b0001;
        2'b01: y=4'b0010;
        2'b10: y=4'b0100;
        2'b11: y=4'b1000;
        default: y=4'b0000;
    endcase
end
endmodule

