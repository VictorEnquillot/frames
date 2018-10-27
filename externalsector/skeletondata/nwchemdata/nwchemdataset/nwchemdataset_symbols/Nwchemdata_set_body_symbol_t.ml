(** {3 Nwchemdata_set_body_symbol_t} *)


(** {6 Typing_for_symbol} *)

type nwchemdata_set_body_symbol =
  | Nwchemdata_set_body_directive_symbol of Nwchemdata_set_body_directive_symbol_t.nwchemdata_set_body_directive_symbol
  | Nwchemdata_set_body_keyword_symbol of Nwchemdata_set_body_keyword_symbol_t.nwchemdata_set_body_keyword_symbol
  | Nwchemdata_set_body_node_symbol of Nwchemdata_set_body_node_symbol_t.nwchemdata_set_body_node_symbol
  | Nwchemdata_set_body_variable_symbol of Nwchemdata_set_body_variable_symbol_t.nwchemdata_set_body_variable_symbol
;;


(** Nwchemdata_set_body_symbol_t at 17:57:44 on 4 Dec 2016. created by version v2.4 of generator *)



