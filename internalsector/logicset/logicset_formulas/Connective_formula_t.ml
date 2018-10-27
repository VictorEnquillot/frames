(** {3 Connective_formula_t} *)


(** {6 Typing_for_formula} *)

type connective_formula =
  | Negation of String_tag_t.string_tag list
  | Conjunction of String_tag_t.string_tag list
  | Disjunction of String_tag_t.string_tag list
  | Implication of String_tag_t.string_tag list
  | Equivalence of String_tag_t.string_tag list
;;


(** Connective_formula_t at 17:23:53 on 13 Jul 2013. created by version v2.3 of generator *)



