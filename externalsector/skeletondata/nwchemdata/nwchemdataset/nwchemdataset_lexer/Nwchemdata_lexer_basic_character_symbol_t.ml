(** {3 Nwchemdata_lexer_basic_character_symbol_t} *)


(** {6 Typing_for_symbol} *)

type nwchemdata_lexer_basic_character_symbol =
  | Nwchemdata_lexer_basic_character_alphabetic_symbol of Nwchemdata_lexer_basic_character_alphabetic_symbol_t.nwchemdata_lexer_basic_character_alphabetic_symbol
  | Nwchemdata_lexer_basic_character_mark_symbol of Nwchemdata_lexer_basic_character_mark_symbol_t.nwchemdata_lexer_basic_character_mark_symbol
  | Nwchemdata_lexer_basic_character_numeric of string
;;


(** Nwchemdata_lexer_basic_character_symbol_t at 17:56:6 on 23 Apr 2015. created by version v2.4 of generator *)



