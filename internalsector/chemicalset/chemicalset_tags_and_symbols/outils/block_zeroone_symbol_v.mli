(** {3 A Symbol for a Block_zeroone.} *)


let name :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    string
;;


val print : Format.Formatter ->
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    unit
;;


(** {6 Extracting.} *)

val block_zeroone_symbol_off_block_zeroonesingle_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    B01ss_v
;;

val block_zeroone_symbol_off_block_zeroonedouble_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    B01ds_v
;;

val block_zeroone_symbol_off_block_zeroonetriple_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    B01ts_v
;;


(** {6 Querying.} *)

val is_block_zeroone_symbol_off_block_zeroonesingle_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    bool
;;

val is_block_zeroone_symbol_off_block_zeroonedouble_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    bool
;;

val is_block_zeroone_symbol_off_block_zeroonetriple_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val block_zeroone_symbol_of_block_zeroonesingle_symbol :
  Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol ->
    B01s_v
;;

val ch2_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

val ch3_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

val coc2_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

val coh_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

val nh2_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

val nh3_zs_1p : Block_zeroone_symbol_t.block_zeroone_symbol;;

val no2_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

val no_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

val oh_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

val sh_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

val block_zeroone_symbol_of_block_zeroonedouble_symbol :
  Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol ->
    B01s_v
;;

val ch2_d : Block_zeroone_symbol_t.block_zeroone_symbol;;

val co_d : Block_zeroone_symbol_t.block_zeroone_symbol;;

val nh_d : Block_zeroone_symbol_t.block_zeroone_symbol;;

val nh2_d_1p : Block_zeroone_symbol_t.block_zeroone_symbol;;

val block_zeroone_symbol_of_block_zeroonetriple_symbol :
  Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol ->
    B01s_v
;;

val ch_t : Block_zeroone_symbol_t.block_zeroone_symbol;;

val block_zeroonehalfbridge : Block_zeroone_symbol_t.block_zeroone_symbol;;



(** created by ./generator block_zeroone v symbol at 9:28 26 Apr 2011. *)



