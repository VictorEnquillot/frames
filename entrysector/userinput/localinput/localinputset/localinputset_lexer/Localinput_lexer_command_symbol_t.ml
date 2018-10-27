(** {3 Localinput_lexer_command_symbol_t} *)


(** {6 Typing_for_symbol} *)

type localinput_lexer_command_symbol =
  | Localinput_lexer_command_define_symbol of Localinput_lexer_command_define_symbol_t.localinput_lexer_command_define_symbol
  | Localinput_lexer_command_print_symbol of Localinput_lexer_command_print_symbol_t.localinput_lexer_command_print_symbol
  | Localinput_lexer_command_read_symbol of Localinput_lexer_command_read_symbol_t.localinput_lexer_command_read_symbol
  | Localinput_lexer_command_set_symbol of Localinput_lexer_command_set_symbol_t.localinput_lexer_command_set_symbol
  | Localinput_lexer_command_stop_symbol of Localinput_lexer_command_stop_symbol_t.localinput_lexer_command_stop_symbol
  | Localinput_lexer_command_title_symbol of Localinput_lexer_command_title_symbol_t.localinput_lexer_command_title_symbol
  | Localinput_lexer_command_write_symbol of Localinput_lexer_command_write_symbol_t.localinput_lexer_command_write_symbol
;;


(** Localinput_lexer_command_symbol_t at 12:10:57 on 22 Mar 2017. created by version v2.4 of generator *)



