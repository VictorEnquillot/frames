(** {3 Tag_id3v1_128_formula_t} *)


(** {6 Typing_for_formula} *)

type tag_id3v1_128_formula =
  | Header_3 of String_tag_t.string_tag list
  | Title_30 of String_tag_t.string_tag list
  | Artist_30 of String_tag_t.string_tag list
  | Album_30 of String_tag_t.string_tag list
  | Year_4 of String_tag_t.string_tag list
  | Comment_28 of String_tag_t.string_tag list
  | Comment_30 of String_tag_t.string_tag list
  | Zero_byte_1 of String_tag_t.string_tag list
  | Track_1 of String_tag_t.string_tag list
  | Genre_1 of String_tag_t.string_tag list
;;


(** Tag_id3v1_128_formula_t at 18:37:32 on 27 Jun 2013. created by version v2.3 of generator *)



