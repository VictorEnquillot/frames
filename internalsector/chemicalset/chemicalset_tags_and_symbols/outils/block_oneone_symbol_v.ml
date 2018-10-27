(** {3 A Symbol for a Block_oneone.} *)

let nam_cod = "block_oneone_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B1s1ss_v = Block_onesingleonesingle_symbol_v
module B1s1ds_v = Block_onesingleonedouble_symbol_v
module B1s1ts_v = Block_onesingleonetriple_symbol_v
module B1d1ss_v = Block_onedoubleonesingle_symbol_v
module B1d1ds_v = Block_onedoubleonedouble_symbol_v
module B1t1ss_v = Block_onetripleonesingle_symbol_v


let name = function
  | B11s_v smb_sos ->
      B1s1ss_v.name smb_sos
  | B11s_v smb_sod ->
      B1s1ds_v.name smb_sod
  | B11s_v smb_sot ->
      B1s1ts_v.name smb_sot
  | B11s_v smb_ods ->
      B1d1ss_v.name smb_ods
  | B11s_v smb_odd ->
      B1d1ds_v.name smb_odd
  | B11s_v smb_ots ->
      B1t1ss_v.name smb_ots
;;


let print ppf = function
  | B11s_v smb_sos ->
      B1s1ss_v.print ppf smb_sos
  | B11s_v smb_sod ->
      B1s1ds_v.print ppf smb_sod
  | B11s_v smb_sot ->
      B1s1ts_v.print ppf smb_sot
  | B11s_v smb_ods ->
      B1d1ss_v.print ppf smb_ods
  | B11s_v smb_odd ->
      B1d1ds_v.print ppf smb_odd
  | B11s_v smb_ots ->
      B1t1ss_v.print ppf smb_ots
;;


(** {6 Extracting.} *)

let block_onesingleonesingle_symbol_off_block_oneone_symbol = function
  | B11s_v smb_sos -> smb_sos
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onesingleonesingle_symbol_off_block_oneone_symbol"
     "Block_onesingleonesingle_symbol"
     (name s)
    "check"
;;

let block_onesingleonedouble_symbol_off_block_oneone_symbol = function
  | B11s_v smb_sod -> smb_sod
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onesingleonedouble_symbol_off_block_oneone_symbol"
     "Block_onesingleonedouble_symbol"
     (name s)
    "check"
;;

let block_onesingleonetriple_symbol_off_block_oneone_symbol = function
  | B11s_v smb_sot -> smb_sot
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onesingleonetriple_symbol_off_block_oneone_symbol"
     "Block_onesingleonetriple_symbol"
     (name s)
    "check"
;;

let block_onedoubleonesingle_symbol_off_block_oneone_symbol = function
  | B11s_v smb_ods -> smb_ods
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onedoubleonesingle_symbol_off_block_oneone_symbol"
     "Block_onedoubleonesingle_symbol"
     (name s)
    "check"
;;

let block_onedoubleonedouble_symbol_off_block_oneone_symbol = function
  | B11s_v smb_odd -> smb_odd
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onedoubleonedouble_symbol_off_block_oneone_symbol"
     "Block_onedoubleonedouble_symbol"
     (name s)
    "check"
;;

let block_onetripleonesingle_symbol_off_block_oneone_symbol = function
  | B11s_v smb_ots -> smb_ots
  | s -> Erm_v.print_fatal_error nam_cod
     "block_onetripleonesingle_symbol_off_block_oneone_symbol"
     "Block_onetripleonesingle_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_block_onesingleonesingle_symbol_off_block_oneone_symbol = function
  | Block_oneone_symbol_t.Block_onesingleonesingle_symbol _ -> true
  | _ -> false
;;

let is_block_onesingleonedouble_symbol_off_block_oneone_symbol = function
  | Block_oneone_symbol_t.Block_onesingleonedouble_symbol _ -> true
  | _ -> false
;;

let is_block_onesingleonetriple_symbol_off_block_oneone_symbol = function
  | Block_oneone_symbol_t.Block_onesingleonetriple_symbol _ -> true
  | _ -> false
;;

let is_block_onedoubleonesingle_symbol_off_block_oneone_symbol = function
  | Block_oneone_symbol_t.Block_onedoubleonesingle_symbol _ -> true
  | _ -> false
;;

let is_block_onedoubleonedouble_symbol_off_block_oneone_symbol = function
  | Block_oneone_symbol_t.Block_onedoubleonedouble_symbol _ -> true
  | _ -> false
;;

let is_block_onetripleonesingle_symbol_off_block_oneone_symbol = function
  | Block_oneone_symbol_t.Block_onetripleonesingle_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let block_oneone_symbol_of_block_onesingleonesingle_symbol smb_sos =
B11s_v.block_onesingleonesingle_symbol smb_sos
;;

let block_onesingleonesingle_symbol_of_block_onesingleonesingle_symbol smb_sos =
B1s1ss_v.block_onesingleonesingle_symbol smb_sos
;;

let block_onesingleonesingle_symbol_of_block_onesingleonesingle_symbol smb_sos =
B1s1ss_v.block_onesingleonesingle_symbol smb_sos
;;

let block_onesingleonesingle_symbol_of_block_onesingleonesingle_symbol smb_sos =
B1s1ss_v.block_onesingleonesingle_symbol smb_sos
;;

let block_onesingleonesingle_symbol_of_block_onesingleonesingle_symbol smb_sos =
B1s1ss_v.block_onesingleonesingle_symbol smb_sos
;;

let block_onesingleonesingle_symbol_of_block_onesingleonesingle_symbol smb_sos =
B1s1ss_v.block_onesingleonesingle_symbol smb_sos
;;

let block_onesingleonesingle_symbol_of_block_onesingleonesingle_symbol smb_sos =
B1s1ss_v.block_onesingleonesingle_symbol smb_sos
;;

let block_oneone_symbol_of_block_onesingleonedouble_symbol smb_sod =
B11s_v.block_onesingleonedouble_symbol smb_sod
;;

let block_onesingleonedouble_symbol_of_block_onesingleonedouble_symbol smb_sod =
B1s1ds_v.block_onesingleonedouble_symbol smb_sod
;;

let block_onesingleonedouble_symbol_of_block_onesingleonedouble_symbol smb_sod =
B1s1ds_v.block_onesingleonedouble_symbol smb_sod
;;

let block_onesingleonedouble_symbol_of_block_onesingleonedouble_symbol smb_sod =
B1s1ds_v.block_onesingleonedouble_symbol smb_sod
;;

let block_oneone_symbol_of_block_onesingleonetriple_symbol smb_sot =
B11s_v.block_onesingleonetriple_symbol smb_sot
;;

let block_onesingleonetriple_symbol_of_block_onesingleonetriple_symbol smb_sot =
B1s1ts_v.block_onesingleonetriple_symbol smb_sot
;;

let block_onesingleonetriple_symbol_of_block_onesingleonetriple_symbol smb_sot =
B1s1ts_v.block_onesingleonetriple_symbol smb_sot
;;

let block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_ods =
B11s_v.block_onedoubleonesingle_symbol smb_ods
;;

let block_onedoubleonesingle_symbol_of_block_onedoubleonesingle_symbol smb_ods =
B1d1ss_v.block_onedoubleonesingle_symbol smb_ods
;;

let block_onedoubleonesingle_symbol_of_block_onedoubleonesingle_symbol smb_ods =
B1d1ss_v.block_onedoubleonesingle_symbol smb_ods
;;

let block_onedoubleonesingle_symbol_of_block_onedoubleonesingle_symbol smb_ods =
B1d1ss_v.block_onedoubleonesingle_symbol smb_ods
;;

let block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_odd =
B11s_v.block_onedoubleonedouble_symbol smb_odd
;;

let block_onedoubleonedouble_symbol_of_block_onedoubleonedouble_symbol smb_odd =
B1d1ds_v.block_onedoubleonedouble_symbol smb_odd
;;

let block_onedoubleonedouble_symbol_of_block_onedoubleonedouble_symbol smb_odd =
B1d1ds_v.block_onedoubleonedouble_symbol smb_odd
;;

let block_oneone_symbol_of_block_onetripleonesingle_symbol smb_ots =
B11s_v.block_onetripleonesingle_symbol smb_ots
;;

let block_onetripleonesingle_symbol_of_block_onetripleonesingle_symbol smb_ots =
B1t1ss_v.block_onetripleonesingle_symbol smb_ots
;;

let block_onetripleonesingle_symbol_of_block_onetripleonesingle_symbol smb_ots =
B1t1ss_v.block_onetripleonesingle_symbol smb_ots
;;



(** created by ./generator block_oneone v symbol at 11:8 26 Apr 2011. *)



