(** {3 Nwchemdata_context_symbol_t} *)


(** {6 Typing_for_symbol} *)

type nwchemdata_context_symbol =
  | Nwchemdata_context_databox_symbol of Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol
  | Nwchemdata_context_database_symbol of Nwchemdata_context_database_symbol_t.nwchemdata_context_database_symbol
  | Nwchemdata_context_domain_symbol of Nwchemdata_context_domain_symbol_t.nwchemdata_context_domain_symbol
  | Nwchemdata_context_sector_symbol of Nwchemdata_context_sector_symbol_t.nwchemdata_context_sector_symbol
;;


(** Nwchemdata_context_symbol_t at 17:57:38 on 4 Dec 2016. created by version v2.4 of generator *)



