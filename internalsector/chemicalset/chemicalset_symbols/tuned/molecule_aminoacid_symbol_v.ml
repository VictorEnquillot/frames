(** {3 The functionalities for a Symbol for a Molecule_aminoacid.} *)

let nam_cod = "molecule_aminoacid_symbol_v.ml";;


(** {6 Aliasing} *)




(** {6 Naming} *)


let name = function
  | Molecule_aminoacid_symbol_t.Molecule_aminoacid_segmented_symbol sym_mas ->
      Molecule_aminoacid_segmented_symbol_v.name sym_mas
  | Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol sym_maf ->
      Molecule_aminoacid_fragmented_symbol_v.name sym_maf
;;


(** {6 Extracting} *)


let molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol = function
  | Molecule_aminoacid_symbol_t.Molecule_aminoacid_segmented_symbol sym_mas -> sym_mas
  | sym_moa -> Error_messages_v.print_fatal_error
      nam_cod "molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol"
      "Molecule_aminoacid_segmented_symbol"
      (name sym_moa) "check"
;;

let molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol = function
  | Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol sym_maf -> sym_maf
  | sym_moa -> Error_messages_v.print_fatal_error
      nam_cod "molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol"
      "Molecule_aminoacid_fragmented_symbol"
      (name sym_moa) "check"
;;

let molecule_aminoacid_fragmented_regular_symbol_off_molecule_aminoacid_symbol sym_moa = 
  let sym_maf = molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol sym_moa in 
    Molecule_aminoacid_fragmented_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_molecule_aminoacid_fragmented_symbol sym_maf
;;


(** {6 Querying} *)


let is_molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol = function
  | Molecule_aminoacid_symbol_t.Molecule_aminoacid_segmented_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol = function
  | Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_molecule_aminoacid_symbol sym_moa =
  if not (is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol sym_moa)
  then false
  else
    begin
     let sym_maf = molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol sym_moa in 
     Molecule_aminoacid_fragmented_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_molecule_aminoacid_fragmented_symbol sym_maf
    end
;;


(** {6 Upgrading} *)


let molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol sym_mas = 
  Molecule_aminoacid_symbol_t.Molecule_aminoacid_segmented_symbol sym_mas
;;

let molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol sym_maf = 
  Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol sym_maf
;;

let molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr = 
  let sym_maf = Molecule_aminoacid_fragmented_symbol_v.molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr in
    molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol sym_maf
;;


(** {6 Abbreviating} *)


let glycine = molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol Molecule_aminoacid_segmented_symbol_v.glycine;;

let proline = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.proline;;

let alanine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.alanine;;

let arginine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.arginine;;

let asparagine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.asparagine;;

let aspartic = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.aspartic;;

let cysteine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.cysteine;;

let glutamine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.glutamine;;

let glutamic = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.glutamic;;

let histidine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.histidine;;

let isoleucine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.isoleucine;;

let leucine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.leucine;;

let lysine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.lysine;;

let methionine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.methionine;;

let phenylalanine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.phenylalanine;;

let serine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.serine;;

let threonine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.threonine;;

let tryptophan = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.tryptophan;;

let tyrosine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.tyrosine;;

let valine = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Molecule_aminoacid_fragmented_symbol_v.valine;;


(** created by ./generator molecule_aminoacid implementation symbol at 10:39 31 Jan 2012. *)


(** {6 Making} *)

let make = function 
  | "glycine" -> glycine
  | str -> 
      let sym_maf = try Molecule_aminoacid_fragmented_symbol_v.make str 
      with Failure "Not_aminoacid_fragmented" ->
	Error_messages_v.print_fatal_error nam_cod "make"
	  "lowercase name of one of the 20 aminoacids"
	  str
	  "Check"
      in
      molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol sym_maf
;;


let molecule_aminoacid_olc_symbol_off_molecule_aminoacid_symbol = function
  | Molecule_aminoacid_symbol_t.Molecule_aminoacid_segmented_symbol smb -> 
      Molecule_aminoacid_segmented_olc_symbol_t.Molecule_aminoacid_segmented_olc_symbol 
	(molecule_aminoacid_segmented_olc_symbol_of_molecule_aminoacid_segmented_symbol smb)
  | Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol smb_amr ->
      Molecule_aminoacid_segmented_olc_symbol_t.Molecule_aminoacid_fragmented_olc_symbol 
	(molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_fragmented_symbol smb_amr)
;;




