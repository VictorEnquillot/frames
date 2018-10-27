(** {3 The Formula for an Group.}  *)

(** {6 Aliasing} *)


(** {6 Typing} *)

type group_formula = 
  | Group_for_any_formula of Group_for_any_formula_t.group_for_any_formula
  | Group_for_formula_formula of Group_for_formula_formula_t.group_for_formula_formula
  | Group_for_symbol_formula of Group_for_symbol_formula_t.group_for_symbol_formula
;;

