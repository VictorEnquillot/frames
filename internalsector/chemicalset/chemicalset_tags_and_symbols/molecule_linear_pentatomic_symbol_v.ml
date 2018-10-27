(** {3 A Symbol for a Molecule_linear_pentatomic.} *)

let nam_mod = "Molecule_linear_pentatomic_symbol_v";;

(** {6 Modules.} *)

module Ml5s_t = Molecule_linear_pentatomic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Ml5s_t.Methane -> Format.sprintf "%s" "Methane"
;;

let print ppf = function
  | Ml5s_t.Methane -> Format.fprintf ppf "%s" "Methane"
;;

(** {6 Extracting.} *)

(** {6 Extracting Methane from Molecule_linear_pentatomic.} *)

(* No Extraction from Methane 0. *)

(** {6 Querying.} *)

(** {6 Querying Methane in Molecule_linear_pentatomic.} *)

(* No Query from Methane 0. *)

(** {6 Upgrading from Methane to Molecule_linear_pentatomic.} *)

let methane = Ml5s_t.Methane;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_linear_pentatomic 12 January 2011. *)

