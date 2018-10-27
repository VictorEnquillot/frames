(** {3 A Symbol for a Block_zerofork.} *)

(** {6 Modules.} *)

module Bzbs_t = Block_zerobifork_symbol_t
module Bzts_t = Block_zerotrifork_symbol_t
module Bzqs_t = Block_zeroquadrifork_symbol_t

(** {6 Type.} *)

type block_zerofork_symbol =
  | Block_zerobifork_symbol of Bzbs_t.block_zerobifork_symbol
  | Block_zerotrifork_symbol of Bzts_t.block_zerotrifork_symbol
  | Block_zeroquadrifork_symbol of Bzqs_t.block_zeroquadrifork_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh block_zerofork 12 January 2011. *)

