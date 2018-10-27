(** {3 Mp3_header_formula_t} *)


(** {6 Typing_for_formula} *)

type mp3_header_formula =
  | Mp3_header_field_formula of Mp3_header_field_formula_t.mp3_header_field_formula
  | Mp3_header_tag_formula of Mp3_header_tag_formula_t.mp3_header_tag_formula
  | Mp3_header_1 of String_tag_t.string_tag list
  | Mp3_header_2 of String_tag_t.string_tag list
  | Mp3_header_2_5 of String_tag_t.string_tag list
;;


(** Mp3_header_formula_t at 18:37:30 on 27 Jun 2013. created by version v2.3 of generator *)



