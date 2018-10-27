(** {3 A Symbol for a Block_onebifork.} *)


(** {6 Modules.} *)

module B1sbs_t = Block_onesinglebifork_symbol_t
module B1dbs_t = Block_onedoublebifork_symbol_t


(** {6 Typing.} *)

type block_onebifork_symbol =
  | Block_onesinglebifork_symbol of B1sbs_t.block_onesinglebifork_symbol
  | Block_onedoublebifork_symbol of B1dbs_t.block_onedoublebifork_symbol
;;


(** created by ./generator block_onebifork t symbol at 19:13 25 Apr 2011. *)



