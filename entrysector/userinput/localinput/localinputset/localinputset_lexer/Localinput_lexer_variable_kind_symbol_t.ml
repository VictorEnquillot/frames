(** {3 Localinput_lexer_variable_kind_symbol_t} *)


(** {6 Typing_for_symbol} *)

type localinput_lexer_variable_kind_symbol =
  | Localinput_lexer_variable_kind_context_symbol of Localinput_lexer_variable_kind_context_symbol_t.localinput_lexer_variable_kind_context_symbol
  | Localinput_lexer_variable_kind_external_symbol of Localinput_lexer_variable_kind_external_symbol_t.localinput_lexer_variable_kind_external_symbol
  | Localinput_lexer_variable_kind_operator_symbol of Localinput_lexer_variable_kind_operator_symbol_t.localinput_lexer_variable_kind_operator_symbol
  | Localinput_lexer_variable_kind_target_symbol of Localinput_lexer_variable_kind_target_symbol_t.localinput_lexer_variable_kind_target_symbol
;;


(** Localinput_lexer_variable_kind_symbol_t at 12:11:35 on 22 Mar 2017. created by version v2.4 of generator *)



