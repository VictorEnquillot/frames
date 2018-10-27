(** {3 A Symbol for a Residue_nterminal.} *)

(** {6 Displaying.} *)

val name :
  Residue_nterminal_symbol_t.residue_nterminal_symbol ->
    string
;;

val print : Format.formatter ->
  Residue_nterminal_symbol_t.residue_nterminal_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Residue_nterminal_segmented from Residue_nterminal.} *)

val residue_nterminal_segmented_symbol_off_residue_nterminal_symbol :
  Residue_nterminal_symbol_t.residue_nterminal_symbol ->
    Residue_nterminal_segmented_symbol_t.residue_nterminal_segmented_symbol
;;

(** {9 Extracting Molecule_aminoacid_glycine from Residue_nterminal_segmented from Residue_nterminal.} *)

(* No Extraction from doublet molecule_aminoacid_glycine. *)

(** {6 Extracting Residue_nterminal_fragmented from Residue_nterminal.} *)

val residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol :
  Residue_nterminal_symbol_t.residue_nterminal_symbol ->
    Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol
;;

(** {9 Extracting Molecule_aminoacid_proline from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from doublet molecule_aminoacid_proline. *)

(** {9 Extracting Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

val molecule_aminoacid_regular_symbol_off_residue_nterminal_symbol :
  Residue_nterminal_symbol_t.residue_nterminal_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {12 Extracting Alanine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Alanine 0. *)

(** {12 Extracting Arginine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Arginine 0. *)

(** {12 Extracting Asparagine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Asparagine 0. *)

(** {12 Extracting Aspartic from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Aspartic 0. *)

(** {12 Extracting Cysteine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Cysteine 0. *)

(** {12 Extracting Glutamine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Glutamine 0. *)

(** {12 Extracting Glutamic from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Glutamic 0. *)

(** {12 Extracting Histidine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Histidine 0. *)

(** {12 Extracting Isoleucine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Isoleucine 0. *)

(** {12 Extracting Leucine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Leucine 0. *)

(** {12 Extracting Lysine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Lysine 0. *)

(** {12 Extracting Methionine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Methionine 0. *)

(** {12 Extracting Phenylalanine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Phenylalanine 0. *)

(** {12 Extracting Serine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Serine 0. *)

(** {12 Extracting Threonine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Threonine 0. *)

(** {12 Extracting Tryptophan from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Tryptophan 0. *)

(** {12 Extracting Tyrosine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Tyrosine 0. *)

(** {12 Extracting Valine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Residue_nterminal_segmented in Residue_nterminal.} *)

val is_residue_nterminal_segmented_symbol_off_residue_nterminal_symbol :
  Residue_nterminal_symbol_t.residue_nterminal_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_glycine in Residue_nterminal_segmented in Residue_nterminal.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {6 Querying Residue_nterminal_fragmented in Residue_nterminal.} *)

val is_residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol :
  Residue_nterminal_symbol_t.residue_nterminal_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_proline in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {9 Querying Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

val is_molecule_aminoacid_regular_symbol_off_residue_nterminal_symbol :
  Residue_nterminal_symbol_t.residue_nterminal_symbol ->
  bool
;;

(** {12 Querying Alanine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Alanine 0. *)

(** {12 Querying Arginine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Arginine 0. *)

(** {12 Querying Asparagine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Asparagine 0. *)

(** {12 Querying Aspartic in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Aspartic 0. *)

(** {12 Querying Cysteine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Cysteine 0. *)

(** {12 Querying Glutamine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Glutamine 0. *)

(** {12 Querying Glutamic in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Glutamic 0. *)

(** {12 Querying Histidine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Histidine 0. *)

(** {12 Querying Isoleucine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Isoleucine 0. *)

(** {12 Querying Leucine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Leucine 0. *)

(** {12 Querying Lysine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Lysine 0. *)

(** {12 Querying Methionine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Methionine 0. *)

(** {12 Querying Phenylalanine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Phenylalanine 0. *)

(** {12 Querying Serine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Serine 0. *)

(** {12 Querying Threonine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Threonine 0. *)

(** {12 Querying Tryptophan in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Tryptophan 0. *)

(** {12 Querying Tyrosine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Tyrosine 0. *)

(** {12 Querying Valine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Residue_nterminal_segmented to Residue_nterminal.} *)

val residue_nterminal_symbol_of_residue_nterminal_segmented_symbol :
  Residue_nterminal_segmented_symbol_t.residue_nterminal_segmented_symbol ->
    Residue_nterminal_symbol_t.residue_nterminal_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_glycine through Residue_nterminal_segmented to Residue_nterminal.} *)

val molecule_aminoacid_glycine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;

(** {6 Upgrading from Residue_nterminal_fragmented to Residue_nterminal.} *)

val residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol :
  Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol ->
    Residue_nterminal_symbol_t.residue_nterminal_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_proline through Residue_nterminal_fragmented to Residue_nterminal.} *)

val molecule_aminoacid_proline : Residue_nterminal_symbol_t.residue_nterminal_symbol;;

(** {9 Upgrading from Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Residue_nterminal_symbol_t.residue_nterminal_symbol
;;

(** {12 Upgrading from Alanine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val alanine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Arginine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val arginine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Asparagine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val asparagine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Aspartic through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val aspartic : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Cysteine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val cysteine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Glutamine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val glutamine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Glutamic through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val glutamic : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Histidine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val histidine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Isoleucine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val isoleucine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Leucine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val leucine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Lysine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val lysine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Methionine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val methionine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Phenylalanine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val phenylalanine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Serine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val serine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Threonine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val threonine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Tryptophan through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val tryptophan : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Tyrosine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val tyrosine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** {12 Upgrading from Valine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

val valine : Residue_nterminal_symbol_t.residue_nterminal_symbol;;
(** created by ./do_entitysum_symbol_v_mli.sh residue_nterminal 12 January 2011. *)

