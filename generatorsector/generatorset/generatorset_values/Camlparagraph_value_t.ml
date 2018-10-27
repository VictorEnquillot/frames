(** {3 Camlparagraph_value_t.}  *)

(** {6 Typing} *)

type camlparagraph_value =
  | Camlparagraph_for_any_value of Camlparagraph_for_any_value_t.camlparagraph_for_any_value
  | Camlparagraph_for_formula_value of Camlparagraph_for_formula_value_t.camlparagraph_for_formula_value
  | Camlparagraph_for_symbol_value of Camlparagraph_for_symbol_value_t.camlparagraph_for_symbol_value
;;
