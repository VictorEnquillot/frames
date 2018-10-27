(** {3 Token_formula_t} *)


(** {6 Typing_for_formula} *)

type token_formula =
  | Connective_formula of Connective_formula_t.connective_formula
  | Leftparenthesis of String_tag_t.string_tag list
  | Rightparenthesis of String_tag_t.string_tag list
;;


(** Token_formula_t at 17:23:53 on 13 Jul 2013. created by version v2.3 of generator *)



