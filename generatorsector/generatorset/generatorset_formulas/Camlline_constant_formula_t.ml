(** {3 Camlline_constant_formula_t}  *)

(** {6 Typing} *)

type camlline_constant_formula =
  | Camlline_constant_function_formula of Camlline_constant_function_formula_t.camlline_constant_function_formula
  | Camlline_constant_pervasive_formula of Camlline_constant_pervasive_formula_t.camlline_constant_pervasive_formula
;;


