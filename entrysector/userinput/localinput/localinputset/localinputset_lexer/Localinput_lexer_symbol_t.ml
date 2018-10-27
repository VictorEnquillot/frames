(** {3 Localinput_lexer_symbol_t} *)


(** {6 Typing_for_symbol} *)

type localinput_lexer_symbol =
  | Localinput_lexer_basic_symbol of Localinput_lexer_basic_symbol_t.localinput_lexer_basic_symbol
  | Localinput_lexer_command_symbol of Localinput_lexer_command_symbol_t.localinput_lexer_command_symbol
  | Localinput_lexer_keyword_symbol of Localinput_lexer_keyword_symbol_t.localinput_lexer_keyword_symbol
  | Localinput_lexer_token_symbol of Localinput_lexer_token_symbol_t.localinput_lexer_token_symbol
  | Localinput_lexer_variable_kind_symbol of Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol
;;


(** Localinput_lexer_symbol_t at 12:10:50 on 22 Mar 2017. created by version v2.4 of generator *)



