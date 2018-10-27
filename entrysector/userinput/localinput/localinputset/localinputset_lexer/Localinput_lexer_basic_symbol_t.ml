(** {3 Localinput_lexer_basic_symbol_t} *)


(** {6 Typing_for_symbol} *)

type localinput_lexer_basic_symbol =
  | Localinput_lexer_basic_boolean_symbol of Localinput_lexer_basic_boolean_symbol_t.localinput_lexer_basic_boolean_symbol
  | Localinput_lexer_basic_float_symbol of Localinput_lexer_basic_float_symbol_t.localinput_lexer_basic_float_symbol
  | Localinput_lexer_basic_integer_symbol of Localinput_lexer_basic_integer_symbol_t.localinput_lexer_basic_integer_symbol
  | Localinput_lexer_basic_string_symbol of Localinput_lexer_basic_string_symbol_t.localinput_lexer_basic_string_symbol
  | Localinput_lexer_basic_word_symbol of Localinput_lexer_basic_word_symbol_t.localinput_lexer_basic_word_symbol
;;


(** Localinput_lexer_basic_symbol_t at 12:10:50 on 22 Mar 2017. created by version v2.4 of generator *)



