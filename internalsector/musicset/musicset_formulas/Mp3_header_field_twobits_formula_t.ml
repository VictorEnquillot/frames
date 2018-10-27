(** {3 Mp3_header_field_twobits_formula_t} *)


(** {6 Typing_for_formula} *)

type mp3_header_field_twobits_formula =
  | Layer of String_tag_t.string_tag list
  | Frequency of String_tag_t.string_tag list
  | Mode of String_tag_t.string_tag list
  | Mode_extension of String_tag_t.string_tag list
  | Emphasis of String_tag_t.string_tag list
;;


(** Mp3_header_field_twobits_formula_t at 18:37:31 on 27 Jun 2013. created by version v2.3 of generator *)



