(** {3 A Symbol for a Block_oneone.} *)


let name :
  Block_oneone_symbol_t.block_oneone_symbol ->
    string
;;


val print : Format.Formatter ->
  Block_oneone_symbol_t.block_oneone_symbol ->
    unit
;;


(** {6 Extracting.} *)

val block_oneone_symbol_off_block_onesingleonesingle_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    B1s1ss_v
;;

val block_oneone_symbol_off_block_onesingleonedouble_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    B1s1ds_v
;;

val block_oneone_symbol_off_block_onesingleonetriple_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    B1s1ts_v
;;

val block_oneone_symbol_off_block_onedoubleonesingle_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    B1d1ss_v
;;

val block_oneone_symbol_off_block_onedoubleonedouble_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    B1d1ds_v
;;

val block_oneone_symbol_off_block_onetripleonesingle_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    B1s_v
;;


(** {6 Querying.} *)

val is_block_oneone_symbol_off_block_onesingleonesingle_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    bool
;;

val is_block_oneone_symbol_off_block_onesingleonedouble_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    bool
;;

val is_block_oneone_symbol_off_block_onesingleonetriple_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    bool
;;

val is_block_oneone_symbol_off_block_onedoubleonesingle_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    bool
;;

val is_block_oneone_symbol_off_block_onedoubleonedouble_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    bool
;;

val is_block_oneone_symbol_off_block_onetripleonesingle_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val block_oneone_symbol_of_block_onesingleonesingle_symbol :
  Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol ->
    B11s_v
;;

val ch2_ss : Block_oneone_symbol_t.block_oneone_symbol;;

val co_ss : Block_oneone_symbol_t.block_oneone_symbol;;

val nh2_ss_1p : Block_oneone_symbol_t.block_oneone_symbol;;

val nh_ss : Block_oneone_symbol_t.block_oneone_symbol;;

val o_ss : Block_oneone_symbol_t.block_oneone_symbol;;

val s_ss : Block_oneone_symbol_t.block_oneone_symbol;;

val block_oneone_symbol_of_block_onesingleonedouble_symbol :
  Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol ->
    B11s_v
;;

val ch_sd : Block_oneone_symbol_t.block_oneone_symbol;;

val n_sd : Block_oneone_symbol_t.block_oneone_symbol;;

val n_sd_1p : Block_oneone_symbol_t.block_oneone_symbol;;

val block_oneone_symbol_of_block_onesingleonetriple_symbol :
  Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol ->
    B11s_v
;;

val c_st : Block_oneone_symbol_t.block_oneone_symbol;;

val n_st_1p : Block_oneone_symbol_t.block_oneone_symbol;;

val block_oneone_symbol_of_block_onedoubleonesingle_symbol :
  Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol ->
    B11s_v
;;

val ch_ds : Block_oneone_symbol_t.block_oneone_symbol;;

val n_ds : Block_oneone_symbol_t.block_oneone_symbol;;

val nh_ds_1p : Block_oneone_symbol_t.block_oneone_symbol;;

val block_oneone_symbol_of_block_onedoubleonedouble_symbol :
  Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol ->
    B11s_v
;;

val c_dd : Block_oneone_symbol_t.block_oneone_symbol;;

val n_dd_1p : Block_oneone_symbol_t.block_oneone_symbol;;

val block_oneone_symbol_of_block_onetripleonesingle_symbol :
  Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol ->
    B11s_v
;;

val c_ts : Block_oneone_symbol_t.block_oneone_symbol;;

val n_ts_1p : Block_oneone_symbol_t.block_oneone_symbol;;



(** created by ./generator block_oneone v symbol at 9:28 26 Apr 2011. *)



