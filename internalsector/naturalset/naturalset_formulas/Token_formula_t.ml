(** {3 Token_formula_t} *)


(** {6 Typing_for_formula} *)

type token_formula =
  | Operation_formula of Operation_formula_t.operation_formula
  | Leftparenthesis of String_tag_t.string_tag list
  | Rightparenthesis of String_tag_t.string_tag list
;;


(** Token_formula_t at 9:38:32 on 16 Jul 2013. created by version v2.4 of generator *)



