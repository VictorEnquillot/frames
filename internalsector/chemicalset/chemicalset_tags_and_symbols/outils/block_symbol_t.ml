(** {3 A Symbol for a Block.} *)


(** {6 Modules.} *)

module B00s_t = Block_zerozero_symbol_t
module B01s_t = Block_zeroone_symbol_t
module B0s_t = Block_zerofork_symbol_t
module B11s_t = Block_oneone_symbol_t
module B1es_t = Block_oneend_symbol_t


(** {6 Typing.} *)

type block_symbol =
  | Block_zerozero_symbol of B00s_t.block_zerozero_symbol
  | Block_zeroone_symbol of B01s_t.block_zeroone_symbol
  | Block_zerofork_symbol of B0s_t.block_zerofork_symbol
  | Block_oneone_symbol of B11s_t.block_oneone_symbol
  | Block_oneend_symbol of B1es_t.block_oneend_symbol
;;


(** created by ./generator block t symbol at 19:13 25 Apr 2011. *)



