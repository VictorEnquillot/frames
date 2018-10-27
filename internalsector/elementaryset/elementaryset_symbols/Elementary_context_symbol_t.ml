(** {3 Elementary_context_symbol_t} *)


(** {6 Typing_for_symbol} *)

type elementary_context_symbol =
  | Elementary_context_database_symbol of Elementary_context_database_symbol_t.elementary_context_database_symbol
  | Elementary_context_databox_symbol of Elementary_context_databox_symbol_t.elementary_context_databox_symbol
  | Elementary_context_domain_symbol of Elementary_context_domain_symbol_t.elementary_context_domain_symbol
  | Elementary_context_sector_symbol of Elementary_context_sector_symbol_t.elementary_context_sector_symbol
;;


(** Elementary_context_symbol_t at 9:52:8 on 27 Sep 2016. created by version v2.4 of generator *)



