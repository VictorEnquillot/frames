(** {3 The functionalities for a Symbol for a Molecule_aminoacid_fragmented.} *)

let nam_cod = "molecule_aminoacid_fragmented_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_fragmented_regular_symbol sym_afr ->
      Molecule_aminoacid_fragmented_regular_symbol_v.name sym_afr
  | Molecule_aminoacid_fragmented_symbol_t.Proline -> "proline"
;;


(** {6 Upgrading} *)


let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr = 
  Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_fragmented_regular_symbol sym_afr
;;


(** {6 Abbreviating} *)


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

let proline = Molecule_aminoacid_fragmented_symbol_t.Proline;;


(** {6 Making} *)


let make s = function
  | "alanine" -> alanine
  | "arginine" -> arginine
  | "asparagine" -> asparagine
  | "aspartic" -> aspartic
  | "cysteine" -> cysteine
  | "glutamine" -> glutamine
  | "glutamic" -> glutamic
  | "histidine" -> histidine
  | "isoleucine" -> isoleucine
  | "leucine" -> leucine
  | "lysine" -> lysine
  | "methionine" -> methionine
  | "phenylalanine" -> phenylalanine
  | "serine" -> serine
  | "threonine" -> threonine
  | "tryptophan" -> tryptophan
  | "tyrosine" -> tyrosine
  | "valine" -> valine
  | "proline" -> proline
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
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


(** created by ./generator molecule_aminoacid_fragmented implementation symbol at 15:48 8 Mar 2012. *)



