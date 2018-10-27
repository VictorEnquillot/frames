(** {3 Section_symbol_t} *)


(** {6 Typing_for_symbol} *)

type section_symbol =
  | Section_for_any_symbol of Section_for_any_symbol_t.section_for_any_symbol
  | Section_for_formula_symbol of Section_for_formula_symbol_t.section_for_formula_symbol
  | Section_for_symbol_symbol of Section_for_symbol_symbol_t.section_for_symbol_symbol
;;


(** Section_symbol_t at 11:55:36 on 30 May 2013. created by version v1.13 of generator *)



