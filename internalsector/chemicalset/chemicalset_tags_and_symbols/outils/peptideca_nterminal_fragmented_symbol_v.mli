(** {3 A Symbol for a Peptideca_nterminal_fragmented.} *)


let name :
  Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol ->
    string
;;


val print : Format.Formatter ->
  Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol ->
    unit
;;


(** {6 Extracting.} *)

val peptideca_nterminal_fragmented_symbol_off_molecule_aminoacid_regular_symbol :
  Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol ->
    Mars_v
;;


(** {6 Querying.} *)

val is_peptideca_nterminal_fragmented_symbol_off_molecule_aminoacid_regular_symbol :
  Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val molecule_aminoacid_proline : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val peptideca_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Pnfs_v
;;

val Alanine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Arginine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Asparagine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Aspartic : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Cysteine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Glutamine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Glutamic : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Histidine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Isoleucine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Leucine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Lysine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Methionine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Phenylalanine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Serine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Threonine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Tryptophan : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Tyrosine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;

val Valine : Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol;;



(** created by ./generator peptideca_nterminal_fragmented v symbol at 9:28 26 Apr 2011. *)



