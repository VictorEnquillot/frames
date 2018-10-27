(** {3 Forked_symbol_t} *)


(** {6 Typing_for_symbol} *)

type forked_symbol =
  | Forked_block_symbol of Forked_block_symbol_t.forked_block_symbol
  | Forked_fragment_symbol of Forked_fragment_symbol_t.forked_fragment_symbol
;;


(** Forked_symbol_t at 15:38:42 on 24 Jun 2013. created by version v2.3 of generator *)



