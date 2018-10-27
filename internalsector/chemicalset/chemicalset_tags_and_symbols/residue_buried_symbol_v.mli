(** {3 A Symbol for a Residue_buried.} *)

(** {6 Displaying.} *)

val name :
  Residue_buried_symbol_t.residue_buried_symbol ->
    string
;;

val print : Format.formatter ->
  Residue_buried_symbol_t.residue_buried_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Residue_buried_segmented from Residue_buried.} *)

val residue_buried_segmented_symbol_off_residue_buried_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    Residue_buried_segmented_symbol_t.residue_buried_segmented_symbol
;;

(** {9 Extracting Molecule_aminoacid_glycine from Residue_buried_segmented from Residue_buried.} *)

(* No Extraction from doublet molecule_aminoacid_glycine. *)

(** {6 Extracting Residue_buried_fragmented from Residue_buried.} *)

val residue_buried_fragmented_symbol_off_residue_buried_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    Residue_buried_fragmented_symbol_t.residue_buried_fragmented_symbol
;;

(** {9 Extracting Molecule_aminoacid_proline from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from doublet molecule_aminoacid_proline. *)

(** {9 Extracting Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

val molecule_aminoacid_regular_symbol_off_residue_buried_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {12 Extracting Alanine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Alanine 0. *)

(** {12 Extracting Arginine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Arginine 0. *)

(** {12 Extracting Asparagine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Asparagine 0. *)

(** {12 Extracting Aspartic from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Aspartic 0. *)

(** {12 Extracting Cysteine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Cysteine 0. *)

(** {12 Extracting Glutamine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Glutamine 0. *)

(** {12 Extracting Glutamic from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Glutamic 0. *)

(** {12 Extracting Histidine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Histidine 0. *)

(** {12 Extracting Isoleucine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Isoleucine 0. *)

(** {12 Extracting Leucine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Leucine 0. *)

(** {12 Extracting Lysine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Lysine 0. *)

(** {12 Extracting Methionine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Methionine 0. *)

(** {12 Extracting Phenylalanine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Phenylalanine 0. *)

(** {12 Extracting Serine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Serine 0. *)

(** {12 Extracting Threonine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Threonine 0. *)

(** {12 Extracting Tryptophan from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Tryptophan 0. *)

(** {12 Extracting Tyrosine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Tyrosine 0. *)

(** {12 Extracting Valine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Residue_buried_segmented in Residue_buried.} *)

val is_residue_buried_segmented_symbol_off_residue_buried_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_glycine in Residue_buried_segmented in Residue_buried.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {6 Querying Residue_buried_fragmented in Residue_buried.} *)

val is_residue_buried_fragmented_symbol_off_residue_buried_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_proline in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {9 Querying Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

val is_molecule_aminoacid_regular_symbol_off_residue_buried_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
  bool
;;

(** {12 Querying Alanine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Alanine 0. *)

(** {12 Querying Arginine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Arginine 0. *)

(** {12 Querying Asparagine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Asparagine 0. *)

(** {12 Querying Aspartic in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Aspartic 0. *)

(** {12 Querying Cysteine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Cysteine 0. *)

(** {12 Querying Glutamine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Glutamine 0. *)

(** {12 Querying Glutamic in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Glutamic 0. *)

(** {12 Querying Histidine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Histidine 0. *)

(** {12 Querying Isoleucine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Isoleucine 0. *)

(** {12 Querying Leucine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Leucine 0. *)

(** {12 Querying Lysine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Lysine 0. *)

(** {12 Querying Methionine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Methionine 0. *)

(** {12 Querying Phenylalanine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Phenylalanine 0. *)

(** {12 Querying Serine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Serine 0. *)

(** {12 Querying Threonine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Threonine 0. *)

(** {12 Querying Tryptophan in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Tryptophan 0. *)

(** {12 Querying Tyrosine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Tyrosine 0. *)

(** {12 Querying Valine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Residue_buried_segmented to Residue_buried.} *)

val residue_buried_symbol_of_residue_buried_segmented_symbol :
  Residue_buried_segmented_symbol_t.residue_buried_segmented_symbol ->
    Residue_buried_symbol_t.residue_buried_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_glycine through Residue_buried_segmented to Residue_buried.} *)

val molecule_aminoacid_glycine : Residue_buried_symbol_t.residue_buried_symbol;;

(** {6 Upgrading from Residue_buried_fragmented to Residue_buried.} *)

val residue_buried_symbol_of_residue_buried_fragmented_symbol :
  Residue_buried_fragmented_symbol_t.residue_buried_fragmented_symbol ->
    Residue_buried_symbol_t.residue_buried_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_proline through Residue_buried_fragmented to Residue_buried.} *)

val molecule_aminoacid_proline : Residue_buried_symbol_t.residue_buried_symbol;;

(** {9 Upgrading from Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val residue_buried_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Residue_buried_symbol_t.residue_buried_symbol
;;

(** {12 Upgrading from Alanine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val alanine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Arginine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val arginine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Asparagine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val asparagine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Aspartic through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val aspartic : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Cysteine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val cysteine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Glutamine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val glutamine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Glutamic through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val glutamic : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Histidine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val histidine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Isoleucine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val isoleucine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Leucine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val leucine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Lysine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val lysine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Methionine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val methionine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Phenylalanine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val phenylalanine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Serine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val serine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Threonine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val threonine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Tryptophan through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val tryptophan : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Tyrosine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val tyrosine : Residue_buried_symbol_t.residue_buried_symbol;;
(** {12 Upgrading from Valine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

val valine : Residue_buried_symbol_t.residue_buried_symbol;;
(** created by ./do_entitysum_symbol_v_mli.sh residue_buried 12 January 2011. *)

