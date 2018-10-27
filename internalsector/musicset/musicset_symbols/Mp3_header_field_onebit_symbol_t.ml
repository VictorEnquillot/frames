(** {3 Mp3_header_field_onebit_symbol_t} *)


(** {6 Typing_for_symbol} *)

type mp3_header_field_onebit_symbol =
  | Version_symbol of Version_symbol_t.version_symbol
  | Error_protection
  | Pad_bit
  | Intensity_stereo
  | Ms_stereo
  | Private_bit
  | Copyright
  | Original
;;


(** Mp3_header_field_onebit_symbol_t at 18:57:29 on 27 Jun 2013. created by version v2.3 of generator *)



