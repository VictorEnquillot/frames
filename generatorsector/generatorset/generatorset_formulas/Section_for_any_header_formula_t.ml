(** {6 Typing} *)

type section_for_any_header_formula =
  | Section_for_any_header_constant_formula of Section_for_any_header_constant_formula_t.section_for_any_header_constant_formula
  | Section_for_any_header_top_formula of Section_for_any_header_top_formula_t.section_for_any_header_top_formula
;;

