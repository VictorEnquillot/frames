(** {6 Typing} *)

type section_for_symbol_formula =
  | Section_for_symbol_header_formula of Section_for_symbol_header_formula_t.section_for_symbol_header_formula
  | Section_for_symbol_body_formula of Section_for_symbol_body_formula_t.section_for_symbol_body_formula
  | Section_for_symbol_footer_formula of Section_for_symbol_footer_formula_t.section_for_symbol_footer_formula
;;

