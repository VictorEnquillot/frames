(** {3 Mp3_header_field_onebit_formula_t} *)


(** {6 Typing_for_formula} *)

type mp3_header_field_onebit_formula =
  | Version_formula of Version_formula_t.version_formula
  | Error_protection of String_tag_t.string_tag list
  | Pad_bit of String_tag_t.string_tag list
  | Intensity_stereo of String_tag_t.string_tag list
  | Ms_stereo of String_tag_t.string_tag list
  | Private_bit of String_tag_t.string_tag list
  | Copyright of String_tag_t.string_tag list
  | Original of String_tag_t.string_tag list
;;


(** Mp3_header_field_onebit_formula_t at 18:37:31 on 27 Jun 2013. created by version v2.3 of generator *)



