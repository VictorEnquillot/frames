(** {3 A Symbol for a Atom_threetied_single_single_single.} *)

let nam_mod = "Atom_threetied_single_single_single_symbol_v";;

(** {6 Modules.} *)

module Assss_t = Atom_threetied_single_single_single_symbol_t

(** {6 Displaying.} *)

let name = function
  | Assss_t.N_sss -> Format.sprintf "%s" "n_sss"
  | Assss_t.Cl_sss -> Format.sprintf "%s" "cl_sss"
;;

let print ppf = function
  | Assss_t.N_sss -> Format.fprintf ppf "%s" "n_sss"
  | Assss_t.Cl_sss -> Format.fprintf ppf "%s" "cl_sss"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_threetied_single_single_single_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting N_sss from Atom_threetied_single_single_single.} *)

(* No Extraction from n_sss 0. *)

(** {6 Extracting Cl_sss from Atom_threetied_single_single_single.} *)

(* No Extraction from cl_sss 0. *)

(** {6 Querying.} *)

(** {6 Querying N_sss in Atom_threetied_single_single_single.} *)

(* No Query from n_sss 0. *)

(** {6 Querying Cl_sss in Atom_threetied_single_single_single.} *)

(* No Query from cl_sss 0. *)

(** {6 Upgrading from N_sss to Atom_threetied_single_single_single.} *)

let n_sss = Assss_t.N_sss;;

(** {6 Upgrading from Cl_sss to Atom_threetied_single_single_single.} *)

let cl_sss = Assss_t.Cl_sss;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_threetied_single_single_single 12 January 2011. *)

