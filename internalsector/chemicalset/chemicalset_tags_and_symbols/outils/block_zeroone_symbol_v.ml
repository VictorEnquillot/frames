(** {3 A Symbol for a Block_zeroone.} *)

let nam_cod = "block_zeroone_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B01ss_v = Block_zeroonesingle_symbol_v
module B01ds_v = Block_zeroonedouble_symbol_v
module B01ts_v = Block_zeroonetriple_symbol_v


let name = function
  | B01s_v smb_zos ->
      B01ss_v.name smb_zos
  | B01s_v smb_zod ->
      B01ds_v.name smb_zod
  | B01s_v smb_zot ->
      B01ts_v.name smb_zot
  | B01s_t.Block_zeroonehalfbridge -> "block_zeroonehalfbridge"
;;


let print ppf = function
  | B01s_v smb_zos ->
      B01ss_v.print ppf smb_zos
  | B01s_v smb_zod ->
      B01ds_v.print ppf smb_zod
  | B01s_v smb_zot ->
      B01ts_v.print ppf smb_zot
  | B01s_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)

let block_zeroonesingle_symbol_off_block_zeroone_symbol = function
  | B01s_v smb_zos -> smb_zos
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zeroonesingle_symbol_off_block_zeroone_symbol"
     "Block_zeroonesingle_symbol"
     (name s)
    "check"
;;

let block_zeroonedouble_symbol_off_block_zeroone_symbol = function
  | B01s_v smb_zod -> smb_zod
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zeroonedouble_symbol_off_block_zeroone_symbol"
     "Block_zeroonedouble_symbol"
     (name s)
    "check"
;;

let block_zeroonetriple_symbol_off_block_zeroone_symbol = function
  | B01s_v smb_zot -> smb_zot
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zeroonetriple_symbol_off_block_zeroone_symbol"
     "Block_zeroonetriple_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_block_zeroonesingle_symbol_off_block_zeroone_symbol = function
  | Block_zeroone_symbol_t.Block_zeroonesingle_symbol _ -> true
  | _ -> false
;;

let is_block_zeroonedouble_symbol_off_block_zeroone_symbol = function
  | Block_zeroone_symbol_t.Block_zeroonedouble_symbol _ -> true
  | _ -> false
;;

let is_block_zeroonetriple_symbol_off_block_zeroone_symbol = function
  | Block_zeroone_symbol_t.Block_zeroonetriple_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let block_zeroone_symbol_of_block_zeroonesingle_symbol smb_zos =
B01s_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroonesingle_symbol_of_block_zeroonesingle_symbol smb_zos =
B01ss_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroonesingle_symbol_of_block_zeroonesingle_symbol smb_zos =
B01ss_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroonesingle_symbol_of_block_zeroonesingle_symbol smb_zos =
B01ss_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroonesingle_symbol_of_block_zeroonesingle_symbol smb_zos =
B01ss_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroonesingle_symbol_of_block_zeroonesingle_symbol smb_zos =
B01ss_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroonesingle_symbol_of_block_zeroonesingle_symbol smb_zos =
B01ss_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroonesingle_symbol_of_block_zeroonesingle_symbol smb_zos =
B01ss_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroonesingle_symbol_of_block_zeroonesingle_symbol smb_zos =
B01ss_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroonesingle_symbol_of_block_zeroonesingle_symbol smb_zos =
B01ss_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroonesingle_symbol_of_block_zeroonesingle_symbol smb_zos =
B01ss_v.block_zeroonesingle_symbol smb_zos
;;

let block_zeroone_symbol_of_block_zeroonedouble_symbol smb_zod =
B01s_v.block_zeroonedouble_symbol smb_zod
;;

let block_zeroonedouble_symbol_of_block_zeroonedouble_symbol smb_zod =
B01ds_v.block_zeroonedouble_symbol smb_zod
;;

let block_zeroonedouble_symbol_of_block_zeroonedouble_symbol smb_zod =
B01ds_v.block_zeroonedouble_symbol smb_zod
;;

let block_zeroonedouble_symbol_of_block_zeroonedouble_symbol smb_zod =
B01ds_v.block_zeroonedouble_symbol smb_zod
;;

let block_zeroonedouble_symbol_of_block_zeroonedouble_symbol smb_zod =
B01ds_v.block_zeroonedouble_symbol smb_zod
;;

let block_zeroone_symbol_of_block_zeroonetriple_symbol smb_zot =
B01s_v.block_zeroonetriple_symbol smb_zot
;;

let block_zeroonetriple_symbol_of_block_zeroonetriple_symbol smb_zot =
B01ts_v.block_zeroonetriple_symbol smb_zot
;;

let block_zeroonehalfbridge = B01s_t.Block_zeroonehalfbridge;;



(** created by ./generator block_zeroone v symbol at 11:8 26 Apr 2011. *)



