(** {3 A Symbol for a Peptideca_buried.} *)


let name :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    string
;;


val print : Format.Formatter ->
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    unit
;;


(** {6 Extracting.} *)

val peptideca_buried_symbol_off_peptideca_buried_segmented_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    Pbss_v
;;

val peptideca_buried_symbol_off_peptideca_buried_fragmented_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    Pbfs_v
;;

val peptideca_buried_symbol_off_molecule_aminoacid_regular_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    Mars_v
;;


(** {6 Querying.} *)

val is_peptideca_buried_symbol_off_peptideca_buried_segmented_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    bool
;;

val is_peptideca_buried_symbol_off_peptideca_buried_fragmented_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    bool
;;

val is_peptideca_buried_symbol_off_molecule_aminoacid_regular_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val peptideca_buried_symbol_of_peptideca_buried_segmented_symbol :
  Peptideca_buried_segmented_symbol_t.peptideca_buried_segmented_symbol ->
    Pbs_v
;;

val molecule_aminoacid_glycine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol :
  Peptideca_buried_fragmented_symbol_t.peptideca_buried_fragmented_symbol ->
    Pbs_v
;;

val molecule_aminoacid_proline : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val peptideca_buried_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Pbs_v
;;

val Alanine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Arginine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Asparagine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Aspartic : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Cysteine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Glutamine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Glutamic : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Histidine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Isoleucine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Leucine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Lysine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Methionine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Phenylalanine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Serine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Threonine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Tryptophan : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Tyrosine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

val Valine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;



(** created by ./generator peptideca_buried v symbol at 9:28 26 Apr 2011. *)



