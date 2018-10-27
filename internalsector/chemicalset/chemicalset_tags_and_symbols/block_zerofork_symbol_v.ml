(** {3 A Symbol for a Block_zerofork.} *)

let nam_mod = "Block_zerofork_symbol_v";;

(** {6 Modules.} *)

module Bzbs_t = Block_zerobifork_symbol_t
module Bzbs_v = Block_zerobifork_symbol_v
module Bzfs_t = Block_zerofork_symbol_t
module Bzqs_t = Block_zeroquadrifork_symbol_t
module Bzqs_v = Block_zeroquadrifork_symbol_v
module Bzts_t = Block_zerotrifork_symbol_t
module Bzts_v = Block_zerotrifork_symbol_v

(** {6 Displaying.} *)

let name = function
  | Bzfs_t.Block_zerobifork_symbol smb_bzb -> 
      Bzbs_v.name smb_bzb
  | Bzfs_t.Block_zerotrifork_symbol smb_bzt -> 
      Bzts_v.name smb_bzt
  | Bzfs_t.Block_zeroquadrifork_symbol smb_bzq -> 
      Bzqs_v.name smb_bzq
;;

let print ppf = function
  | Bzfs_t.Block_zerobifork_symbol smb_bzb -> 
      Bzbs_v.print ppf smb_bzb
  | Bzfs_t.Block_zerotrifork_symbol smb_bzt -> 
      Bzts_v.print ppf smb_bzt
  | Bzfs_t.Block_zeroquadrifork_symbol smb_bzq -> 
      Bzqs_v.print ppf smb_bzq
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zerofork_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Block_zerobifork from Block_zerofork.} *)

let block_zerobifork_symbol_off_block_zerofork_symbol = function
  | Bzfs_t.Block_zerobifork_symbol smb_bzb -> smb_bzb
  | s ->  print_fatal_error
      "block_zerobifork_symbol_off_block_zerofork_symbol"
      "Block_zerobifork_symbol" (name s)
;;

(** {9 Extracting Ch_zsc from Block_zerobifork from Block_zerofork.} *)

(* No Extraction from ch_zsc 0. *)

(** {9 Extracting Ch_zsd from Block_zerobifork from Block_zerofork.} *)

(* No Extraction from ch_zsd 0. *)

(** {9 Extracting Nh_zs2 from Block_zerobifork from Block_zerofork.} *)

(* No Extraction from nh_zs2 0. *)

(** {6 Extracting Block_zerotrifork from Block_zerofork.} *)

let block_zerotrifork_symbol_off_block_zerofork_symbol = function
  | Bzfs_t.Block_zerotrifork_symbol smb_bzt -> smb_bzt
  | s ->  print_fatal_error
      "block_zerotrifork_symbol_off_block_zerofork_symbol"
      "Block_zerotrifork_symbol" (name s)
;;

(** {9 Extracting Ch_s3 from Block_zerotrifork from Block_zerofork.} *)

(* No Extraction from ch_s3 0. *)

(** {9 Extracting N_s3 from Block_zerotrifork from Block_zerofork.} *)

(* No Extraction from n_s3 0. *)

(** {6 Extracting Block_zeroquadrifork from Block_zerofork.} *)

let block_zeroquadrifork_symbol_off_block_zerofork_symbol = function
  | Bzfs_t.Block_zeroquadrifork_symbol smb_bzq -> smb_bzq
  | s ->  print_fatal_error
      "block_zeroquadrifork_symbol_off_block_zerofork_symbol"
      "Block_zeroquadrifork_symbol" (name s)
;;

(** {9 Extracting C_q from Block_zeroquadrifork from Block_zerofork.} *)

(* No Extraction from c_q 0. *)

(** {9 Extracting N_q_1p from Block_zeroquadrifork from Block_zerofork.} *)

(* No Extraction from n_q_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Block_zerobifork in Block_zerofork.} *)

let is_block_zerobifork_symbol_off_block_zerofork_symbol = function
  | Bzfs_t.Block_zerobifork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ch_zsc in Block_zerobifork in Block_zerofork.} *)

(* No Query from ch_zsc 0. *)


(** {9 Querying Ch_zsd in Block_zerobifork in Block_zerofork.} *)

(* No Query from ch_zsd 0. *)


(** {9 Querying Nh_zs2 in Block_zerobifork in Block_zerofork.} *)

(* No Query from nh_zs2 0. *)


(** {6 Querying Block_zerotrifork in Block_zerofork.} *)

let is_block_zerotrifork_symbol_off_block_zerofork_symbol = function
  | Bzfs_t.Block_zerotrifork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ch_s3 in Block_zerotrifork in Block_zerofork.} *)

(* No Query from ch_s3 0. *)


(** {9 Querying N_s3 in Block_zerotrifork in Block_zerofork.} *)

(* No Query from n_s3 0. *)


(** {6 Querying Block_zeroquadrifork in Block_zerofork.} *)

let is_block_zeroquadrifork_symbol_off_block_zerofork_symbol = function
  | Bzfs_t.Block_zeroquadrifork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_q in Block_zeroquadrifork in Block_zerofork.} *)

(* No Query from c_q 0. *)


(** {9 Querying N_q_1p in Block_zeroquadrifork in Block_zerofork.} *)

(* No Query from n_q_1p 0. *)


(** {6 Upgrading from Block_zerobifork to Block_zerofork.} *)

let block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb =
  Bzfs_t.Block_zerobifork_symbol smb_bzb
;;

(** {9 Upgrading from Ch_zsc through Block_zerobifork to Block_zerofork.} *)

let ch_zsc = block_zerofork_symbol_of_block_zerobifork_symbol Bzbs_t.Ch_zsc;;

(** {9 Upgrading from Ch_zsd through Block_zerobifork to Block_zerofork.} *)

let ch_zsd = block_zerofork_symbol_of_block_zerobifork_symbol Bzbs_t.Ch_zsd;;

(** {9 Upgrading from Nh_zs2 through Block_zerobifork to Block_zerofork.} *)

let nh_zs2 = block_zerofork_symbol_of_block_zerobifork_symbol Bzbs_t.Nh_zs2;;

(** {6 Upgrading from Block_zerotrifork to Block_zerofork.} *)

let block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt =
  Bzfs_t.Block_zerotrifork_symbol smb_bzt
;;

(** {9 Upgrading from Ch_s3 through Block_zerotrifork to Block_zerofork.} *)

let ch_s3 = block_zerofork_symbol_of_block_zerotrifork_symbol Bzts_t.Ch_s3;;

(** {9 Upgrading from N_s3 through Block_zerotrifork to Block_zerofork.} *)

let n_s3 = block_zerofork_symbol_of_block_zerotrifork_symbol Bzts_t.N_s3;;

(** {6 Upgrading from Block_zeroquadrifork to Block_zerofork.} *)

let block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq =
  Bzfs_t.Block_zeroquadrifork_symbol smb_bzq
;;

(** {9 Upgrading from C_q through Block_zeroquadrifork to Block_zerofork.} *)

let c_q = block_zerofork_symbol_of_block_zeroquadrifork_symbol Bzqs_t.C_q;;

(** {9 Upgrading from N_q_1p through Block_zeroquadrifork to Block_zerofork.} *)

let n_q_1p = block_zerofork_symbol_of_block_zeroquadrifork_symbol Bzqs_t.N_q_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zerofork 12 January 2011. *)

