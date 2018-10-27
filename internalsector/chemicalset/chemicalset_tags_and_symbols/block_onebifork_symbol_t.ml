(** {3 A Symbol for a Block_onebifork.} *)

(** {6 Modules.} *)

module Bsbs_t = Block_onesinglebifork_symbol_t
module Bdbs_t = Block_onedoublebifork_symbol_t

(** {6 Type.} *)

type block_onebifork_symbol =
  | Block_onesinglebifork_symbol of Bsbs_t.block_onesinglebifork_symbol
  | Block_onedoublebifork_symbol of Bdbs_t.block_onedoublebifork_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh block_onebifork 12 January 2011. *)

