(** {3 A Symbol for a Block_oneone.} *)

(** {6 Displaying.} *)

val name :
  Block_oneone_symbol_t.block_oneone_symbol ->
    string
;;

val print : Format.formatter ->
  Block_oneone_symbol_t.block_oneone_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Block_onesingleonesingle from Block_oneone.} *)

val block_onesingleonesingle_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol
;;

(** {9 Extracting Ch2_ss from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from doublet ch2_ss. *)

(** {9 Extracting Co_ss from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from doublet co_ss. *)

(** {9 Extracting Nh2_ss_1p from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from doublet nh2_ss_1p. *)

(** {9 Extracting Nh_ss from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from doublet nh_ss. *)

(** {9 Extracting O_ss from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from doublet o_ss. *)

(** {9 Extracting S_ss from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from doublet s_ss. *)

(** {6 Extracting Block_onesingleonedouble from Block_oneone.} *)

val block_onesingleonedouble_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol
;;

(** {9 Extracting Ch_sd from Block_onesingleonedouble from Block_oneone.} *)

(* No Extraction from doublet ch_sd. *)

(** {9 Extracting N_sd from Block_onesingleonedouble from Block_oneone.} *)

(* No Extraction from doublet n_sd. *)

(** {9 Extracting N_sd_1p from Block_onesingleonedouble from Block_oneone.} *)

(* No Extraction from doublet n_sd_1p. *)

(** {6 Extracting Block_onesingleonetriple from Block_oneone.} *)

val block_onesingleonetriple_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol
;;

(** {9 Extracting C_st from Block_onesingleonetriple from Block_oneone.} *)

(* No Extraction from doublet c_st. *)

(** {9 Extracting N_st_1p from Block_onesingleonetriple from Block_oneone.} *)

(* No Extraction from doublet n_st_1p. *)

(** {6 Extracting Block_onedoubleonesingle from Block_oneone.} *)

val block_onedoubleonesingle_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol
;;

(** {9 Extracting Ch_ds from Block_onedoubleonesingle from Block_oneone.} *)

(* No Extraction from doublet ch_ds. *)

(** {9 Extracting N_ds from Block_onedoubleonesingle from Block_oneone.} *)

(* No Extraction from doublet n_ds. *)

(** {9 Extracting Nh_ds_1p from Block_onedoubleonesingle from Block_oneone.} *)

(* No Extraction from doublet nh_ds_1p. *)

(** {6 Extracting Block_onedoubleonedouble from Block_oneone.} *)

val block_onedoubleonedouble_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol
;;

(** {9 Extracting C_dd from Block_onedoubleonedouble from Block_oneone.} *)

(* No Extraction from doublet c_dd. *)

(** {9 Extracting N_dd_1p from Block_onedoubleonedouble from Block_oneone.} *)

(* No Extraction from doublet n_dd_1p. *)

(** {6 Extracting Block_onetripleonesingle from Block_oneone.} *)

val block_onetripleonesingle_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol
;;

(** {9 Extracting C_ts from Block_onetripleonesingle from Block_oneone.} *)

(* No Extraction from doublet c_ts. *)

(** {9 Extracting N_ts_1p from Block_onetripleonesingle from Block_oneone.} *)

(* No Extraction from doublet n_ts_1p. *)

(** {6 Querying.} *)

(** {6 Querying Block_onesingleonesingle in Block_oneone.} *)

val is_block_onesingleonesingle_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
  bool
;;

(** {9 Querying Ch2_ss in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from ch2_ss 0. *)

(** {9 Querying Co_ss in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from co_ss 0. *)

(** {9 Querying Nh2_ss_1p in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from nh2_ss_1p 0. *)

(** {9 Querying Nh_ss in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from nh_ss 0. *)

(** {9 Querying O_ss in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from o_ss 0. *)

(** {9 Querying S_ss in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from s_ss 0. *)

(** {6 Querying Block_onesingleonedouble in Block_oneone.} *)

val is_block_onesingleonedouble_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
  bool
;;

(** {9 Querying Ch_sd in Block_onesingleonedouble in Block_oneone.} *)

(* No Query from ch_sd 0. *)

(** {9 Querying N_sd in Block_onesingleonedouble in Block_oneone.} *)

(* No Query from n_sd 0. *)

(** {9 Querying N_sd_1p in Block_onesingleonedouble in Block_oneone.} *)

(* No Query from n_sd_1p 0. *)

(** {6 Querying Block_onesingleonetriple in Block_oneone.} *)

val is_block_onesingleonetriple_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
  bool
;;

(** {9 Querying C_st in Block_onesingleonetriple in Block_oneone.} *)

(* No Query from c_st 0. *)

(** {9 Querying N_st_1p in Block_onesingleonetriple in Block_oneone.} *)

(* No Query from n_st_1p 0. *)

(** {6 Querying Block_onedoubleonesingle in Block_oneone.} *)

val is_block_onedoubleonesingle_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
  bool
;;

(** {9 Querying Ch_ds in Block_onedoubleonesingle in Block_oneone.} *)

(* No Query from ch_ds 0. *)

(** {9 Querying N_ds in Block_onedoubleonesingle in Block_oneone.} *)

(* No Query from n_ds 0. *)

(** {9 Querying Nh_ds_1p in Block_onedoubleonesingle in Block_oneone.} *)

(* No Query from nh_ds_1p 0. *)

(** {6 Querying Block_onedoubleonedouble in Block_oneone.} *)

val is_block_onedoubleonedouble_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
  bool
;;

(** {9 Querying C_dd in Block_onedoubleonedouble in Block_oneone.} *)

(* No Query from c_dd 0. *)

(** {9 Querying N_dd_1p in Block_onedoubleonedouble in Block_oneone.} *)

(* No Query from n_dd_1p 0. *)

(** {6 Querying Block_onetripleonesingle in Block_oneone.} *)

val is_block_onetripleonesingle_symbol_off_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
  bool
;;

(** {9 Querying C_ts in Block_onetripleonesingle in Block_oneone.} *)

(* No Query from c_ts 0. *)

(** {9 Querying N_ts_1p in Block_onetripleonesingle in Block_oneone.} *)

(* No Query from n_ts_1p 0. *)

(** {6 Upgrading from Block_onesingleonesingle to Block_oneone.} *)

val block_oneone_symbol_of_block_onesingleonesingle_symbol :
  Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {9 Upgrading from Ch2_ss through Block_onesingleonesingle to Block_oneone.} *)

val ch2_ss : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from Co_ss through Block_onesingleonesingle to Block_oneone.} *)

val co_ss : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from Nh2_ss_1p through Block_onesingleonesingle to Block_oneone.} *)

val nh2_ss_1p : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from Nh_ss through Block_onesingleonesingle to Block_oneone.} *)

val nh_ss : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from O_ss through Block_onesingleonesingle to Block_oneone.} *)

val o_ss : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from S_ss through Block_onesingleonesingle to Block_oneone.} *)

val s_ss : Block_oneone_symbol_t.block_oneone_symbol;;

(** {6 Upgrading from Block_onesingleonedouble to Block_oneone.} *)

val block_oneone_symbol_of_block_onesingleonedouble_symbol :
  Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {9 Upgrading from Ch_sd through Block_onesingleonedouble to Block_oneone.} *)

val ch_sd : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from N_sd through Block_onesingleonedouble to Block_oneone.} *)

val n_sd : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from N_sd_1p through Block_onesingleonedouble to Block_oneone.} *)

val n_sd_1p : Block_oneone_symbol_t.block_oneone_symbol;;

(** {6 Upgrading from Block_onesingleonetriple to Block_oneone.} *)

val block_oneone_symbol_of_block_onesingleonetriple_symbol :
  Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {9 Upgrading from C_st through Block_onesingleonetriple to Block_oneone.} *)

val c_st : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from N_st_1p through Block_onesingleonetriple to Block_oneone.} *)

val n_st_1p : Block_oneone_symbol_t.block_oneone_symbol;;

(** {6 Upgrading from Block_onedoubleonesingle to Block_oneone.} *)

val block_oneone_symbol_of_block_onedoubleonesingle_symbol :
  Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {9 Upgrading from Ch_ds through Block_onedoubleonesingle to Block_oneone.} *)

val ch_ds : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from N_ds through Block_onedoubleonesingle to Block_oneone.} *)

val n_ds : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from Nh_ds_1p through Block_onedoubleonesingle to Block_oneone.} *)

val nh_ds_1p : Block_oneone_symbol_t.block_oneone_symbol;;

(** {6 Upgrading from Block_onedoubleonedouble to Block_oneone.} *)

val block_oneone_symbol_of_block_onedoubleonedouble_symbol :
  Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {9 Upgrading from C_dd through Block_onedoubleonedouble to Block_oneone.} *)

val c_dd : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from N_dd_1p through Block_onedoubleonedouble to Block_oneone.} *)

val n_dd_1p : Block_oneone_symbol_t.block_oneone_symbol;;

(** {6 Upgrading from Block_onetripleonesingle to Block_oneone.} *)

val block_oneone_symbol_of_block_onetripleonesingle_symbol :
  Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {9 Upgrading from C_ts through Block_onetripleonesingle to Block_oneone.} *)

val c_ts : Block_oneone_symbol_t.block_oneone_symbol;;

(** {9 Upgrading from N_ts_1p through Block_onetripleonesingle to Block_oneone.} *)

val n_ts_1p : Block_oneone_symbol_t.block_oneone_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_oneone 12 January 2011. *)

