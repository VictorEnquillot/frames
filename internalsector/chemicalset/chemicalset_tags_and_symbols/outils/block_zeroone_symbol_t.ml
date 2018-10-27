(** {3 A Symbol for a Block_zeroone.} *)


(** {6 Modules.} *)

module B01ss_t = Block_zeroonesingle_symbol_t
module B01ds_t = Block_zeroonedouble_symbol_t
module B01ts_t = Block_zeroonetriple_symbol_t


(** {6 Typing.} *)

type block_zeroone_symbol =
  | Block_zeroonesingle_symbol of B01ss_t.block_zeroonesingle_symbol
  | Block_zeroonedouble_symbol of B01ds_t.block_zeroonedouble_symbol
  | Block_zeroonetriple_symbol of B01ts_t.block_zeroonetriple_symbol
  | Block_zeroonehalfbridge
;;


(** created by ./generator block_zeroone t symbol at 19:13 25 Apr 2011. *)



