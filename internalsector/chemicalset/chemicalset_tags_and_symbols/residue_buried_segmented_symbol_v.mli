(** {3 A Symbol for a Residue_buried_segmented.} *)

(** {6 Displaying.} *)

val name :
  Residue_buried_segmented_symbol_t.residue_buried_segmented_symbol ->
    string
;;

val print : Format.formatter ->
  Residue_buried_segmented_symbol_t.residue_buried_segmented_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_aminoacid_glycine from Residue_buried_segmented.} *)

(* No Extraction from doublet molecule_aminoacid_glycine. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_glycine in Residue_buried_segmented.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {6 Upgrading from Molecule_aminoacid_glycine to Residue_buried_segmented.} *)

val molecule_aminoacid_glycine : Residue_buried_segmented_symbol_t.residue_buried_segmented_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh residue_buried_segmented 12 January 2011. *)

