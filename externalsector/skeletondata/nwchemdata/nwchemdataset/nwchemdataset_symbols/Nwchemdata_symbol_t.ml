(** {3 Nwchemdata_symbol_t} *)


(** {6 Typing_for_symbol} *)

type nwchemdata_symbol =
  | Nwchemdata_comment_symbol of Nwchemdata_comment_symbol_t.nwchemdata_comment_symbol
  | Nwchemdata_context_symbol of Nwchemdata_context_symbol_t.nwchemdata_context_symbol
  | Nwchemdata_set_symbol of Nwchemdata_set_symbol_t.nwchemdata_set_symbol
;;


(** Nwchemdata_symbol_t at 17:57:31 on 4 Dec 2016. created by version v2.4 of generator *)



