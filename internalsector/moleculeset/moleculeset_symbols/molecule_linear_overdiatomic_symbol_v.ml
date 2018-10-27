
(** {3 The functionalities for a Symbol for a Molecule_linear_overdiatomic.} *)

let nam_cod = "molecule_linear_overdiatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_linear_overdiatomic_symbol_t.Hydrogensulfide -> "Hydrogensulfide"
  | Molecule_linear_overdiatomic_symbol_t.Water -> "Water"
  | Molecule_linear_overdiatomic_symbol_t.Propane -> "Propane"
  | Molecule_linear_overdiatomic_symbol_t.Butane -> "Butane"
  | Molecule_linear_overdiatomic_symbol_t.Nitromethane -> "Nitromethane"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let hydrogensulfide = Molecule_linear_overdiatomic_symbol_t.Hydrogensulfide;;

let water = Molecule_linear_overdiatomic_symbol_t.Water;;

let propane = Molecule_linear_overdiatomic_symbol_t.Propane;;

let butane = Molecule_linear_overdiatomic_symbol_t.Butane;;

let nitromethane = Molecule_linear_overdiatomic_symbol_t.Nitromethane;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Hydrogensulfide" -> hydrogensulfide
  | "Water" -> water
  | "Propane" -> propane
  | "Butane" -> butane
  | "Nitromethane" -> nitromethane
  | _ ->
    failwith "Not_Molecule_linear_overdiatomic_symbol:molecule_linear_overdiatomic_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator molecule_linear_overdiatomic implementation symbol at 15:46 22 May 2012. *)



