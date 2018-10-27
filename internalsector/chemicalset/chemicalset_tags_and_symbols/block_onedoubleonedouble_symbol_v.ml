(** {3 A Symbol for a Block_onedoubleonedouble.} *)

let nam_mod = "Block_onedoubleonedouble_symbol_v";;

(** {6 Modules.} *)

module Bdds_t = Block_onedoubleonedouble_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bdds_t.C_dd -> Format.sprintf "%s" "c_dd"
  | Bdds_t.N_dd_1p -> Format.sprintf "%s" "n_dd_1p"
;;

let print ppf = function
  | Bdds_t.C_dd -> Format.fprintf ppf "%s" "c_dd"
  | Bdds_t.N_dd_1p -> Format.fprintf ppf "%s" "n_dd_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onedoubleonedouble_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_dd from Block_onedoubleonedouble.} *)

(* No Extraction from c_dd 0. *)

(** {6 Extracting N_dd_1p from Block_onedoubleonedouble.} *)

(* No Extraction from n_dd_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying C_dd in Block_onedoubleonedouble.} *)

(* No Query from c_dd 0. *)

(** {6 Querying N_dd_1p in Block_onedoubleonedouble.} *)

(* No Query from n_dd_1p 0. *)

(** {6 Upgrading from C_dd to Block_onedoubleonedouble.} *)

let c_dd = Bdds_t.C_dd;;

(** {6 Upgrading from N_dd_1p to Block_onedoubleonedouble.} *)

let n_dd_1p = Bdds_t.N_dd_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onedoubleonedouble 12 January 2011. *)

