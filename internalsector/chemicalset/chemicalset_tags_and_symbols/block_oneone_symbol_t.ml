(** {3 A Symbol for a Block_oneone.} *)

(** {6 Modules.} *)

module Bsss_t = Block_onesingleonesingle_symbol_t
module Bsds_t = Block_onesingleonedouble_symbol_t
module Bsts_t = Block_onesingleonetriple_symbol_t
module Bdss_t = Block_onedoubleonesingle_symbol_t
module Bdds_t = Block_onedoubleonedouble_symbol_t
module Btss_t = Block_onetripleonesingle_symbol_t

(** {6 Type.} *)

type block_oneone_symbol =
  | Block_onesingleonesingle_symbol of Bsss_t.block_onesingleonesingle_symbol
  | Block_onesingleonedouble_symbol of Bsds_t.block_onesingleonedouble_symbol
  | Block_onesingleonetriple_symbol of Bsts_t.block_onesingleonetriple_symbol
  | Block_onedoubleonesingle_symbol of Bdss_t.block_onedoubleonesingle_symbol
  | Block_onedoubleonedouble_symbol of Bdds_t.block_onedoubleonedouble_symbol
  | Block_onetripleonesingle_symbol of Btss_t.block_onetripleonesingle_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh block_oneone 12 January 2011. *)

