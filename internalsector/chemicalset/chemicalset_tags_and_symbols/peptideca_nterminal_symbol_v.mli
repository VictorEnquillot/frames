(** {3 A Symbol for a Peptideca_nterminal.} *)

(** {6 Displaying.} *)

val name :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    string
;;

val print : Format.formatter ->
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Peptideca_nterminal_segmented from Peptideca_nterminal.} *)

val peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    Peptideca_nterminal_segmented_symbol_t.peptideca_nterminal_segmented_symbol
;;

(** {9 Extracting Molecule_aminoacid_glycine from Peptideca_nterminal_segmented from Peptideca_nterminal.} *)

(* No Extraction from doublet molecule_aminoacid_glycine. *)

(** {6 Extracting Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

val peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol
;;

(** {9 Extracting Molecule_aminoacid_proline from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from doublet molecule_aminoacid_proline. *)

(** {9 Extracting Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

val molecule_aminoacid_regular_symbol_off_peptideca_nterminal_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {12 Extracting Alanine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Alanine 0. *)

(** {12 Extracting Arginine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Arginine 0. *)

(** {12 Extracting Asparagine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Asparagine 0. *)

(** {12 Extracting Aspartic from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Aspartic 0. *)

(** {12 Extracting Cysteine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Cysteine 0. *)

(** {12 Extracting Glutamine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Glutamine 0. *)

(** {12 Extracting Glutamic from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Glutamic 0. *)

(** {12 Extracting Histidine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Histidine 0. *)

(** {12 Extracting Isoleucine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Isoleucine 0. *)

(** {12 Extracting Leucine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Leucine 0. *)

(** {12 Extracting Lysine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Lysine 0. *)

(** {12 Extracting Methionine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Methionine 0. *)

(** {12 Extracting Phenylalanine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Phenylalanine 0. *)

(** {12 Extracting Serine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Serine 0. *)

(** {12 Extracting Threonine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Threonine 0. *)

(** {12 Extracting Tryptophan from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Tryptophan 0. *)

(** {12 Extracting Tyrosine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Tyrosine 0. *)

(** {12 Extracting Valine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Peptideca_nterminal_segmented in Peptideca_nterminal.} *)

val is_peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_glycine in Peptideca_nterminal_segmented in Peptideca_nterminal.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {6 Querying Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

val is_peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_proline in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {9 Querying Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

val is_molecule_aminoacid_regular_symbol_off_peptideca_nterminal_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
  bool
;;

(** {12 Querying Alanine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Alanine 0. *)

(** {12 Querying Arginine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Arginine 0. *)

(** {12 Querying Asparagine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Asparagine 0. *)

(** {12 Querying Aspartic in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Aspartic 0. *)

(** {12 Querying Cysteine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Cysteine 0. *)

(** {12 Querying Glutamine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Glutamine 0. *)

(** {12 Querying Glutamic in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Glutamic 0. *)

(** {12 Querying Histidine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Histidine 0. *)

(** {12 Querying Isoleucine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Isoleucine 0. *)

(** {12 Querying Leucine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Leucine 0. *)

(** {12 Querying Lysine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Lysine 0. *)

(** {12 Querying Methionine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Methionine 0. *)

(** {12 Querying Phenylalanine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Phenylalanine 0. *)

(** {12 Querying Serine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Serine 0. *)

(** {12 Querying Threonine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Threonine 0. *)

(** {12 Querying Tryptophan in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Tryptophan 0. *)

(** {12 Querying Tyrosine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Tyrosine 0. *)

(** {12 Querying Valine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Peptideca_nterminal_segmented to Peptideca_nterminal.} *)

val peptideca_nterminal_symbol_of_peptideca_nterminal_segmented_symbol :
  Peptideca_nterminal_segmented_symbol_t.peptideca_nterminal_segmented_symbol ->
    Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_glycine through Peptideca_nterminal_segmented to Peptideca_nterminal.} *)

val molecule_aminoacid_glycine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

(** {6 Upgrading from Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol :
  Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol ->
    Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_proline through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val molecule_aminoacid_proline : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;

(** {9 Upgrading from Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol
;;

(** {12 Upgrading from Alanine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val alanine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Arginine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val arginine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Asparagine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val asparagine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Aspartic through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val aspartic : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Cysteine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val cysteine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Glutamine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val glutamine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Glutamic through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val glutamic : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Histidine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val histidine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Isoleucine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val isoleucine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Leucine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val leucine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Lysine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val lysine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Methionine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val methionine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Phenylalanine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val phenylalanine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Serine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val serine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Threonine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val threonine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Tryptophan through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val tryptophan : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Tyrosine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val tyrosine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** {12 Upgrading from Valine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

val valine : Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol;;
(** created by ./do_entitysum_symbol_v_mli.sh peptideca_nterminal 12 January 2011. *)

