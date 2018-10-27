(** {3 A Symbol for a Peptideca.} *)

(** {6 Displaying.} *)

val name :
  Peptideca_symbol_t.peptideca_symbol ->
    string
;;

val print : Format.formatter ->
  Peptideca_symbol_t.peptideca_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Peptideca_buried from Peptideca.} *)

val peptideca_buried_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
    Peptideca_buried_symbol_t.peptideca_buried_symbol
;;

(** {9 Extracting Peptideca_buried_segmented from Peptideca_buried from Peptideca.} *)

val peptideca_buried_segmented_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
    Peptideca_buried_segmented_symbol_t.peptideca_buried_segmented_symbol
;;

(** {12 Extracting Molecule_aminoacid_glycine from Peptideca_buried_segmented from Peptideca_buried from Peptideca.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {9 Extracting Peptideca_buried_fragmented from Peptideca_buried from Peptideca.} *)

val peptideca_buried_fragmented_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
    Peptideca_buried_fragmented_symbol_t.peptideca_buried_fragmented_symbol
;;

(** {12 Extracting Molecule_aminoacid_proline from Peptideca_buried_fragmented from Peptideca_buried from Peptideca.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried from Peptideca.} *)

val molecule_aminoacid_regular_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {6 Extracting Peptideca_nterminal from Peptideca.} *)

val peptideca_nterminal_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
    Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol
;;

(** {9 Extracting Peptideca_nterminal_segmented from Peptideca_nterminal from Peptideca.} *)

val peptideca_nterminal_segmented_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
    Peptideca_nterminal_segmented_symbol_t.peptideca_nterminal_segmented_symbol
;;

(** {12 Extracting Molecule_aminoacid_glycine from Peptideca_nterminal_segmented from Peptideca_nterminal from Peptideca.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {9 Extracting Peptideca_nterminal_fragmented from Peptideca_nterminal from Peptideca.} *)

val peptideca_nterminal_fragmented_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
    Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol
;;

(** {12 Extracting Molecule_aminoacid_proline from Peptideca_nterminal_fragmented from Peptideca_nterminal from Peptideca.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal from Peptideca.} *)

val molecule_aminoacid_regular_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {6 Querying.} *)

(** {6 Querying Peptideca_buried in Peptideca.} *)

val is_peptideca_buried_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
  bool
;;

(** {9 Querying Peptideca_buried_segmented in Peptideca_buried in Peptideca.} *)

val is_peptideca_buried_segmented_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
  bool
;;

(** {12 Querying Molecule_aminoacid_glycine in Peptideca_buried_segmented in Peptideca_buried in Peptideca.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {9 Querying Peptideca_buried_fragmented in Peptideca_buried in Peptideca.} *)

val is_peptideca_buried_fragmented_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
  bool
;;

(** {12 Querying Molecule_aminoacid_proline in Peptideca_buried_fragmented in Peptideca_buried in Peptideca.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {12 Querying Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried in Peptideca.} *)

val is_molecule_aminoacid_regular_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
  bool
;;

(** {6 Querying Peptideca_nterminal in Peptideca.} *)

val is_peptideca_nterminal_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
  bool
;;

(** {9 Querying Peptideca_nterminal_segmented in Peptideca_nterminal in Peptideca.} *)

val is_peptideca_nterminal_segmented_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
  bool
;;

(** {12 Querying Molecule_aminoacid_glycine in Peptideca_nterminal_segmented in Peptideca_nterminal in Peptideca.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {9 Querying Peptideca_nterminal_fragmented in Peptideca_nterminal in Peptideca.} *)

val is_peptideca_nterminal_fragmented_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
  bool
;;

(** {12 Querying Molecule_aminoacid_proline in Peptideca_nterminal_fragmented in Peptideca_nterminal in Peptideca.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {12 Querying Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal in Peptideca.} *)

val is_molecule_aminoacid_regular_symbol_off_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
  bool
;;

(** {6 Upgrading from Peptideca_buried to Peptideca.} *)

val peptideca_symbol_of_peptideca_buried_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    Peptideca_symbol_t.peptideca_symbol
;;

(** {9 Upgrading from Peptideca_buried_segmented through Peptideca_buried to Peptideca.} *)

val peptideca_symbol_of_peptideca_buried_segmented_symbol :
  Peptideca_buried_segmented_symbol_t.peptideca_buried_segmented_symbol ->
    Peptideca_symbol_t.peptideca_symbol
;;

(** {12 Upgrading from Molecule_aminoacid_glycine through Peptideca_buried_segmented through Peptideca_buried to Peptideca.} *)

val molecule_aminoacid_glycine : Peptideca_symbol_t.peptideca_symbol;;
(** {9 Upgrading from Peptideca_buried_fragmented through Peptideca_buried to Peptideca.} *)

val peptideca_symbol_of_peptideca_buried_fragmented_symbol :
  Peptideca_buried_fragmented_symbol_t.peptideca_buried_fragmented_symbol ->
    Peptideca_symbol_t.peptideca_symbol
;;

(** {12 Upgrading from Molecule_aminoacid_proline through Peptideca_buried_fragmented through Peptideca_buried to Peptideca.} *)

val molecule_aminoacid_proline : Peptideca_symbol_t.peptideca_symbol;;
(** {12 Upgrading from Molecule_aminoacid_regular through Peptideca_buried_fragmented through Peptideca_buried to Peptideca.} *)

val peptideca_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Peptideca_symbol_t.peptideca_symbol
;;

(** {6 Upgrading from Peptideca_nterminal to Peptideca.} *)

val peptideca_symbol_of_peptideca_nterminal_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    Peptideca_symbol_t.peptideca_symbol
;;

(** {9 Upgrading from Peptideca_nterminal_segmented through Peptideca_nterminal to Peptideca.} *)

val peptideca_symbol_of_peptideca_nterminal_segmented_symbol :
  Peptideca_nterminal_segmented_symbol_t.peptideca_nterminal_segmented_symbol ->
    Peptideca_symbol_t.peptideca_symbol
;;

(** {12 Upgrading from Molecule_aminoacid_glycine through Peptideca_nterminal_segmented through Peptideca_nterminal to Peptideca.} *)

val molecule_aminoacid_glycine : Peptideca_symbol_t.peptideca_symbol;;
(** {9 Upgrading from Peptideca_nterminal_fragmented through Peptideca_nterminal to Peptideca.} *)

val peptideca_symbol_of_peptideca_nterminal_fragmented_symbol :
  Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol ->
    Peptideca_symbol_t.peptideca_symbol
;;

(** {12 Upgrading from Molecule_aminoacid_proline through Peptideca_nterminal_fragmented through Peptideca_nterminal to Peptideca.} *)

val molecule_aminoacid_proline : Peptideca_symbol_t.peptideca_symbol;;
(** {12 Upgrading from Molecule_aminoacid_regular through Peptideca_nterminal_fragmented through Peptideca_nterminal to Peptideca.} *)

val peptideca_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Peptideca_symbol_t.peptideca_symbol
;;

(** created by ./do_entitysum_symbol_v_mli.sh peptideca 12 January 2011. *)

