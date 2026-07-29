`include "tcam_params.vh"

module top(
    input [`SEARCH_KEY_WIDTH-1:0] search_key,
    input [`SEARCH_KEY_WIDTH-1:0] rule_key,
    output match
);

tcam_cell u0(
    .search_key(search_key),
    .rule_key(rule_key),
    .match(match)
);
endmodule