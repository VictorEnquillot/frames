(** {3 A Symbol for a Molecule_aminoacid_segmented_olc.} *)

(** {6 Displaying.} *)

val name :
  Molecule_aminoacid_segmented_olc_symbol_t.molecule_aminoacid_segmented_olc_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_aminoacid_segmented_olc_symbol_t.molecule_aminoacid_segmented_olc_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting G from Molecule_aminoacid_segmented_olc.} *)

(* No Extraction from doublet g. *)

(** {6 Querying.} *)

(** {6 Querying G in Molecule_aminoacid_segmented_olc.} *)

(* No Query from g 0. *)

(** {6 Upgrading from G to Molecule_aminoacid_segmented_olc.} *)

val g : Molecule_aminoacid_segmented_olc_symbol_t.molecule_aminoacid_segmented_olc_symbol;;

val molecule_aminoacid_segmented_symbol_of_molecule_aminoacid_segmented_olc_symbol :
  Molecule_aminoacid_segmented_olc_symbol_t.molecule_aminoacid_segmented_olc_symbol ->
    Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol
;;(** created by ./do_entitysum_symbol_v_mli.sh molecule_aminoacid_segmented_olc 12 January 2011. *)

