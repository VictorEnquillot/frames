(** {3 The functionalities for a Symbol for a Molecule_linear_diatomic.} *)

let nam_cod = "molecule_linear_diatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_linear_diatomic_symbol_t.Carbonmonoxide -> "carbonmonoxide"
  | Molecule_linear_diatomic_symbol_t.Dihydrogen -> "dihydrogen"
  | Molecule_linear_diatomic_symbol_t.Dinitrogen -> "dinitrogen"
  | Molecule_linear_diatomic_symbol_t.Dioxygen -> "dioxygen"
  | Molecule_linear_diatomic_symbol_t.Hydrogenchloride -> "hydrogenchloride"
  | Molecule_linear_diatomic_symbol_t.Hydrogenfluoride -> "hydrogenfluoride"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let carbonmonoxide = Molecule_linear_diatomic_symbol_t.Carbonmonoxide;;

let dihydrogen = Molecule_linear_diatomic_symbol_t.Dihydrogen;;

let dinitrogen = Molecule_linear_diatomic_symbol_t.Dinitrogen;;

let dioxygen = Molecule_linear_diatomic_symbol_t.Dioxygen;;

let hydrogenchloride = Molecule_linear_diatomic_symbol_t.Hydrogenchloride;;

let hydrogenfluoride = Molecule_linear_diatomic_symbol_t.Hydrogenfluoride;;


(** {6 Making} *)


let make s = function
  | "carbonmonoxide" -> carbonmonoxide
  | "dihydrogen" -> dihydrogen
  | "dinitrogen" -> dinitrogen
  | "dioxygen" -> dioxygen
  | "hydrogenchloride" -> hydrogenchloride
  | "hydrogenfluoride" -> hydrogenfluoride
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator molecule_linear_diatomic implementation symbol at 15:4 13 Mar 2012. *)



