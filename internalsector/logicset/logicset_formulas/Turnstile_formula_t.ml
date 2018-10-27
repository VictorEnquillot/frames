(** {3 Turnstile_formula_t} *)


(** {6 Typing_for_formula} *)

type turnstile_formula =
  | Turnstile_true of String_tag_t.string_tag list
  | Turnstile_false of String_tag_t.string_tag list
;;


(** Turnstile_formula_t at 17:23:53 on 13 Jul 2013. created by version v2.3 of generator *)



