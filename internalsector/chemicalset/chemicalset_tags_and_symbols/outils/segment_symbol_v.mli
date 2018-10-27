(** {3 A Symbol for a Segment.} *)


let name :
  Segment_symbol_t.segment_symbol ->
    string
;;


val print : Format.Formatter ->
  Segment_symbol_t.segment_symbol ->
    unit
;;


(** {6 Extracting.} *)

val segment_symbol_off_segment_head_symbol :
  Segment_symbol_t.segment_symbol ->
    Shs_v
;;

val segment_symbol_off_block_zeroone_symbol :
  Segment_symbol_t.segment_symbol ->
    B01s_v
;;

val segment_symbol_off_block_zeroonesingle_symbol :
  Segment_symbol_t.segment_symbol ->
    B01ss_v
;;

val segment_symbol_off_block_zeroonedouble_symbol :
  Segment_symbol_t.segment_symbol ->
    B01ds_v
;;

val segment_symbol_off_block_zeroonetriple_symbol :
  Segment_symbol_t.segment_symbol ->
    B01ts_v
;;

val segment_symbol_off_segment_buried_symbol :
  Segment_symbol_t.segment_symbol ->
    Sbs_v
;;

val segment_symbol_off_block_oneone_symbol :
  Segment_symbol_t.segment_symbol ->
    B11s_v
;;

val segment_symbol_off_block_onesingleonesingle_symbol :
  Segment_symbol_t.segment_symbol ->
    B1s1ss_v
;;

val segment_symbol_off_block_onesingleonedouble_symbol :
  Segment_symbol_t.segment_symbol ->
    B1s1ds_v
;;

val segment_symbol_off_block_onesingleonetriple_symbol :
  Segment_symbol_t.segment_symbol ->
    B1s1ts_v
;;

val segment_symbol_off_block_onedoubleonesingle_symbol :
  Segment_symbol_t.segment_symbol ->
    B1d1ss_v
;;

val segment_symbol_off_block_onedoubleonedouble_symbol :
  Segment_symbol_t.segment_symbol ->
    B1d1ds_v
;;

val segment_symbol_off_block_onetripleonesingle_symbol :
  Segment_symbol_t.segment_symbol ->
    B1s_v
;;


(** {6 Querying.} *)

val is_segment_symbol_off_segment_head_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_zeroone_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_zeroonesingle_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_zeroonedouble_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_zeroonetriple_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_segment_buried_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_oneone_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_onesingleonesingle_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_onesingleonedouble_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_onesingleonetriple_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_onedoubleonesingle_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_onedoubleonedouble_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;

val is_segment_symbol_off_block_onetripleonesingle_symbol :
  Segment_symbol_t.segment_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val segment_symbol_of_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    Ses_v
;;

val segment_zeroone : Segment_symbol_t.segment_symbol;;

val segment_symbol_of_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    Ses_v
;;

val segment_symbol_of_block_zeroonesingle_symbol :
  Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol ->
    Ses_v
;;

val ch2_zs : Segment_symbol_t.segment_symbol;;

val ch3_zs : Segment_symbol_t.segment_symbol;;

val coc2_zs : Segment_symbol_t.segment_symbol;;

val coh_zs : Segment_symbol_t.segment_symbol;;

val nh2_zs : Segment_symbol_t.segment_symbol;;

val nh3_zs_1p : Segment_symbol_t.segment_symbol;;

val no2_zs : Segment_symbol_t.segment_symbol;;

val no_zs : Segment_symbol_t.segment_symbol;;

val oh_zs : Segment_symbol_t.segment_symbol;;

val sh_zs : Segment_symbol_t.segment_symbol;;

val segment_symbol_of_block_zeroonedouble_symbol :
  Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol ->
    Ses_v
;;

val ch2_d : Segment_symbol_t.segment_symbol;;

val co_d : Segment_symbol_t.segment_symbol;;

val nh_d : Segment_symbol_t.segment_symbol;;

val nh2_d_1p : Segment_symbol_t.segment_symbol;;

val segment_symbol_of_block_zeroonetriple_symbol :
  Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol ->
    Ses_v
;;

val ch_t : Segment_symbol_t.segment_symbol;;

val block_zeroonehalfbridge : Segment_symbol_t.segment_symbol;;

val segment_rightextended : Segment_symbol_t.segment_symbol;;

val segment_symbol_of_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    Ses_v
;;

val segment_oneone : Segment_symbol_t.segment_symbol;;

val segment_symbol_of_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Ses_v
;;

val segment_symbol_of_block_onesingleonesingle_symbol :
  Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol ->
    Ses_v
;;

val ch2_ss : Segment_symbol_t.segment_symbol;;

val co_ss : Segment_symbol_t.segment_symbol;;

val nh2_ss_1p : Segment_symbol_t.segment_symbol;;

val nh_ss : Segment_symbol_t.segment_symbol;;

val o_ss : Segment_symbol_t.segment_symbol;;

val s_ss : Segment_symbol_t.segment_symbol;;

val segment_symbol_of_block_onesingleonedouble_symbol :
  Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol ->
    Ses_v
;;

val ch_sd : Segment_symbol_t.segment_symbol;;

val n_sd : Segment_symbol_t.segment_symbol;;

val n_sd_1p : Segment_symbol_t.segment_symbol;;

val segment_symbol_of_block_onesingleonetriple_symbol :
  Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol ->
    Ses_v
;;

val c_st : Segment_symbol_t.segment_symbol;;

val n_st_1p : Segment_symbol_t.segment_symbol;;

val segment_symbol_of_block_onedoubleonesingle_symbol :
  Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol ->
    Ses_v
;;

val ch_ds : Segment_symbol_t.segment_symbol;;

val n_ds : Segment_symbol_t.segment_symbol;;

val nh_ds_1p : Segment_symbol_t.segment_symbol;;

val segment_symbol_of_block_onedoubleonedouble_symbol :
  Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol ->
    Ses_v
;;

val c_dd : Segment_symbol_t.segment_symbol;;

val n_dd_1p : Segment_symbol_t.segment_symbol;;

val segment_symbol_of_block_onetripleonesingle_symbol :
  Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol ->
    Ses_v
;;

val c_ts : Segment_symbol_t.segment_symbol;;

val n_ts_1p : Segment_symbol_t.segment_symbol;;

val segment_leftextended : Segment_symbol_t.segment_symbol;;

val polysegment : Segment_symbol_t.segment_symbol;;



(** created by ./generator segment v symbol at 9:28 26 Apr 2011. *)



