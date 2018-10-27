(** {3 A Symbol for a Block_onefork.} *)

let nam_cod = "block_onefork_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B1bs_v = Block_onebifork_symbol_v
module B1ts_v = Block_onetrifork_symbol_v


let name = function
  | B1s_v smb_bob ->
      B1bs_v.name smb_bob
  | B1s_v smb_bot ->
      B1ts_v.name smb_bot
;;


let print ppf = function
  | B1s_v smb_bob ->
      B1bs_v.print ppf smb_bob
  | B1s_v smb_bot ->
      B1ts_v.print ppf smb_bot
;;


(** {6 Extracting.} *)

let block_onebifork_symbol_off_block_onefork_symbol = function
  | B1s_v smb_bob -> smb_bob
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onebifork_symbol_off_block_onefork_symbol"
     "Block_onebifork_symbol"
     (name s)
    "check"
;;

let block_onesinglebifork_symbol_off_block_onefork_symbol smb_bof =
  let smb_bob = block_onebifork_symbol_off_block_onefork_symbol smb_bof in
    B1bs_v_off_block_onebifork_symbol smb_bob
;;

let block_onesinglebiforksinglesingle_symbol_off_block_onefork_symbol smb_bof =
  let smb_osb = block_onesinglebifork_symbol_off_block_onefork_symbol smb_bof in
    B1sbs_v_off_block_onesinglebifork_symbol smb_osb
;;

let block_onedoublebifork_symbol_off_block_onefork_symbol smb_bof =
  let smb_bob = block_onebifork_symbol_off_block_onefork_symbol smb_bof in
    B1bs_v_off_block_onebifork_symbol smb_bob
;;

let block_onetrifork_symbol_off_block_onefork_symbol = function
  | B1s_v smb_bot -> smb_bot
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onetrifork_symbol_off_block_onefork_symbol"
     "Block_onetrifork_symbol"
     (name s)
    "check"
;;

let block_onesingletriforksinglesinglesingle_symbol_off_block_onefork_symbol smb_bof =
  let smb_bot = block_onetrifork_symbol_off_block_onefork_symbol smb_bof in
    B1ts_v_off_block_onetrifork_symbol smb_bot
;;


(** {6 Querying.} *)

let is_block_onebifork_symbol_off_block_onefork_symbol = function
  | Block_onefork_symbol_t.Block_onebifork_symbol _ -> true
  | _ -> false
;;

let is_block_onesinglebifork_symbol_off_block_onefork_symbol smb_bof =
  if not (is_block_onebifork_symbol_off_block_onefork_symbol smb_bof)
  then false
  else
    begin
  let smb_bob = block_onebifork_symbol_off_block_onefork_symbol smb_bof in
      B1bs_v.is_block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

let is_block_onesinglebiforksinglesingle_symbol_off_block_onefork_symbol smb_bof =
  if not (is_block_onesinglebifork_symbol_off_block_onefork_symbol smb_bof)
  then false
  else
    begin
  let smb_osb = block_onesinglebifork_symbol_off_block_onefork_symbol smb_bof in
      B1sbs_v.is_block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol smb_osb
    end
;;

let is_block_onedoublebifork_symbol_off_block_onefork_symbol smb_bof =
  if not (is_block_onebifork_symbol_off_block_onefork_symbol smb_bof)
  then false
  else
    begin
  let smb_bob = block_onebifork_symbol_off_block_onefork_symbol smb_bof in
      B1bs_v.is_block_onedoublebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

let is_block_onetrifork_symbol_off_block_onefork_symbol = function
  | Block_onefork_symbol_t.Block_onetrifork_symbol _ -> true
  | _ -> false
;;

let is_block_onesingletriforksinglesinglesingle_symbol_off_block_onefork_symbol smb_bof =
  if not (is_block_onetrifork_symbol_off_block_onefork_symbol smb_bof)
  then false
  else
    begin
  let smb_bot = block_onetrifork_symbol_off_block_onefork_symbol smb_bof in
      B1ts_v.is_block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot
    end
;;


(** {6 Upgrading.} *)

let block_onefork_symbol_of_block_onebifork_symbol smb_bob =
B1s_v.block_onebifork_symbol smb_bob
;;

let block_onebifork_symbol_of_block_onesinglebifork_symbol smb_osb =
  let smb_bob = B1bs_v.block_onebifork_symbol_of_block_onesinglebifork_symbol smb_osb in
block_onefork_symbol_of_block_onebifork_symbol smb_bob
;;

let block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss =
  let smb_osb = B1sbs_v.block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss in
block_onefork_symbol_of_block_onesinglebifork_symbol smb_osb
;;

let block_onesinglebiforksinglesingle_symbol_of_block_onebifork_symbol smb_bob =
B1sbsss_v.block_onebifork_symbol smb_bob
;;

let block_onesinglebiforksinglesingle_symbol_of_block_onebifork_symbol smb_bob =
B1sbsss_v.block_onebifork_symbol smb_bob
;;

let block_onesinglebifork_symbol_of_block_onebifork_symbol smb_bob =
B1sbs_v.block_onebifork_symbol smb_bob
;;

let block_onebifork_symbol_of_block_onedoublebifork_symbol smb_odb =
  let smb_bob = B1bs_v.block_onebifork_symbol_of_block_onedoublebifork_symbol smb_odb in
block_onefork_symbol_of_block_onebifork_symbol smb_bob
;;

let block_onedoublebifork_symbol_of_block_onebifork_symbol smb_bob =
B1dbs_v.block_onebifork_symbol smb_bob
;;

let block_onedoublebifork_symbol_of_block_onebifork_symbol smb_bob =
B1dbs_v.block_onebifork_symbol smb_bob
;;

let block_onefork_symbol_of_block_onetrifork_symbol smb_bot =
B1s_v.block_onetrifork_symbol smb_bot
;;

let block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss =
  let smb_bot = B1ts_v.block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss in
block_onefork_symbol_of_block_onetrifork_symbol smb_bot
;;

let block_onesingletriforksinglesinglesingle_symbol_of_block_onetrifork_symbol smb_bot =
B1stssss_v.block_onetrifork_symbol smb_bot
;;

let block_onesingletriforksinglesinglesingle_symbol_of_block_onetrifork_symbol smb_bot =
B1stssss_v.block_onetrifork_symbol smb_bot
;;



(** created by ./generator block_onefork v symbol at 11:8 26 Apr 2011. *)



