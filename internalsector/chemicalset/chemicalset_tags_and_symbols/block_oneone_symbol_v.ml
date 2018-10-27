(** {3 A Symbol for a Block_oneone.} *)

let nam_mod = "Block_oneone_symbol_v";;

(** {6 Modules.} *)

module Bdds_t = Block_onedoubleonedouble_symbol_t
module Bdds_v = Block_onedoubleonedouble_symbol_v
module Bdss_t = Block_onedoubleonesingle_symbol_t
module Bdss_v = Block_onedoubleonesingle_symbol_v
module Boos_t = Block_oneone_symbol_t
module Bsds_t = Block_onesingleonedouble_symbol_t
module Bsds_v = Block_onesingleonedouble_symbol_v
module Bsss_t = Block_onesingleonesingle_symbol_t
module Bsss_v = Block_onesingleonesingle_symbol_v
module Bsts_t = Block_onesingleonetriple_symbol_t
module Bsts_v = Block_onesingleonetriple_symbol_v
module Btss_t = Block_onetripleonesingle_symbol_t
module Btss_v = Block_onetripleonesingle_symbol_v

(** {6 Displaying.} *)

let name = function
  | Boos_t.Block_onesingleonesingle_symbol smb_bss -> 
      Bsss_v.name smb_bss
  | Boos_t.Block_onesingleonedouble_symbol smb_bsd -> 
      Bsds_v.name smb_bsd
  | Boos_t.Block_onesingleonetriple_symbol smb_bst -> 
      Bsts_v.name smb_bst
  | Boos_t.Block_onedoubleonesingle_symbol smb_bds -> 
      Bdss_v.name smb_bds
  | Boos_t.Block_onedoubleonedouble_symbol smb_bdd -> 
      Bdds_v.name smb_bdd
  | Boos_t.Block_onetripleonesingle_symbol smb_bts -> 
      Btss_v.name smb_bts
;;

let print ppf = function
  | Boos_t.Block_onesingleonesingle_symbol smb_bss -> 
      Bsss_v.print ppf smb_bss
  | Boos_t.Block_onesingleonedouble_symbol smb_bsd -> 
      Bsds_v.print ppf smb_bsd
  | Boos_t.Block_onesingleonetriple_symbol smb_bst -> 
      Bsts_v.print ppf smb_bst
  | Boos_t.Block_onedoubleonesingle_symbol smb_bds -> 
      Bdss_v.print ppf smb_bds
  | Boos_t.Block_onedoubleonedouble_symbol smb_bdd -> 
      Bdds_v.print ppf smb_bdd
  | Boos_t.Block_onetripleonesingle_symbol smb_bts -> 
      Btss_v.print ppf smb_bts
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_oneone_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Block_onesingleonesingle from Block_oneone.} *)

let block_onesingleonesingle_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onesingleonesingle_symbol smb_bss -> smb_bss
  | s ->  print_fatal_error
      "block_onesingleonesingle_symbol_off_block_oneone_symbol"
      "Block_onesingleonesingle_symbol" (name s)
;;

(** {9 Extracting Ch2_ss from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from ch2_ss 0. *)

(** {9 Extracting Co_ss from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from co_ss 0. *)

(** {9 Extracting Nh2_ss_1p from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from nh2_ss_1p 0. *)

(** {9 Extracting Nh_ss from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from nh_ss 0. *)

(** {9 Extracting O_ss from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from o_ss 0. *)

(** {9 Extracting S_ss from Block_onesingleonesingle from Block_oneone.} *)

(* No Extraction from s_ss 0. *)

(** {6 Extracting Block_onesingleonedouble from Block_oneone.} *)

let block_onesingleonedouble_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onesingleonedouble_symbol smb_bsd -> smb_bsd
  | s ->  print_fatal_error
      "block_onesingleonedouble_symbol_off_block_oneone_symbol"
      "Block_onesingleonedouble_symbol" (name s)
;;

(** {9 Extracting Ch_sd from Block_onesingleonedouble from Block_oneone.} *)

(* No Extraction from ch_sd 0. *)

(** {9 Extracting N_sd from Block_onesingleonedouble from Block_oneone.} *)

(* No Extraction from n_sd 0. *)

(** {9 Extracting N_sd_1p from Block_onesingleonedouble from Block_oneone.} *)

(* No Extraction from n_sd_1p 0. *)

(** {6 Extracting Block_onesingleonetriple from Block_oneone.} *)

let block_onesingleonetriple_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onesingleonetriple_symbol smb_bst -> smb_bst
  | s ->  print_fatal_error
      "block_onesingleonetriple_symbol_off_block_oneone_symbol"
      "Block_onesingleonetriple_symbol" (name s)
;;

(** {9 Extracting C_st from Block_onesingleonetriple from Block_oneone.} *)

(* No Extraction from c_st 0. *)

(** {9 Extracting N_st_1p from Block_onesingleonetriple from Block_oneone.} *)

(* No Extraction from n_st_1p 0. *)

(** {6 Extracting Block_onedoubleonesingle from Block_oneone.} *)

let block_onedoubleonesingle_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onedoubleonesingle_symbol smb_bds -> smb_bds
  | s ->  print_fatal_error
      "block_onedoubleonesingle_symbol_off_block_oneone_symbol"
      "Block_onedoubleonesingle_symbol" (name s)
;;

(** {9 Extracting Ch_ds from Block_onedoubleonesingle from Block_oneone.} *)

(* No Extraction from ch_ds 0. *)

(** {9 Extracting N_ds from Block_onedoubleonesingle from Block_oneone.} *)

(* No Extraction from n_ds 0. *)

(** {9 Extracting Nh_ds_1p from Block_onedoubleonesingle from Block_oneone.} *)

(* No Extraction from nh_ds_1p 0. *)

(** {6 Extracting Block_onedoubleonedouble from Block_oneone.} *)

let block_onedoubleonedouble_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onedoubleonedouble_symbol smb_bdd -> smb_bdd
  | s ->  print_fatal_error
      "block_onedoubleonedouble_symbol_off_block_oneone_symbol"
      "Block_onedoubleonedouble_symbol" (name s)
;;

(** {9 Extracting C_dd from Block_onedoubleonedouble from Block_oneone.} *)

(* No Extraction from c_dd 0. *)

(** {9 Extracting N_dd_1p from Block_onedoubleonedouble from Block_oneone.} *)

(* No Extraction from n_dd_1p 0. *)

(** {6 Extracting Block_onetripleonesingle from Block_oneone.} *)

let block_onetripleonesingle_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onetripleonesingle_symbol smb_bts -> smb_bts
  | s ->  print_fatal_error
      "block_onetripleonesingle_symbol_off_block_oneone_symbol"
      "Block_onetripleonesingle_symbol" (name s)
;;

(** {9 Extracting C_ts from Block_onetripleonesingle from Block_oneone.} *)

(* No Extraction from c_ts 0. *)

(** {9 Extracting N_ts_1p from Block_onetripleonesingle from Block_oneone.} *)

(* No Extraction from n_ts_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Block_onesingleonesingle in Block_oneone.} *)

let is_block_onesingleonesingle_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onesingleonesingle_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ch2_ss in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from ch2_ss 0. *)


(** {9 Querying Co_ss in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from co_ss 0. *)


(** {9 Querying Nh2_ss_1p in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from nh2_ss_1p 0. *)


(** {9 Querying Nh_ss in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from nh_ss 0. *)


(** {9 Querying O_ss in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from o_ss 0. *)


(** {9 Querying S_ss in Block_onesingleonesingle in Block_oneone.} *)

(* No Query from s_ss 0. *)


(** {6 Querying Block_onesingleonedouble in Block_oneone.} *)

let is_block_onesingleonedouble_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onesingleonedouble_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ch_sd in Block_onesingleonedouble in Block_oneone.} *)

(* No Query from ch_sd 0. *)


(** {9 Querying N_sd in Block_onesingleonedouble in Block_oneone.} *)

(* No Query from n_sd 0. *)


(** {9 Querying N_sd_1p in Block_onesingleonedouble in Block_oneone.} *)

(* No Query from n_sd_1p 0. *)


(** {6 Querying Block_onesingleonetriple in Block_oneone.} *)

let is_block_onesingleonetriple_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onesingleonetriple_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_st in Block_onesingleonetriple in Block_oneone.} *)

(* No Query from c_st 0. *)


(** {9 Querying N_st_1p in Block_onesingleonetriple in Block_oneone.} *)

(* No Query from n_st_1p 0. *)


(** {6 Querying Block_onedoubleonesingle in Block_oneone.} *)

let is_block_onedoubleonesingle_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onedoubleonesingle_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ch_ds in Block_onedoubleonesingle in Block_oneone.} *)

(* No Query from ch_ds 0. *)


(** {9 Querying N_ds in Block_onedoubleonesingle in Block_oneone.} *)

(* No Query from n_ds 0. *)


(** {9 Querying Nh_ds_1p in Block_onedoubleonesingle in Block_oneone.} *)

(* No Query from nh_ds_1p 0. *)


(** {6 Querying Block_onedoubleonedouble in Block_oneone.} *)

let is_block_onedoubleonedouble_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onedoubleonedouble_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_dd in Block_onedoubleonedouble in Block_oneone.} *)

(* No Query from c_dd 0. *)


(** {9 Querying N_dd_1p in Block_onedoubleonedouble in Block_oneone.} *)

(* No Query from n_dd_1p 0. *)


(** {6 Querying Block_onetripleonesingle in Block_oneone.} *)

let is_block_onetripleonesingle_symbol_off_block_oneone_symbol = function
  | Boos_t.Block_onetripleonesingle_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_ts in Block_onetripleonesingle in Block_oneone.} *)

(* No Query from c_ts 0. *)


(** {9 Querying N_ts_1p in Block_onetripleonesingle in Block_oneone.} *)

(* No Query from n_ts_1p 0. *)


(** {6 Upgrading from Block_onesingleonesingle to Block_oneone.} *)

let block_oneone_symbol_of_block_onesingleonesingle_symbol smb_bss =
  Boos_t.Block_onesingleonesingle_symbol smb_bss
;;

(** {9 Upgrading from Ch2_ss through Block_onesingleonesingle to Block_oneone.} *)

let ch2_ss = block_oneone_symbol_of_block_onesingleonesingle_symbol Bsss_t.Ch2_ss;;

(** {9 Upgrading from Co_ss through Block_onesingleonesingle to Block_oneone.} *)

let co_ss = block_oneone_symbol_of_block_onesingleonesingle_symbol Bsss_t.Co_ss;;

(** {9 Upgrading from Nh2_ss_1p through Block_onesingleonesingle to Block_oneone.} *)

let nh2_ss_1p = block_oneone_symbol_of_block_onesingleonesingle_symbol Bsss_t.Nh2_ss_1p;;

(** {9 Upgrading from Nh_ss through Block_onesingleonesingle to Block_oneone.} *)

let nh_ss = block_oneone_symbol_of_block_onesingleonesingle_symbol Bsss_t.Nh_ss;;

(** {9 Upgrading from O_ss through Block_onesingleonesingle to Block_oneone.} *)

let o_ss = block_oneone_symbol_of_block_onesingleonesingle_symbol Bsss_t.O_ss;;

(** {9 Upgrading from S_ss through Block_onesingleonesingle to Block_oneone.} *)

let s_ss = block_oneone_symbol_of_block_onesingleonesingle_symbol Bsss_t.S_ss;;

(** {6 Upgrading from Block_onesingleonedouble to Block_oneone.} *)

let block_oneone_symbol_of_block_onesingleonedouble_symbol smb_bsd =
  Boos_t.Block_onesingleonedouble_symbol smb_bsd
;;

(** {9 Upgrading from Ch_sd through Block_onesingleonedouble to Block_oneone.} *)

let ch_sd = block_oneone_symbol_of_block_onesingleonedouble_symbol Bsds_t.Ch_sd;;

(** {9 Upgrading from N_sd through Block_onesingleonedouble to Block_oneone.} *)

let n_sd = block_oneone_symbol_of_block_onesingleonedouble_symbol Bsds_t.N_sd;;

(** {9 Upgrading from N_sd_1p through Block_onesingleonedouble to Block_oneone.} *)

let n_sd_1p = block_oneone_symbol_of_block_onesingleonedouble_symbol Bsds_t.N_sd_1p;;

(** {6 Upgrading from Block_onesingleonetriple to Block_oneone.} *)

let block_oneone_symbol_of_block_onesingleonetriple_symbol smb_bst =
  Boos_t.Block_onesingleonetriple_symbol smb_bst
;;

(** {9 Upgrading from C_st through Block_onesingleonetriple to Block_oneone.} *)

let c_st = block_oneone_symbol_of_block_onesingleonetriple_symbol Bsts_t.C_st;;

(** {9 Upgrading from N_st_1p through Block_onesingleonetriple to Block_oneone.} *)

let n_st_1p = block_oneone_symbol_of_block_onesingleonetriple_symbol Bsts_t.N_st_1p;;

(** {6 Upgrading from Block_onedoubleonesingle to Block_oneone.} *)

let block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_bds =
  Boos_t.Block_onedoubleonesingle_symbol smb_bds
;;

(** {9 Upgrading from Ch_ds through Block_onedoubleonesingle to Block_oneone.} *)

let ch_ds = block_oneone_symbol_of_block_onedoubleonesingle_symbol Bdss_t.Ch_ds;;

(** {9 Upgrading from N_ds through Block_onedoubleonesingle to Block_oneone.} *)

let n_ds = block_oneone_symbol_of_block_onedoubleonesingle_symbol Bdss_t.N_ds;;

(** {9 Upgrading from Nh_ds_1p through Block_onedoubleonesingle to Block_oneone.} *)

let nh_ds_1p = block_oneone_symbol_of_block_onedoubleonesingle_symbol Bdss_t.Nh_ds_1p;;

(** {6 Upgrading from Block_onedoubleonedouble to Block_oneone.} *)

let block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_bdd =
  Boos_t.Block_onedoubleonedouble_symbol smb_bdd
;;

(** {9 Upgrading from C_dd through Block_onedoubleonedouble to Block_oneone.} *)

let c_dd = block_oneone_symbol_of_block_onedoubleonedouble_symbol Bdds_t.C_dd;;

(** {9 Upgrading from N_dd_1p through Block_onedoubleonedouble to Block_oneone.} *)

let n_dd_1p = block_oneone_symbol_of_block_onedoubleonedouble_symbol Bdds_t.N_dd_1p;;

(** {6 Upgrading from Block_onetripleonesingle to Block_oneone.} *)

let block_oneone_symbol_of_block_onetripleonesingle_symbol smb_bts =
  Boos_t.Block_onetripleonesingle_symbol smb_bts
;;

(** {9 Upgrading from C_ts through Block_onetripleonesingle to Block_oneone.} *)

let c_ts = block_oneone_symbol_of_block_onetripleonesingle_symbol Btss_t.C_ts;;

(** {9 Upgrading from N_ts_1p through Block_onetripleonesingle to Block_oneone.} *)

let n_ts_1p = block_oneone_symbol_of_block_onetripleonesingle_symbol Btss_t.N_ts_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_oneone 12 January 2011. *)

