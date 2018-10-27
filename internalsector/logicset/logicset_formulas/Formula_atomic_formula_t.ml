(** {3 Formula_atomic_formula_t} *)


(** {6 Typing_for_formula} *)

type formula_atomic_formula =
  | Variable of string * String_tag_t.string_tag list
  | Formula_true of String_tag_t.string_tag list
  | Formula_false of String_tag_t.string_tag list
;;


(** Formula_atomic_formula_t at 17:23:53 on 13 Jul 2013. created by version v2.3 of generator *)



