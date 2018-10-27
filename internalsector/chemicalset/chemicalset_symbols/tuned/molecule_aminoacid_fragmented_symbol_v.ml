(** {3 The functionalities for a Symbol for a Molecule_aminoacid_fragmented.} *)

let nam_cod = "molecule_aminoacid_fragmented_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_aminoacid_fragmented_symbol_t.Proline -> "proline"
  | Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_fragmented_regular_symbol sym_afr ->
      Molecule_aminoacid_fragmented_regular_symbol_v.name sym_afr
;;


(** {6 Extracting} *)


let molecule_aminoacid_fragmented_regular_symbol_off_molecule_aminoacid_fragmented_symbol = function
  | Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_fragmented_regular_symbol sym_afr -> sym_afr
  | sym_maf -> Error_messages_v.print_fatal_error
      nam_cod "molecule_aminoacid_fragmented_regular_symbol_off_molecule_aminoacid_fragmented_symbol"
      "Molecule_aminoacid_fragmented_regular_symbol"
      (name sym_maf) "check"
;;


(** {6 Querying} *)


let is_molecule_aminoacid_fragmented_regular_symbol_off_molecule_aminoacid_fragmented_symbol = function
  | Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_fragmented_regular_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading} *)


let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr = 
  Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_fragmented_regular_symbol sym_afr
;;


(** {6 Abbreviating} *)


let proline = Molecule_aminoacid_fragmented_symbol_t.Proline;;

let alanine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.alanine;;

let arginine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.arginine;;

let asparagine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.asparagine;;

let aspartic = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.aspartic;;

let cysteine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.cysteine;;

let glutamine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.glutamine;;

let glutamic = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.glutamic;;

let histidine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.histidine;;

let isoleucine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.isoleucine;;

let leucine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.leucine;;

let lysine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.lysine;;

let methionine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.methionine;;

let phenylalanine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.phenylalanine;;

let serine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.serine;;

let threonine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.threonine;;

let tryptophan = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.tryptophan;;

let tyrosine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.tyrosine;;

let valine = molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol Molecule_aminoacid_fragmented_regular_symbol_v.valine;;


(** created by ./generator molecule_aminoacid_fragmented implementation symbol at 10:39 31 Jan 2012. *)


(** {6 Making} *)

let make = function 
  | "proline" -> proline
  | str -> 
      let sym_afr = try Molecule_aminoacid_fragmented_regular_symbol_v.make str 
      with Failure "Not_aminoacid_regular" ->
	failwith "Not_aminoacid_fragmented" 
      in
      molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr
;;
