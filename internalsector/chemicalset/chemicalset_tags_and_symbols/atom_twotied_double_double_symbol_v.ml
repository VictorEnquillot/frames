(** {3 A Symbol for a Atom_twotied_double_double.} *)

let nam_mod = "Atom_twotied_double_double_symbol_v";;

(** {6 Modules.} *)

module Adds_t = Atom_twotied_double_double_symbol_t

(** {6 Displaying.} *)

let name = function
  | Adds_t.C_dd -> Format.sprintf "%s" "c_dd"
  | Adds_t.S_dd -> Format.sprintf "%s" "s_dd"
;;

let print ppf = function
  | Adds_t.C_dd -> Format.fprintf ppf "%s" "c_dd"
  | Adds_t.S_dd -> Format.fprintf ppf "%s" "s_dd"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_twotied_double_double_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_dd from Atom_twotied_double_double.} *)

(* No Extraction from c_dd 0. *)

(** {6 Extracting S_dd from Atom_twotied_double_double.} *)

(* No Extraction from s_dd 0. *)

(** {6 Querying.} *)

(** {6 Querying C_dd in Atom_twotied_double_double.} *)

(* No Query from c_dd 0. *)

(** {6 Querying S_dd in Atom_twotied_double_double.} *)

(* No Query from s_dd 0. *)

(** {6 Upgrading from C_dd to Atom_twotied_double_double.} *)

let c_dd = Adds_t.C_dd;;

(** {6 Upgrading from S_dd to Atom_twotied_double_double.} *)

let s_dd = Adds_t.S_dd;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_twotied_double_double 12 January 2011. *)

