(** {3 A Symbol for a Fragment_head.} *)

(** {6 Modules.} *)

 (* fragment_head_halfbridge is a bare constructor no module can be defined *)
module Bzfs_t = Block_zerofork_symbol_t
 (* fragment_zerofork is a bare constructor no module can be defined *)
 (* segment_head_extends_fragment_buried is a bare constructor no module can be defined *)

(** {6 Type.} *)

type fragment_head_symbol =
  | Fragment_head_halfbridge
  | Block_zerofork_symbol of Bzfs_t.block_zerofork_symbol
  | Fragment_zerofork
  | Segment_head_extends_fragment_buried
;;

(** created by ./do_entitysum_symbol_t_ml.sh fragment_head 12 January 2011. *)

