(** {3 A Symbol for a Molecule_linear_tetratomic.} *)

let nam_mod = "Molecule_linear_tetratomic_symbol_v";;

(** {6 Modules.} *)

module Ml4s_t = Molecule_linear_tetratomic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Ml4s_t.Ammonia -> Format.sprintf "%s" "Ammonia"
;;

let print ppf = function
  | Ml4s_t.Ammonia -> Format.fprintf ppf "%s" "Ammonia"
;;

(** {6 Extracting.} *)

(** {6 Extracting Ammonia from Molecule_linear_tetratomic.} *)

(* No Extraction from Ammonia 0. *)

(** {6 Querying.} *)

(** {6 Querying Ammonia in Molecule_linear_tetratomic.} *)

(* No Query from Ammonia 0. *)

(** {6 Upgrading from Ammonia to Molecule_linear_tetratomic.} *)

let ammonia = Ml4s_t.Ammonia;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_linear_tetratomic 12 January 2011. *)

