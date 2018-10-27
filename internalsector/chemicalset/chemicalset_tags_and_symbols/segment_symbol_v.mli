(** {3 A Symbol for a Segment.} *)

(** {6 Displaying.} *)

val name :
  Segment_symbol_t.segment_symbol ->
    string
;;

val print : Format.formatter ->
  Segment_symbol_t.segment_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Segment_head from Segment.} *)

val segment_head_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Segment_head_symbol_t.segment_head_symbol
;;

(** {9 Extracting Segment_zeroone from Segment_head from Segment.} *)

(* No Extraction from doublet segment_zeroone. *)

(** {9 Extracting Block_zeroone from Segment_head from Segment.} *)

val block_zeroone_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_zeroone_symbol_t.block_zeroone_symbol
;;

(** {12 Extracting Block_zeroonesingle from Block_zeroone from Segment_head from Segment.} *)

val block_zeroonesingle_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol
;;

(** {12 Extracting Block_zeroonedouble from Block_zeroone from Segment_head from Segment.} *)

val block_zeroonedouble_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol
;;

(** {12 Extracting Block_zeroonetriple from Block_zeroone from Segment_head from Segment.} *)

val block_zeroonetriple_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol
;;

(** {12 Extracting Block_zeroonehalfbridge from Block_zeroone from Segment_head from Segment.} *)

(* No Extraction from block_zeroonehalfbridge 0. *)

(** {9 Extracting Segment_rightextended from Segment_head from Segment.} *)

(* No Extraction from doublet segment_rightextended. *)

(** {6 Extracting Segment_buried from Segment.} *)

val segment_buried_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Segment_buried_symbol_t.segment_buried_symbol
;;

(** {9 Extracting Segment_oneone from Segment_buried from Segment.} *)

(* No Extraction from doublet segment_oneone. *)

(** {9 Extracting Block_oneone from Segment_buried from Segment.} *)

val block_oneone_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {12 Extracting Block_onesingleonesingle from Block_oneone from Segment_buried from Segment.} *)

val block_onesingleonesingle_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol
;;

(** {12 Extracting Block_onesingleonedouble from Block_oneone from Segment_buried from Segment.} *)

val block_onesingleonedouble_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol
;;

(** {12 Extracting Block_onesingleonetriple from Block_oneone from Segment_buried from Segment.} *)

val block_onesingleonetriple_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol
;;

(** {12 Extracting Block_onedoubleonesingle from Block_oneone from Segment_buried from Segment.} *)

val block_onedoubleonesingle_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol
;;

(** {12 Extracting Block_onedoubleonedouble from Block_oneone from Segment_buried from Segment.} *)

val block_onedoubleonedouble_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol
;;

(** {12 Extracting Block_onetripleonesingle from Block_oneone from Segment_buried from Segment.} *)

val block_onetripleonesingle_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol
;;

(** {9 Extracting Segment_leftextended from Segment_buried from Segment.} *)

(* No Extraction from doublet segment_leftextended. *)

(** {9 Extracting Polysegment from Segment_buried from Segment.} *)

(* No Extraction from doublet polysegment. *)

(** {6 Querying.} *)

(** {6 Querying Segment_head in Segment.} *)

val is_segment_head_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {9 Querying Segment_zeroone in Segment_head in Segment.} *)

(* No Query from segment_zeroone 0. *)

(** {9 Querying Block_zeroone in Segment_head in Segment.} *)

val is_block_zeroone_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {12 Querying Block_zeroonesingle in Block_zeroone in Segment_head in Segment.} *)

val is_block_zeroonesingle_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {12 Querying Block_zeroonedouble in Block_zeroone in Segment_head in Segment.} *)

val is_block_zeroonedouble_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {12 Querying Block_zeroonetriple in Block_zeroone in Segment_head in Segment.} *)

val is_block_zeroonetriple_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {12 Querying Block_zeroonehalfbridge in Block_zeroone in Segment_head in Segment.} *)

(* No Query from block_zeroonehalfbridge 0. *)

(** {9 Querying Segment_rightextended in Segment_head in Segment.} *)

(* No Query from segment_rightextended 0. *)

(** {6 Querying Segment_buried in Segment.} *)

val is_segment_buried_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {9 Querying Segment_oneone in Segment_buried in Segment.} *)

(* No Query from segment_oneone 0. *)

(** {9 Querying Block_oneone in Segment_buried in Segment.} *)

val is_block_oneone_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {12 Querying Block_onesingleonesingle in Block_oneone in Segment_buried in Segment.} *)

val is_block_onesingleonesingle_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {12 Querying Block_onesingleonedouble in Block_oneone in Segment_buried in Segment.} *)

val is_block_onesingleonedouble_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {12 Querying Block_onesingleonetriple in Block_oneone in Segment_buried in Segment.} *)

val is_block_onesingleonetriple_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {12 Querying Block_onedoubleonesingle in Block_oneone in Segment_buried in Segment.} *)

val is_block_onedoubleonesingle_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {12 Querying Block_onedoubleonedouble in Block_oneone in Segment_buried in Segment.} *)

val is_block_onedoubleonedouble_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {12 Querying Block_onetripleonesingle in Block_oneone in Segment_buried in Segment.} *)

val is_block_onetripleonesingle_symbol_off_segment_symbol :
  Segment_symbol_t.segment_symbol ->
  bool
;;

(** {9 Querying Segment_leftextended in Segment_buried in Segment.} *)

(* No Query from segment_leftextended 0. *)

(** {9 Querying Polysegment in Segment_buried in Segment.} *)

(* No Query from polysegment 0. *)

(** {6 Upgrading from Segment_head to Segment.} *)

val segment_symbol_of_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {9 Upgrading from Segment_zeroone through Segment_head to Segment.} *)

val segment_zeroone : Segment_symbol_t.segment_symbol;;

(** {9 Upgrading from Block_zeroone through Segment_head to Segment.} *)

val segment_symbol_of_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {12 Upgrading from Block_zeroonesingle through Block_zeroone through Segment_head to Segment.} *)

val segment_symbol_of_block_zeroonesingle_symbol :
  Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {12 Upgrading from Block_zeroonedouble through Block_zeroone through Segment_head to Segment.} *)

val segment_symbol_of_block_zeroonedouble_symbol :
  Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {12 Upgrading from Block_zeroonetriple through Block_zeroone through Segment_head to Segment.} *)

val segment_symbol_of_block_zeroonetriple_symbol :
  Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {12 Upgrading from Block_zeroonehalfbridge through Block_zeroone through Segment_head to Segment.} *)

val block_zeroonehalfbridge : Segment_symbol_t.segment_symbol;;
(** {9 Upgrading from Segment_rightextended through Segment_head to Segment.} *)

val segment_rightextended : Segment_symbol_t.segment_symbol;;

(** {6 Upgrading from Segment_buried to Segment.} *)

val segment_symbol_of_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {9 Upgrading from Segment_oneone through Segment_buried to Segment.} *)

val segment_oneone : Segment_symbol_t.segment_symbol;;

(** {9 Upgrading from Block_oneone through Segment_buried to Segment.} *)

val segment_symbol_of_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {12 Upgrading from Block_onesingleonesingle through Block_oneone through Segment_buried to Segment.} *)

val segment_symbol_of_block_onesingleonesingle_symbol :
  Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {12 Upgrading from Block_onesingleonedouble through Block_oneone through Segment_buried to Segment.} *)

val segment_symbol_of_block_onesingleonedouble_symbol :
  Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {12 Upgrading from Block_onesingleonetriple through Block_oneone through Segment_buried to Segment.} *)

val segment_symbol_of_block_onesingleonetriple_symbol :
  Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {12 Upgrading from Block_onedoubleonesingle through Block_oneone through Segment_buried to Segment.} *)

val segment_symbol_of_block_onedoubleonesingle_symbol :
  Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {12 Upgrading from Block_onedoubleonedouble through Block_oneone through Segment_buried to Segment.} *)

val segment_symbol_of_block_onedoubleonedouble_symbol :
  Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {12 Upgrading from Block_onetripleonesingle through Block_oneone through Segment_buried to Segment.} *)

val segment_symbol_of_block_onetripleonesingle_symbol :
  Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {9 Upgrading from Segment_leftextended through Segment_buried to Segment.} *)

val segment_leftextended : Segment_symbol_t.segment_symbol;;

(** {9 Upgrading from Polysegment through Segment_buried to Segment.} *)

val polysegment : Segment_symbol_t.segment_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh segment 12 January 2011. *)

