(** {3 A Symbol for a Atom_fivetied.} *)

let nam_mod = "Atom_fivetied_symbol_v";;

(** {6 Modules.} *)

module Afvs_t = Atom_fivetied_symbol_t

(** {6 Displaying.} *)

let name = function
  | Afvs_t.Cl_5s -> Format.sprintf "%s" "cl_5s"
;;

let print ppf = function
  | Afvs_t.Cl_5s -> Format.fprintf ppf "%s" "cl_5s"
;;

(** {6 Extracting.} *)

(** {6 Extracting Cl_5s from Atom_fivetied.} *)

(* No Extraction from cl_5s 0. *)

(** {6 Querying.} *)

(** {6 Querying Cl_5s in Atom_fivetied.} *)

(* No Query from cl_5s 0. *)

(** {6 Upgrading from Cl_5s to Atom_fivetied.} *)

let cl_5s = Afvs_t.Cl_5s;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_fivetied 12 January 2011. *)

