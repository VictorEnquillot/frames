(** {3 A Symbol for a Molecule_linear_diatomic.} *)

let nam_mod = "Molecule_linear_diatomic_symbol_v";;

(** {6 Modules.} *)

module Ml2s_t = Molecule_linear_diatomic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Ml2s_t.Carbonmonoxide -> Format.sprintf "%s" "Carbonmonoxide"
  | Ml2s_t.Dihydrogen -> Format.sprintf "%s" "Dihydrogen"
  | Ml2s_t.Dinitrogen -> Format.sprintf "%s" "Dinitrogen"
  | Ml2s_t.Dioxygen -> Format.sprintf "%s" "Dioxygen"
  | Ml2s_t.Hydrogenchloride -> Format.sprintf "%s" "Hydrogenchloride"
  | Ml2s_t.Hydrogenfluoride -> Format.sprintf "%s" "Hydrogenfluoride"
;;

let print ppf = function
  | Ml2s_t.Carbonmonoxide -> Format.fprintf ppf "%s" "Carbonmonoxide"
  | Ml2s_t.Dihydrogen -> Format.fprintf ppf "%s" "Dihydrogen"
  | Ml2s_t.Dinitrogen -> Format.fprintf ppf "%s" "Dinitrogen"
  | Ml2s_t.Dioxygen -> Format.fprintf ppf "%s" "Dioxygen"
  | Ml2s_t.Hydrogenchloride -> Format.fprintf ppf "%s" "Hydrogenchloride"
  | Ml2s_t.Hydrogenfluoride -> Format.fprintf ppf "%s" "Hydrogenfluoride"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_linear_diatomic_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Carbonmonoxide from Molecule_linear_diatomic.} *)

(* No Extraction from Carbonmonoxide 0. *)

(** {6 Extracting Dihydrogen from Molecule_linear_diatomic.} *)

(* No Extraction from Dihydrogen 0. *)

(** {6 Extracting Dinitrogen from Molecule_linear_diatomic.} *)

(* No Extraction from Dinitrogen 0. *)

(** {6 Extracting Dioxygen from Molecule_linear_diatomic.} *)

(* No Extraction from Dioxygen 0. *)

(** {6 Extracting Hydrogenchloride from Molecule_linear_diatomic.} *)

(* No Extraction from Hydrogenchloride 0. *)

(** {6 Extracting Hydrogenfluoride from Molecule_linear_diatomic.} *)

(* No Extraction from Hydrogenfluoride 0. *)

(** {6 Querying.} *)

(** {6 Querying Carbonmonoxide in Molecule_linear_diatomic.} *)

(* No Query from Carbonmonoxide 0. *)

(** {6 Querying Dihydrogen in Molecule_linear_diatomic.} *)

(* No Query from Dihydrogen 0. *)

(** {6 Querying Dinitrogen in Molecule_linear_diatomic.} *)

(* No Query from Dinitrogen 0. *)

(** {6 Querying Dioxygen in Molecule_linear_diatomic.} *)

(* No Query from Dioxygen 0. *)

(** {6 Querying Hydrogenchloride in Molecule_linear_diatomic.} *)

(* No Query from Hydrogenchloride 0. *)

(** {6 Querying Hydrogenfluoride in Molecule_linear_diatomic.} *)

(* No Query from Hydrogenfluoride 0. *)

(** {6 Upgrading from Carbonmonoxide to Molecule_linear_diatomic.} *)

let carbonmonoxide = Ml2s_t.Carbonmonoxide;;

(** {6 Upgrading from Dihydrogen to Molecule_linear_diatomic.} *)

let dihydrogen = Ml2s_t.Dihydrogen;;

(** {6 Upgrading from Dinitrogen to Molecule_linear_diatomic.} *)

let dinitrogen = Ml2s_t.Dinitrogen;;

(** {6 Upgrading from Dioxygen to Molecule_linear_diatomic.} *)

let dioxygen = Ml2s_t.Dioxygen;;

(** {6 Upgrading from Hydrogenchloride to Molecule_linear_diatomic.} *)

let hydrogenchloride = Ml2s_t.Hydrogenchloride;;

(** {6 Upgrading from Hydrogenfluoride to Molecule_linear_diatomic.} *)

let hydrogenfluoride = Ml2s_t.Hydrogenfluoride;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_linear_diatomic 12 January 2011. *)

