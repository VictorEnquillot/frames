(** {3 Usagefile_value_t.}  *)

(** {6 Typing} *)

type usagefile_value = 
  | Usagefile_for_formula_value of Usagefile_for_formula_value_t.usagefile_for_formula_value
  | Usagefile_for_symbol_value of Usagefile_for_symbol_value_t.usagefile_for_symbol_value
;;


