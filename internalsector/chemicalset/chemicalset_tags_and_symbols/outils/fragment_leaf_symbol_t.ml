(** {3 A Symbol for a Fragment_leaf.} *)


(** {6 Modules.} *)

module B0s_t = Block_zerofork_symbol_t


(** {6 Typing.} *)

type fragment_leaf_symbol =
  | Fragment_halfbridgetail
  | Fragment_halfbridge
  | Block_zerofork_symbol of B0s_t.block_zerofork_symbol
  | Fragment_zerofork
  | Segment_head_extends_fragment_buried
;;


(** created by ./generator fragment_leaf t symbol at 19:13 25 Apr 2011. *)



