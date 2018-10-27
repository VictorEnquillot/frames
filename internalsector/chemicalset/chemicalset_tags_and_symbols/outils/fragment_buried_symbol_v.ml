(** {3 A Symbol for a Fragment_buried.} *)

let nam_cod = "fragment_buried_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B1s_v = Block_onefork_symbol_v


let name = function
  | Fbs_t.Fragment_onefork -> "fragment_onefork"
  | Fbs_v smb_bof ->
      B1s_v.name smb_bof
  | Fbs_t.Polysegment_buried_leftextended -> "polysegment_buried_leftextended"
;;


let print ppf = function
  | Fbs_v  ->
      .print ppf 
  | Fbs_v smb_bof ->
      B1s_v.print ppf smb_bof
  | Fbs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)

let block_onefork_symbol_off_fragment_buried_symbol = function
  | Fbs_v smb_bof -> smb_bof
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onefork_symbol_off_fragment_buried_symbol"
     "Block_onefork_symbol"
     (name s)
    "check"
;;

let block_onebifork_symbol_off_fragment_buried_symbol smb_frb =
  let smb_bof = block_onefork_symbol_off_fragment_buried_symbol smb_frb in
    B1s_v_off_block_onefork_symbol smb_bof
;;

let block_onesinglebifork_symbol_off_fragment_buried_symbol smb_frb =
  let smb_bob = block_onebifork_symbol_off_fragment_buried_symbol smb_frb in
    B1bs_v_off_block_onebifork_symbol smb_bob
;;

let block_onesinglebiforksinglesingle_symbol_off_fragment_buried_symbol smb_frb =
  let smb_osb = block_onesinglebifork_symbol_off_fragment_buried_symbol smb_frb in
    B1sbs_v_off_block_onesinglebifork_symbol smb_osb
;;

let block_onedoublebifork_symbol_off_fragment_buried_symbol smb_frb =
  let smb_bob = block_onebifork_symbol_off_fragment_buried_symbol smb_frb in
    B1bs_v_off_block_onebifork_symbol smb_bob
;;

let block_onetrifork_symbol_off_fragment_buried_symbol smb_frb =
  let smb_bof = block_onefork_symbol_off_fragment_buried_symbol smb_frb in
    B1s_v_off_block_onefork_symbol smb_bof
;;

let block_onesingletriforksinglesinglesingle_symbol_off_fragment_buried_symbol smb_frb =
  let smb_bot = block_onetrifork_symbol_off_fragment_buried_symbol smb_frb in
    B1ts_v_off_block_onetrifork_symbol smb_bot
;;


(** {6 Querying.} *)

let is_block_onefork_symbol_off_fragment_buried_symbol = function
  | Fragment_buried_symbol_t.Block_onefork_symbol _ -> true
  | _ -> false
;;

let is_block_onebifork_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onefork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
  let smb_bof = block_onefork_symbol_off_fragment_buried_symbol smb_frb in
      B1s_v.is_block_onebifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

let is_block_onesinglebifork_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onebifork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
  let smb_bob = block_onebifork_symbol_off_fragment_buried_symbol smb_frb in
      B1bs_v.is_block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

let is_block_onesinglebiforksinglesingle_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onesinglebifork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
  let smb_osb = block_onesinglebifork_symbol_off_fragment_buried_symbol smb_frb in
      B1sbs_v.is_block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol smb_osb
    end
;;

let is_block_onedoublebifork_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onebifork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
  let smb_bob = block_onebifork_symbol_off_fragment_buried_symbol smb_frb in
      B1bs_v.is_block_onedoublebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

let is_block_onetrifork_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onefork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
  let smb_bof = block_onefork_symbol_off_fragment_buried_symbol smb_frb in
      B1s_v.is_block_onetrifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

let is_block_onesingletriforksinglesinglesingle_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onetrifork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
  let smb_bot = block_onetrifork_symbol_off_fragment_buried_symbol smb_frb in
      B1ts_v.is_block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot
    end
;;


(** {6 Upgrading.} *)

let fragment_onefork = Fbs_t.Fragment_onefork;;

let fragment_buried_symbol_of_block_onefork_symbol smb_bof =
Fbs_v.block_onefork_symbol smb_bof
;;

let block_onefork_symbol_of_block_onebifork_symbol smb_bob =
  let smb_bof = B1s_v.block_onefork_symbol_of_block_onebifork_symbol smb_bob in
fragment_buried_symbol_of_block_onefork_symbol smb_bof
;;

let block_onebifork_symbol_of_block_onesinglebifork_symbol smb_osb =
  let smb_bob = B1bs_v.block_onebifork_symbol_of_block_onesinglebifork_symbol smb_osb in
fragment_buried_symbol_of_block_onebifork_symbol smb_bob
;;

let block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss =
  let smb_osb = B1sbs_v.block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss in
fragment_buried_symbol_of_block_onesinglebifork_symbol smb_osb
;;

let block_onesinglebiforksinglesingle_symbol_of_block_onefork_symbol smb_bof =
B1sbsss_v.block_onefork_symbol smb_bof
;;

let block_onesinglebiforksinglesingle_symbol_of_block_onefork_symbol smb_bof =
B1sbsss_v.block_onefork_symbol smb_bof
;;

let block_onesinglebifork_symbol_of_block_onefork_symbol smb_bof =
B1sbs_v.block_onefork_symbol smb_bof
;;

let block_onebifork_symbol_of_block_onedoublebifork_symbol smb_odb =
  let smb_bob = B1bs_v.block_onebifork_symbol_of_block_onedoublebifork_symbol smb_odb in
fragment_buried_symbol_of_block_onebifork_symbol smb_bob
;;

let block_onedoublebifork_symbol_of_block_onefork_symbol smb_bof =
B1dbs_v.block_onefork_symbol smb_bof
;;

let block_onedoublebifork_symbol_of_block_onefork_symbol smb_bof =
B1dbs_v.block_onefork_symbol smb_bof
;;

let block_onefork_symbol_of_block_onetrifork_symbol smb_bot =
  let smb_bof = B1s_v.block_onefork_symbol_of_block_onetrifork_symbol smb_bot in
fragment_buried_symbol_of_block_onefork_symbol smb_bof
;;

let block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss =
  let smb_bot = B1ts_v.block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss in
fragment_buried_symbol_of_block_onetrifork_symbol smb_bot
;;

let block_onesingletriforksinglesinglesingle_symbol_of_block_onefork_symbol smb_bof =
B1stssss_v.block_onefork_symbol smb_bof
;;

let block_onesingletriforksinglesinglesingle_symbol_of_block_onefork_symbol smb_bof =
B1stssss_v.block_onefork_symbol smb_bof
;;

let polysegment_buried_leftextended = Fbs_t.Polysegment_buried_leftextended;;



(** created by ./generator fragment_buried v symbol at 11:8 26 Apr 2011. *)



