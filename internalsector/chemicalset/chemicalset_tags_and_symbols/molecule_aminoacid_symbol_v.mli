(** {3 A Symbol for a Molecule_aminoacid.} *)

(** {6 Displaying.} *)

val name :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_aminoacid_segmented from Molecule_aminoacid.} *)

val molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol
;;

(** {9 Extracting Glycine from Molecule_aminoacid_segmented from Molecule_aminoacid.} *)

(* No Extraction from doublet glycine. *)

(** {6 Extracting Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

val molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol
;;

(** {9 Extracting Proline from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from doublet proline. *)

(** {9 Extracting Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

val molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {12 Extracting Alanine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Alanine 0. *)

(** {12 Extracting Arginine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Arginine 0. *)

(** {12 Extracting Asparagine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Asparagine 0. *)

(** {12 Extracting Aspartic from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Aspartic 0. *)

(** {12 Extracting Cysteine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Cysteine 0. *)

(** {12 Extracting Glutamine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Glutamine 0. *)

(** {12 Extracting Glutamic from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Glutamic 0. *)

(** {12 Extracting Histidine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Histidine 0. *)

(** {12 Extracting Isoleucine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Isoleucine 0. *)

(** {12 Extracting Leucine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Leucine 0. *)

(** {12 Extracting Lysine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Lysine 0. *)

(** {12 Extracting Methionine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Methionine 0. *)

(** {12 Extracting Phenylalanine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Phenylalanine 0. *)

(** {12 Extracting Serine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Serine 0. *)

(** {12 Extracting Threonine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Threonine 0. *)

(** {12 Extracting Tryptophan from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Tryptophan 0. *)

(** {12 Extracting Tyrosine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Tyrosine 0. *)

(** {12 Extracting Valine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_segmented in Molecule_aminoacid.} *)

val is_molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
  bool
;;

(** {9 Querying Glycine in Molecule_aminoacid_segmented in Molecule_aminoacid.} *)

(* No Query from glycine 0. *)

(** {6 Querying Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

val is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
  bool
;;

(** {9 Querying Proline in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from proline 0. *)

(** {9 Querying Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

val is_molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
  bool
;;

(** {12 Querying Alanine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Alanine 0. *)

(** {12 Querying Arginine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Arginine 0. *)

(** {12 Querying Asparagine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Asparagine 0. *)

(** {12 Querying Aspartic in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Aspartic 0. *)

(** {12 Querying Cysteine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Cysteine 0. *)

(** {12 Querying Glutamine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Glutamine 0. *)

(** {12 Querying Glutamic in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Glutamic 0. *)

(** {12 Querying Histidine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Histidine 0. *)

(** {12 Querying Isoleucine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Isoleucine 0. *)

(** {12 Querying Leucine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Leucine 0. *)

(** {12 Querying Lysine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Lysine 0. *)

(** {12 Querying Methionine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Methionine 0. *)

(** {12 Querying Phenylalanine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Phenylalanine 0. *)

(** {12 Querying Serine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Serine 0. *)

(** {12 Querying Threonine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Threonine 0. *)

(** {12 Querying Tryptophan in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Tryptophan 0. *)

(** {12 Querying Tyrosine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Tyrosine 0. *)

(** {12 Querying Valine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Molecule_aminoacid_segmented to Molecule_aminoacid.} *)

val molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol :
  Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;

(** {9 Upgrading from Glycine through Molecule_aminoacid_segmented to Molecule_aminoacid.} *)

val glycine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

(** {6 Upgrading from Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;

(** {9 Upgrading from Proline through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val proline : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;

(** {9 Upgrading from Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;

(** {12 Upgrading from Alanine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val alanine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Arginine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val arginine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Asparagine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val asparagine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Aspartic through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val aspartic : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Cysteine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val cysteine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Glutamine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val glutamine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Glutamic through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val glutamic : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Histidine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val histidine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Isoleucine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val isoleucine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Leucine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val leucine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Lysine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val lysine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Methionine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val methionine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Phenylalanine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val phenylalanine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Serine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val serine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Threonine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val threonine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Tryptophan through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val tryptophan : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Tyrosine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val tyrosine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {12 Upgrading from Valine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

val valine : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol;;
(** {6 Including. *)

val molecule_aminoacid_symbol_of_string :
  string ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;
	
val read :
  Scanf.Scanning.scanbuf ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_aminoacid 12 January 2011. *)

