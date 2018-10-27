(** {3 A Symbol for a Residue_buried.} *)


let name :
  Residue_buried_symbol_t.residue_buried_symbol ->
    string
;;


val print : Format.Formatter ->
  Residue_buried_symbol_t.residue_buried_symbol ->
    unit
;;


(** {6 Extracting.} *)

val residue_buried_symbol_off_residue_buried_segmented_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    Rbss_v
;;

val residue_buried_symbol_off_residue_buried_fragmented_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    Rbfs_v
;;

val residue_buried_symbol_off_molecule_aminoacid_regular_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    Mars_v
;;


(** {6 Querying.} *)

val is_residue_buried_symbol_off_residue_buried_segmented_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    bool
;;

val is_residue_buried_symbol_off_residue_buried_fragmented_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    bool
;;

val is_residue_buried_symbol_off_molecule_aminoacid_regular_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val residue_buried_symbol_of_residue_buried_segmented_symbol :
  Residue_buried_segmented_symbol_t.residue_buried_segmented_symbol ->
    Rbs_v
;;

val molecule_aminoacid_glycine : Residue_buried_symbol_t.residue_buried_symbol;;

val residue_buried_symbol_of_residue_buried_fragmented_symbol :
  Residue_buried_fragmented_symbol_t.residue_buried_fragmented_symbol ->
    Rbs_v
;;

val molecule_aminoacid_proline : Residue_buried_symbol_t.residue_buried_symbol;;

val residue_buried_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Rbs_v
;;

val Alanine : Residue_buried_symbol_t.residue_buried_symbol;;

val Arginine : Residue_buried_symbol_t.residue_buried_symbol;;

val Asparagine : Residue_buried_symbol_t.residue_buried_symbol;;

val Aspartic : Residue_buried_symbol_t.residue_buried_symbol;;

val Cysteine : Residue_buried_symbol_t.residue_buried_symbol;;

val Glutamine : Residue_buried_symbol_t.residue_buried_symbol;;

val Glutamic : Residue_buried_symbol_t.residue_buried_symbol;;

val Histidine : Residue_buried_symbol_t.residue_buried_symbol;;

val Isoleucine : Residue_buried_symbol_t.residue_buried_symbol;;

val Leucine : Residue_buried_symbol_t.residue_buried_symbol;;

val Lysine : Residue_buried_symbol_t.residue_buried_symbol;;

val Methionine : Residue_buried_symbol_t.residue_buried_symbol;;

val Phenylalanine : Residue_buried_symbol_t.residue_buried_symbol;;

val Serine : Residue_buried_symbol_t.residue_buried_symbol;;

val Threonine : Residue_buried_symbol_t.residue_buried_symbol;;

val Tryptophan : Residue_buried_symbol_t.residue_buried_symbol;;

val Tyrosine : Residue_buried_symbol_t.residue_buried_symbol;;

val Valine : Residue_buried_symbol_t.residue_buried_symbol;;



(** created by ./generator residue_buried v symbol at 9:28 26 Apr 2011. *)



