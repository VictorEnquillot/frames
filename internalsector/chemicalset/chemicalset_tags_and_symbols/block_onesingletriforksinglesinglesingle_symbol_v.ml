(** {3 A Symbol for a Block_onesingletriforksinglesinglesingle.} *)

let nam_mod = "Block_onesingletriforksinglesinglesingle_symbol_v";;

(** {6 Modules.} *)

module Bss3s_t = Block_onesingletriforksinglesinglesingle_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bss3s_t.C_ss3 -> Format.sprintf "%s" "c_ss3"
  | Bss3s_t.N_ss3_1p -> Format.sprintf "%s" "n_ss3_1p"
;;

let print ppf = function
  | Bss3s_t.C_ss3 -> Format.fprintf ppf "%s" "c_ss3"
  | Bss3s_t.N_ss3_1p -> Format.fprintf ppf "%s" "n_ss3_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onesingletriforksinglesinglesingle_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_ss3 from Block_onesingletriforksinglesinglesingle.} *)

(* No Extraction from c_ss3 0. *)

(** {6 Extracting N_ss3_1p from Block_onesingletriforksinglesinglesingle.} *)

(* No Extraction from n_ss3_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying C_ss3 in Block_onesingletriforksinglesinglesingle.} *)

(* No Query from c_ss3 0. *)

(** {6 Querying N_ss3_1p in Block_onesingletriforksinglesinglesingle.} *)

(* No Query from n_ss3_1p 0. *)

(** {6 Upgrading from C_ss3 to Block_onesingletriforksinglesinglesingle.} *)

let c_ss3 = Bss3s_t.C_ss3;;

(** {6 Upgrading from N_ss3_1p to Block_onesingletriforksinglesinglesingle.} *)

let n_ss3_1p = Bss3s_t.N_ss3_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onesingletriforksinglesinglesingle 12 January 2011. *)

