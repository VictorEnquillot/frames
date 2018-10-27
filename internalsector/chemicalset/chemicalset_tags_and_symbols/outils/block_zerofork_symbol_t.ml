(** {3 A Symbol for a Block_zerofork.} *)


(** {6 Modules.} *)

module B0bs_t = Block_zerobifork_symbol_t
module B0ts_t = Block_zerotrifork_symbol_t
module B0qs_t = Block_zeroquadrifork_symbol_t


(** {6 Typing.} *)

type block_zerofork_symbol =
  | Block_zerobifork_symbol of B0bs_t.block_zerobifork_symbol
  | Block_zerotrifork_symbol of B0ts_t.block_zerotrifork_symbol
  | Block_zeroquadrifork_symbol of B0qs_t.block_zeroquadrifork_symbol
;;


(** created by ./generator block_zerofork t symbol at 19:13 25 Apr 2011. *)



