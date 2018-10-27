(** {3 A Symbol for a Block_oneend.} *)


(** {6 Modules.} *)

module B1s_t = Block_onefork_symbol_t
module B10s_t = Block_onezero_symbol_t


(** {6 Typing.} *)

type block_oneend_symbol =
  | Block_onefork_symbol of B1s_t.block_onefork_symbol
  | Block_onezero_symbol of B10s_t.block_onezero_symbol
;;


(** created by ./generator block_oneend t symbol at 19:13 25 Apr 2011. *)



