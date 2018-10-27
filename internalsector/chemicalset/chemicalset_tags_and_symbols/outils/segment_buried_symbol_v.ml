(** {3 A Symbol for a Segment_buried.} *)

let nam_cod = "segment_buried_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B11s_v = Block_oneone_symbol_v


let name = function
  | Sbs_t.Segment_oneone -> "segment_oneone"
  | Sbs_v smb_boo ->
      B11s_v.name smb_boo
  | Sbs_t.Segment_leftextended -> "segment_leftextended"
  | Sbs_t.Polysegment -> "polysegment"
;;


let print ppf = function
  | Sbs_v  ->
      .print ppf 
  | Sbs_v smb_boo ->
      B11s_v.print ppf smb_boo
  | Sbs_v  ->
      .print ppf 
  | Sbs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)

let block_oneone_symbol_off_segment_buried_symbol = function
  | Sbs_v smb_boo -> smb_boo
  | s -> Erm_v.print_fatal_error nam_cod
     "block_oneone_symbol_off_segment_buried_symbol"
     "Block_oneone_symbol"
     (name s)
    "check"
;;

let block_onesingleonesingle_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onesingleonetriple_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onedoubleonedouble_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onetripleonesingle_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;


(** {6 Querying.} *)

let is_block_oneone_symbol_off_segment_buried_symbol = function
  | Segment_buried_symbol_t.Block_oneone_symbol _ -> true
  | _ -> false
;;

let is_block_onesingleonesingle_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onesingleonedouble_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onesingleonetriple_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onedoubleonesingle_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onedoubleonedouble_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onetripleonesingle_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;


(** {6 Upgrading.} *)

let segment_oneone = Sbs_t.Segment_oneone;;

let segment_buried_symbol_of_block_oneone_symbol smb_boo =
Sbs_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onesingleonesingle_symbol smb_sos =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onesingleonesingle_symbol smb_sos in
segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1s1ss_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onesingleonedouble_symbol smb_sod =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onesingleonedouble_symbol smb_sod in
segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_of_block_oneone_symbol smb_boo =
B1s1ds_v.block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_of_block_oneone_symbol smb_boo =
B1s1ds_v.block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_of_block_oneone_symbol smb_boo =
B1s1ds_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onesingleonetriple_symbol smb_sot =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onesingleonetriple_symbol smb_sot in
segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

let block_onesingleonetriple_symbol_of_block_oneone_symbol smb_boo =
B1s1ts_v.block_oneone_symbol smb_boo
;;

let block_onesingleonetriple_symbol_of_block_oneone_symbol smb_boo =
B1s1ts_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_ods =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_ods in
segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1d1ss_v.block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1d1ss_v.block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1d1ss_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_odd =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_odd in
segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

let block_onedoubleonedouble_symbol_of_block_oneone_symbol smb_boo =
B1d1ds_v.block_oneone_symbol smb_boo
;;

let block_onedoubleonedouble_symbol_of_block_oneone_symbol smb_boo =
B1d1ds_v.block_oneone_symbol smb_boo
;;

let block_oneone_symbol_of_block_onetripleonesingle_symbol smb_ots =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onetripleonesingle_symbol smb_ots in
segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

let block_onetripleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1t1ss_v.block_oneone_symbol smb_boo
;;

let block_onetripleonesingle_symbol_of_block_oneone_symbol smb_boo =
B1t1ss_v.block_oneone_symbol smb_boo
;;

let segment_leftextended = Sbs_t.Segment_leftextended;;

let polysegment = Sbs_t.Polysegment;;



(** created by ./generator segment_buried v symbol at 11:8 26 Apr 2011. *)



