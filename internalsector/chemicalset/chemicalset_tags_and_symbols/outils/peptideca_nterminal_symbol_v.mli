(** {3 A Symbol for a Peptideca_nterminal.} *)


let name :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    string
;;


val print : Format.Formatter ->
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    unit
;;


(** {6 Extracting.} *)

val peptideca_nterminal_symbol_off_peptideca_nterminal_segmented_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    Pnss_v
;;

val peptideca_nterminal_symbol_off_peptideca_nterminal_fragmented_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    Pnfs_v
;;

val peptideca_nterminal_symbol_off_molecule_aminoacid_regular_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    Mars_v
;;


(** {6 Querying.} *)

val is_peptideca_nterminal_symbol_off_peptideca_nterminal_segmented_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    bool
;;

val is_peptideca_nterminal_symbol_off_peptideca_nterminal_fragmented_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    bool
;;

val is_peptideca_nterminal_symbol_off_molecule_aminoacid_regular_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val peptideca_nterminal_symbol_of_peptideca_nterminal_segmented_symbol :
  Peptideca_nterminal_segmented_symbol_t.peptideca_nterminal_segmented_symbol ->
    Pns_v
;;

val molecule_aminoacid_glycine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol :
  Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol ->
    Pns_v
;;

val molecule_aminoacid_proline : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Pns_v
;;

val Alanine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Arginine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Asparagine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Aspartic : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Cysteine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Glutamine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Glutamic : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Histidine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Isoleucine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Leucine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Lysine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Methionine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Phenylalanine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Serine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Threonine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Tryptophan : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Tyrosine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

val Valine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;



(** created by ./generator peptideca_nterminal v symbol at 9:28 26 Apr 2011. *)



