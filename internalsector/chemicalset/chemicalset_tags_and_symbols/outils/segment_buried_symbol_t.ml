(** {3 A Symbol for a Segment_buried.} *)


(** {6 Modules.} *)

module B11s_t = Block_oneone_symbol_t


(** {6 Typing.} *)

type segment_buried_symbol =
  | Segment_oneone
  | Block_oneone_symbol of B11s_t.block_oneone_symbol
  | Segment_leftextended
  | Polysegment
;;


(** created by ./generator segment_buried t symbol at 19:13 25 Apr 2011. *)



