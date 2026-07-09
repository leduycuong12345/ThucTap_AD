module comparator_n_bit #(
    parameter WIDTH = 8
)(
    input  [WIDTH-1:0] a,
    input  [WIDTH-1:0] b,
    output equal
);
wire [WIDTH-1:0] equal_bit;
genvar i;
generate 
    for(i =0;i<WIDTH;i=i+1) begin : cmp 
        compearator_1bit u_cmp( 
            .a(a[i]),
             .b(a[i]), 
             .equal(equal_bit[i]) 
        ); 
        
    end 
endgenerate 
ssign equal=&equal_bit;
endmodule