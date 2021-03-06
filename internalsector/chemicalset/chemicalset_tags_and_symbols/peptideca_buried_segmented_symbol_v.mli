(** {3 A Symbol for a Peptideca_buried_segmented.} *)

(** {6 Displaying.} *)

val name :
  Peptideca_buried_segmented_symbol_t.peptideca_buried_segmented_symbol ->
    string
;;

val print : Format.formatter ->
  Peptideca_buried_segmented_symbol_t.peptideca_buried_segmented_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_aminoacid_glycine from Peptideca_buried_segmented.} *)

(* No Extraction from doublet molecule_aminoacid_glycine. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_glycine in Peptideca_buried_segmented.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {6 Upgrading from Molecule_aminoacid_glycine to Peptideca_buried_segmented.} *)

val molecule_aminoacid_glycine : Peptideca_buried_segmented_symbol_t.peptideca_buried_segmented_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh peptideca_buried_segmented 12 January 2011. *)

