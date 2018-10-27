(** {3 A Symbol for a Block_onebifork.} *)

let nam_cod = "block_onebifork_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B1sbs_v = Block_onesinglebifork_symbol_v
module B1dbs_v = Block_onedoublebifork_symbol_v


let name = function
  | B1bs_v smb_osb ->
      B1sbs_v.name smb_osb
  | B1bs_v smb_odb ->
      B1dbs_v.name smb_odb
;;


let print ppf = function
  | B1bs_v smb_osb ->
      B1sbs_v.print ppf smb_osb
  | B1bs_v smb_odb ->
      B1dbs_v.print ppf smb_odb
;;


(** {6 Extracting.} *)

let block_onesinglebifork_symbol_off_block_onebifork_symbol = function
  | B1bs_v smb_osb -> smb_osb
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onesinglebifork_symbol_off_block_onebifork_symbol"
     "Block_onesinglebifork_symbol"
     (name s)
    "check"
;;

let block_onesinglebiforksinglesingle_symbol_off_block_onebifork_symbol smb_bob =
  let smb_osb = block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob in
    B1sbs_v_off_block_onesinglebifork_symbol smb_osb
;;

let block_onedoublebifork_symbol_off_block_onebifork_symbol = function
  | B1bs_v smb_odb -> smb_odb
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onedoublebifork_symbol_off_block_onebifork_symbol"
     "Block_onedoublebifork_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_block_onesinglebifork_symbol_off_block_onebifork_symbol = function
  | Block_onebifork_symbol_t.Block_onesinglebifork_symbol _ -> true
  | _ -> false
;;

let is_block_onesinglebiforksinglesingle_symbol_off_block_onebifork_symbol smb_bob =
  if not (is_block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob)
  then false
  else
    begin
  let smb_osb = block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob in
      B1sbs_v.is_block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol smb_osb
    end
;;

let is_block_onedoublebifork_symbol_off_block_onebifork_symbol = function
  | Block_onebifork_symbol_t.Block_onedoublebifork_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let block_onebifork_symbol_of_block_onesinglebifork_symbol smb_osb =
B1bs_v.block_onesinglebifork_symbol smb_osb
;;

let block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss =
  let smb_osb = B1sbs_v.block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss in
block_onebifork_symbol_of_block_onesinglebifork_symbol smb_osb
;;

let block_onesinglebiforksinglesingle_symbol_of_block_onesinglebifork_symbol smb_osb =
B1sbsss_v.block_onesinglebifork_symbol smb_osb
;;

let block_onesinglebiforksinglesingle_symbol_of_block_onesinglebifork_symbol smb_osb =
B1sbsss_v.block_onesinglebifork_symbol smb_osb
;;

let block_onesinglebifork_symbol_of_block_onesinglebifork_symbol smb_osb =
B1sbs_v.block_onesinglebifork_symbol smb_osb
;;

let block_onebifork_symbol_of_block_onedoublebifork_symbol smb_odb =
B1bs_v.block_onedoublebifork_symbol smb_odb
;;

let block_onedoublebifork_symbol_of_block_onedoublebifork_symbol smb_odb =
B1dbs_v.block_onedoublebifork_symbol smb_odb
;;

let block_onedoublebifork_symbol_of_block_onedoublebifork_symbol smb_odb =
B1dbs_v.block_onedoublebifork_symbol smb_odb
;;



(** created by ./generator block_onebifork v symbol at 11:8 26 Apr 2011. *)



