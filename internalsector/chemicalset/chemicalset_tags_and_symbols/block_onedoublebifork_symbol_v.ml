(** {3 A Symbol for a Block_onedoublebifork.} *)

let nam_mod = "Block_onedoublebifork_symbol_v";;

(** {6 Modules.} *)

module Bdbs_t = Block_onedoublebifork_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bdbs_t.C_ds2 -> Format.sprintf "%s" "c_ds2"
  | Bdbs_t.N_ds2_1p -> Format.sprintf "%s" "n_ds2_1p"
;;

let print ppf = function
  | Bdbs_t.C_ds2 -> Format.fprintf ppf "%s" "c_ds2"
  | Bdbs_t.N_ds2_1p -> Format.fprintf ppf "%s" "n_ds2_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onedoublebifork_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_ds2 from Block_onedoublebifork.} *)

(* No Extraction from c_ds2 0. *)

(** {6 Extracting N_ds2_1p from Block_onedoublebifork.} *)

(* No Extraction from n_ds2_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying C_ds2 in Block_onedoublebifork.} *)

(* No Query from c_ds2 0. *)

(** {6 Querying N_ds2_1p in Block_onedoublebifork.} *)

(* No Query from n_ds2_1p 0. *)

(** {6 Upgrading from C_ds2 to Block_onedoublebifork.} *)

let c_ds2 = Bdbs_t.C_ds2;;

(** {6 Upgrading from N_ds2_1p to Block_onedoublebifork.} *)

let n_ds2_1p = Bdbs_t.N_ds2_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onedoublebifork 12 January 2011. *)

