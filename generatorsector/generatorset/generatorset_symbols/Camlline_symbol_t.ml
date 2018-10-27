(** {3 Camlline_symbol_t} *)


(** {6 Typing_for_symbol} *)

type camlline_symbol =
  | Camlline_constant_symbol of Camlline_constant_symbol_t.camlline_constant_symbol
  | Camlline_for_any_symbol of Camlline_for_any_symbol_t.camlline_for_any_symbol
  | Camlline_for_formula_symbol of Camlline_for_formula_symbol_t.camlline_for_formula_symbol
  | Camlline_for_symbol_symbol of Camlline_for_symbol_symbol_t.camlline_for_symbol_symbol
  | Camlline_for_tag_symbol of Camlline_for_tag_symbol_t.camlline_for_tag_symbol
;;


(** created by version v1.13 of ./generator camlline implementation_for_symbol symbol at 16:47 27 May 2013. *)



