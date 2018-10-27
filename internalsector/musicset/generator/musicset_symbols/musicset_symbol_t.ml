
(** {3 The Symbol for a Musicset.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type musicset_symbol =
  | Mp3_file_symbol of Mp3_file_symbol_t.mp3_file_symbol
  | Id3_tag_symbol of Id3_tag_symbol_t.id3_tag_symbol
  | Mp3_header_symbol of Mp3_header_symbol_t.mp3_header_symbol
  | Mp3_header_field_symbol of Mp3_header_field_symbol_t.mp3_header_field_symbol
;;



(** created by ./generator musicset implementation symbol at 17:43 6 Jun 2012. *)



