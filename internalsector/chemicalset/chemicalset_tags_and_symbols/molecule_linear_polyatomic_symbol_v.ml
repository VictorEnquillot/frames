(** {3 A Symbol for a Molecule_linear_polyatomic.} *)

let nam_mod = "Molecule_linear_polyatomic_symbol_v";;

(** {6 Modules.} *)

module Mlps_t = Molecule_linear_polyatomic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mlps_t.Glycine -> Format.sprintf "%s" "glycine"
;;

let print ppf = function
  | Mlps_t.Glycine -> Format.fprintf ppf "%s" "glycine"
;;

(** {6 Extracting.} *)

(** {6 Extracting Glycine from Molecule_linear_polyatomic.} *)

(* No Extraction from glycine 0. *)

(** {6 Querying.} *)

(** {6 Querying Glycine in Molecule_linear_polyatomic.} *)

(* No Query from glycine 0. *)

(** {6 Upgrading from Glycine to Molecule_linear_polyatomic.} *)

let glycine = Mlps_t.Glycine;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_linear_polyatomic 12 January 2011. *)

