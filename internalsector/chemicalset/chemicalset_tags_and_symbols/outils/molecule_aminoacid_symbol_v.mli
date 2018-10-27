(** {3 A Symbol for a Molecule_aminoacid.} *)


let name :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    unit
;;


(** {6 Extracting.} *)

val molecule_aminoacid_symbol_off_molecule_aminoacid_segmented_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    Mass_v
;;

val molecule_aminoacid_symbol_off_molecule_aminoacid_fragmented_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    Mafs_v
;;

val molecule_aminoacid_symbol_off_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    Mars_v
;;


(** {6 Querying.} *)

val is_molecule_aminoacid_symbol_off_molecule_aminoacid_segmented_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    bool
;;

val is_molecule_aminoacid_symbol_off_molecule_aminoacid_fragmented_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    bool
;;

val is_molecule_aminoacid_symbol_off_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol :
  Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol ->
    Mas_v
;;

val glycine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    Mas_v
;;

val proline : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Mas_v
;;

val Alanine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Arginine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Asparagine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Aspartic : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Cysteine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Glutamine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Glutamic : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Histidine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Isoleucine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Leucine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Lysine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Methionine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Phenylalanine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Serine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Threonine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Tryptophan : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Tyrosine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

val Valine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;



(** created by ./generator molecule_aminoacid v symbol at 9:28 26 Apr 2011. *)



