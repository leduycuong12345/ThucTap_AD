module decoder_3_to_8(
    input [2:0] a,
    output [7:0] y
);
assign y[0]=~a[2] & ~a[1] & ~a[0];
assign y[1]=~a[2] & ~a[1] & a[0];
assign y[2]=~a[2] & a[1] & ~a[0];
assign y[3]=~a[2] & a[1] & a[0];
assign y[4]=a[2] & ~a[1] & ~a[0];
assign y[5]=a[2] & ~a[1] & a[0];
assign y[6]=a[2] & a[1] & ~a[0];
assign y[7]=a[2] & a[1] & a[0];
endmodule
module decoder_3_to_8_with_always(
    input [2:0] a,
    output reg [7:0] y
);
always @(*) begin
    case(a)
        3'b000: y=8'b00000001;
        3'b001: y=8'b00000010;
        3'b010: y=8'b00000100;
        3'b011: y=8'b00001000;
        3'b100: y=8'b00010000;
        3'b101: y=8'b00100000;
        3'b110: y=8'b01000000;
        3'b111: y=8'b10000000;
        default: y=8'b00000000;
    endcase
end
endmodule
