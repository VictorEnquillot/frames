(** {3 Nwchemdata_lexer_basic_word_symbol_t} *)


(** {6 Typing_for_symbol} *)

type nwchemdata_lexer_basic_word_symbol =
  | Nwchemdata_lexer_basic_word_anycase_symbol of Nwchemdata_lexer_basic_word_anycase_symbol_t.nwchemdata_lexer_basic_word_anycase_symbol
  | Nwchemdata_lexer_basic_word_capitalized_symbol of Nwchemdata_lexer_basic_word_capitalized_symbol_t.nwchemdata_lexer_basic_word_capitalized_symbol
  | Nwchemdata_lexer_basic_word_capitalized_strict_symbol of Nwchemdata_lexer_basic_word_capitalized_strict_symbol_t.nwchemdata_lexer_basic_word_capitalized_strict_symbol
  | Nwchemdata_lexer_basic_word_lowercase_symbol of Nwchemdata_lexer_basic_word_lowercase_symbol_t.nwchemdata_lexer_basic_word_lowercase_symbol
  | Nwchemdata_lexer_basic_word_numeric_symbol of Nwchemdata_lexer_basic_word_numeric_symbol_t.nwchemdata_lexer_basic_word_numeric_symbol
  | Nwchemdata_lexer_basic_word_uppercase_symbol of Nwchemdata_lexer_basic_word_uppercase_symbol_t.nwchemdata_lexer_basic_word_uppercase_symbol
;;


(** Nwchemdata_lexer_basic_word_symbol_t at 17:56:7 on 23 Apr 2015. created by version v2.4 of generator *)



