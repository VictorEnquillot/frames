(** {3 A Symbol for a Segment_head.} *)

(** {6 Displaying.} *)

val name :
  Segment_head_symbol_t.segment_head_symbol ->
    string
;;

val print : Format.formatter ->
  Segment_head_symbol_t.segment_head_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Segment_zeroone from Segment_head.} *)

(* No Extraction from doublet segment_zeroone. *)

(** {6 Extracting Block_zeroone from Segment_head.} *)

val block_zeroone_symbol_off_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    Block_zeroone_symbol_t.block_zeroone_symbol
;;

(** {9 Extracting Block_zeroonesingle from Block_zeroone from Segment_head.} *)

val block_zeroonesingle_symbol_off_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol
;;

(** {12 Extracting Ch3_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from ch3_zs 0. *)

(** {12 Extracting Coh_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from coh_zs 0. *)

(** {12 Extracting Coc2_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from coc2_zs 0. *)

(** {12 Extracting Ch2_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from ch2_zs 0. *)

(** {12 Extracting Nh2_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from nh2_zs 0. *)

(** {12 Extracting No_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from no_zs 0. *)

(** {12 Extracting No2_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from no2_zs 0. *)

(** {12 Extracting Nh3_zs_1p from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from nh3_zs_1p 0. *)

(** {12 Extracting Nh2_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from nh2_zs 0. *)

(** {12 Extracting Oh_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from oh_zs 0. *)

(** {12 Extracting Sh_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from sh_zs 0. *)

(** {9 Extracting Block_zeroonedouble from Block_zeroone from Segment_head.} *)

val block_zeroonedouble_symbol_off_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol
;;

(** {12 Extracting Ch2_d from Block_zeroonedouble from Block_zeroone from Segment_head.} *)

(* No Extraction from ch2_d 0. *)

(** {12 Extracting Co_d from Block_zeroonedouble from Block_zeroone from Segment_head.} *)

(* No Extraction from co_d 0. *)

(** {12 Extracting Nh_d from Block_zeroonedouble from Block_zeroone from Segment_head.} *)

(* No Extraction from nh_d 0. *)

(** {12 Extracting Nh2_d_1p from Block_zeroonedouble from Block_zeroone from Segment_head.} *)

(* No Extraction from nh2_d_1p 0. *)

(** {9 Extracting Block_zeroonetriple from Block_zeroone from Segment_head.} *)

val block_zeroonetriple_symbol_off_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol
;;

(** {12 Extracting Ch_t from Block_zeroonetriple from Block_zeroone from Segment_head.} *)

(* No Extraction from ch_t 0. *)

(** {9 Extracting Block_zeroonehalfbridge from Block_zeroone from Segment_head.} *)

(* No Extraction from doublet block_zeroonehalfbridge. *)

(** {6 Extracting Segment_rightextended from Segment_head.} *)

(* No Extraction from doublet segment_rightextended. *)

(** {6 Querying.} *)

(** {6 Querying Segment_zeroone in Segment_head.} *)

(* No Query from segment_zeroone 0. *)

(** {6 Querying Block_zeroone in Segment_head.} *)

val is_block_zeroone_symbol_off_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
  bool
;;

(** {9 Querying Block_zeroonesingle in Block_zeroone in Segment_head.} *)

val is_block_zeroonesingle_symbol_off_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
  bool
;;

(** {12 Querying Ch3_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from ch3_zs 0. *)

(** {12 Querying Coh_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from coh_zs 0. *)

(** {12 Querying Coc2_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from coc2_zs 0. *)

(** {12 Querying Ch2_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from ch2_zs 0. *)

(** {12 Querying Nh2_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from nh2_zs 0. *)

(** {12 Querying No_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from no_zs 0. *)

(** {12 Querying No2_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from no2_zs 0. *)

(** {12 Querying Nh3_zs_1p in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from nh3_zs_1p 0. *)

(** {12 Querying Nh2_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from nh2_zs 0. *)

(** {12 Querying Oh_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from oh_zs 0. *)

(** {12 Querying Sh_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from sh_zs 0. *)

(** {9 Querying Block_zeroonedouble in Block_zeroone in Segment_head.} *)

val is_block_zeroonedouble_symbol_off_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
  bool
;;

(** {12 Querying Ch2_d in Block_zeroonedouble in Block_zeroone in Segment_head.} *)

(* No Query from ch2_d 0. *)

(** {12 Querying Co_d in Block_zeroonedouble in Block_zeroone in Segment_head.} *)

(* No Query from co_d 0. *)

(** {12 Querying Nh_d in Block_zeroonedouble in Block_zeroone in Segment_head.} *)

(* No Query from nh_d 0. *)

(** {12 Querying Nh2_d_1p in Block_zeroonedouble in Block_zeroone in Segment_head.} *)

(* No Query from nh2_d_1p 0. *)

(** {9 Querying Block_zeroonetriple in Block_zeroone in Segment_head.} *)

val is_block_zeroonetriple_symbol_off_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
  bool
;;

(** {12 Querying Ch_t in Block_zeroonetriple in Block_zeroone in Segment_head.} *)

(* No Query from ch_t 0. *)

(** {9 Querying Block_zeroonehalfbridge in Block_zeroone in Segment_head.} *)

(* No Query from block_zeroonehalfbridge 0. *)

(** {6 Querying Segment_rightextended in Segment_head.} *)

(* No Query from segment_rightextended 0. *)

(** {6 Upgrading from Segment_zeroone to Segment_head.} *)

val segment_zeroone : Segment_head_symbol_t.segment_head_symbol;;

(** {6 Upgrading from Block_zeroone to Segment_head.} *)

val segment_head_symbol_of_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    Segment_head_symbol_t.segment_head_symbol
;;

(** {9 Upgrading from Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val segment_head_symbol_of_block_zeroonesingle_symbol :
  Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol ->
    Segment_head_symbol_t.segment_head_symbol
;;

(** {12 Upgrading from Ch3_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val ch3_zs : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Coh_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val coh_zs : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Coc2_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val coc2_zs : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Ch2_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val ch2_zs : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Nh2_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val nh2_zs : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from No_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val no_zs : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from No2_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val no2_zs : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Nh3_zs_1p through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val nh3_zs_1p : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Nh2_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val nh2_zs : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Oh_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val oh_zs : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Sh_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

val sh_zs : Segment_head_symbol_t.segment_head_symbol;;
(** {9 Upgrading from Block_zeroonedouble through Block_zeroone to Segment_head.} *)

val segment_head_symbol_of_block_zeroonedouble_symbol :
  Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol ->
    Segment_head_symbol_t.segment_head_symbol
;;

(** {12 Upgrading from Ch2_d through Block_zeroonedouble through Block_zeroone to Segment_head.} *)

val ch2_d : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Co_d through Block_zeroonedouble through Block_zeroone to Segment_head.} *)

val co_d : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Nh_d through Block_zeroonedouble through Block_zeroone to Segment_head.} *)

val nh_d : Segment_head_symbol_t.segment_head_symbol;;
(** {12 Upgrading from Nh2_d_1p through Block_zeroonedouble through Block_zeroone to Segment_head.} *)

val nh2_d_1p : Segment_head_symbol_t.segment_head_symbol;;
(** {9 Upgrading from Block_zeroonetriple through Block_zeroone to Segment_head.} *)

val segment_head_symbol_of_block_zeroonetriple_symbol :
  Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol ->
    Segment_head_symbol_t.segment_head_symbol
;;

(** {12 Upgrading from Ch_t through Block_zeroonetriple through Block_zeroone to Segment_head.} *)

val ch_t : Segment_head_symbol_t.segment_head_symbol;;
(** {9 Upgrading from Block_zeroonehalfbridge through Block_zeroone to Segment_head.} *)

val block_zeroonehalfbridge : Segment_head_symbol_t.segment_head_symbol;;

(** {6 Upgrading from Segment_rightextended to Segment_head.} *)

val segment_rightextended : Segment_head_symbol_t.segment_head_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh segment_head 12 January 2011. *)

