(** {3 A Symbol for a Molecule_aminoacid_segmented.} *)

(** {6 Displaying.} *)

val name :
  Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Glycine from Molecule_aminoacid_segmented.} *)

(* No Extraction from doublet glycine. *)

(** {6 Querying.} *)

(** {6 Querying Glycine in Molecule_aminoacid_segmented.} *)

(* No Query from glycine 0. *)

(** {6 Upgrading from Glycine to Molecule_aminoacid_segmented.} *)

val glycine : Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_aminoacid_segmented 12 January 2011. *)

