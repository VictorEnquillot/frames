(** {3 Localinput_lexer_keyword_symbol_t} *)


(** {6 Typing_for_symbol} *)

type localinput_lexer_keyword_symbol =
  | Localinput_lexer_keyword_basiced_symbol of Localinput_lexer_keyword_basiced_symbol_t.localinput_lexer_keyword_basiced_symbol
  | Localinput_lexer_keyword_blocknamed_symbol of Localinput_lexer_keyword_blocknamed_symbol_t.localinput_lexer_keyword_blocknamed_symbol
  | Localinput_lexer_keyword_defvarnamed_symbol of Localinput_lexer_keyword_defvarnamed_symbol_t.localinput_lexer_keyword_defvarnamed_symbol
  | Localinput_lexer_keyword_nextvarnamed_symbol of Localinput_lexer_keyword_nextvarnamed_symbol_t.localinput_lexer_keyword_nextvarnamed_symbol
  | Localinput_lexer_keyword_nextstringed_symbol of Localinput_lexer_keyword_nextstringed_symbol_t.localinput_lexer_keyword_nextstringed_symbol
  | Localinput_lexer_keyword_unnamed_symbol of Localinput_lexer_keyword_unnamed_symbol_t.localinput_lexer_keyword_unnamed_symbol
;;


(** Localinput_lexer_keyword_symbol_t at 12:11:5 on 22 Mar 2017. created by version v2.4 of generator *)



