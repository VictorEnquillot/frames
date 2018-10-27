(** {3 A Symbol for a Atom_threetied_single_single_double.} *)

let nam_mod = "Atom_threetied_single_single_double_symbol_v";;

(** {6 Modules.} *)

module Assds_t = Atom_threetied_single_single_double_symbol_t

(** {6 Displaying.} *)

let name = function
  | Assds_t.C_ssd -> Format.sprintf "%s" "c_ssd"
  | Assds_t.N_sdd -> Format.sprintf "%s" "n_sdd"
  | Assds_t.S_sdd -> Format.sprintf "%s" "s_sdd"
;;

let print ppf = function
  | Assds_t.C_ssd -> Format.fprintf ppf "%s" "c_ssd"
  | Assds_t.N_sdd -> Format.fprintf ppf "%s" "n_sdd"
  | Assds_t.S_sdd -> Format.fprintf ppf "%s" "s_sdd"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_threetied_single_single_double_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_ssd from Atom_threetied_single_single_double.} *)

(* No Extraction from c_ssd 0. *)

(** {6 Extracting N_sdd from Atom_threetied_single_single_double.} *)

(* No Extraction from n_sdd 0. *)

(** {6 Extracting S_sdd from Atom_threetied_single_single_double.} *)

(* No Extraction from s_sdd 0. *)

(** {6 Querying.} *)

(** {6 Querying C_ssd in Atom_threetied_single_single_double.} *)

(* No Query from c_ssd 0. *)

(** {6 Querying N_sdd in Atom_threetied_single_single_double.} *)

(* No Query from n_sdd 0. *)

(** {6 Querying S_sdd in Atom_threetied_single_single_double.} *)

(* No Query from s_sdd 0. *)

(** {6 Upgrading from C_ssd to Atom_threetied_single_single_double.} *)

let c_ssd = Assds_t.C_ssd;;

(** {6 Upgrading from N_sdd to Atom_threetied_single_single_double.} *)

let n_sdd = Assds_t.N_sdd;;

(** {6 Upgrading from S_sdd to Atom_threetied_single_single_double.} *)

let s_sdd = Assds_t.S_sdd;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_threetied_single_single_double 12 January 2011. *)

