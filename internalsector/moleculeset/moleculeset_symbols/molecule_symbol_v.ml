
(** {3 The functionalities for a Symbol for a Molecule.} *)

let nam_cod = "molecule_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_symbol_t.Molecule_forked_symbol sym_mof ->
      Molecule_forked_symbol_v.name sym_mof
  | Molecule_symbol_t.Molecule_linear_symbol sym_mol ->
      Molecule_linear_symbol_v.name sym_mol
  | Molecule_symbol_t.Molecule_polymer_symbol sym_mop ->
      Molecule_polymer_symbol_v.name sym_mop
;;


(** {6 Upgrading} *)


let molecule_symbol_of_molecule_forked_symbol sym_mof = 
  Molecule_symbol_t.Molecule_forked_symbol sym_mof
;;

let molecule_symbol_of_molecule_linear_symbol sym_mol = 
  Molecule_symbol_t.Molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_linear_diatomic_symbol sym_mld = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_molecule_linear_diatomic_symbol sym_mld in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_linear_overdiatomic_symbol sym_mlo = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_molecule_linear_overdiatomic_symbol sym_mlo in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_polymer_symbol sym_mop = 
  Molecule_symbol_t.Molecule_polymer_symbol sym_mop
;;


(** {6 Abbreviating} *)


let guanidine = molecule_symbol_of_molecule_forked_symbol Molecule_forked_symbol_v.guanidine;;

let molecule_forked_fromid s = molecule_symbol_of_molecule_forked_symbol (Molecule_forked_symbol_v.molecule_forked_fromid s);;

let carbonmonoxide = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.carbonmonoxide;;

let dihydrogen = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.dihydrogen;;

let dinitrogen = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.dinitrogen;;

let dioxygen = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.dioxygen;;

let hydrogenchloride = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hydrogenchloride;;

let hydrogenfluoride = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hydrogenfluoride;;

let hydrogensulfide = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hydrogensulfide;;

let water = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.water;;

let propane = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.propane;;

let butane = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.butane;;

let nitromethane = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.nitromethane;;

let polypeptide_fromid s = molecule_symbol_of_molecule_polymer_symbol (Molecule_polymer_symbol_v.polypeptide_fromid s);;

let molecule_polymer_fromid s = molecule_symbol_of_molecule_polymer_symbol (Molecule_polymer_symbol_v.molecule_polymer_fromid s);;


(** {6 Making} *)


let make nam s =
  try molecule_symbol_of_molecule_forked_symbol
      (Molecule_forked_symbol_v.make nam s)
  with Failure "Not_Molecule_forked_symbol:molecule_forked_symbol_v:make" ->
  try molecule_symbol_of_molecule_linear_symbol
      (Molecule_linear_symbol_v.make nam s)
  with Failure "Not_Molecule_linear_symbol:molecule_linear_symbol_v:make" ->
  try molecule_symbol_of_molecule_polymer_symbol
      (Molecule_polymer_symbol_v.make nam s)
  with Failure "Not_Molecule_polymer_symbol:molecule_polymer_symbol_v:make" ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Molecule subtype" nam s)
      "it does not exists"
      "Check file molecule_symbol_v.ml" 
;;


(** {6 Extracting} *)


let molecule_forked_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_forked_symbol sym_mof -> sym_mof
  | sym_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_forked_symbol_off_molecule_symbol"
      "Molecule_forked_symbol"
      (name sym_moe) "check"
;;

let molecule_linear_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_linear_symbol sym_mol -> sym_mol
  | sym_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_symbol_off_molecule_symbol"
      "Molecule_linear_symbol"
      (name sym_moe) "check"
;;

let molecule_linear_diatomic_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.molecule_linear_diatomic_symbol_off_molecule_linear_symbol sym_mol
;;

let molecule_linear_overdiatomic_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.molecule_linear_overdiatomic_symbol_off_molecule_linear_symbol sym_mol
;;

let molecule_polymer_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_polymer_symbol sym_mop -> sym_mop
  | sym_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_polymer_symbol_off_molecule_symbol"
      "Molecule_polymer_symbol"
      (name sym_moe) "check"
;;


(** {6 Querying} *)


let is_molecule_forked_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_forked_symbol _ -> true
  | _ -> false
;;

let is_molecule_linear_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_linear_symbol _ -> true
  | _ -> false
;;

let is_molecule_linear_diatomic_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_molecule_linear_diatomic_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_molecule_linear_overdiatomic_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_molecule_linear_overdiatomic_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_molecule_polymer_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_polymer_symbol _ -> true
  | _ -> false
;;



(** created by ./generator molecule implementation symbol at 15:46 22 May 2012. *)



