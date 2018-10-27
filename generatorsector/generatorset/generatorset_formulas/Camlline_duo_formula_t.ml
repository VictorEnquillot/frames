(** {6 Typing} *)

type camlline_duo_formula =
  | Camlline_duo_function_formula of Camlline_duo_function_formula_t.camlline_duo_function_formula
  | Camlline_duo_value_formula of Camlline_duo_value_formula_t.camlline_duo_value_formula
;;
