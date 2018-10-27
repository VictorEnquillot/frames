(** {3 A Symbol for a Segment.} *)

(** {6 Modules.} *)

module Shs_t = Segment_head_symbol_t
module Sbs_t = Segment_buried_symbol_t

(** {6 Type.} *)

type segment_symbol =
  | Segment_head_symbol of Shs_t.segment_head_symbol
  | Segment_buried_symbol of Sbs_t.segment_buried_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh segment 12 January 2011. *)

