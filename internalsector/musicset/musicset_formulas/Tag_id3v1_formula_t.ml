(** {3 Tag_id3v1_formula_t} *)


(** {6 Typing_for_formula} *)

type tag_id3v1_formula =
  | Tag_id3v1_128_formula of Tag_id3v1_128_formula_t.tag_id3v1_128_formula
  | Tag_id3v1_227_formula of Tag_id3v1_227_formula_t.tag_id3v1_227_formula
  | Tag_id3v1_0 of String_tag_t.string_tag list
  | Tag_id3v1_1 of String_tag_t.string_tag list
  | Tag_id3v1_extended of String_tag_t.string_tag list
;;


(** Tag_id3v1_formula_t at 18:37:32 on 27 Jun 2013. created by version v2.3 of generator *)



