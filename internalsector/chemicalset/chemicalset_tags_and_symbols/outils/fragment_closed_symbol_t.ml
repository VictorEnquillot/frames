(** {3 A Symbol for a Fragment_closed.} *)


(** {6 Modules.} *)

module B00s_t = Block_zerozero_symbol_t


(** {6 Typing.} *)

type fragment_closed_symbol =
  | Fragment_zerozero
  | Block_zerozero_symbol of B00s_t.block_zerozero_symbol
  | Segment_head_extends_fragment_leaf
;;


(** created by ./generator fragment_closed t symbol at 19:13 25 Apr 2011. *)



