(** {6 Typing} *)

type section_for_any_formula =
  | Section_for_any_body_formula of Section_for_any_body_formula_t.section_for_any_body_formula
  | Section_for_any_footer_formula of Section_for_any_footer_formula_t.section_for_any_footer_formula
  | Section_for_any_header_formula of Section_for_any_header_formula_t.section_for_any_header_formula
;;
