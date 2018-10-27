(** {3 A Symbol for a Fragment_buried.} *)


(** {6 Modules.} *)

module B1s_t = Block_onefork_symbol_t


(** {6 Typing.} *)

type fragment_buried_symbol =
  | Fragment_onefork
  | Block_onefork_symbol of B1s_t.block_onefork_symbol
  | Polysegment_buried_leftextended
;;


(** created by ./generator fragment_buried t symbol at 19:13 25 Apr 2011. *)



