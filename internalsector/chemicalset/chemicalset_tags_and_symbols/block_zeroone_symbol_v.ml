(** {3 A Symbol for a Block_zeroone.} *)

let nam_mod = "Block_zeroone_symbol_v";;

(** {6 Modules.} *)

module Bzds_t = Block_zeroonedouble_symbol_t
module Bzds_v = Block_zeroonedouble_symbol_v
module Bzos_t = Block_zeroone_symbol_t
module Bzss_t = Block_zeroonesingle_symbol_t
module Bzss_v = Block_zeroonesingle_symbol_v
module Bzts_t = Block_zeroonetriple_symbol_t
module Bzts_v = Block_zeroonetriple_symbol_v

(** {6 Displaying.} *)

let name = function
  | Bzos_t.Block_zeroonesingle_symbol smb_bzs -> 
      Bzss_v.name smb_bzs
  | Bzos_t.Block_zeroonedouble_symbol smb_bzd -> 
      Bzds_v.name smb_bzd
  | Bzos_t.Block_zeroonetriple_symbol smb_bzt -> 
      Bzts_v.name smb_bzt
  | Bzos_t.Block_zeroonehalfbridge -> Format.sprintf "%s" "block_zeroonehalfbridge"
;;

let print ppf = function
  | Bzos_t.Block_zeroonesingle_symbol smb_bzs -> 
      Bzss_v.print ppf smb_bzs
  | Bzos_t.Block_zeroonedouble_symbol smb_bzd -> 
      Bzds_v.print ppf smb_bzd
  | Bzos_t.Block_zeroonetriple_symbol smb_bzt -> 
      Bzts_v.print ppf smb_bzt
  | Bzos_t.Block_zeroonehalfbridge -> Format.fprintf ppf "%s" "block_zeroonehalfbridge"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zeroone_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Block_zeroonesingle from Block_zeroone.} *)

let block_zeroonesingle_symbol_off_block_zeroone_symbol = function
  | Bzos_t.Block_zeroonesingle_symbol smb_bzs -> smb_bzs
  | s ->  print_fatal_error
      "block_zeroonesingle_symbol_off_block_zeroone_symbol"
      "Block_zeroonesingle_symbol" (name s)
;;

(** {9 Extracting Ch3_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from ch3_zs 0. *)

(** {9 Extracting Coh_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from coh_zs 0. *)

(** {9 Extracting Coc2_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from coc2_zs 0. *)

(** {9 Extracting Ch2_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from ch2_zs 0. *)

(** {9 Extracting Nh2_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from nh2_zs 0. *)

(** {9 Extracting No_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from no_zs 0. *)

(** {9 Extracting No2_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from no2_zs 0. *)

(** {9 Extracting Nh3_zs_1p from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from nh3_zs_1p 0. *)

(** {9 Extracting Nh2_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from nh2_zs 0. *)

(** {9 Extracting Oh_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from oh_zs 0. *)

(** {9 Extracting Sh_zs from Block_zeroonesingle from Block_zeroone.} *)

(* No Extraction from sh_zs 0. *)

(** {6 Extracting Block_zeroonedouble from Block_zeroone.} *)

let block_zeroonedouble_symbol_off_block_zeroone_symbol = function
  | Bzos_t.Block_zeroonedouble_symbol smb_bzd -> smb_bzd
  | s ->  print_fatal_error
      "block_zeroonedouble_symbol_off_block_zeroone_symbol"
      "Block_zeroonedouble_symbol" (name s)
;;

(** {9 Extracting Ch2_d from Block_zeroonedouble from Block_zeroone.} *)

(* No Extraction from ch2_d 0. *)

(** {9 Extracting Co_d from Block_zeroonedouble from Block_zeroone.} *)

(* No Extraction from co_d 0. *)

(** {9 Extracting Nh_d from Block_zeroonedouble from Block_zeroone.} *)

(* No Extraction from nh_d 0. *)

(** {9 Extracting Nh2_d_1p from Block_zeroonedouble from Block_zeroone.} *)

(* No Extraction from nh2_d_1p 0. *)

(** {6 Extracting Block_zeroonetriple from Block_zeroone.} *)

let block_zeroonetriple_symbol_off_block_zeroone_symbol = function
  | Bzos_t.Block_zeroonetriple_symbol smb_bzt -> smb_bzt
  | s ->  print_fatal_error
      "block_zeroonetriple_symbol_off_block_zeroone_symbol"
      "Block_zeroonetriple_symbol" (name s)
;;

(** {9 Extracting Ch_t from Block_zeroonetriple from Block_zeroone.} *)

(* No Extraction from ch_t 0. *)

(** {6 Extracting Block_zeroonehalfbridge from Block_zeroone.} *)

(* No Extraction from block_zeroonehalfbridge 0. *)

(** {6 Querying.} *)

(** {6 Querying Block_zeroonesingle in Block_zeroone.} *)

let is_block_zeroonesingle_symbol_off_block_zeroone_symbol = function
  | Bzos_t.Block_zeroonesingle_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ch3_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from ch3_zs 0. *)


(** {9 Querying Coh_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from coh_zs 0. *)


(** {9 Querying Coc2_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from coc2_zs 0. *)


(** {9 Querying Ch2_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from ch2_zs 0. *)


(** {9 Querying Nh2_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from nh2_zs 0. *)


(** {9 Querying No_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from no_zs 0. *)


(** {9 Querying No2_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from no2_zs 0. *)


(** {9 Querying Nh3_zs_1p in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from nh3_zs_1p 0. *)


(** {9 Querying Nh2_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from nh2_zs 0. *)


(** {9 Querying Oh_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from oh_zs 0. *)


(** {9 Querying Sh_zs in Block_zeroonesingle in Block_zeroone.} *)

(* No Query from sh_zs 0. *)


(** {6 Querying Block_zeroonedouble in Block_zeroone.} *)

let is_block_zeroonedouble_symbol_off_block_zeroone_symbol = function
  | Bzos_t.Block_zeroonedouble_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ch2_d in Block_zeroonedouble in Block_zeroone.} *)

(* No Query from ch2_d 0. *)


(** {9 Querying Co_d in Block_zeroonedouble in Block_zeroone.} *)

(* No Query from co_d 0. *)


(** {9 Querying Nh_d in Block_zeroonedouble in Block_zeroone.} *)

(* No Query from nh_d 0. *)


(** {9 Querying Nh2_d_1p in Block_zeroonedouble in Block_zeroone.} *)

(* No Query from nh2_d_1p 0. *)


(** {6 Querying Block_zeroonetriple in Block_zeroone.} *)

let is_block_zeroonetriple_symbol_off_block_zeroone_symbol = function
  | Bzos_t.Block_zeroonetriple_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ch_t in Block_zeroonetriple in Block_zeroone.} *)

(* No Query from ch_t 0. *)


(** {6 Querying Block_zeroonehalfbridge in Block_zeroone.} *)

(* No Query from block_zeroonehalfbridge 0. *)

(** {6 Upgrading from Block_zeroonesingle to Block_zeroone.} *)

let block_zeroone_symbol_of_block_zeroonesingle_symbol smb_bzs =
  Bzos_t.Block_zeroonesingle_symbol smb_bzs
;;

(** {9 Upgrading from Ch3_zs through Block_zeroonesingle to Block_zeroone.} *)

let ch3_zs = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.Ch3_zs;;

(** {9 Upgrading from Coh_zs through Block_zeroonesingle to Block_zeroone.} *)

let coh_zs = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.Coh_zs;;

(** {9 Upgrading from Coc2_zs through Block_zeroonesingle to Block_zeroone.} *)

let coc2_zs = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.Coc2_zs;;

(** {9 Upgrading from Ch2_zs through Block_zeroonesingle to Block_zeroone.} *)

let ch2_zs = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.Ch2_zs;;

(** {9 Upgrading from Nh2_zs through Block_zeroonesingle to Block_zeroone.} *)

let nh2_zs = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.Nh2_zs;;

(** {9 Upgrading from No_zs through Block_zeroonesingle to Block_zeroone.} *)

let no_zs = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.No_zs;;

(** {9 Upgrading from No2_zs through Block_zeroonesingle to Block_zeroone.} *)

let no2_zs = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.No2_zs;;

(** {9 Upgrading from Nh3_zs_1p through Block_zeroonesingle to Block_zeroone.} *)

let nh3_zs_1p = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.Nh3_zs_1p;;

(** {9 Upgrading from Nh2_zs through Block_zeroonesingle to Block_zeroone.} *)

let nh2_zs = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.Nh2_zs;;

(** {9 Upgrading from Oh_zs through Block_zeroonesingle to Block_zeroone.} *)

let oh_zs = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.Oh_zs;;

(** {9 Upgrading from Sh_zs through Block_zeroonesingle to Block_zeroone.} *)

let sh_zs = block_zeroone_symbol_of_block_zeroonesingle_symbol Bzss_t.Sh_zs;;

(** {6 Upgrading from Block_zeroonedouble to Block_zeroone.} *)

let block_zeroone_symbol_of_block_zeroonedouble_symbol smb_bzd =
  Bzos_t.Block_zeroonedouble_symbol smb_bzd
;;

(** {9 Upgrading from Ch2_d through Block_zeroonedouble to Block_zeroone.} *)

let ch2_d = block_zeroone_symbol_of_block_zeroonedouble_symbol Bzds_t.Ch2_d;;

(** {9 Upgrading from Co_d through Block_zeroonedouble to Block_zeroone.} *)

let co_d = block_zeroone_symbol_of_block_zeroonedouble_symbol Bzds_t.Co_d;;

(** {9 Upgrading from Nh_d through Block_zeroonedouble to Block_zeroone.} *)

let nh_d = block_zeroone_symbol_of_block_zeroonedouble_symbol Bzds_t.Nh_d;;

(** {9 Upgrading from Nh2_d_1p through Block_zeroonedouble to Block_zeroone.} *)

let nh2_d_1p = block_zeroone_symbol_of_block_zeroonedouble_symbol Bzds_t.Nh2_d_1p;;

(** {6 Upgrading from Block_zeroonetriple to Block_zeroone.} *)

let block_zeroone_symbol_of_block_zeroonetriple_symbol smb_bzt =
  Bzos_t.Block_zeroonetriple_symbol smb_bzt
;;

(** {9 Upgrading from Ch_t through Block_zeroonetriple to Block_zeroone.} *)

let ch_t = block_zeroone_symbol_of_block_zeroonetriple_symbol Bzts_t.Ch_t;;

(** {6 Upgrading from Block_zeroonehalfbridge to Block_zeroone.} *)

let block_zeroonehalfbridge = Bzos_t.Block_zeroonehalfbridge;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zeroone 12 January 2011. *)

