(** {3 A Symbol for a Block_onesinglebifork.} *)

let nam_cod = "block_onesinglebifork_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B1sbsss_v = Block_onesinglebiforksinglesingle_symbol_v


let name = function
  | B1sbs_v smb_oss ->
      B1sbsss_v.name smb_oss
  | B1sbs_t.Block_onesinglebiforksinglesingleconjugated -> "block_onesinglebiforksinglesingleconjugated"
;;


let print ppf = function
  | B1sbs_v smb_oss ->
      B1sbsss_v.print ppf smb_oss
  | B1sbs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)

let block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol = function
  | B1sbs_v smb_oss -> smb_oss
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol"
     "Block_onesinglebiforksinglesingle_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol = function
  | Block_onesinglebifork_symbol_t.Block_onesinglebiforksinglesingle_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss =
B1sbs_v.block_onesinglebiforksinglesingle_symbol smb_oss
;;

let block_onesinglebiforksinglesingle_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss =
B1sbsss_v.block_onesinglebiforksinglesingle_symbol smb_oss
;;

let block_onesinglebiforksinglesingle_symbol_of_block_onesinglebiforksinglesingle_symbol smb_oss =
B1sbsss_v.block_onesinglebiforksinglesingle_symbol smb_oss
;;

let block_onesinglebiforksinglesingleconjugated = B1sbs_t.Block_onesinglebiforksinglesingleconjugated;;



(** created by ./generator block_onesinglebifork v symbol at 11:8 26 Apr 2011. *)



