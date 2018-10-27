(** {3 A Symbol for a Molecule_aminoacid_fragmented.} *)


let name :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    unit
;;


(** {6 Extracting.} *)

val molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    Mars_v
;;


(** {6 Querying.} *)

val is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val proline : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Mafs_v
;;

val Alanine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Arginine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Asparagine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Aspartic : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Cysteine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Glutamine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Glutamic : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Histidine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Isoleucine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Leucine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Lysine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Methionine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Phenylalanine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Serine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Threonine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Tryptophan : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Tyrosine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

val Valine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;



(** created by ./generator molecule_aminoacid_fragmented v symbol at 9:28 26 Apr 2011. *)



