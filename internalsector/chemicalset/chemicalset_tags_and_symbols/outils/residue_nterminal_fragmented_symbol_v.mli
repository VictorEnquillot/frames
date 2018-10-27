(** {3 A Symbol for a Residue_nterminal_fragmented.} *)


let name :
  Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol ->
    string
;;


val print : Format.Formatter ->
  Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol ->
    unit
;;


(** {6 Extracting.} *)

val residue_nterminal_fragmented_symbol_off_molecule_aminoacid_regular_symbol :
  Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol ->
    Mars_v
;;


(** {6 Querying.} *)

val is_residue_nterminal_fragmented_symbol_off_molecule_aminoacid_regular_symbol :
  Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val molecule_aminoacid_proline : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val residue_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Rnfs_v
;;

val Alanine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Arginine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Asparagine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Aspartic : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Cysteine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Glutamine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Glutamic : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Histidine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Isoleucine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Leucine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Lysine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Methionine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Phenylalanine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Serine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Threonine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Tryptophan : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Tyrosine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;

val Valine : Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol;;



(** created by ./generator residue_nterminal_fragmented v symbol at 9:28 26 Apr 2011. *)



