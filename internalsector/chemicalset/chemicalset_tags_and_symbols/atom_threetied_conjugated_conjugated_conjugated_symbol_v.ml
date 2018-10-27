(** {3 A Symbol for a Atom_threetied_conjugated_conjugated_conjugated.} *)

let nam_mod = "Atom_threetied_conjugated_conjugated_conjugated_symbol_v";;

(** {6 Modules.} *)

module Acccs_t = Atom_threetied_conjugated_conjugated_conjugated_symbol_t

(** {6 Displaying.} *)

let name = function
  | Acccs_t.C_ccc -> Format.sprintf "%s" "c_ccc"
  | Acccs_t.N_ccc -> Format.sprintf "%s" "n_ccc"
;;

let print ppf = function
  | Acccs_t.C_ccc -> Format.fprintf ppf "%s" "c_ccc"
  | Acccs_t.N_ccc -> Format.fprintf ppf "%s" "n_ccc"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_threetied_conjugated_conjugated_conjugated_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_ccc from Atom_threetied_conjugated_conjugated_conjugated.} *)

(* No Extraction from c_ccc 0. *)

(** {6 Extracting N_ccc from Atom_threetied_conjugated_conjugated_conjugated.} *)

(* No Extraction from n_ccc 0. *)

(** {6 Querying.} *)

(** {6 Querying C_ccc in Atom_threetied_conjugated_conjugated_conjugated.} *)

(* No Query from c_ccc 0. *)

(** {6 Querying N_ccc in Atom_threetied_conjugated_conjugated_conjugated.} *)

(* No Query from n_ccc 0. *)

(** {6 Upgrading from C_ccc to Atom_threetied_conjugated_conjugated_conjugated.} *)

let c_ccc = Acccs_t.C_ccc;;

(** {6 Upgrading from N_ccc to Atom_threetied_conjugated_conjugated_conjugated.} *)

let n_ccc = Acccs_t.N_ccc;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_threetied_conjugated_conjugated_conjugated 12 January 2011. *)

