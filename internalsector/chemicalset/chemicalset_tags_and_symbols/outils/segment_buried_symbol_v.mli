(** {3 A Symbol for a Segment_buried.} *)


let name :
  Segment_buried_symbol_t.segment_buried_symbol ->
    string
;;


val print : Format.Formatter ->
  Segment_buried_symbol_t.segment_buried_symbol ->
    unit
;;


(** {6 Extracting.} *)

val segment_buried_symbol_off_block_oneone_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    B11s_v
;;

val segment_buried_symbol_off_block_onesingleonesingle_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    B1s1ss_v
;;

val segment_buried_symbol_off_block_onesingleonedouble_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    B1s1ds_v
;;

val segment_buried_symbol_off_block_onesingleonetriple_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    B1s1ts_v
;;

val segment_buried_symbol_off_block_onedoubleonesingle_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    B1d1ss_v
;;

val segment_buried_symbol_off_block_onedoubleonedouble_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    B1d1ds_v
;;

val segment_buried_symbol_off_block_onetripleonesingle_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    B1s_v
;;


(** {6 Querying.} *)

val is_segment_buried_symbol_off_block_oneone_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    bool
;;

val is_segment_buried_symbol_off_block_onesingleonesingle_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    bool
;;

val is_segment_buried_symbol_off_block_onesingleonedouble_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    bool
;;

val is_segment_buried_symbol_off_block_onesingleonetriple_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    bool
;;

val is_segment_buried_symbol_off_block_onedoubleonesingle_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    bool
;;

val is_segment_buried_symbol_off_block_onedoubleonedouble_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    bool
;;

val is_segment_buried_symbol_off_block_onetripleonesingle_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val segment_oneone : Segment_buried_symbol_t.segment_buried_symbol;;

val segment_buried_symbol_of_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Sbs_v
;;

val segment_buried_symbol_of_block_onesingleonesingle_symbol :
  Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol ->
    Sbs_v
;;

val ch2_ss : Segment_buried_symbol_t.segment_buried_symbol;;

val co_ss : Segment_buried_symbol_t.segment_buried_symbol;;

val nh2_ss_1p : Segment_buried_symbol_t.segment_buried_symbol;;

val nh_ss : Segment_buried_symbol_t.segment_buried_symbol;;

val o_ss : Segment_buried_symbol_t.segment_buried_symbol;;

val s_ss : Segment_buried_symbol_t.segment_buried_symbol;;

val segment_buried_symbol_of_block_onesingleonedouble_symbol :
  Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol ->
    Sbs_v
;;

val ch_sd : Segment_buried_symbol_t.segment_buried_symbol;;

val n_sd : Segment_buried_symbol_t.segment_buried_symbol;;

val n_sd_1p : Segment_buried_symbol_t.segment_buried_symbol;;

val segment_buried_symbol_of_block_onesingleonetriple_symbol :
  Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol ->
    Sbs_v
;;

val c_st : Segment_buried_symbol_t.segment_buried_symbol;;

val n_st_1p : Segment_buried_symbol_t.segment_buried_symbol;;

val segment_buried_symbol_of_block_onedoubleonesingle_symbol :
  Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol ->
    Sbs_v
;;

val ch_ds : Segment_buried_symbol_t.segment_buried_symbol;;

val n_ds : Segment_buried_symbol_t.segment_buried_symbol;;

val nh_ds_1p : Segment_buried_symbol_t.segment_buried_symbol;;

val segment_buried_symbol_of_block_onedoubleonedouble_symbol :
  Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol ->
    Sbs_v
;;

val c_dd : Segment_buried_symbol_t.segment_buried_symbol;;

val n_dd_1p : Segment_buried_symbol_t.segment_buried_symbol;;

val segment_buried_symbol_of_block_onetripleonesingle_symbol :
  Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol ->
    Sbs_v
;;

val c_ts : Segment_buried_symbol_t.segment_buried_symbol;;

val n_ts_1p : Segment_buried_symbol_t.segment_buried_symbol;;

val segment_leftextended : Segment_buried_symbol_t.segment_buried_symbol;;

val polysegment : Segment_buried_symbol_t.segment_buried_symbol;;



(** created by ./generator segment_buried v symbol at 9:28 26 Apr 2011. *)



