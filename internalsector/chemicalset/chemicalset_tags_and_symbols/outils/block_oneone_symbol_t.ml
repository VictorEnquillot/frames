(** {3 A Symbol for a Block_oneone.} *)


(** {6 Modules.} *)

module B1s1ss_t = Block_onesingleonesingle_symbol_t
module B1s1ds_t = Block_onesingleonedouble_symbol_t
module B1s1ts_t = Block_onesingleonetriple_symbol_t
module B1d1ss_t = Block_onedoubleonesingle_symbol_t
module B1d1ds_t = Block_onedoubleonedouble_symbol_t
module B1s_t = Block_onetripleonesingle_symbol_t


(** {6 Typing.} *)

type block_oneone_symbol =
  | Block_onesingleonesingle_symbol of B1s1ss_t.block_onesingleonesingle_symbol
  | Block_onesingleonedouble_symbol of B1s1ds_t.block_onesingleonedouble_symbol
  | Block_onesingleonetriple_symbol of B1s1ts_t.block_onesingleonetriple_symbol
  | Block_onedoubleonesingle_symbol of B1d1ss_t.block_onedoubleonesingle_symbol
  | Block_onedoubleonedouble_symbol of B1d1ds_t.block_onedoubleonedouble_symbol
  | Block_onetripleonesingle_symbol of B1s_t.block_onetripleonesingle_symbol
;;


(** created by ./generator block_oneone t symbol at 19:13 25 Apr 2011. *)



