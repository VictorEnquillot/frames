(** {3 A Symbol for a Residue.} *)

(** {6 Displaying.} *)

val name :
  Residue_symbol_t.residue_symbol ->
    string
;;

val print : Format.formatter ->
  Residue_symbol_t.residue_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Residue_nterminal from Residue.} *)

val residue_nterminal_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
    Residue_nterminal_symbol_t.residue_nterminal_symbol
;;

(** {9 Extracting Residue_nterminal_segmented from Residue_nterminal from Residue.} *)

val residue_nterminal_segmented_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
    Residue_nterminal_segmented_symbol_t.residue_nterminal_segmented_symbol
;;

(** {12 Extracting Molecule_aminoacid_glycine from Residue_nterminal_segmented from Residue_nterminal from Residue.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {9 Extracting Residue_nterminal_fragmented from Residue_nterminal from Residue.} *)

val residue_nterminal_fragmented_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
    Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol
;;

(** {12 Extracting Molecule_aminoacid_proline from Residue_nterminal_fragmented from Residue_nterminal from Residue.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal from Residue.} *)

val molecule_aminoacid_regular_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {6 Extracting Residue_buried from Residue.} *)

val residue_buried_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
    Residue_buried_symbol_t.residue_buried_symbol
;;

(** {9 Extracting Residue_buried_segmented from Residue_buried from Residue.} *)

val residue_buried_segmented_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
    Residue_buried_segmented_symbol_t.residue_buried_segmented_symbol
;;

(** {12 Extracting Molecule_aminoacid_glycine from Residue_buried_segmented from Residue_buried from Residue.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {9 Extracting Residue_buried_fragmented from Residue_buried from Residue.} *)

val residue_buried_fragmented_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
    Residue_buried_fragmented_symbol_t.residue_buried_fragmented_symbol
;;

(** {12 Extracting Molecule_aminoacid_proline from Residue_buried_fragmented from Residue_buried from Residue.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried from Residue.} *)

val molecule_aminoacid_regular_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {6 Querying.} *)

(** {6 Querying Residue_nterminal in Residue.} *)

val is_residue_nterminal_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
  bool
;;

(** {9 Querying Residue_nterminal_segmented in Residue_nterminal in Residue.} *)

val is_residue_nterminal_segmented_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
  bool
;;

(** {12 Querying Molecule_aminoacid_glycine in Residue_nterminal_segmented in Residue_nterminal in Residue.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {9 Querying Residue_nterminal_fragmented in Residue_nterminal in Residue.} *)

val is_residue_nterminal_fragmented_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
  bool
;;

(** {12 Querying Molecule_aminoacid_proline in Residue_nterminal_fragmented in Residue_nterminal in Residue.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {12 Querying Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal in Residue.} *)

val is_molecule_aminoacid_regular_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
  bool
;;

(** {6 Querying Residue_buried in Residue.} *)

val is_residue_buried_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
  bool
;;

(** {9 Querying Residue_buried_segmented in Residue_buried in Residue.} *)

val is_residue_buried_segmented_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
  bool
;;

(** {12 Querying Molecule_aminoacid_glycine in Residue_buried_segmented in Residue_buried in Residue.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {9 Querying Residue_buried_fragmented in Residue_buried in Residue.} *)

val is_residue_buried_fragmented_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
  bool
;;

(** {12 Querying Molecule_aminoacid_proline in Residue_buried_fragmented in Residue_buried in Residue.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {12 Querying Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried in Residue.} *)

val is_molecule_aminoacid_regular_symbol_off_residue_symbol :
  Residue_symbol_t.residue_symbol ->
  bool
;;

(** {6 Upgrading from Residue_nterminal to Residue.} *)

val residue_symbol_of_residue_nterminal_symbol :
  Residue_nterminal_symbol_t.residue_nterminal_symbol ->
    Residue_symbol_t.residue_symbol
;;

(** {9 Upgrading from Residue_nterminal_segmented through Residue_nterminal to Residue.} *)

val residue_symbol_of_residue_nterminal_segmented_symbol :
  Residue_nterminal_segmented_symbol_t.residue_nterminal_segmented_symbol ->
    Residue_symbol_t.residue_symbol
;;

(** {12 Upgrading from Molecule_aminoacid_glycine through Residue_nterminal_segmented through Residue_nterminal to Residue.} *)

val molecule_aminoacid_glycine : Residue_symbol_t.residue_symbol;;
(** {9 Upgrading from Residue_nterminal_fragmented through Residue_nterminal to Residue.} *)

val residue_symbol_of_residue_nterminal_fragmented_symbol :
  Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol ->
    Residue_symbol_t.residue_symbol
;;

(** {12 Upgrading from Molecule_aminoacid_proline through Residue_nterminal_fragmented through Residue_nterminal to Residue.} *)

val molecule_aminoacid_proline : Residue_symbol_t.residue_symbol;;
(** {12 Upgrading from Molecule_aminoacid_regular through Residue_nterminal_fragmented through Residue_nterminal to Residue.} *)

val residue_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Residue_symbol_t.residue_symbol
;;

(** {6 Upgrading from Residue_buried to Residue.} *)

val residue_symbol_of_residue_buried_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    Residue_symbol_t.residue_symbol
;;

(** {9 Upgrading from Residue_buried_segmented through Residue_buried to Residue.} *)

val residue_symbol_of_residue_buried_segmented_symbol :
  Residue_buried_segmented_symbol_t.residue_buried_segmented_symbol ->
    Residue_symbol_t.residue_symbol
;;

(** {12 Upgrading from Molecule_aminoacid_glycine through Residue_buried_segmented through Residue_buried to Residue.} *)

val molecule_aminoacid_glycine : Residue_symbol_t.residue_symbol;;
(** {9 Upgrading from Residue_buried_fragmented through Residue_buried to Residue.} *)

val residue_symbol_of_residue_buried_fragmented_symbol :
  Residue_buried_fragmented_symbol_t.residue_buried_fragmented_symbol ->
    Residue_symbol_t.residue_symbol
;;

(** {12 Upgrading from Molecule_aminoacid_proline through Residue_buried_fragmented through Residue_buried to Residue.} *)

val molecule_aminoacid_proline : Residue_symbol_t.residue_symbol;;
(** {12 Upgrading from Molecule_aminoacid_regular through Residue_buried_fragmented through Residue_buried to Residue.} *)

val residue_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Residue_symbol_t.residue_symbol
;;

(** created by ./do_entitysum_symbol_v_mli.sh residue 12 January 2011. *)

