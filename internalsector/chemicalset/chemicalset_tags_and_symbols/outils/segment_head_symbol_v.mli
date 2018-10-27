(** {3 A Symbol for a Segment_head.} *)


let name :
  Segment_head_symbol_t.segment_head_symbol ->
    string
;;


val print : Format.Formatter ->
  Segment_head_symbol_t.segment_head_symbol ->
    unit
;;


(** {6 Extracting.} *)

val segment_head_symbol_off_block_zeroone_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    B01s_v
;;

val segment_head_symbol_off_block_zeroonesingle_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    B01ss_v
;;

val segment_head_symbol_off_block_zeroonedouble_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    B01ds_v
;;

val segment_head_symbol_off_block_zeroonetriple_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    B01ts_v
;;


(** {6 Querying.} *)

val is_segment_head_symbol_off_block_zeroone_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    bool
;;

val is_segment_head_symbol_off_block_zeroonesingle_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    bool
;;

val is_segment_head_symbol_off_block_zeroonedouble_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    bool
;;

val is_segment_head_symbol_off_block_zeroonetriple_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val segment_zeroone : Segment_head_symbol_t.segment_head_symbol;;

val segment_head_symbol_of_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    Shs_v
;;

val segment_head_symbol_of_block_zeroonesingle_symbol :
  Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol ->
    Shs_v
;;

val ch2_zs : Segment_head_symbol_t.segment_head_symbol;;

val ch3_zs : Segment_head_symbol_t.segment_head_symbol;;

val coc2_zs : Segment_head_symbol_t.segment_head_symbol;;

val coh_zs : Segment_head_symbol_t.segment_head_symbol;;

val nh2_zs : Segment_head_symbol_t.segment_head_symbol;;

val nh3_zs_1p : Segment_head_symbol_t.segment_head_symbol;;

val no2_zs : Segment_head_symbol_t.segment_head_symbol;;

val no_zs : Segment_head_symbol_t.segment_head_symbol;;

val oh_zs : Segment_head_symbol_t.segment_head_symbol;;

val sh_zs : Segment_head_symbol_t.segment_head_symbol;;

val segment_head_symbol_of_block_zeroonedouble_symbol :
  Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol ->
    Shs_v
;;

val ch2_d : Segment_head_symbol_t.segment_head_symbol;;

val co_d : Segment_head_symbol_t.segment_head_symbol;;

val nh_d : Segment_head_symbol_t.segment_head_symbol;;

val nh2_d_1p : Segment_head_symbol_t.segment_head_symbol;;

val segment_head_symbol_of_block_zeroonetriple_symbol :
  Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol ->
    Shs_v
;;

val ch_t : Segment_head_symbol_t.segment_head_symbol;;

val block_zeroonehalfbridge : Segment_head_symbol_t.segment_head_symbol;;

val segment_rightextended : Segment_head_symbol_t.segment_head_symbol;;



(** created by ./generator segment_head v symbol at 9:28 26 Apr 2011. *)



