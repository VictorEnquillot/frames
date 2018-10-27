(** {3 A Symbol for a Atom_threetied_single_conjugated_conjugated.} *)

let nam_mod = "Atom_threetied_single_conjugated_conjugated_symbol_v";;

(** {6 Modules.} *)

module Asccs_t = Atom_threetied_single_conjugated_conjugated_symbol_t

(** {6 Displaying.} *)

let name = function
  | Asccs_t.C_scc -> Format.sprintf "%s" "c_scc"
  | Asccs_t.N_scc -> Format.sprintf "%s" "n_scc"
;;

let print ppf = function
  | Asccs_t.C_scc -> Format.fprintf ppf "%s" "c_scc"
  | Asccs_t.N_scc -> Format.fprintf ppf "%s" "n_scc"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_threetied_single_conjugated_conjugated_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_scc from Atom_threetied_single_conjugated_conjugated.} *)

(* No Extraction from c_scc 0. *)

(** {6 Extracting N_scc from Atom_threetied_single_conjugated_conjugated.} *)

(* No Extraction from n_scc 0. *)

(** {6 Querying.} *)

(** {6 Querying C_scc in Atom_threetied_single_conjugated_conjugated.} *)

(* No Query from c_scc 0. *)

(** {6 Querying N_scc in Atom_threetied_single_conjugated_conjugated.} *)

(* No Query from n_scc 0. *)

(** {6 Upgrading from C_scc to Atom_threetied_single_conjugated_conjugated.} *)

let c_scc = Asccs_t.C_scc;;

(** {6 Upgrading from N_scc to Atom_threetied_single_conjugated_conjugated.} *)

let n_scc = Asccs_t.N_scc;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_threetied_single_conjugated_conjugated 12 January 2011. *)

