(** {3 Nwchemdata_lexer_symbol_t} *)


(** {6 Typing_for_symbol} *)

type nwchemdata_lexer_symbol =
  | Nwchemdata_lexer_basic_symbol of Nwchemdata_lexer_basic_symbol_t.nwchemdata_lexer_basic_symbol
  | Nwchemdata_lexer_hashline_symbol of Nwchemdata_lexer_hashline_symbol_t.nwchemdata_lexer_hashline_symbol
  | Nwchemdata_lexer_keyword_symbol of Nwchemdata_lexer_keyword_symbol_t.nwchemdata_lexer_keyword_symbol
  | Nwchemdata_lexer_symbol_symbol of Nwchemdata_lexer_symbol_symbol_t.nwchemdata_lexer_symbol_symbol
  | Nwchemdata_lexer_variable_symbol of Nwchemdata_lexer_variable_symbol_t.nwchemdata_lexer_variable_symbol
;;


(** Nwchemdata_lexer_symbol_t at 17:56:6 on 23 Apr 2015. created by version v2.4 of generator *)



