(** {3 Nwchemdata_lexer_variable_symbol_t} *)


(** {6 Typing_for_symbol} *)

type nwchemdata_lexer_variable_symbol =
  | Nwchemdata_lexer_variable_basis_name_atomic_orbital of string
  | Nwchemdata_lexer_variable_basis_name_spin_orbit of string
  | Nwchemdata_lexer_variable_databox_name of string
  | Nwchemdata_lexer_variable_ecpset_name of string
  | Nwchemdata_lexer_variable_many_space of string
  | Nwchemdata_lexer_variable_shell_name of string
  | Nwchemdata_lexer_variable_spaced_end_of_line of string
  | Nwchemdata_lexer_variable_version of string
;;


(** Nwchemdata_lexer_variable_symbol_t at 17:56:13 on 23 Apr 2015. created by version v2.4 of generator *)



