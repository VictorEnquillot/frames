(** {3 Elementary_context_symbol_t} *)


(** {6 Typing_for_symbol} *)

type elementary_context_symbol =
  | Elementary_context_database_symbol of Elementary_context_database_symbol_t.elementary_context_database_symbol
  | Elementary_context_databox_symbol of Elementary_context_databox_symbol_t.elementary_context_databox_symbol
  | Elementary_context_domain_symbol of Elementary_context_domain_symbol_t.elementary_context_domain_symbol
;;


(** Elementary_context_symbol_t at 11:53:6 on 9 May 2016. created by version v2.4 of generator *)



