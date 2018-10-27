(** {3 A Symbol for a Atom_fourtied.} *)

let nam_mod = "Atom_fourtied_symbol_v";;

(** {6 Modules.} *)

module Afos_t = Atom_fourtied_symbol_t

(** {6 Displaying.} *)

let name = function
  | Afos_t.C_4s -> Format.sprintf "%s" "c_4s"
  | Afos_t.N_4s -> Format.sprintf "%s" "n_4s"
  | Afos_t.S_4s -> Format.sprintf "%s" "s_4s"
  | Afos_t.Xe_4s -> Format.sprintf "%s" "xe_4s"
;;

let print ppf = function
  | Afos_t.C_4s -> Format.fprintf ppf "%s" "c_4s"
  | Afos_t.N_4s -> Format.fprintf ppf "%s" "n_4s"
  | Afos_t.S_4s -> Format.fprintf ppf "%s" "s_4s"
  | Afos_t.Xe_4s -> Format.fprintf ppf "%s" "xe_4s"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_fourtied_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_4s from Atom_fourtied.} *)

(* No Extraction from c_4s 0. *)

(** {6 Extracting N_4s from Atom_fourtied.} *)

(* No Extraction from n_4s 0. *)

(** {6 Extracting S_4s from Atom_fourtied.} *)

(* No Extraction from s_4s 0. *)

(** {6 Extracting Xe_4s from Atom_fourtied.} *)

(* No Extraction from xe_4s 0. *)

(** {6 Querying.} *)

(** {6 Querying C_4s in Atom_fourtied.} *)

(* No Query from c_4s 0. *)

(** {6 Querying N_4s in Atom_fourtied.} *)

(* No Query from n_4s 0. *)

(** {6 Querying S_4s in Atom_fourtied.} *)

(* No Query from s_4s 0. *)

(** {6 Querying Xe_4s in Atom_fourtied.} *)

(* No Query from xe_4s 0. *)

(** {6 Upgrading from C_4s to Atom_fourtied.} *)

let c_4s = Afos_t.C_4s;;

(** {6 Upgrading from N_4s to Atom_fourtied.} *)

let n_4s = Afos_t.N_4s;;

(** {6 Upgrading from S_4s to Atom_fourtied.} *)

let s_4s = Afos_t.S_4s;;

(** {6 Upgrading from Xe_4s to Atom_fourtied.} *)

let xe_4s = Afos_t.Xe_4s;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_fourtied 12 January 2011. *)

