(** {3 A Symbol for a Atom_twotied_single_single.} *)

let nam_mod = "Atom_twotied_single_single_symbol_v";;

(** {6 Modules.} *)

module Asss_t = Atom_twotied_single_single_symbol_t

(** {6 Displaying.} *)

let name = function
  | Asss_t.Cl_ss -> Format.sprintf "%s" "cl_ss"
  | Asss_t.F_ss -> Format.sprintf "%s" "f_ss"
  | Asss_t.H_ss -> Format.sprintf "%s" "h_ss"
;;

let print ppf = function
  | Asss_t.Cl_ss -> Format.fprintf ppf "%s" "cl_ss"
  | Asss_t.F_ss -> Format.fprintf ppf "%s" "f_ss"
  | Asss_t.H_ss -> Format.fprintf ppf "%s" "h_ss"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_twotied_single_single_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Cl_ss from Atom_twotied_single_single.} *)

(* No Extraction from cl_ss 0. *)

(** {6 Extracting F_ss from Atom_twotied_single_single.} *)

(* No Extraction from f_ss 0. *)

(** {6 Extracting H_ss from Atom_twotied_single_single.} *)

(* No Extraction from h_ss 0. *)

(** {6 Querying.} *)

(** {6 Querying Cl_ss in Atom_twotied_single_single.} *)

(* No Query from cl_ss 0. *)

(** {6 Querying F_ss in Atom_twotied_single_single.} *)

(* No Query from f_ss 0. *)

(** {6 Querying H_ss in Atom_twotied_single_single.} *)

(* No Query from h_ss 0. *)

(** {6 Upgrading from Cl_ss to Atom_twotied_single_single.} *)

let cl_ss = Asss_t.Cl_ss;;

(** {6 Upgrading from F_ss to Atom_twotied_single_single.} *)

let f_ss = Asss_t.F_ss;;

(** {6 Upgrading from H_ss to Atom_twotied_single_single.} *)

let h_ss = Asss_t.H_ss;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_twotied_single_single 12 January 2011. *)

