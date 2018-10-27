(** {3 Closed_block_symbol_t} *)


(** {6 Typing_for_symbol} *)

type closed_block_symbol =
  | Closed_block_anion_symbol of Closed_block_anion_symbol_t.closed_block_anion_symbol
  | Closed_block_cation_symbol of Closed_block_cation_symbol_t.closed_block_cation_symbol
  | Closed_block_neutral_symbol of Closed_block_neutral_symbol_t.closed_block_neutral_symbol
;;


(** Closed_block_symbol_t at 12:27:38 on 24 Jun 2013. created by version v2.3 of generator *)



