(** {3 A Symbol for a Block_zeroone.} *)

(** {6 Displaying.} *)

val name :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Block_zeroonesingle from Block_zeroone.} *)

val block_zeroonesingle_symbol_off_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol
;;

(** {9 Extracting Ch3_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet ch3_zs. *)

(** {9 Extracting Coh_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet coh_zs. *)

(** {9 Extracting Coc2_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet coc2_zs. *)

(** {9 Extracting Ch2_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet ch2_zs. *)

(** {9 Extracting Nh2_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet nh2_zs. *)

(** {9 Extracting No_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet no_zs. *)

(** {9 Extracting No2_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet no2_zs. *)

(** {9 Extracting Nh3_zs_1p from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet nh3_zs_1p. *)

(** {9 Extracting Nh2_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet nh2_zs. *)

(** {9 Extracting Oh_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet oh_zs. *)

(** {9 Extracting Sh_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from doublet sh_zs. *)

(** {6 Extracting Block_zeroonedouble from Block_zeroone.} *)

val block_zeroonedouble_symbol_off_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol
;;

(** {9 Extracting Ch2_d from Block_zeroonedouble from Block_zeroone.} *)

(* No Extraction from doublet ch2_d. *)

(** {9 Extracting Co_d from Block_zeroonedouble from Block_zeroone.} *)

(* No Extraction from doublet co_d. *)

(** {9 Extracting Nh_d from Block_zeroonedouble from Block_zeroone.} *)

(* No Extraction from doublet nh_d. *)

(** {9 Extracting Nh2_d_1p from Block_zeroonedouble from Block_zeroone.} *)

(* No Extraction from doublet nh2_d_1p. *)

(** {6 Extracting Block_zeroonetriple from Block_zeroone.} *)

val block_zeroonetriple_symbol_off_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol
;;

(** {9 Extracting Ch_t from Block_zeroonetriple from Block_zeroone.} *)

(* No Extraction from doublet ch_t. *)

(** {6 Extracting Block_zeroonehalfbridge from Block_zeroone.} *)

(* No Extraction from doublet block_zeroonehalfbridge. *)

(** {6 Querying.} *)

(** {6 Querying Block_zeroonesingle in Block_zeroone.} *)

val is_block_zeroonesingle_symbol_off_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
  bool
;;

(** {9 Querying Ch3_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from ch3_zs 0. *)

(** {9 Querying Coh_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from coh_zs 0. *)

(** {9 Querying Coc2_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from coc2_zs 0. *)

(** {9 Querying Ch2_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from ch2_zs 0. *)

(** {9 Querying Nh2_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from nh2_zs 0. *)

(** {9 Querying No_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from no_zs 0. *)

(** {9 Querying No2_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from no2_zs 0. *)

(** {9 Querying Nh3_zs_1p in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from nh3_zs_1p 0. *)

(** {9 Querying Nh2_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from nh2_zs 0. *)

(** {9 Querying Oh_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from oh_zs 0. *)

(** {9 Querying Sh_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from sh_zs 0. *)

(** {6 Querying Block_zeroonedouble in Block_zeroone.} *)

val is_block_zeroonedouble_symbol_off_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
  bool
;;

(** {9 Querying Ch2_d in Block_zeroonedouble in Block_zeroone.} *)

(* No Query from ch2_d 0. *)

(** {9 Querying Co_d in Block_zeroonedouble in Block_zeroone.} *)

(* No Query from co_d 0. *)

(** {9 Querying Nh_d in Block_zeroonedouble in Block_zeroone.} *)

(* No Query from nh_d 0. *)

(** {9 Querying Nh2_d_1p in Block_zeroonedouble in Block_zeroone.} *)

(* No Query from nh2_d_1p 0. *)

(** {6 Querying Block_zeroonetriple in Block_zeroone.} *)

val is_block_zeroonetriple_symbol_off_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
  bool
;;

(** {9 Querying Ch_t in Block_zeroonetriple in Block_zeroone.} *)

(* No Query from ch_t 0. *)

(** {6 Querying Block_zeroonehalfbridge in Block_zeroone.} *)

(* No Query from block_zeroonehalfbridge 0. *)

(** {6 Upgrading from Block_zeroonesingle to Block_zeroone.} *)

val block_zeroone_symbol_of_block_zeroonesingle_symbol :
  Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol ->
    Block_zeroone_symbol_t.block_zeroone_symbol
;;

(** {9 Upgrading from Ch3_zs through Block_zeroonesingle to Block_zeroone.} *)

val ch3_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Coh_zs through Block_zeroonesingle to Block_zeroone.} *)

val coh_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Coc2_zs through Block_zeroonesingle to Block_zeroone.} *)

val coc2_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Ch2_zs through Block_zeroonesingle to Block_zeroone.} *)

val ch2_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Nh2_zs through Block_zeroonesingle to Block_zeroone.} *)

val nh2_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from No_zs through Block_zeroonesingle to Block_zeroone.} *)

val no_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from No2_zs through Block_zeroonesingle to Block_zeroone.} *)

val no2_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Nh3_zs_1p through Block_zeroonesingle to Block_zeroone.} *)

val nh3_zs_1p : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Nh2_zs through Block_zeroonesingle to Block_zeroone.} *)

val nh2_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Oh_zs through Block_zeroonesingle to Block_zeroone.} *)

val oh_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Sh_zs through Block_zeroonesingle to Block_zeroone.} *)

val sh_zs : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {6 Upgrading from Block_zeroonedouble to Block_zeroone.} *)

val block_zeroone_symbol_of_block_zeroonedouble_symbol :
  Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol ->
    Block_zeroone_symbol_t.block_zeroone_symbol
;;

(** {9 Upgrading from Ch2_d through Block_zeroonedouble to Block_zeroone.} *)

val ch2_d : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Co_d through Block_zeroonedouble to Block_zeroone.} *)

val co_d : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Nh_d through Block_zeroonedouble to Block_zeroone.} *)

val nh_d : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {9 Upgrading from Nh2_d_1p through Block_zeroonedouble to Block_zeroone.} *)

val nh2_d_1p : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {6 Upgrading from Block_zeroonetriple to Block_zeroone.} *)

val block_zeroone_symbol_of_block_zeroonetriple_symbol :
  Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol ->
    Block_zeroone_symbol_t.block_zeroone_symbol
;;

(** {9 Upgrading from Ch_t through Block_zeroonetriple to Block_zeroone.} *)

val ch_t : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** {6 Upgrading from Block_zeroonehalfbridge to Block_zeroone.} *)

val block_zeroonehalfbridge : Block_zeroone_symbol_t.block_zeroone_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zeroone 12 January 2011. *)

