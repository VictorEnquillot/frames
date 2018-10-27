(** {3 Parameter_context_symbol_t} *)


(** {6 Typing_for_symbol} *)

type parameter_context_symbol =
  | Parameter_context_database_symbol of Parameter_context_database_symbol_t.parameter_context_database_symbol
  | Parameter_context_databox_symbol of Parameter_context_databox_symbol_t.parameter_context_databox_symbol
  | Parameter_context_domain_symbol of Parameter_context_domain_symbol_t.parameter_context_domain_symbol
  | Parameter_context_sector_symbol of Parameter_context_sector_symbol_t.parameter_context_sector_symbol
;;


(** Parameter_context_symbol_t at 16:28:52 on 2 Dec 2016. created by version v2.4 of generator *)



