(** {3 Mp3_header_field_symbol_t} *)


(** {6 Typing_for_symbol} *)

type mp3_header_field_symbol =
  | Mp3_header_field_onebit_symbol of Mp3_header_field_onebit_symbol_t.mp3_header_field_onebit_symbol
  | Mp3_header_field_twobits_symbol of Mp3_header_field_twobits_symbol_t.mp3_header_field_twobits_symbol
  | Mp3_header_field_fourbits_symbol of Mp3_header_field_fourbits_symbol_t.mp3_header_field_fourbits_symbol
  | Mp3_header_field_elevenbits_symbol of Mp3_header_field_elevenbits_symbol_t.mp3_header_field_elevenbits_symbol
;;


(** Mp3_header_field_symbol_t at 18:57:28 on 27 Jun 2013. created by version v2.3 of generator *)



