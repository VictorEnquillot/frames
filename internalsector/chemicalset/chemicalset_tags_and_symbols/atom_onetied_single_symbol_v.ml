(** {3 A Symbol for a Atom_onetied_single.} *)

let nam_mod = "Atom_onetied_single_symbol_v";;

(** {6 Modules.} *)

module Aoss_t = Atom_onetied_single_symbol_t

(** {6 Displaying.} *)

let name = function
  | Aoss_t.H_s -> Format.sprintf "%s" "h_s"
  | Aoss_t.F_s -> Format.sprintf "%s" "f_s"
;;

let print ppf = function
  | Aoss_t.H_s -> Format.fprintf ppf "%s" "h_s"
  | Aoss_t.F_s -> Format.fprintf ppf "%s" "f_s"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_onetied_single_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting H_s from Atom_onetied_single.} *)

(* No Extraction from h_s 0. *)

(** {6 Extracting F_s from Atom_onetied_single.} *)

(* No Extraction from f_s 0. *)

(** {6 Querying.} *)

(** {6 Querying H_s in Atom_onetied_single.} *)

(* No Query from h_s 0. *)

(** {6 Querying F_s in Atom_onetied_single.} *)

(* No Query from f_s 0. *)

(** {6 Upgrading from H_s to Atom_onetied_single.} *)

let h_s = Aoss_t.H_s;;

(** {6 Upgrading from F_s to Atom_onetied_single.} *)

let f_s = Aoss_t.F_s;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_onetied_single 12 January 2011. *)

