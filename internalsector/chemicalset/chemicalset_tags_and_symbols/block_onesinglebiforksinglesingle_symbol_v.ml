(** {3 A Symbol for a Block_onesinglebiforksinglesingle.} *)

let nam_mod = "Block_onesinglebiforksinglesingle_symbol_v";;

(** {6 Modules.} *)

module Bss2s_t = Block_onesinglebiforksinglesingle_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bss2s_t.C_s2 -> Format.sprintf "%s" "c_s2"
  | Bss2s_t.N_s2_1p -> Format.sprintf "%s" "n_s2_1p"
;;

let print ppf = function
  | Bss2s_t.C_s2 -> Format.fprintf ppf "%s" "c_s2"
  | Bss2s_t.N_s2_1p -> Format.fprintf ppf "%s" "n_s2_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onesinglebiforksinglesingle_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_s2 from Block_onesinglebiforksinglesingle.} *)

(* No Extraction from c_s2 0. *)

(** {6 Extracting N_s2_1p from Block_onesinglebiforksinglesingle.} *)

(* No Extraction from n_s2_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying C_s2 in Block_onesinglebiforksinglesingle.} *)

(* No Query from c_s2 0. *)

(** {6 Querying N_s2_1p in Block_onesinglebiforksinglesingle.} *)

(* No Query from n_s2_1p 0. *)

(** {6 Upgrading from C_s2 to Block_onesinglebiforksinglesingle.} *)

let c_s2 = Bss2s_t.C_s2;;

(** {6 Upgrading from N_s2_1p to Block_onesinglebiforksinglesingle.} *)

let n_s2_1p = Bss2s_t.N_s2_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onesinglebiforksinglesingle 12 January 2011. *)

