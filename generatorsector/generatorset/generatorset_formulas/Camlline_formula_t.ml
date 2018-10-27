(** {3 The Formula for an Camlline.}  *)

(** {6 Aliasing} *)


(** {6 Typing} *)

type camlline_formula = 
  | Camlline_constant_formula of Camlline_constant_formula_t.camlline_constant_formula
  | Camlline_for_any_formula of Camlline_for_any_formula_t.camlline_for_any_formula
  | Camlline_for_symbol_formula of Camlline_for_symbol_formula_t.camlline_for_symbol_formula
  | Camlline_for_formula_formula of Camlline_for_formula_formula_t.camlline_for_formula_formula
  | Camlline_for_tag_formula of Camlline_for_tag_formula_t.camlline_for_tag_formula
;;
