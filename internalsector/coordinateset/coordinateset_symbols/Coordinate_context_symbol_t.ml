(** {3 Coordinate_context_symbol_t} *)


(** {6 Typing_for_symbol} *)

type coordinate_context_symbol =
  | Coordinate_context_database_symbol of Coordinate_context_database_symbol_t.coordinate_context_database_symbol
  | Coordinate_context_databox_symbol of Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol
  | Coordinate_context_domain_symbol of Coordinate_context_domain_symbol_t.coordinate_context_domain_symbol
  | Coordinate_context_sector_symbol of Coordinate_context_sector_symbol_t.coordinate_context_sector_symbol
;;


(** Coordinate_context_symbol_t at 11:32:59 on 14 Dec 2016. created by version v2.4 of generator *)



