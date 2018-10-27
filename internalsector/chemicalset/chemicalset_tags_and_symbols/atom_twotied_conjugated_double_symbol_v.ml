(** {3 A Symbol for a Atom_twotied_conjugated_double.} *)

let nam_mod = "Atom_twotied_conjugated_double_symbol_v";;

(** {6 Modules.} *)

module Acds_t = Atom_twotied_conjugated_double_symbol_t

(** {6 Displaying.} *)

let name = function
  | Acds_t.C_cd -> Format.sprintf "%s" "c_cd"
;;

let print ppf = function
  | Acds_t.C_cd -> Format.fprintf ppf "%s" "c_cd"
;;

(** {6 Extracting.} *)

(** {6 Extracting C_cd from Atom_twotied_conjugated_double.} *)

(* No Extraction from c_cd 0. *)

(** {6 Querying.} *)

(** {6 Querying C_cd in Atom_twotied_conjugated_double.} *)

(* No Query from c_cd 0. *)

(** {6 Upgrading from C_cd to Atom_twotied_conjugated_double.} *)

let c_cd = Acds_t.C_cd;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_twotied_conjugated_double 12 January 2011. *)

