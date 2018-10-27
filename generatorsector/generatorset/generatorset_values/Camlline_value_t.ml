type camlline_value =
  | Camlline_constant_value of Camlline_constant_value_t.camlline_constant_value
  | Camlline_for_any_value of Camlline_for_any_value_t.camlline_for_any_value
  | Camlline_for_formula_value of Camlline_for_formula_value_t.camlline_for_formula_value
  | Camlline_for_symbol_value of Camlline_for_symbol_value_t.camlline_for_symbol_value
  | Camlline_for_tag_value of Camlline_for_tag_value_t.camlline_for_tag_value
;;
