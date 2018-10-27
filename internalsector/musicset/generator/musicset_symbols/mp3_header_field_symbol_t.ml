
(** {3 The Symbol for a Mp3_header_field.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type mp3_header_field_symbol =
  | Mp3_header_field_onebit_symbol of Mp3_header_field_onebit_symbol_t.mp3_header_field_onebit_symbol
  | Mp3_header_field_twobits_symbol of Mp3_header_field_twobits_symbol_t.mp3_header_field_twobits_symbol
  | Mp3_header_field_fourbits_symbol of Mp3_header_field_fourbits_symbol_t.mp3_header_field_fourbits_symbol
  | Mp3_header_field_elevenbits_symbol of Mp3_header_field_elevenbits_symbol_t.mp3_header_field_elevenbits_symbol
;;



(** created by ./generator mp3_header_field implementation symbol at 17:43 6 Jun 2012. *)



