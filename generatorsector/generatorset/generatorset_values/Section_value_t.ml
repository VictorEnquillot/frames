(** {3 Section_value_t.}  *)

(** {6 Typing} *)

type section_value =
  | Section_for_any_value of Section_for_any_value_t.section_for_any_value
  | Section_for_formula_value of Section_for_formula_value_t.section_for_formula_value
  | Section_for_symbol_value of Section_for_symbol_value_t.section_for_symbol_value
;;
