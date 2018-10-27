
(** {3 The Symbol for a Id3v2_tag.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type id3v2_tag_symbol =
  | Id3v2_base_tag_symbol of Id3v2_base_tag_symbol_t.id3v2_base_tag_symbol
  | Id3v2_tag_specific_symbol of Id3v2_tag_specific_symbol_t.id3v2_tag_specific_symbol
;;



(** created by ./generator id3v2_tag implementation symbol at 17:43 6 Jun 2012. *)



