(** {6 Typing} *)

type group_for_symbol_formula =
  | Group_for_symbol_header_formula of Group_for_symbol_header_formula_t.group_for_symbol_header_formula
  | Group_for_symbol_body_formula of Group_for_symbol_body_formula_t.group_for_symbol_body_formula
  | Group_for_symbol_footer_formula of Group_for_symbol_footer_formula_t.group_for_symbol_footer_formula
;;


