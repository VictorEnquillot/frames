
(** {3 The Symbol for a Mp3_file.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type mp3_file_symbol =
  | File_id3v1_symbol of File_id3v1_symbol_t.file_id3v1_symbol
  | File_id3v2_symbol of File_id3v2_symbol_t.file_id3v2_symbol
;;



(** created by ./generator mp3_file implementation symbol at 17:43 6 Jun 2012. *)



