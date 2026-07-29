`include "tcam_params.vh"

module tcam_cell(
    input [`SEARCH_KEY_WIDTH-1:0] search_key,
    input [`SEARCH_KEY_WIDTH-1:0] rule_key,
    output match
);

comparator u_cmp(
    .a(search_key),
    .b(rule_key),
    .equal(match)
);
endmodule