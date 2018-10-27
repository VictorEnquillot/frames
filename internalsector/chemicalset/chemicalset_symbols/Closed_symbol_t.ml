(** {3 Closed_symbol_t} *)


(** {6 Typing_for_symbol} *)

type closed_symbol =
  | Closed_atom_symbol of Closed_atom_symbol_t.closed_atom_symbol
  | Closed_block_symbol of Closed_block_symbol_t.closed_block_symbol
  | Closed_segment_symbol of Closed_segment_symbol_t.closed_segment_symbol
  | Closed_grouping_symbol of Closed_grouping_symbol_t.closed_grouping_symbol
;;


(** Closed_symbol_t at 15:38:42 on 24 Jun 2013. created by version v2.3 of generator *)



