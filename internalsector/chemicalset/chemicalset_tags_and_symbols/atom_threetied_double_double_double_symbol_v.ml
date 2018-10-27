(** {3 A Symbol for a Atom_threetied_double_double_double.} *)

let nam_mod = "Atom_threetied_double_double_double_symbol_v";;

(** {6 Modules.} *)

module Addds_t = Atom_threetied_double_double_double_symbol_t

(** {6 Displaying.} *)

let name = function
  | Addds_t.S_ddd -> Format.sprintf "%s" "s_ddd"
;;

let print ppf = function
  | Addds_t.S_ddd -> Format.fprintf ppf "%s" "s_ddd"
;;

(** {6 Extracting.} *)

(** {6 Extracting S_ddd from Atom_threetied_double_double_double.} *)

(* No Extraction from s_ddd 0. *)

(** {6 Querying.} *)

(** {6 Querying S_ddd in Atom_threetied_double_double_double.} *)

(* No Query from s_ddd 0. *)

(** {6 Upgrading from S_ddd to Atom_threetied_double_double_double.} *)

let s_ddd = Addds_t.S_ddd;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_threetied_double_double_double 12 January 2011. *)

