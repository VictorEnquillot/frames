(** {3 The Symbol for a Camlparagraph}  *)

(** {6 Typing} *)

type camlparagraph_formula =
  | Camlparagraph_for_any_formula of Camlparagraph_for_any_formula_t.camlparagraph_for_any_formula
  | Camlparagraph_for_formula_formula of Camlparagraph_for_formula_formula_t.camlparagraph_for_formula_formula
  | Camlparagraph_for_symbol_formula of Camlparagraph_for_symbol_formula_t.camlparagraph_for_symbol_formula
;;
