(** {3 Mp3_header_symbol_t} *)


(** {6 Typing_for_symbol} *)

type mp3_header_symbol =
  | Mp3_header_field_symbol of Mp3_header_field_symbol_t.mp3_header_field_symbol
  | Mp3_header_tag_symbol of Mp3_header_tag_symbol_t.mp3_header_tag_symbol
  | Mp3_header_1
  | Mp3_header_2
  | Mp3_header_2_5
;;


(** Mp3_header_symbol_t at 18:57:28 on 27 Jun 2013. created by version v2.3 of generator *)



