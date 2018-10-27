(** {3 The Formula for an Usagefile.}  *)

(** {6 Typing} *)

type usagefile_formula = 
  | Usagefile_for_formula_formula of Usagefile_for_formula_formula_t.usagefile_for_formula_formula
  | Usagefile_for_symbol_formula of Usagefile_for_symbol_formula_t.usagefile_for_symbol_formula
;;
