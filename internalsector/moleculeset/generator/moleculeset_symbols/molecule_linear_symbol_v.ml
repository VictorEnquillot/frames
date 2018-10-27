
(** {3 The functionalities for a Symbol for a Molecule_linear.} *)

let nam_cod = "molecule_linear_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_linear_symbol_t.Molecule_linear_diatomic_symbol sym_mld ->
      Molecule_linear_diatomic_symbol_v.name sym_mld
  | Molecule_linear_symbol_t.Molecule_linear_overdiatomic_symbol sym_mlo ->
      Molecule_linear_overdiatomic_symbol_v.name sym_mlo
;;


(** {6 Upgrading} *)


let molecule_linear_symbol_of_molecule_linear_diatomic_symbol sym_mld = 
  Molecule_linear_symbol_t.Molecule_linear_diatomic_symbol sym_mld
;;

let molecule_linear_symbol_of_molecule_linear_overdiatomic_symbol sym_mlo = 
  Molecule_linear_symbol_t.Molecule_linear_overdiatomic_symbol sym_mlo
;;


(** {6 Abbreviating} *)


let carbonmonoxide = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.carbonmonoxide;;

let dihydrogen = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.dihydrogen;;

let dinitrogen = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.dinitrogen;;

let dioxygen = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.dioxygen;;

let hydrogenchloride = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.hydrogenchloride;;

let hydrogenfluoride = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.hydrogenfluoride;;

let hydrogensulfide = molecule_linear_symbol_of_molecule_linear_overdiatomic_symbol Molecule_linear_overdiatomic_symbol_v.hydrogensulfide;;

let water = molecule_linear_symbol_of_molecule_linear_overdiatomic_symbol Molecule_linear_overdiatomic_symbol_v.water;;

let propane = molecule_linear_symbol_of_molecule_linear_overdiatomic_symbol Molecule_linear_overdiatomic_symbol_v.propane;;

let butane = molecule_linear_symbol_of_molecule_linear_overdiatomic_symbol Molecule_linear_overdiatomic_symbol_v.butane;;

let nitromethane = molecule_linear_symbol_of_molecule_linear_overdiatomic_symbol Molecule_linear_overdiatomic_symbol_v.nitromethane;;


(** {6 Making} *)


let make nam s =
  try molecule_linear_symbol_of_molecule_linear_diatomic_symbol
      (Molecule_linear_diatomic_symbol_v.make nam s)
  with Failure "Not_Molecule_linear_diatomic_symbol:molecule_linear_diatomic_symbol_v:make" ->
  try molecule_linear_symbol_of_molecule_linear_overdiatomic_symbol
      (Molecule_linear_overdiatomic_symbol_v.make nam s)
  with Failure "Not_Molecule_linear_overdiatomic_symbol:molecule_linear_overdiatomic_symbol_v:make" ->
    failwith "Not_Molecule_linear_symbol:molecule_linear_symbol_v:make"
;;


(** {6 Extracting} *)


let molecule_linear_diatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_diatomic_symbol sym_mld -> sym_mld
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_diatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_diatomic_symbol"
      (name sym_mol) "check"
;;

let molecule_linear_overdiatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_overdiatomic_symbol sym_mlo -> sym_mlo
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_overdiatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_overdiatomic_symbol"
      (name sym_mol) "check"
;;


(** {6 Querying} *)


let is_molecule_linear_diatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_diatomic_symbol _ -> true
  | _ -> false
;;

let is_molecule_linear_overdiatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_overdiatomic_symbol _ -> true
  | _ -> false
;;



(** created by ./generator molecule_linear implementation symbol at 15:46 22 May 2012. *)



