(** {3 A Symbol for a Block_zeroone.} *)

(** {6 Modules.} *)

module Bzss_t = Block_zeroonesingle_symbol_t
module Bzds_t = Block_zeroonedouble_symbol_t
module Bzts_t = Block_zeroonetriple_symbol_t
 (* block_zeroonehalfbridge is a bare constructor no module can be defined *)

(** {6 Type.} *)

type block_zeroone_symbol =
  | Block_zeroonesingle_symbol of Bzss_t.block_zeroonesingle_symbol
  | Block_zeroonedouble_symbol of Bzds_t.block_zeroonedouble_symbol
  | Block_zeroonetriple_symbol of Bzts_t.block_zeroonetriple_symbol
  | Block_zeroonehalfbridge
;;

(** created by ./do_entitysum_symbol_t_ml.sh block_zeroone 12 January 2011. *)

