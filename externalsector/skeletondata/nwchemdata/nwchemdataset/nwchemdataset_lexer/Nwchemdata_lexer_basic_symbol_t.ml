(** {3 Nwchemdata_lexer_basic_symbol_t} *)


(** {6 Typing_for_symbol} *)

type nwchemdata_lexer_basic_symbol =
  | Nwchemdata_lexer_basic_character_symbol of Nwchemdata_lexer_basic_character_symbol_t.nwchemdata_lexer_basic_character_symbol
  | Nwchemdata_lexer_basic_word_symbol of Nwchemdata_lexer_basic_word_symbol_t.nwchemdata_lexer_basic_word_symbol
  | Nwchemdata_lexer_basic_boolean of string
  | Nwchemdata_lexer_basic_float of string
  | Nwchemdata_lexer_basic_integer of string
  | Nwchemdata_lexer_basic_string of string
;;


(** Nwchemdata_lexer_basic_symbol_t at 17:56:6 on 23 Apr 2015. created by version v2.4 of generator *)



