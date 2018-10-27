(** {3 A Symbol for a Block_onefork.} *)

(** {6 Modules.} *)

module Bobs_t = Block_onebifork_symbol_t
module Bots_t = Block_onetrifork_symbol_t

(** {6 Type.} *)

type block_onefork_symbol =
  | Block_onebifork_symbol of Bobs_t.block_onebifork_symbol
  | Block_onetrifork_symbol of Bots_t.block_onetrifork_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh block_onefork 12 January 2011. *)

