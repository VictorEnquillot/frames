(** {6 Typing} *)

type group_for_symbol_header_formula =
  | Group_for_symbol_header_constant_formula of Group_for_symbol_header_constant_formula_t.group_for_symbol_header_constant_formula
  | Group_for_symbol_header_current_son_top_formula of Group_for_symbol_header_current_son_top_formula_t.group_for_symbol_header_current_son_top_formula
  | Group_for_symbol_header_current_top_formula of Group_for_symbol_header_current_top_formula_t.group_for_symbol_header_current_top_formula
  | Group_for_symbol_header_son_formula of Group_for_symbol_header_son_formula_t.group_for_symbol_header_son_formula
  | Group_for_symbol_header_son_top_formula of Group_for_symbol_header_son_top_formula_t.group_for_symbol_header_son_top_formula
;;

