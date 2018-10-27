(** {3 A Symbol for a Fragment_leaf.} *)

(** {6 Modules.} *)

 (* fragment_halfbridgetail is a bare constructor no module can be defined *)
 (* fragment_halfbridge is a bare constructor no module can be defined *)
module Bzfs_t = Block_zerofork_symbol_t
 (* fragment_zerofork is a bare constructor no module can be defined *)
 (* segment_head_extends_fragment_buried is a bare constructor no module can be defined *)

(** {6 Type.} *)

type fragment_leaf_symbol =
  | Fragment_halfbridgetail
  | Fragment_halfbridge
  | Block_zerofork_symbol of Bzfs_t.block_zerofork_symbol
  | Fragment_zerofork
  | Segment_head_extends_fragment_buried
;;

(** created by ./do_entitysum_symbol_t_ml.sh fragment_leaf 12 January 2011. *)

