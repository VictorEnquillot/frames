(** {3 Formula_formula_t} *)


(** {6 Typing_for_formula} *)

type formula_formula =
  | Formula_atomic_formula of Formula_atomic_formula_t.formula_atomic_formula
  | Formula_composite of String_tag_t.string_tag list
;;


(** Formula_formula_t at 17:23:53 on 13 Jul 2013. created by version v2.3 of generator *)



