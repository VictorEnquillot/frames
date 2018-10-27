(** {3 A Symbol for a Residue_buried_fragmented.} *)

let nam_cod = "residue_buried_fragmented_symbol_v.ml";;


(** {6 Modules.} *)

module Mars_v = Molecule_aminoacid_regular_symbol_v

module Mars_t = Molecule_aminoacid_regular_symbol_t
module Rbfs_t = Residue_buried_fragmented_symbol_t



(** {6 Naming.} *)

let name = function
  | Rbfs_t.Molecule_aminoacid_proline -> "molecule_aminoacid_proline"
  | Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar ->
      Mars_v.name smb_mar
;;


(** {6 Printing.} *)

let print ppf = function
  | Rbfs_t.Molecule_aminoacid_proline  ->
      .print ppf 
  | Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar ->
      Mars_v.print ppf smb_mar
;;


(** {6 Extracting.} *)


let molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol = function
  | Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar -> smb_mar
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol"
     "Molecule_aminoacid_regular_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)


let is_molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol = function
  | Rbfs_t.Molecule_aminoacid_regular_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)


let molecule_aminoacid_proline = residue_buried_fragmented_symbol_of_residue_buried_fragmented_symbol Rbfs_t.Molecule_aminoacid_proline;;

let residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar
;;

let alanine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;

let arginine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;

let asparagine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;

let aspartic = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;

let cysteine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;

let glutamine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;

let glutamic = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;

let histidine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;

let isoleucine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;

let leucine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;

let lysine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;

let methionine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;

let phenylalanine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;

let serine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;

let threonine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;

let tryptophan = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;

let tyrosine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;

let valine = residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;



(** created by ./generator residue_buried_fragmented v symbol at 18:46 11 May 2011. *)



