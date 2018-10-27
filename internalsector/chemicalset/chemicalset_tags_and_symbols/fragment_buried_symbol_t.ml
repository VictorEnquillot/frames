(** {3 A Symbol for a Fragment_buried.} *)

(** {6 Modules.} *)

 (* fragment_onefork is a bare constructor no module can be defined *)
module Bofs_t = Block_onefork_symbol_t
 (* polysegment_buried_leftextended is a bare constructor no module can be defined *)

(** {6 Type.} *)

type fragment_buried_symbol =
  | Fragment_onefork
  | Block_onefork_symbol of Bofs_t.block_onefork_symbol
  | Polysegment_buried_leftextended
;;

(** created by ./do_entitysum_symbol_t_ml.sh fragment_buried 12 January 2011. *)

