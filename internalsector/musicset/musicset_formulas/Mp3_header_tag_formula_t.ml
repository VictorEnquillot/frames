(** {3 Mp3_header_tag_formula_t} *)


(** {6 Typing_for_formula} *)

type mp3_header_tag_formula =
  | Mp3_header_tag_onebit of String_tag_t.string_tag list
  | Mp3_header_tag_twobits of String_tag_t.string_tag list
  | Id3v2 of String_tag_t.string_tag list
  | Mp3_header_tag_fourbits of String_tag_t.string_tag list
  | Mp3_header_tag_twelvebits of String_tag_t.string_tag list
;;


(** Mp3_header_tag_formula_t at 18:37:31 on 27 Jun 2013. created by version v2.3 of generator *)



