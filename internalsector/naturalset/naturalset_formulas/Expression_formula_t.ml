(** {3 Expression_formula_t} *)


(** {6 Typing_for_formula} *)

type expression_formula =
  | Expression_atomic_formula of Expression_atomic_formula_t.expression_atomic_formula
  | Expression_composite of String_tag_t.string_tag list
;;


(** Expression_formula_t at 9:38:28 on 16 Jul 2013. created by version v2.4 of generator *)



