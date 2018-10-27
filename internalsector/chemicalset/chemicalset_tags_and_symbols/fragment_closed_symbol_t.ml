(** {3 A Symbol for a Fragment_closed.} *)

(** {6 Modules.} *)

 (* fragment_zerozero is a bare constructor no module can be defined *)
module Bzzs_t = Block_zerozero_symbol_t
 (* segment_head_extends_fragment_leaf is a bare constructor no module can be defined *)

(** {6 Type.} *)

type fragment_closed_symbol =
  | Fragment_zerozero
  | Block_zerozero_symbol of Bzzs_t.block_zerozero_symbol
  | Segment_head_extends_fragment_leaf
;;

(** created by ./do_entitysum_symbol_t_ml.sh fragment_closed 12 January 2011. *)

