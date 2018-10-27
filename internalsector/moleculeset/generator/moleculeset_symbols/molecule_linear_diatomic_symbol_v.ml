
(** {3 The functionalities for a Symbol for a Molecule_linear_diatomic.} *)

let nam_cod = "molecule_linear_diatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_linear_diatomic_symbol_t.Carbonmonoxide -> "Carbonmonoxide"
  | Molecule_linear_diatomic_symbol_t.Dihydrogen -> "Dihydrogen"
  | Molecule_linear_diatomic_symbol_t.Dinitrogen -> "Dinitrogen"
  | Molecule_linear_diatomic_symbol_t.Dioxygen -> "Dioxygen"
  | Molecule_linear_diatomic_symbol_t.Hydrogenchloride -> "Hydrogenchloride"
  | Molecule_linear_diatomic_symbol_t.Hydrogenfluoride -> "Hydrogenfluoride"
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


let make nam s =
  match String.capitalize nam with
  | "Carbonmonoxide" -> carbonmonoxide
  | "Dihydrogen" -> dihydrogen
  | "Dinitrogen" -> dinitrogen
  | "Dioxygen" -> dioxygen
  | "Hydrogenchloride" -> hydrogenchloride
  | "Hydrogenfluoride" -> hydrogenfluoride
  | _ ->
    failwith "Not_Molecule_linear_diatomic_symbol:molecule_linear_diatomic_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator molecule_linear_diatomic implementation symbol at 15:46 22 May 2012. *)



