(** {3 A Symbol for a Block_oneend.} *)

let nam_cod = "block_oneend_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B1s_v = Block_onefork_symbol_v
module B10s_v = Block_onezero_symbol_v


let name = function
  | B1es_v smb_bof ->
      B1s_v.name smb_bof
  | B1es_v smb_boz ->
      B10s_v.name smb_boz
;;


let print ppf = function
  | B1es_v smb_bof ->
      B1s_v.print ppf smb_bof
  | B1es_v smb_boz ->
      B10s_v.print ppf smb_boz
;;


(** {6 Extracting.} *)

let block_onefork_symbol_off_block_oneend_symbol = function
  | B1es_v smb_bof -> smb_bof
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onefork_symbol_off_block_oneend_symbol"
     "Block_onefork_symbol"
     (name s)
    "check"
;;

let block_onebifork_symbol_off_block_oneend_symbol smb_boe =
  let smb_bof = block_onefork_symbol_off_block_oneend_symbol smb_boe in
    B1s_v_off_block_onefork_symbol smb_bof
;;

let block_onesinglebifork_symbol_off_block_oneend_symbol smb_boe =
  let smb_bob = block_onebifork_symbol_off_block_oneend_symbol smb_boe in
    B1bs_v_off_block_onebifork_symbol smb_bob
;;

let block_onesinglebiforksinglesingle_symbol_off_block_oneend_symbol smb_boe =
  let smb_osb = block_onesinglebifork_symbol_off_block_oneend_symbol smb_boe in
    B1sbs_v_off_block_onesinglebifork_symbol smb_osb
;;

let block_onedoublebifork_symbol_off_block_oneend_symbol smb_boe =
  let smb_bob = block_onebifork_symbol_off_block_oneend_symbol smb_boe in
    B1bs_v_off_block_onebifork_symbol smb_bob
;;

let block_onetrifork_symbol_off_block_oneend_symbol smb_boe =
  let smb_bof = block_onefork_symbol_off_block_oneend_symbol smb_boe in
    B1s_v_off_block_onefork_symbol smb_bof
;;

let block_onesingletriforksinglesinglesingle_symbol_off_block_oneend_symbol smb_boe =
  let smb_bot = block_onetrifork_symbol_off_block_oneend_symbol smb_boe in
    B1ts_v_off_block_onetrifork_symbol smb_bot
;;

let block_onezero_symbol_off_block_oneend_symbol = function
  | B1es_v smb_boz -> smb_boz
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onezero_symbol_off_block_oneend_symbol"
     "Block_onezero_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_block_onefork_symbol_off_block_oneend_symbol = function
  | Block_oneend_symbol_t.Block_onefork_symbol _ -> true
  | _ -> false
;;

let is_block_onebifork_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onefork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
  let smb_bof = block_onefork_symbol_off_block_oneend_symbol smb_boe in
      B1s_v.is_block_onebifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

let is_block_onesinglebifork_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onebifork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
  let smb_bob = block_onebifork_symbol_off_block_oneend_symbol smb_boe in
      B1bs_v.is_block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

let is_block_onesinglebiforksinglesingle_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onesinglebifork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
  let smb_osb = block_onesinglebifork_symbol_off_block_oneend_symbol smb_boe in
      B1sbs_v.is_block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol smb_osb
    end
;;

let is_block_onedoublebifork_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onebifork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
  let smb_bob = block_onebifork_symbol_off_block_oneend_symbol smb_boe in
      B1bs_v.is_block_onedoublebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

let is_block_onetrifork_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onefork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
  let smb_bof = block_onefork_symbol_off_block_oneend_symbol smb_boe in
      B1s_v.is_block_onetrifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

let is_block_onesingletriforksinglesinglesingle_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onetrifork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
  let smb_bot = block_onetrifork_symbol_off_block_oneend_symbol smb_boe in
      B1ts_v.is_block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot
    end
;;

let is_block_onezero_symbol_off_block_oneend_symbol = function
  | Block_oneend_symbol_t.Block_onezero_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let block_oneend_symbol_of_block_onefork_symbol smb_bof =
B1es_v.block_onefork_symbol smb_bof
;;

let block_onefork_symbol_of_block_onebifork_symbol smb_bob =
  let smb_bof = B1s_v.block_onefork_symbol_of_block_onebifork_symbol smb_bob in
block_oneend_symbol_of_block_onefork_symbol smb_bof
;;

let block_onebifork_symbol_of_block_onesinglebifork_symbol smb_osb =
  let smb_bob = B1bs_v.block_onebifork_symbol_of_block_onesinglebifork_symbol smb_osb in
block_oneend_symbol_of_block_onebifork_symbol smb_bob
;;

let block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss =
  let smb_osb = B1sbs_v.block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss in
block_oneend_symbol_of_block_onesinglebifork_symbol smb_osb
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
block_oneend_symbol_of_block_onebifork_symbol smb_bob
;;

let block_onedoublebifork_symbol_of_block_onefork_symbol smb_bof =
B1dbs_v.block_onefork_symbol smb_bof
;;

let block_onedoublebifork_symbol_of_block_onefork_symbol smb_bof =
B1dbs_v.block_onefork_symbol smb_bof
;;

let block_onefork_symbol_of_block_onetrifork_symbol smb_bot =
  let smb_bof = B1s_v.block_onefork_symbol_of_block_onetrifork_symbol smb_bot in
block_oneend_symbol_of_block_onefork_symbol smb_bof
;;

let block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss =
  let smb_bot = B1ts_v.block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss in
block_oneend_symbol_of_block_onetrifork_symbol smb_bot
;;

let block_onesingletriforksinglesinglesingle_symbol_of_block_onefork_symbol smb_bof =
B1stssss_v.block_onefork_symbol smb_bof
;;

let block_onesingletriforksinglesinglesingle_symbol_of_block_onefork_symbol smb_bof =
B1stssss_v.block_onefork_symbol smb_bof
;;

let block_oneend_symbol_of_block_onezero_symbol smb_boz =
B1es_v.block_onezero_symbol smb_boz
;;

let block_onezero_symbol_of_block_onezero_symbol smb_boz =
B10s_v.block_onezero_symbol smb_boz
;;

let block_onezero_symbol_of_block_onezero_symbol smb_boz =
B10s_v.block_onezero_symbol smb_boz
;;

let block_onezero_symbol_of_block_onezero_symbol smb_boz =
B10s_v.block_onezero_symbol smb_boz
;;

let block_onezero_symbol_of_block_onezero_symbol smb_boz =
B10s_v.block_onezero_symbol smb_boz
;;



(** created by ./generator block_oneend v symbol at 11:8 26 Apr 2011. *)



