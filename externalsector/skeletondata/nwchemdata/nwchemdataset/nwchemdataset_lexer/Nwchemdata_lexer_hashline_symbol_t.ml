(** {3 Nwchemdata_lexer_hashline_symbol_t} *)


(** {6 Typing_for_symbol} *)

type nwchemdata_lexer_hashline_symbol =
  | Nwchemdata_lexer_hashline_datafile of string
  | Nwchemdata_lexer_hashline_dashed of string
  | Nwchemdata_lexer_hashline_emsl of string
  | Nwchemdata_lexer_hashline_header of string
  | Nwchemdata_lexer_hashline_reference of string
  | Nwchemdata_lexer_hashline_empty
;;


(** Nwchemdata_lexer_hashline_symbol_t at 17:56:11 on 23 Apr 2015. created by version v2.4 of generator *)



