(** {3 A Symbol for a Molecule_aminoacid_segmented_tlc.} *)

(** {6 Displaying.} *)

val name :
  Molecule_aminoacid_segmented_tlc_symbol_t.molecule_aminoacid_segmented_tlc_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_aminoacid_segmented_tlc_symbol_t.molecule_aminoacid_segmented_tlc_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Gly from Molecule_aminoacid_segmented_tlc.} *)

(* No Extraction from doublet gly. *)

(** {6 Querying.} *)

(** {6 Querying Gly in Molecule_aminoacid_segmented_tlc.} *)

(* No Query from gly 0. *)

(** {6 Upgrading from Gly to Molecule_aminoacid_segmented_tlc.} *)

val gly : Molecule_aminoacid_segmented_tlc_symbol_t.molecule_aminoacid_segmented_tlc_symbol;;

val molecule_aminoacid_segmented_symbol_of_molecule_aminoacid_segmented_tlc_symbol :
  Molecule_aminoacid_segmented_tlc_symbol_t.molecule_aminoacid_segmented_tlc_symbol ->
    Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol
;;
(** created by ./do_entitysum_symbol_v_mli.sh molecule_aminoacid_segmented_tlc 13 January 2011. *)

