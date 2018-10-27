(** {3 A Symbol for a Block_onetrifork.} *)

let nam_cod = "block_onetrifork_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B1stssss_v = Block_onesingletriforksinglesinglesingle_symbol_v


let name = function
  | B1ts_v smb_sss ->
      B1stssss_v.name smb_sss
;;


let print ppf = function
  | B1ts_v smb_sss ->
      B1stssss_v.print ppf smb_sss
;;


(** {6 Extracting.} *)

let block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol = function
  | B1ts_v smb_sss -> smb_sss
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol"
     "Block_onesingletriforksinglesinglesingle_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol = function
  | Block_onetrifork_symbol_t.Block_onesingletriforksinglesinglesingle_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss =
B1ts_v.block_onesingletriforksinglesinglesingle_symbol smb_sss
;;

let block_onesingletriforksinglesinglesingle_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss =
B1stssss_v.block_onesingletriforksinglesinglesingle_symbol smb_sss
;;

let block_onesingletriforksinglesinglesingle_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_sss =
B1stssss_v.block_onesingletriforksinglesinglesingle_symbol smb_sss
;;



(** created by ./generator block_onetrifork v symbol at 11:8 26 Apr 2011. *)



