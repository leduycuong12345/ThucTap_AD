`include "comparator_1bit.v"
`include "tcam_params.vh"

module comparator_n_bit #(
    parameter WIDTH = `SEARCH_KEY_WIDTH
)
(
    input  [WIDTH-1:0] a,
    input  [WIDTH-1:0] b,
    output equal
);
wire [WIDTH-1:0] equal_bit;
genvar i;
generate 
    for(i =0;i<WIDTH;i=i+1) begin : cmp 
        comparator_1bit u_cmp( 
            .a(a[i]),
            .b(b[i]), 
            .equal(equal_bit[i]) 
        ); 
        
    end 
endgenerate 
assign equal=&equal_bit;
endmodule