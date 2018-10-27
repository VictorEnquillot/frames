(** {3 A Symbol for a Segment_buried.} *)

(** {6 Displaying.} *)

val name :
  Segment_buried_symbol_t.segment_buried_symbol ->
    string
;;

val print : Format.formatter ->
  Segment_buried_symbol_t.segment_buried_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Segment_oneone from Segment_buried.} *)

(* No Extraction from doublet segment_oneone. *)

(** {6 Extracting Block_oneone from Segment_buried.} *)

val block_oneone_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {9 Extracting Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

val block_onesingleonesingle_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol
;;

(** {12 Extracting Ch2_ss from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from ch2_ss 0. *)

(** {12 Extracting Co_ss from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from co_ss 0. *)

(** {12 Extracting Nh2_ss_1p from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from nh2_ss_1p 0. *)

(** {12 Extracting Nh_ss from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from nh_ss 0. *)

(** {12 Extracting O_ss from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from o_ss 0. *)

(** {12 Extracting S_ss from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from s_ss 0. *)

(** {9 Extracting Block_onesingleonedouble from Block_oneone from Segment_buried.} *)

val block_onesingleonedouble_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol
;;

(** {12 Extracting Ch_sd from Block_onesingleonedouble from Block_oneone from Segment_buried.} *)

(* No Extraction from ch_sd 0. *)

(** {12 Extracting N_sd from Block_onesingleonedouble from Block_oneone from Segment_buried.} *)

(* No Extraction from n_sd 0. *)

(** {12 Extracting N_sd_1p from Block_onesingleonedouble from Block_oneone from Segment_buried.} *)

(* No Extraction from n_sd_1p 0. *)

(** {9 Extracting Block_onesingleonetriple from Block_oneone from Segment_buried.} *)

val block_onesingleonetriple_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol
;;

(** {12 Extracting C_st from Block_onesingleonetriple from Block_oneone from Segment_buried.} *)

(* No Extraction from c_st 0. *)

(** {12 Extracting N_st_1p from Block_onesingleonetriple from Block_oneone from Segment_buried.} *)

(* No Extraction from n_st_1p 0. *)

(** {9 Extracting Block_onedoubleonesingle from Block_oneone from Segment_buried.} *)

val block_onedoubleonesingle_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol
;;

(** {12 Extracting Ch_ds from Block_onedoubleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from ch_ds 0. *)

(** {12 Extracting N_ds from Block_onedoubleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from n_ds 0. *)

(** {12 Extracting Nh_ds_1p from Block_onedoubleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from nh_ds_1p 0. *)

(** {9 Extracting Block_onedoubleonedouble from Block_oneone from Segment_buried.} *)

val block_onedoubleonedouble_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol
;;

(** {12 Extracting C_dd from Block_onedoubleonedouble from Block_oneone from Segment_buried.} *)

(* No Extraction from c_dd 0. *)

(** {12 Extracting N_dd_1p from Block_onedoubleonedouble from Block_oneone from Segment_buried.} *)

(* No Extraction from n_dd_1p 0. *)

(** {9 Extracting Block_onetripleonesingle from Block_oneone from Segment_buried.} *)

val block_onetripleonesingle_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol
;;

(** {12 Extracting C_ts from Block_onetripleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from c_ts 0. *)

(** {12 Extracting N_ts_1p from Block_onetripleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from n_ts_1p 0. *)

(** {6 Extracting Segment_leftextended from Segment_buried.} *)

(* No Extraction from doublet segment_leftextended. *)

(** {6 Extracting Polysegment from Segment_buried.} *)

(* No Extraction from doublet polysegment. *)

(** {6 Querying.} *)

(** {6 Querying Segment_oneone in Segment_buried.} *)

(* No Query from segment_oneone 0. *)

(** {6 Querying Block_oneone in Segment_buried.} *)

val is_block_oneone_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
  bool
;;

(** {9 Querying Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

val is_block_onesingleonesingle_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
  bool
;;

(** {12 Querying Ch2_ss in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from ch2_ss 0. *)

(** {12 Querying Co_ss in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from co_ss 0. *)

(** {12 Querying Nh2_ss_1p in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from nh2_ss_1p 0. *)

(** {12 Querying Nh_ss in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from nh_ss 0. *)

(** {12 Querying O_ss in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from o_ss 0. *)

(** {12 Querying S_ss in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from s_ss 0. *)

(** {9 Querying Block_onesingleonedouble in Block_oneone in Segment_buried.} *)

val is_block_onesingleonedouble_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
  bool
;;

(** {12 Querying Ch_sd in Block_onesingleonedouble in Block_oneone in Segment_buried.} *)

(* No Query from ch_sd 0. *)

(** {12 Querying N_sd in Block_onesingleonedouble in Block_oneone in Segment_buried.} *)

(* No Query from n_sd 0. *)

(** {12 Querying N_sd_1p in Block_onesingleonedouble in Block_oneone in Segment_buried.} *)

(* No Query from n_sd_1p 0. *)

(** {9 Querying Block_onesingleonetriple in Block_oneone in Segment_buried.} *)

val is_block_onesingleonetriple_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
  bool
;;

(** {12 Querying C_st in Block_onesingleonetriple in Block_oneone in Segment_buried.} *)

(* No Query from c_st 0. *)

(** {12 Querying N_st_1p in Block_onesingleonetriple in Block_oneone in Segment_buried.} *)

(* No Query from n_st_1p 0. *)

(** {9 Querying Block_onedoubleonesingle in Block_oneone in Segment_buried.} *)

val is_block_onedoubleonesingle_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
  bool
;;

(** {12 Querying Ch_ds in Block_onedoubleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from ch_ds 0. *)

(** {12 Querying N_ds in Block_onedoubleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from n_ds 0. *)

(** {12 Querying Nh_ds_1p in Block_onedoubleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from nh_ds_1p 0. *)

(** {9 Querying Block_onedoubleonedouble in Block_oneone in Segment_buried.} *)

val is_block_onedoubleonedouble_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
  bool
;;

(** {12 Querying C_dd in Block_onedoubleonedouble in Block_oneone in Segment_buried.} *)

(* No Query from c_dd 0. *)

(** {12 Querying N_dd_1p in Block_onedoubleonedouble in Block_oneone in Segment_buried.} *)

(* No Query from n_dd_1p 0. *)

(** {9 Querying Block_onetripleonesingle in Block_oneone in Segment_buried.} *)

val is_block_onetripleonesingle_symbol_off_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
  bool
;;

(** {12 Querying C_ts in Block_onetripleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from c_ts 0. *)

(** {12 Querying N_ts_1p in Block_onetripleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from n_ts_1p 0. *)

(** {6 Querying Segment_leftextended in Segment_buried.} *)

(* No Query from segment_leftextended 0. *)

(** {6 Querying Polysegment in Segment_buried.} *)

(* No Query from polysegment 0. *)

(** {6 Upgrading from Segment_oneone to Segment_buried.} *)

val segment_oneone : Segment_buried_symbol_t.segment_buried_symbol;;

(** {6 Upgrading from Block_oneone to Segment_buried.} *)

val segment_buried_symbol_of_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Segment_buried_symbol_t.segment_buried_symbol
;;

(** {9 Upgrading from Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

val segment_buried_symbol_of_block_onesingleonesingle_symbol :
  Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol ->
    Segment_buried_symbol_t.segment_buried_symbol
;;

(** {12 Upgrading from Ch2_ss through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

val ch2_ss : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from Co_ss through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

val co_ss : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from Nh2_ss_1p through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

val nh2_ss_1p : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from Nh_ss through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

val nh_ss : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from O_ss through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

val o_ss : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from S_ss through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

val s_ss : Segment_buried_symbol_t.segment_buried_symbol;;
(** {9 Upgrading from Block_onesingleonedouble through Block_oneone to Segment_buried.} *)

val segment_buried_symbol_of_block_onesingleonedouble_symbol :
  Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol ->
    Segment_buried_symbol_t.segment_buried_symbol
;;

(** {12 Upgrading from Ch_sd through Block_onesingleonedouble through Block_oneone to Segment_buried.} *)

val ch_sd : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from N_sd through Block_onesingleonedouble through Block_oneone to Segment_buried.} *)

val n_sd : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from N_sd_1p through Block_onesingleonedouble through Block_oneone to Segment_buried.} *)

val n_sd_1p : Segment_buried_symbol_t.segment_buried_symbol;;
(** {9 Upgrading from Block_onesingleonetriple through Block_oneone to Segment_buried.} *)

val segment_buried_symbol_of_block_onesingleonetriple_symbol :
  Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol ->
    Segment_buried_symbol_t.segment_buried_symbol
;;

(** {12 Upgrading from C_st through Block_onesingleonetriple through Block_oneone to Segment_buried.} *)

val c_st : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from N_st_1p through Block_onesingleonetriple through Block_oneone to Segment_buried.} *)

val n_st_1p : Segment_buried_symbol_t.segment_buried_symbol;;
(** {9 Upgrading from Block_onedoubleonesingle through Block_oneone to Segment_buried.} *)

val segment_buried_symbol_of_block_onedoubleonesingle_symbol :
  Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol ->
    Segment_buried_symbol_t.segment_buried_symbol
;;

(** {12 Upgrading from Ch_ds through Block_onedoubleonesingle through Block_oneone to Segment_buried.} *)

val ch_ds : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from N_ds through Block_onedoubleonesingle through Block_oneone to Segment_buried.} *)

val n_ds : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from Nh_ds_1p through Block_onedoubleonesingle through Block_oneone to Segment_buried.} *)

val nh_ds_1p : Segment_buried_symbol_t.segment_buried_symbol;;
(** {9 Upgrading from Block_onedoubleonedouble through Block_oneone to Segment_buried.} *)

val segment_buried_symbol_of_block_onedoubleonedouble_symbol :
  Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol ->
    Segment_buried_symbol_t.segment_buried_symbol
;;

(** {12 Upgrading from C_dd through Block_onedoubleonedouble through Block_oneone to Segment_buried.} *)

val c_dd : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from N_dd_1p through Block_onedoubleonedouble through Block_oneone to Segment_buried.} *)

val n_dd_1p : Segment_buried_symbol_t.segment_buried_symbol;;
(** {9 Upgrading from Block_onetripleonesingle through Block_oneone to Segment_buried.} *)

val segment_buried_symbol_of_block_onetripleonesingle_symbol :
  Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol ->
    Segment_buried_symbol_t.segment_buried_symbol
;;

(** {12 Upgrading from C_ts through Block_onetripleonesingle through Block_oneone to Segment_buried.} *)

val c_ts : Segment_buried_symbol_t.segment_buried_symbol;;
(** {12 Upgrading from N_ts_1p through Block_onetripleonesingle through Block_oneone to Segment_buried.} *)

val n_ts_1p : Segment_buried_symbol_t.segment_buried_symbol;;
(** {6 Upgrading from Segment_leftextended to Segment_buried.} *)

val segment_leftextended : Segment_buried_symbol_t.segment_buried_symbol;;

(** {6 Upgrading from Polysegment to Segment_buried.} *)

val polysegment : Segment_buried_symbol_t.segment_buried_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh segment_buried 12 January 2011. *)

