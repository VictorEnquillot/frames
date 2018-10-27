(** {3 A Symbol for a Block_zerofork.} *)

let nam_cod = "block_zerofork_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B0bs_v = Block_zerobifork_symbol_v
module B0ts_v = Block_zerotrifork_symbol_v
module B0qs_v = Block_zeroquadrifork_symbol_v


let name = function
  | B0s_v smb_bzb ->
      B0bs_v.name smb_bzb
  | B0s_v smb_bzt ->
      B0ts_v.name smb_bzt
  | B0s_v smb_bzq ->
      B0qs_v.name smb_bzq
;;


let print ppf = function
  | B0s_v smb_bzb ->
      B0bs_v.print ppf smb_bzb
  | B0s_v smb_bzt ->
      B0ts_v.print ppf smb_bzt
  | B0s_v smb_bzq ->
      B0qs_v.print ppf smb_bzq
;;


(** {6 Extracting.} *)

let block_zerobifork_symbol_off_block_zerofork_symbol = function
  | B0s_v smb_bzb -> smb_bzb
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zerobifork_symbol_off_block_zerofork_symbol"
     "Block_zerobifork_symbol"
     (name s)
    "check"
;;

let block_zerotrifork_symbol_off_block_zerofork_symbol = function
  | B0s_v smb_bzt -> smb_bzt
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zerotrifork_symbol_off_block_zerofork_symbol"
     "Block_zerotrifork_symbol"
     (name s)
    "check"
;;

let block_zeroquadrifork_symbol_off_block_zerofork_symbol = function
  | B0s_v smb_bzq -> smb_bzq
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zeroquadrifork_symbol_off_block_zerofork_symbol"
     "Block_zeroquadrifork_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_block_zerobifork_symbol_off_block_zerofork_symbol = function
  | Block_zerofork_symbol_t.Block_zerobifork_symbol _ -> true
  | _ -> false
;;

let is_block_zerotrifork_symbol_off_block_zerofork_symbol = function
  | Block_zerofork_symbol_t.Block_zerotrifork_symbol _ -> true
  | _ -> false
;;

let is_block_zeroquadrifork_symbol_off_block_zerofork_symbol = function
  | Block_zerofork_symbol_t.Block_zeroquadrifork_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb =
B0s_v.block_zerobifork_symbol smb_bzb
;;

let block_zerobifork_symbol_of_block_zerobifork_symbol smb_bzb =
B0bs_v.block_zerobifork_symbol smb_bzb
;;

let block_zerobifork_symbol_of_block_zerobifork_symbol smb_bzb =
B0bs_v.block_zerobifork_symbol smb_bzb
;;

let block_zerobifork_symbol_of_block_zerobifork_symbol smb_bzb =
B0bs_v.block_zerobifork_symbol smb_bzb
;;

let block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt =
B0s_v.block_zerotrifork_symbol smb_bzt
;;

let block_zerotrifork_symbol_of_block_zerotrifork_symbol smb_bzt =
B0ts_v.block_zerotrifork_symbol smb_bzt
;;

let block_zerotrifork_symbol_of_block_zerotrifork_symbol smb_bzt =
B0ts_v.block_zerotrifork_symbol smb_bzt
;;

let block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq =
B0s_v.block_zeroquadrifork_symbol smb_bzq
;;

let block_zeroquadrifork_symbol_of_block_zeroquadrifork_symbol smb_bzq =
B0qs_v.block_zeroquadrifork_symbol smb_bzq
;;

let block_zeroquadrifork_symbol_of_block_zeroquadrifork_symbol smb_bzq =
B0qs_v.block_zeroquadrifork_symbol smb_bzq
;;



(** created by ./generator block_zerofork v symbol at 11:8 26 Apr 2011. *)



