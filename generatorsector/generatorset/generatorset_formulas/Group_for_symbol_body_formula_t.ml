(** {6 Typing} *)

type group_for_symbol_body_formula =
  | Group_for_symbol_body_top_formula of Group_for_symbol_body_top_formula_t.group_for_symbol_body_top_formula
  | Group_for_symbol_body_son_formula of Group_for_symbol_body_son_formula_t.group_for_symbol_body_son_formula
  | Group_for_symbol_body_son_top_formula of Group_for_symbol_body_son_top_formula_t.group_for_symbol_body_son_top_formula
  | Group_for_symbol_body_current_son_top_formula of Group_for_symbol_body_current_son_top_formula_t.group_for_symbol_body_current_son_top_formula
;;
