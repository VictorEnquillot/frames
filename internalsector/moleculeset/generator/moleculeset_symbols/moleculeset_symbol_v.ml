
(** {3 The functionalities for a Symbol for a Moleculeset.} *)

let nam_cod = "moleculeset_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Moleculeset_symbol_t.Fragment_symbol sym_frt ->
      Fragment_symbol_v.name sym_frt
  | Moleculeset_symbol_t.Grouping_symbol sym_grg ->
      Grouping_symbol_v.name sym_grg
  | Moleculeset_symbol_t.Molecule_symbol sym_moe ->
      Molecule_symbol_v.name sym_moe
;;


(** {6 Upgrading} *)


let moleculeset_symbol_of_fragment_symbol sym_frt = 
  Moleculeset_symbol_t.Fragment_symbol sym_frt
;;

let moleculeset_symbol_of_grouping_symbol sym_grg = 
  Moleculeset_symbol_t.Grouping_symbol sym_grg
;;

let moleculeset_symbol_of_molecule_symbol sym_moe = 
  Moleculeset_symbol_t.Molecule_symbol sym_moe
;;

let moleculeset_symbol_of_molecule_forked_symbol sym_mof = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_forked_symbol sym_mof in
    moleculeset_symbol_of_molecule_symbol sym_moe
;;

let moleculeset_symbol_of_molecule_linear_symbol sym_mol = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_symbol sym_mol in
    moleculeset_symbol_of_molecule_symbol sym_moe
;;

let moleculeset_symbol_of_molecule_linear_diatomic_symbol sym_mld = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_diatomic_symbol sym_mld in
    moleculeset_symbol_of_molecule_symbol sym_moe
;;

let moleculeset_symbol_of_molecule_linear_overdiatomic_symbol sym_mlo = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_overdiatomic_symbol sym_mlo in
    moleculeset_symbol_of_molecule_symbol sym_moe
;;

let moleculeset_symbol_of_molecule_polymer_symbol sym_mop = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_polymer_symbol sym_mop in
    moleculeset_symbol_of_molecule_symbol sym_moe
;;


(** {6 Abbreviating} *)


let fragment_closed_fromid s = moleculeset_symbol_of_fragment_symbol (Fragment_symbol_v.fragment_closed_fromid s);;

let fragment_head_fromid s = moleculeset_symbol_of_fragment_symbol (Fragment_symbol_v.fragment_head_fromid s);;

let fragment_buried_fromid s = moleculeset_symbol_of_fragment_symbol (Fragment_symbol_v.fragment_buried_fromid s);;

let fragment_leaf_fromid s = moleculeset_symbol_of_fragment_symbol (Fragment_symbol_v.fragment_leaf_fromid s);;

let grouping_fromid s = moleculeset_symbol_of_grouping_symbol (Grouping_symbol_v.grouping_fromid s);;

let guanidine = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.guanidine;;

let molecule_forked_fromid s = moleculeset_symbol_of_molecule_symbol (Molecule_symbol_v.molecule_forked_fromid s);;

let carbonmonoxide = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.carbonmonoxide;;

let dihydrogen = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.dihydrogen;;

let dinitrogen = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.dinitrogen;;

let dioxygen = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.dioxygen;;

let hydrogenchloride = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.hydrogenchloride;;

let hydrogenfluoride = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.hydrogenfluoride;;

let hydrogensulfide = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.hydrogensulfide;;

let water = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.water;;

let propane = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.propane;;

let butane = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.butane;;

let nitromethane = moleculeset_symbol_of_molecule_symbol Molecule_symbol_v.nitromethane;;

let polypeptide_fromid s = moleculeset_symbol_of_molecule_symbol (Molecule_symbol_v.polypeptide_fromid s);;

let molecule_polymer_fromid s = moleculeset_symbol_of_molecule_symbol (Molecule_symbol_v.molecule_polymer_fromid s);;


(** {6 Making} *)


let make nam s =
  try moleculeset_symbol_of_fragment_symbol
      (Fragment_symbol_v.make nam s)
  with Failure "Not_Fragment_symbol:fragment_symbol_v:make" ->
  try moleculeset_symbol_of_grouping_symbol
      (Grouping_symbol_v.make nam s)
  with Failure "Not_Grouping_symbol:grouping_symbol_v:make" ->
  try moleculeset_symbol_of_molecule_symbol
      (Molecule_symbol_v.make nam s)
  with Failure "Not_Molecule_symbol:molecule_symbol_v:make" ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Moleculeset subtype" nam s)
      "it does not exists"
      "Check file moleculeset_symbol_v.ml" 
;;


(** {6 Extracting} *)


let fragment_symbol_off_moleculeset_symbol = function
  | Moleculeset_symbol_t.Fragment_symbol sym_frt -> sym_frt
  | sym_mot -> Error_messages_v.print_fatal_error
      nam_cod "fragment_symbol_off_moleculeset_symbol"
      "Fragment_symbol"
      (name sym_mot) "check"
;;

let grouping_symbol_off_moleculeset_symbol = function
  | Moleculeset_symbol_t.Grouping_symbol sym_grg -> sym_grg
  | sym_mot -> Error_messages_v.print_fatal_error
      nam_cod "grouping_symbol_off_moleculeset_symbol"
      "Grouping_symbol"
      (name sym_mot) "check"
;;

let molecule_symbol_off_moleculeset_symbol = function
  | Moleculeset_symbol_t.Molecule_symbol sym_moe -> sym_moe
  | sym_mot -> Error_messages_v.print_fatal_error
      nam_cod "molecule_symbol_off_moleculeset_symbol"
      "Molecule_symbol"
      (name sym_mot) "check"
;;

let molecule_forked_symbol_off_moleculeset_symbol sym_mot = 
  let sym_moe = molecule_symbol_off_moleculeset_symbol sym_mot in 
    Molecule_symbol_v.molecule_forked_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_symbol_off_moleculeset_symbol sym_mot = 
  let sym_moe = molecule_symbol_off_moleculeset_symbol sym_mot in 
    Molecule_symbol_v.molecule_linear_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_diatomic_symbol_off_moleculeset_symbol sym_mot = 
  let sym_moe = molecule_symbol_off_moleculeset_symbol sym_mot in 
    Molecule_symbol_v.molecule_linear_diatomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_overdiatomic_symbol_off_moleculeset_symbol sym_mot = 
  let sym_moe = molecule_symbol_off_moleculeset_symbol sym_mot in 
    Molecule_symbol_v.molecule_linear_overdiatomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_polymer_symbol_off_moleculeset_symbol sym_mot = 
  let sym_moe = molecule_symbol_off_moleculeset_symbol sym_mot in 
    Molecule_symbol_v.molecule_polymer_symbol_off_molecule_symbol sym_moe
;;


(** {6 Querying} *)


let is_fragment_symbol_off_moleculeset_symbol = function
  | Moleculeset_symbol_t.Fragment_symbol _ -> true
  | _ -> false
;;

let is_grouping_symbol_off_moleculeset_symbol = function
  | Moleculeset_symbol_t.Grouping_symbol _ -> true
  | _ -> false
;;

let is_molecule_symbol_off_moleculeset_symbol = function
  | Moleculeset_symbol_t.Molecule_symbol _ -> true
  | _ -> false
;;

let is_molecule_forked_symbol_off_moleculeset_symbol sym_mot =
  if not (is_molecule_symbol_off_moleculeset_symbol sym_mot)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_moleculeset_symbol sym_mot in 
     Molecule_symbol_v.is_molecule_forked_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_symbol_off_moleculeset_symbol sym_mot =
  if not (is_molecule_symbol_off_moleculeset_symbol sym_mot)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_moleculeset_symbol sym_mot in 
     Molecule_symbol_v.is_molecule_linear_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_diatomic_symbol_off_moleculeset_symbol sym_mot =
  if not (is_molecule_symbol_off_moleculeset_symbol sym_mot)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_moleculeset_symbol sym_mot in 
     Molecule_symbol_v.is_molecule_linear_diatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_overdiatomic_symbol_off_moleculeset_symbol sym_mot =
  if not (is_molecule_symbol_off_moleculeset_symbol sym_mot)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_moleculeset_symbol sym_mot in 
     Molecule_symbol_v.is_molecule_linear_overdiatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_polymer_symbol_off_moleculeset_symbol sym_mot =
  if not (is_molecule_symbol_off_moleculeset_symbol sym_mot)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_moleculeset_symbol sym_mot in 
     Molecule_symbol_v.is_molecule_polymer_symbol_off_molecule_symbol sym_moe
    end
;;



(** created by ./generator moleculeset implementation symbol at 15:46 22 May 2012. *)



