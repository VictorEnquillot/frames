(** {3 A Symbol for a Segment.} *)

let nam_mod = "Segment_symbol_v";;

(** {6 Modules.} *)

module Bdds_t = Block_onedoubleonedouble_symbol_t
module Bdds_v = Block_onedoubleonedouble_symbol_v
module Bdss_t = Block_onedoubleonesingle_symbol_t
module Bdss_v = Block_onedoubleonesingle_symbol_v
module Boos_t = Block_oneone_symbol_t
module Boos_v = Block_oneone_symbol_v
module Bsds_t = Block_onesingleonedouble_symbol_t
module Bsds_v = Block_onesingleonedouble_symbol_v
module Bsss_t = Block_onesingleonesingle_symbol_t
module Bsss_v = Block_onesingleonesingle_symbol_v
module Bsts_t = Block_onesingleonetriple_symbol_t
module Bsts_v = Block_onesingleonetriple_symbol_v
module Btss_t = Block_onetripleonesingle_symbol_t
module Btss_v = Block_onetripleonesingle_symbol_v
module Bzds_t = Block_zeroonedouble_symbol_t
module Bzds_v = Block_zeroonedouble_symbol_v
module Bzos_t = Block_zeroone_symbol_t
module Bzos_v = Block_zeroone_symbol_v
module Bzss_t = Block_zeroonesingle_symbol_t
module Bzss_v = Block_zeroonesingle_symbol_v
module Bzts_t = Block_zeroonetriple_symbol_t
module Bzts_v = Block_zeroonetriple_symbol_v
module Sbs_t = Segment_buried_symbol_t
module Sbs_v = Segment_buried_symbol_v
module Sgs_t = Segment_symbol_t
module Shs_t = Segment_head_symbol_t
module Shs_v = Segment_head_symbol_v

(** {6 Displaying.} *)

let name = function
  | Sgs_t.Segment_head_symbol smb_sgh -> 
      Shs_v.name smb_sgh
  | Sgs_t.Segment_buried_symbol smb_sgb -> 
      Sbs_v.name smb_sgb
;;

let print ppf = function
  | Sgs_t.Segment_head_symbol smb_sgh -> 
      Shs_v.print ppf smb_sgh
  | Sgs_t.Segment_buried_symbol smb_sgb -> 
      Sbs_v.print ppf smb_sgb
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found segment_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Segment_head from Segment.} *)

let segment_head_symbol_off_segment_symbol = function
  | Sgs_t.Segment_head_symbol smb_sgh -> smb_sgh
  | s ->  print_fatal_error
      "segment_head_symbol_off_segment_symbol"
      "Segment_head_symbol" (name s)
;;

(** {9 Extracting Segment_zeroone from Segment_head from Segment.} *)

(* No Extraction from segment_zeroone 0. *)

(** {9 Extracting Block_zeroone from Segment_head from Segment.} *)

let block_zeroone_symbol_off_segment_symbol smb_seg =
  let smb_sgh = segment_head_symbol_off_segment_symbol smb_seg in
    Shs_v.block_zeroone_symbol_off_segment_head_symbol smb_sgh
;;

(** {12 Extracting Block_zeroonesingle from Block_zeroone from Segment_head from Segment.} *)

let block_zeroonesingle_symbol_off_segment_symbol smb_seg =
  let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_seg in
    Bzos_v.block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Block_zeroonedouble from Block_zeroone from Segment_head from Segment.} *)

let block_zeroonedouble_symbol_off_segment_symbol smb_seg =
  let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_seg in
    Bzos_v.block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Block_zeroonetriple from Block_zeroone from Segment_head from Segment.} *)

let block_zeroonetriple_symbol_off_segment_symbol smb_seg =
  let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_seg in
    Bzos_v.block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Block_zeroonehalfbridge from Block_zeroone from Segment_head from Segment.} *)

(* No Extraction from block_zeroonehalfbridge 0. *)

(** {9 Extracting Segment_rightextended from Segment_head from Segment.} *)

(* No Extraction from segment_rightextended 0. *)

(** {6 Extracting Segment_buried from Segment.} *)

let segment_buried_symbol_off_segment_symbol = function
  | Sgs_t.Segment_buried_symbol smb_sgb -> smb_sgb
  | s ->  print_fatal_error
      "segment_buried_symbol_off_segment_symbol"
      "Segment_buried_symbol" (name s)
;;

(** {9 Extracting Segment_oneone from Segment_buried from Segment.} *)

(* No Extraction from segment_oneone 0. *)

(** {9 Extracting Block_oneone from Segment_buried from Segment.} *)

let block_oneone_symbol_off_segment_symbol smb_seg =
  let smb_sgb = segment_buried_symbol_off_segment_symbol smb_seg in
    Sbs_v.block_oneone_symbol_off_segment_buried_symbol smb_sgb
;;

(** {12 Extracting Block_onesingleonesingle from Block_oneone from Segment_buried from Segment.} *)

let block_onesingleonesingle_symbol_off_segment_symbol smb_seg =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
    Boos_v.block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Block_onesingleonedouble from Block_oneone from Segment_buried from Segment.} *)

let block_onesingleonedouble_symbol_off_segment_symbol smb_seg =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
    Boos_v.block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Block_onesingleonetriple from Block_oneone from Segment_buried from Segment.} *)

let block_onesingleonetriple_symbol_off_segment_symbol smb_seg =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
    Boos_v.block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Block_onedoubleonesingle from Block_oneone from Segment_buried from Segment.} *)

let block_onedoubleonesingle_symbol_off_segment_symbol smb_seg =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
    Boos_v.block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Block_onedoubleonedouble from Block_oneone from Segment_buried from Segment.} *)

let block_onedoubleonedouble_symbol_off_segment_symbol smb_seg =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
    Boos_v.block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Block_onetripleonesingle from Block_oneone from Segment_buried from Segment.} *)

let block_onetripleonesingle_symbol_off_segment_symbol smb_seg =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
    Boos_v.block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {9 Extracting Segment_leftextended from Segment_buried from Segment.} *)

(* No Extraction from segment_leftextended 0. *)

(** {9 Extracting Polysegment from Segment_buried from Segment.} *)

(* No Extraction from polysegment 0. *)

(** {6 Querying.} *)

(** {6 Querying Segment_head in Segment.} *)

let is_segment_head_symbol_off_segment_symbol = function
  | Sgs_t.Segment_head_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Segment_zeroone in Segment_head in Segment.} *)

(* No Query from segment_zeroone 0. *)


(** {9 Querying Block_zeroone in Segment_head in Segment.} *)

let is_block_zeroone_symbol_off_segment_symbol smb_seg =
  if not (is_segment_head_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_sgh = segment_head_symbol_off_segment_symbol smb_seg in
      Shs_v.is_block_zeroone_symbol_off_segment_head_symbol smb_sgh
    end
;;

(** {12 Querying Block_zeroonesingle in Block_zeroone in Segment_head in Segment.} *)

let is_block_zeroonesingle_symbol_off_segment_symbol smb_seg =
  if not (is_block_zeroone_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_seg in
      Bzos_v.is_block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Block_zeroonedouble in Block_zeroone in Segment_head in Segment.} *)

let is_block_zeroonedouble_symbol_off_segment_symbol smb_seg =
  if not (is_block_zeroone_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_seg in
      Bzos_v.is_block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Block_zeroonetriple in Block_zeroone in Segment_head in Segment.} *)

let is_block_zeroonetriple_symbol_off_segment_symbol smb_seg =
  if not (is_block_zeroone_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_seg in
      Bzos_v.is_block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Block_zeroonehalfbridge in Block_zeroone in Segment_head in Segment.} *)

(* No Query from block_zeroonehalfbridge 0. *)

(** {9 Querying Segment_rightextended in Segment_head in Segment.} *)

(* No Query from segment_rightextended 0. *)


(** {6 Querying Segment_buried in Segment.} *)

let is_segment_buried_symbol_off_segment_symbol = function
  | Sgs_t.Segment_buried_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Segment_oneone in Segment_buried in Segment.} *)

(* No Query from segment_oneone 0. *)


(** {9 Querying Block_oneone in Segment_buried in Segment.} *)

let is_block_oneone_symbol_off_segment_symbol smb_seg =
  if not (is_segment_buried_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_sgb = segment_buried_symbol_off_segment_symbol smb_seg in
      Sbs_v.is_block_oneone_symbol_off_segment_buried_symbol smb_sgb
    end
;;

(** {12 Querying Block_onesingleonesingle in Block_oneone in Segment_buried in Segment.} *)

let is_block_onesingleonesingle_symbol_off_segment_symbol smb_seg =
  if not (is_block_oneone_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
      Boos_v.is_block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Block_onesingleonedouble in Block_oneone in Segment_buried in Segment.} *)

let is_block_onesingleonedouble_symbol_off_segment_symbol smb_seg =
  if not (is_block_oneone_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
      Boos_v.is_block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Block_onesingleonetriple in Block_oneone in Segment_buried in Segment.} *)

let is_block_onesingleonetriple_symbol_off_segment_symbol smb_seg =
  if not (is_block_oneone_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
      Boos_v.is_block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Block_onedoubleonesingle in Block_oneone in Segment_buried in Segment.} *)

let is_block_onedoubleonesingle_symbol_off_segment_symbol smb_seg =
  if not (is_block_oneone_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
      Boos_v.is_block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Block_onedoubleonedouble in Block_oneone in Segment_buried in Segment.} *)

let is_block_onedoubleonedouble_symbol_off_segment_symbol smb_seg =
  if not (is_block_oneone_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
      Boos_v.is_block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Block_onetripleonesingle in Block_oneone in Segment_buried in Segment.} *)

let is_block_onetripleonesingle_symbol_off_segment_symbol smb_seg =
  if not (is_block_oneone_symbol_off_segment_symbol smb_seg)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_symbol smb_seg in
      Boos_v.is_block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {9 Querying Segment_leftextended in Segment_buried in Segment.} *)

(* No Query from segment_leftextended 0. *)


(** {9 Querying Polysegment in Segment_buried in Segment.} *)

(* No Query from polysegment 0. *)


(** {6 Upgrading from Segment_head to Segment.} *)

let segment_symbol_of_segment_head_symbol smb_sgh =
  Sgs_t.Segment_head_symbol smb_sgh
;;

(** {9 Upgrading from Segment_zeroone through Segment_head to Segment.} *)

let segment_zeroone = segment_symbol_of_segment_head_symbol Shs_t.Segment_zeroone;;

(** {9 Upgrading from Block_zeroone through Segment_head to Segment.} *)

let segment_symbol_of_block_zeroone_symbol smb_bzo =
  let smb_sgh = Shs_v.segment_head_symbol_of_block_zeroone_symbol smb_bzo in
  segment_symbol_of_segment_head_symbol smb_sgh
;;

(** {12 Upgrading from Block_zeroonesingle through Block_zeroone through Segment_head to Segment.} *)

let segment_symbol_of_block_zeroonesingle_symbol smb_bzs =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonesingle_symbol smb_bzs in
    segment_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Block_zeroonedouble through Block_zeroone through Segment_head to Segment.} *)

let segment_symbol_of_block_zeroonedouble_symbol smb_bzd =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonedouble_symbol smb_bzd in
    segment_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Block_zeroonetriple through Block_zeroone through Segment_head to Segment.} *)

let segment_symbol_of_block_zeroonetriple_symbol smb_bzt =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonetriple_symbol smb_bzt in
    segment_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Block_zeroonehalfbridge through Block_zeroone through Segment_head to Segment.} *)

let block_zeroonehalfbridge = segment_symbol_of_block_zeroone_symbol Bzos_t.Block_zeroonehalfbridge;;

(** {9 Upgrading from Segment_rightextended through Segment_head to Segment.} *)

let segment_rightextended = segment_symbol_of_segment_head_symbol Shs_t.Segment_rightextended;;

(** {6 Upgrading from Segment_buried to Segment.} *)

let segment_symbol_of_segment_buried_symbol smb_sgb =
  Sgs_t.Segment_buried_symbol smb_sgb
;;

(** {9 Upgrading from Segment_oneone through Segment_buried to Segment.} *)

let segment_oneone = segment_symbol_of_segment_buried_symbol Sbs_t.Segment_oneone;;

(** {9 Upgrading from Block_oneone through Segment_buried to Segment.} *)

let segment_symbol_of_block_oneone_symbol smb_boo =
  let smb_sgb = Sbs_v.segment_buried_symbol_of_block_oneone_symbol smb_boo in
  segment_symbol_of_segment_buried_symbol smb_sgb
;;

(** {12 Upgrading from Block_onesingleonesingle through Block_oneone through Segment_buried to Segment.} *)

let segment_symbol_of_block_onesingleonesingle_symbol smb_bss =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonesingle_symbol smb_bss in
    segment_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Block_onesingleonedouble through Block_oneone through Segment_buried to Segment.} *)

let segment_symbol_of_block_onesingleonedouble_symbol smb_bsd =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonedouble_symbol smb_bsd in
    segment_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Block_onesingleonetriple through Block_oneone through Segment_buried to Segment.} *)

let segment_symbol_of_block_onesingleonetriple_symbol smb_bst =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonetriple_symbol smb_bst in
    segment_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Block_onedoubleonesingle through Block_oneone through Segment_buried to Segment.} *)

let segment_symbol_of_block_onedoubleonesingle_symbol smb_bds =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_bds in
    segment_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Block_onedoubleonedouble through Block_oneone through Segment_buried to Segment.} *)

let segment_symbol_of_block_onedoubleonedouble_symbol smb_bdd =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_bdd in
    segment_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Block_onetripleonesingle through Block_oneone through Segment_buried to Segment.} *)

let segment_symbol_of_block_onetripleonesingle_symbol smb_bts =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onetripleonesingle_symbol smb_bts in
    segment_symbol_of_block_oneone_symbol smb_boo
;;

(** {9 Upgrading from Segment_leftextended through Segment_buried to Segment.} *)

let segment_leftextended = segment_symbol_of_segment_buried_symbol Sbs_t.Segment_leftextended;;

(** {9 Upgrading from Polysegment through Segment_buried to Segment.} *)

let polysegment = segment_symbol_of_segment_buried_symbol Sbs_t.Polysegment;;

(** created by ./do_entitysum_symbol_v_ml.sh segment 12 January 2011. *)

