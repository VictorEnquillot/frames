(** {3 A Symbol for a Molecule_linear_triatomic.} *)

let nam_mod = "Molecule_linear_triatomic_symbol_v";;

(** {6 Modules.} *)

module Ml3s_t = Molecule_linear_triatomic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Ml3s_t.Hydrogensulfide -> Format.sprintf "%s" "Hydrogensulfide"
  | Ml3s_t.Water -> Format.sprintf "%s" "Water"
;;

let print ppf = function
  | Ml3s_t.Hydrogensulfide -> Format.fprintf ppf "%s" "Hydrogensulfide"
  | Ml3s_t.Water -> Format.fprintf ppf "%s" "Water"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_linear_triatomic_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Hydrogensulfide from Molecule_linear_triatomic.} *)

(* No Extraction from Hydrogensulfide 0. *)

(** {6 Extracting Water from Molecule_linear_triatomic.} *)

(* No Extraction from Water 0. *)

(** {6 Querying.} *)

(** {6 Querying Hydrogensulfide in Molecule_linear_triatomic.} *)

(* No Query from Hydrogensulfide 0. *)

(** {6 Querying Water in Molecule_linear_triatomic.} *)

(* No Query from Water 0. *)

(** {6 Upgrading from Hydrogensulfide to Molecule_linear_triatomic.} *)

let hydrogensulfide = Ml3s_t.Hydrogensulfide;;

(** {6 Upgrading from Water to Molecule_linear_triatomic.} *)

let water = Ml3s_t.Water;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_linear_triatomic 12 January 2011. *)

