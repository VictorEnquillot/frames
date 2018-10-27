egrep "^  \| " Camlline_for_symbol_uno_top_symbol_t.ml | sed 's/  | //' > a
awk '{print "  | Node_value_t."$1" str -> str"}' a > x
