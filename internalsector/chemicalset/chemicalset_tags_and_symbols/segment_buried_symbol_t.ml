(** {3 A Symbol for a Segment_buried.} *)

(** {6 Modules.} *)

 (* segment_oneone is a bare constructor no module can be defined *)
module Boos_t = Block_oneone_symbol_t
 (* segment_leftextended is a bare constructor no module can be defined *)
 (* polysegment is a bare constructor no module can be defined *)

(** {6 Type.} *)

type segment_buried_symbol =
  | Segment_oneone
  | Block_oneone_symbol of Boos_t.block_oneone_symbol
  | Segment_leftextended
  | Polysegment
;;

(** created by ./do_entitysum_symbol_t_ml.sh segment_buried 12 January 2011. *)

