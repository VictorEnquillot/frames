(** {3 A Symbol for a Block_onesinglebifork.} *)

let nam_mod = "Block_onesinglebifork_symbol_v";;

(** {6 Modules.} *)

module Bsbs_t = Block_onesinglebifork_symbol_t
module Bss2s_t = Block_onesinglebiforksinglesingle_symbol_t
module Bss2s_v = Block_onesinglebiforksinglesingle_symbol_v

(** {6 Displaying.} *)

let name = function
  | Bsbs_t.Block_onesinglebiforksinglesingle_symbol smb_bss2 -> 
      Bss2s_v.name smb_bss2
  | Bsbs_t.Block_onesinglebiforksinglesingleconjugated -> Format.sprintf "%s" "block_onesinglebiforksinglesingleconjugated"
;;

let print ppf = function
  | Bsbs_t.Block_onesinglebiforksinglesingle_symbol smb_bss2 -> 
      Bss2s_v.print ppf smb_bss2
  | Bsbs_t.Block_onesinglebiforksinglesingleconjugated -> Format.fprintf ppf "%s" "block_onesinglebiforksinglesingleconjugated"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onesinglebifork_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Block_onesinglebiforksinglesingle from Block_onesinglebifork.} *)

let block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol = function
  | Bsbs_t.Block_onesinglebiforksinglesingle_symbol smb_bss2 -> smb_bss2
  | s ->  print_fatal_error
      "block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol"
      "Block_onesinglebiforksinglesingle_symbol" (name s)
;;

(** {9 Extracting C_s2 from Block_onesinglebiforksinglesingle from Block_onesinglebifork.} *)

(* No Extraction from c_s2 0. *)

(** {9 Extracting N_s2_1p from Block_onesinglebiforksinglesingle from Block_onesinglebifork.} *)

(* No Extraction from n_s2_1p 0. *)

(** {6 Extracting Block_onesinglebiforksinglesingleconjugated from Block_onesinglebifork.} *)

(* No Extraction from block_onesinglebiforksinglesingleconjugated 0. *)

(** {6 Querying.} *)

(** {6 Querying Block_onesinglebiforksinglesingle in Block_onesinglebifork.} *)

let is_block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol = function
  | Bsbs_t.Block_onesinglebiforksinglesingle_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_s2 in Block_onesinglebiforksinglesingle in Block_onesinglebifork.} *)

(* No Query from c_s2 0. *)


(** {9 Querying N_s2_1p in Block_onesinglebiforksinglesingle in Block_onesinglebifork.} *)

(* No Query from n_s2_1p 0. *)


(** {6 Querying Block_onesinglebiforksinglesingleconjugated in Block_onesinglebifork.} *)

(* No Query from block_onesinglebiforksinglesingleconjugated 0. *)

(** {6 Upgrading from Block_onesinglebiforksinglesingle to Block_onesinglebifork.} *)

let block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_bss2 =
  Bsbs_t.Block_onesinglebiforksinglesingle_symbol smb_bss2
;;

(** {9 Upgrading from C_s2 through Block_onesinglebiforksinglesingle to Block_onesinglebifork.} *)

let c_s2 = block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol Bss2s_t.C_s2;;

(** {9 Upgrading from N_s2_1p through Block_onesinglebiforksinglesingle to Block_onesinglebifork.} *)

let n_s2_1p = block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol Bss2s_t.N_s2_1p;;

(** {6 Upgrading from Block_onesinglebiforksinglesingleconjugated to Block_onesinglebifork.} *)

let block_onesinglebiforksinglesingleconjugated = Bsbs_t.Block_onesinglebiforksinglesingleconjugated;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onesinglebifork 12 January 2011. *)

