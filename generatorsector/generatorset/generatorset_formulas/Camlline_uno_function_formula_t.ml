
(** {6 Typing} *)

type camlline_uno_function_formula =
  | Camlline_uno_function_any_formula of Camlline_uno_function_any_formula_t.camlline_uno_function_any_formula
  | Camlline_uno_function_formula_formula of Camlline_uno_function_formula_formula_t.camlline_uno_function_formula_formula
  | Camlline_uno_function_symbol_formula of Camlline_uno_function_symbol_formula_t.camlline_uno_function_symbol_formula
  | Camlline_uno_function_tag_formula of Camlline_uno_function_tag_formula_t.camlline_uno_function_tag_formula
;;


