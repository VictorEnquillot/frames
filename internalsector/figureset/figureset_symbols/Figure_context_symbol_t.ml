(** {3 Figure_context_symbol_t} *)


(** {6 Typing_for_symbol} *)

type figure_context_symbol =
  | Figure_context_database_symbol of Figure_context_database_symbol_t.figure_context_database_symbol
  | Figure_context_databox_symbol of Figure_context_databox_symbol_t.figure_context_databox_symbol
  | Figure_context_domain_symbol of Figure_context_domain_symbol_t.figure_context_domain_symbol
  | Figure_context_sector_symbol of Figure_context_sector_symbol_t.figure_context_sector_symbol
;;


(** Figure_context_symbol_t at 13:58:11 on 2 Dec 2016. created by version v2.4 of generator *)



