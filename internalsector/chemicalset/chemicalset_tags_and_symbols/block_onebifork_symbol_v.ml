(** {3 A Symbol for a Block_onebifork.} *)

let nam_mod = "Block_onebifork_symbol_v";;

(** {6 Modules.} *)

module Bdbs_t = Block_onedoublebifork_symbol_t
module Bdbs_v = Block_onedoublebifork_symbol_v
module Bobs_t = Block_onebifork_symbol_t
module Bsbs_t = Block_onesinglebifork_symbol_t
module Bsbs_v = Block_onesinglebifork_symbol_v
module Bss2s_t = Block_onesinglebiforksinglesingle_symbol_t
module Bss2s_v = Block_onesinglebiforksinglesingle_symbol_v

(** {6 Displaying.} *)

let name = function
  | Bobs_t.Block_onesinglebifork_symbol smb_bsb -> 
      Bsbs_v.name smb_bsb
  | Bobs_t.Block_onedoublebifork_symbol smb_bdb -> 
      Bdbs_v.name smb_bdb
;;

let print ppf = function
  | Bobs_t.Block_onesinglebifork_symbol smb_bsb -> 
      Bsbs_v.print ppf smb_bsb
  | Bobs_t.Block_onedoublebifork_symbol smb_bdb -> 
      Bdbs_v.print ppf smb_bdb
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onebifork_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Block_onesinglebifork from Block_onebifork.} *)

let block_onesinglebifork_symbol_off_block_onebifork_symbol = function
  | Bobs_t.Block_onesinglebifork_symbol smb_bsb -> smb_bsb
  | s ->  print_fatal_error
      "block_onesinglebifork_symbol_off_block_onebifork_symbol"
      "Block_onesinglebifork_symbol" (name s)
;;

(** {9 Extracting Block_onesinglebiforksinglesingle from Block_onesinglebifork from Block_onebifork.} *)

let block_onesinglebiforksinglesingle_symbol_off_block_onebifork_symbol smb_bob =
  let smb_bsb = block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob in
    Bsbs_v.block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol smb_bsb
;;

(** {12 Extracting C_s2 from Block_onesinglebiforksinglesingle from Block_onesinglebifork from Block_onebifork.} *)

(* No Extraction from c_s2 0. *)

(** {12 Extracting N_s2_1p from Block_onesinglebiforksinglesingle from Block_onesinglebifork from Block_onebifork.} *)

(* No Extraction from n_s2_1p 0. *)

(** {9 Extracting Block_onesinglebiforksinglesingleconjugated from Block_onesinglebifork from Block_onebifork.} *)

(* No Extraction from block_onesinglebiforksinglesingleconjugated 0. *)

(** {6 Extracting Block_onedoublebifork from Block_onebifork.} *)

let block_onedoublebifork_symbol_off_block_onebifork_symbol = function
  | Bobs_t.Block_onedoublebifork_symbol smb_bdb -> smb_bdb
  | s ->  print_fatal_error
      "block_onedoublebifork_symbol_off_block_onebifork_symbol"
      "Block_onedoublebifork_symbol" (name s)
;;

(** {9 Extracting C_ds2 from Block_onedoublebifork from Block_onebifork.} *)

(* No Extraction from c_ds2 0. *)

(** {9 Extracting N_ds2_1p from Block_onedoublebifork from Block_onebifork.} *)

(* No Extraction from n_ds2_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Block_onesinglebifork in Block_onebifork.} *)

let is_block_onesinglebifork_symbol_off_block_onebifork_symbol = function
  | Bobs_t.Block_onesinglebifork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_onesinglebiforksinglesingle in Block_onesinglebifork in Block_onebifork.} *)

let is_block_onesinglebiforksinglesingle_symbol_off_block_onebifork_symbol smb_bob =
  if not (is_block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob)
  then false
  else
    begin
      let smb_bsb = block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob in
      Bsbs_v.is_block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol smb_bsb
    end
;;

(** {12 Querying C_s2 in Block_onesinglebiforksinglesingle in Block_onesinglebifork in Block_onebifork.} *)

(* No Query from c_s2 0. *)

(** {12 Querying N_s2_1p in Block_onesinglebiforksinglesingle in Block_onesinglebifork in Block_onebifork.} *)

(* No Query from n_s2_1p 0. *)

(** {9 Querying Block_onesinglebiforksinglesingleconjugated in Block_onesinglebifork in Block_onebifork.} *)

(* No Query from block_onesinglebiforksinglesingleconjugated 0. *)


(** {6 Querying Block_onedoublebifork in Block_onebifork.} *)

let is_block_onedoublebifork_symbol_off_block_onebifork_symbol = function
  | Bobs_t.Block_onedoublebifork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_ds2 in Block_onedoublebifork in Block_onebifork.} *)

(* No Query from c_ds2 0. *)


(** {9 Querying N_ds2_1p in Block_onedoublebifork in Block_onebifork.} *)

(* No Query from n_ds2_1p 0. *)


(** {6 Upgrading from Block_onesinglebifork to Block_onebifork.} *)

let block_onebifork_symbol_of_block_onesinglebifork_symbol smb_bsb =
  Bobs_t.Block_onesinglebifork_symbol smb_bsb
;;

(** {9 Upgrading from Block_onesinglebiforksinglesingle through Block_onesinglebifork to Block_onebifork.} *)

let block_onebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_bss2 =
  let smb_bsb = Bsbs_v.block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_bss2 in
  block_onebifork_symbol_of_block_onesinglebifork_symbol smb_bsb
;;

(** {12 Upgrading from C_s2 through Block_onesinglebiforksinglesingle through Block_onesinglebifork to Block_onebifork.} *)

let c_s2 = block_onebifork_symbol_of_block_onesinglebiforksinglesingle_symbol Bss2s_t.C_s2;;

(** {12 Upgrading from N_s2_1p through Block_onesinglebiforksinglesingle through Block_onesinglebifork to Block_onebifork.} *)

let n_s2_1p = block_onebifork_symbol_of_block_onesinglebiforksinglesingle_symbol Bss2s_t.N_s2_1p;;

(** {9 Upgrading from Block_onesinglebiforksinglesingleconjugated through Block_onesinglebifork to Block_onebifork.} *)

let block_onesinglebiforksinglesingleconjugated = block_onebifork_symbol_of_block_onesinglebifork_symbol Bsbs_t.Block_onesinglebiforksinglesingleconjugated;;

(** {6 Upgrading from Block_onedoublebifork to Block_onebifork.} *)

let block_onebifork_symbol_of_block_onedoublebifork_symbol smb_bdb =
  Bobs_t.Block_onedoublebifork_symbol smb_bdb
;;

(** {9 Upgrading from C_ds2 through Block_onedoublebifork to Block_onebifork.} *)

let c_ds2 = block_onebifork_symbol_of_block_onedoublebifork_symbol Bdbs_t.C_ds2;;

(** {9 Upgrading from N_ds2_1p through Block_onedoublebifork to Block_onebifork.} *)

let n_ds2_1p = block_onebifork_symbol_of_block_onedoublebifork_symbol Bdbs_t.N_ds2_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onebifork 12 January 2011. *)

