(** {3 A Symbol for a Block_oneend.} *)

(** {6 Modules.} *)

module Bofs_t = Block_onefork_symbol_t
module Bozs_t = Block_onezero_symbol_t

(** {6 Type.} *)

type block_oneend_symbol =
  | Block_onefork_symbol of Bofs_t.block_onefork_symbol
  | Block_onezero_symbol of Bozs_t.block_onezero_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh block_oneend 12 January 2011. *)

