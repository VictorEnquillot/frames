(** {3 A Symbol for a Segment_head.} *)

(** {6 Modules.} *)

 (* segment_zeroone is a bare constructor no module can be defined *)
module Bzos_t = Block_zeroone_symbol_t
 (* segment_rightextended is a bare constructor no module can be defined *)

(** {6 Type.} *)

type segment_head_symbol =
  | Segment_zeroone
  | Block_zeroone_symbol of Bzos_t.block_zeroone_symbol
  | Segment_rightextended
;;

(** created by ./do_entitysum_symbol_t_ml.sh segment_head 12 January 2011. *)

