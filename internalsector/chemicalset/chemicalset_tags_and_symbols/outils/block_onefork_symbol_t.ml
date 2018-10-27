(** {3 A Symbol for a Block_onefork.} *)


(** {6 Modules.} *)

module B1bs_t = Block_onebifork_symbol_t
module B1ts_t = Block_onetrifork_symbol_t


(** {6 Typing.} *)

type block_onefork_symbol =
  | Block_onebifork_symbol of B1bs_t.block_onebifork_symbol
  | Block_onetrifork_symbol of B1ts_t.block_onetrifork_symbol
;;


(** created by ./generator block_onefork t symbol at 19:13 25 Apr 2011. *)



