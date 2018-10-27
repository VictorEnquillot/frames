(** {3 Entity_external_constrained_symbol_t} *)

(** {6 Typing} *)

type entity_external_constrained_formula =
  | Index of string
  | Ordinal of string
  | Float_positive of string
  | Float_zero_pi of string
  | Float_zero_twopi of string
;;
