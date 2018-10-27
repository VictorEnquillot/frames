(** {3 A Symbol for a Segment.} *)

let nam_cod = "segment_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Shs_v = Segment_head_symbol_v
module Sbs_v = Segment_buried_symbol_v


let name = function
  | Ses_v smb_seh ->
      Shs_v.name smb_seh
  | Ses_v smb_seb ->
      Sbs_v.name smb_seb
;;


let print ppf = function
  | Ses_v smb_seh ->
      Shs_v.print ppf smb_seh
  | Ses_v smb_seb ->
      Sbs_v.print ppf smb_seb
;;


(** {6 Extracting.} *)

let segment_head_symbol_off_segment_symbol = function
  | Ses_v smb_seh -> smb_seh
  | s -> Erm_v.print_fatal_error nam_cod
     "segment_head_symbol_off_segment_symbol"
     "Segment_head_symbol"
     (name s)
    "check"
;;

let block_zeroone_symbol_off_segment_symbol smb_set =
  let smb_seh = segment_head_symbol_off_segment_symbol smb_set in
    Shs_v_off_segment_head_symbol smb_seh
;;

let block_zeroonesingle_symbol_off_segment_symbol smb_set =
  let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_set in
    B01s_v_off_block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_off_segment_symbol smb_set =
  let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_set in
    B01s_v_off_block_zeroone_symbol smb_bzo
;;

let block_zeroonetriple_symbol_off_segment_symbol smb_set =
  let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_set in
    B01s_v_off_block_zeroone_symbol smb_bzo
;;

let segment_buried_symbol_off_segment_symbol = function
  | Ses_v smb_seb -> smb_seb
  | s -> Erm_v.print_fatal_error nam_cod
     "segment_buried_symbol_off_segment_symbol"
     "Segment_buried_symbol"
     (name s)
    "check"
;;

let block_oneone_symbol_off_segment_symbol smb_set =
  let smb_seb = segment_buried_symbol_off_segment_symbol smb_set in
    Sbs_v_off_segment_buried_symbol smb_seb
;;

let block_onesingleonesingle_symbol_off_segment_symbol smb_set =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_off_segment_symbol smb_set =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onesingleonetriple_symbol_off_segment_symbol smb_set =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_off_segment_symbol smb_set =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onedoubleonedouble_symbol_off_segment_symbol smb_set =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onetripleonesingle_symbol_off_segment_symbol smb_set =
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
    B11s_v_off_block_oneone_symbol smb_boo
;;


(** {6 Querying.} *)

let is_segment_head_symbol_off_segment_symbol = function
  | Segment_symbol_t.Segment_head_symbol _ -> true
  | _ -> false
;;

let is_block_zeroone_symbol_off_segment_symbol smb_set =
  if not (is_segment_head_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_seh = segment_head_symbol_off_segment_symbol smb_set in
      Shs_v.is_block_zeroone_symbol_off_segment_head_symbol smb_seh
    end
;;

let is_block_zeroonesingle_symbol_off_segment_symbol smb_set =
  if not (is_block_zeroone_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_set in
      B01s_v.is_block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

let is_block_zeroonedouble_symbol_off_segment_symbol smb_set =
  if not (is_block_zeroone_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_set in
      B01s_v.is_block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

let is_block_zeroonetriple_symbol_off_segment_symbol smb_set =
  if not (is_block_zeroone_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_bzo = block_zeroone_symbol_off_segment_symbol smb_set in
      B01s_v.is_block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

let is_segment_buried_symbol_off_segment_symbol = function
  | Segment_symbol_t.Segment_buried_symbol _ -> true
  | _ -> false
;;

let is_block_oneone_symbol_off_segment_symbol smb_set =
  if not (is_segment_buried_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_seb = segment_buried_symbol_off_segment_symbol smb_set in
      Sbs_v.is_block_oneone_symbol_off_segment_buried_symbol smb_seb
    end
;;

let is_block_onesingleonesingle_symbol_off_segment_symbol smb_set =
  if not (is_block_oneone_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
      B11s_v.is_block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onesingleonedouble_symbol_off_segment_symbol smb_set =
  if not (is_block_oneone_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
      B11s_v.is_block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onesingleonetriple_symbol_off_segment_symbol smb_set =
  if not (is_block_oneone_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
      B11s_v.is_block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onedoubleonesingle_symbol_off_segment_symbol smb_set =
  if not (is_block_oneone_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
      B11s_v.is_block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onedoubleonedouble_symbol_off_segment_symbol smb_set =
  if not (is_block_oneone_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
      B11s_v.is_block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onetripleonesingle_symbol_off_segment_symbol smb_set =
  if not (is_block_oneone_symbol_off_segment_symbol smb_set)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_symbol smb_set in
      B11s_v.is_block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;


(** {6 Upgrading.} *)

let segment_symbol_of_segment_head_symbol smb_seh =
Ses_v.segment_head_symbol smb_seh
;;

let segment_head_symbol_of_segment_head_symbol smb_seh =
Shs_v.segment_head_symbol smb_seh
;;

let segment_head_symbol_of_block_zeroone_symbol smb_bzo =
  let smb_seh = Shs_v.segment_head_symbol_of_block_zeroone_symbol smb_bzo in
segment_symbol_of_segment_head_symbol smb_seh
;;

let block_zeroone_symbol_of_block_zeroonesingle_symbol smb_zos =
  let smb_bzo = B01s_v.block_zeroone_symbol_of_block_zeroonesingle_symbol smb_zos in
segment_symbol_of_block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_segment_head_symbol smb_seh =
B01ss_v.segment_head_symbol smb_seh
;;

let block_zeroonesingle_symbol_of_segment_head_symbol smb_seh =
B01ss_v.segment_head_symbol smb_seh
;;

let block_zeroonesingle_symbol_of_segment_head_symbol smb_seh =
B01ss_v.segment_head_symbol smb_seh
;;

let block_zeroonesingle_symbol_of_segment_head_symbol smb_seh =
B01ss_v.segment_head_symbol smb_seh
;;

let block_zeroonesingle_symbol_of_segment_head_symbol smb_seh =
B01ss_v.segment_head_symbol smb_seh
;;

let block_zeroonesingle_symbol_of_segment_head_symbol smb_seh =
B01ss_v.segment_head_symbol smb_seh
;;

let block_zeroonesingle_symbol_of_segment_head_symbol smb_seh =
B01ss_v.segment_head_symbol smb_seh
;;

let block_zeroonesingle_symbol_of_segment_head_symbol smb_seh =
B01ss_v.segment_head_symbol smb_seh
;;

let block_zeroonesingle_symbol_of_segment_head_symbol smb_seh =
B01ss_v.segment_head_symbol smb_seh
;;

let block_zeroonesingle_symbol_of_segment_head_symbol smb_seh =
B01ss_v.segment_head_symbol smb_seh
;;

let block_zeroone_symbol_of_block_zeroonedouble_symbol smb_zod =
  let smb_bzo = B01s_v.block_zeroone_symbol_of_block_zeroonedouble_symbol smb_zod in
segment_symbol_of_block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_of_segment_head_symbol smb_seh =
B01ds_v.segment_head_symbol smb_seh
;;

let block_zeroonedouble_symbol_of_segment_head_symbol smb_seh =
B01ds_v.segment_head_symbol smb_seh
;;

let block_zeroonedouble_symbol_of_segment_head_symbol smb_seh =
B01ds_v.segment_head_symbol smb_seh
;;

let block_zeroonedouble_symbol_of_segment_head_symbol smb_seh =
B01ds_v.segment_head_symbol smb_seh
;;

let block_zeroone_symbol_of_block_zeroonetriple_symbol smb_zot =
  let smb_bzo = B01s_v.block_zeroone_symbol_of_block_zeroonetriple_symbol smb_zot in
segment_symbol_of_block_zeroone_symbol smb_bzo
;;

let block_zeroonetriple_symbol_of_segment_head_symbol smb_seh =
B01ts_v.segment_head_symbol smb_seh
;;

let block_zeroone_symbol_of_segment_head_symbol smb_seh =
B01s_v.segment_head_symbol smb_seh
;;

let segment_head_symbol_of_segment_head_symbol smb_seh =
Shs_v.segment_head_symbol smb_seh
;;

let segment_symbol_of_segment_buried_symbol smb_seb =
Ses_v.segment_buried_symbol smb_seb
;;

let segment_buried_symbol_of_segment_buried_symbol smb_seb =
Sbs_v.segment_buried_symbol smb_seb
;;

let segment_buried_symbol_of_block_oneone_symbol smb_boo =
  let smb_seb = Sbs_v.segment_buried_symbol_of_block_oneone_symbol smb_boo in
segment_symbol_of_segment_buried_symbol smb_seb
;;

let block_oneone_symbol_of_block_onesingleonesingle_symbol smb_sos =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onesingleonesingle_symbol smb_sos in
segment_symbol_of_block_oneone_symbol smb_boo
;;

let block_onesingleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1s1ss_v.segment_buried_symbol smb_seb
;;

let block_onesingleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1s1ss_v.segment_buried_symbol smb_seb
;;

let block_onesingleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1s1ss_v.segment_buried_symbol smb_seb
;;

let block_onesingleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1s1ss_v.segment_buried_symbol smb_seb
;;

let block_onesingleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1s1ss_v.segment_buried_symbol smb_seb
;;

let block_onesingleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1s1ss_v.segment_buried_symbol smb_seb
;;

let block_oneone_symbol_of_block_onesingleonedouble_symbol smb_sod =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onesingleonedouble_symbol smb_sod in
segment_symbol_of_block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_of_segment_buried_symbol smb_seb =
B1s1ds_v.segment_buried_symbol smb_seb
;;

let block_onesingleonedouble_symbol_of_segment_buried_symbol smb_seb =
B1s1ds_v.segment_buried_symbol smb_seb
;;

let block_onesingleonedouble_symbol_of_segment_buried_symbol smb_seb =
B1s1ds_v.segment_buried_symbol smb_seb
;;

let block_oneone_symbol_of_block_onesingleonetriple_symbol smb_sot =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onesingleonetriple_symbol smb_sot in
segment_symbol_of_block_oneone_symbol smb_boo
;;

let block_onesingleonetriple_symbol_of_segment_buried_symbol smb_seb =
B1s1ts_v.segment_buried_symbol smb_seb
;;

let block_onesingleonetriple_symbol_of_segment_buried_symbol smb_seb =
B1s1ts_v.segment_buried_symbol smb_seb
;;

let block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_ods =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_ods in
segment_symbol_of_block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1d1ss_v.segment_buried_symbol smb_seb
;;

let block_onedoubleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1d1ss_v.segment_buried_symbol smb_seb
;;

let block_onedoubleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1d1ss_v.segment_buried_symbol smb_seb
;;

let block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_odd =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_odd in
segment_symbol_of_block_oneone_symbol smb_boo
;;

let block_onedoubleonedouble_symbol_of_segment_buried_symbol smb_seb =
B1d1ds_v.segment_buried_symbol smb_seb
;;

let block_onedoubleonedouble_symbol_of_segment_buried_symbol smb_seb =
B1d1ds_v.segment_buried_symbol smb_seb
;;

let block_oneone_symbol_of_block_onetripleonesingle_symbol smb_ots =
  let smb_boo = B11s_v.block_oneone_symbol_of_block_onetripleonesingle_symbol smb_ots in
segment_symbol_of_block_oneone_symbol smb_boo
;;

let block_onetripleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1t1ss_v.segment_buried_symbol smb_seb
;;

let block_onetripleonesingle_symbol_of_segment_buried_symbol smb_seb =
B1t1ss_v.segment_buried_symbol smb_seb
;;

let segment_buried_symbol_of_segment_buried_symbol smb_seb =
Sbs_v.segment_buried_symbol smb_seb
;;

let segment_buried_symbol_of_segment_buried_symbol smb_seb =
Sbs_v.segment_buried_symbol smb_seb
;;



(** created by ./generator segment v symbol at 11:8 26 Apr 2011. *)



