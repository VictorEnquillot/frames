(** {3 A Symbol for a Segment_head.} *)


(** {6 Modules.} *)

module B01s_t = Block_zeroone_symbol_t


(** {6 Typing.} *)

type segment_head_symbol =
  | Segment_zeroone
  | Block_zeroone_symbol of B01s_t.block_zeroone_symbol
  | Segment_rightextended
;;


(** created by ./generator segment_head t symbol at 19:13 25 Apr 2011. *)



