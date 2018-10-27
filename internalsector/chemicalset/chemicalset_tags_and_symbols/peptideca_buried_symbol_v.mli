(** {3 A Symbol for a Peptideca_buried.} *)

(** {6 Displaying.} *)

val name :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    string
;;

val print : Format.formatter ->
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Peptideca_buried_segmented from Peptideca_buried.} *)

val peptideca_buried_segmented_symbol_off_peptideca_buried_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    Peptideca_buried_segmented_symbol_t.peptideca_buried_segmented_symbol
;;

(** {9 Extracting Molecule_aminoacid_glycine from Peptideca_buried_segmented from Peptideca_buried.} *)

(* No Extraction from doublet molecule_aminoacid_glycine. *)

(** {6 Extracting Peptideca_buried_fragmented from Peptideca_buried.} *)

val peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    Peptideca_buried_fragmented_symbol_t.peptideca_buried_fragmented_symbol
;;

(** {9 Extracting Molecule_aminoacid_proline from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from doublet molecule_aminoacid_proline. *)

(** {9 Extracting Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

val molecule_aminoacid_regular_symbol_off_peptideca_buried_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {12 Extracting Alanine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Alanine 0. *)

(** {12 Extracting Arginine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Arginine 0. *)

(** {12 Extracting Asparagine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Asparagine 0. *)

(** {12 Extracting Aspartic from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Aspartic 0. *)

(** {12 Extracting Cysteine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Cysteine 0. *)

(** {12 Extracting Glutamine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Glutamine 0. *)

(** {12 Extracting Glutamic from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Glutamic 0. *)

(** {12 Extracting Histidine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Histidine 0. *)

(** {12 Extracting Isoleucine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Isoleucine 0. *)

(** {12 Extracting Leucine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Leucine 0. *)

(** {12 Extracting Lysine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Lysine 0. *)

(** {12 Extracting Methionine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Methionine 0. *)

(** {12 Extracting Phenylalanine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Phenylalanine 0. *)

(** {12 Extracting Serine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Serine 0. *)

(** {12 Extracting Threonine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Threonine 0. *)

(** {12 Extracting Tryptophan from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Tryptophan 0. *)

(** {12 Extracting Tyrosine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Tyrosine 0. *)

(** {12 Extracting Valine from Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Peptideca_buried_segmented in Peptideca_buried.} *)

val is_peptideca_buried_segmented_symbol_off_peptideca_buried_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_glycine in Peptideca_buried_segmented in Peptideca_buried.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {6 Querying Peptideca_buried_fragmented in Peptideca_buried.} *)

val is_peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_proline in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {9 Querying Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

val is_molecule_aminoacid_regular_symbol_off_peptideca_buried_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
  bool
;;

(** {12 Querying Alanine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Alanine 0. *)

(** {12 Querying Arginine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Arginine 0. *)

(** {12 Querying Asparagine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Asparagine 0. *)

(** {12 Querying Aspartic in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Aspartic 0. *)

(** {12 Querying Cysteine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Cysteine 0. *)

(** {12 Querying Glutamine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Glutamine 0. *)

(** {12 Querying Glutamic in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Glutamic 0. *)

(** {12 Querying Histidine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Histidine 0. *)

(** {12 Querying Isoleucine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Isoleucine 0. *)

(** {12 Querying Leucine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Leucine 0. *)

(** {12 Querying Lysine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Lysine 0. *)

(** {12 Querying Methionine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Methionine 0. *)

(** {12 Querying Phenylalanine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Phenylalanine 0. *)

(** {12 Querying Serine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Serine 0. *)

(** {12 Querying Threonine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Threonine 0. *)

(** {12 Querying Tryptophan in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Tryptophan 0. *)

(** {12 Querying Tyrosine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Tyrosine 0. *)

(** {12 Querying Valine in Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Peptideca_buried_segmented to Peptideca_buried.} *)

val peptideca_buried_symbol_of_peptideca_buried_segmented_symbol :
  Peptideca_buried_segmented_symbol_t.peptideca_buried_segmented_symbol ->
    Peptideca_buried_symbol_t.peptideca_buried_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_glycine through Peptideca_buried_segmented to Peptideca_buried.} *)

val molecule_aminoacid_glycine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

(** {6 Upgrading from Peptideca_buried_fragmented to Peptideca_buried.} *)

val peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol :
  Peptideca_buried_fragmented_symbol_t.peptideca_buried_fragmented_symbol ->
    Peptideca_buried_symbol_t.peptideca_buried_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_proline through Peptideca_buried_fragmented to Peptideca_buried.} *)

val molecule_aminoacid_proline : Peptideca_buried_symbol_t.peptideca_buried_symbol;;

(** {9 Upgrading from Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val peptideca_buried_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Peptideca_buried_symbol_t.peptideca_buried_symbol
;;

(** {12 Upgrading from Alanine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val alanine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Arginine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val arginine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Asparagine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val asparagine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Aspartic through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val aspartic : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Cysteine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val cysteine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Glutamine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val glutamine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Glutamic through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val glutamic : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Histidine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val histidine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Isoleucine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val isoleucine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Leucine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val leucine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Lysine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val lysine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Methionine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val methionine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Phenylalanine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val phenylalanine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Serine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val serine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Threonine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val threonine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Tryptophan through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val tryptophan : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Tyrosine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val tyrosine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** {12 Upgrading from Valine through Molecule_aminoacid_regular through Peptideca_buried_fragmented to Peptideca_buried.} *)

val valine : Peptideca_buried_symbol_t.peptideca_buried_symbol;;
(** created by ./do_entitysum_symbol_v_mli.sh peptideca_buried 12 January 2011. *)

