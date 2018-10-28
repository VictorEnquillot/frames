(** {3 A Symbol for a Molecule_aminoacid_fragmented.} *)

(** {6 Displaying.} *)

val name :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Proline from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet proline. *)

(** {6 Extracting Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

val molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {9 Extracting Alanine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Alanine. *)

(** {9 Extracting Arginine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Arginine. *)

(** {9 Extracting Asparagine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Asparagine. *)

(** {9 Extracting Aspartic from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Aspartic. *)

(** {9 Extracting Cysteine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Cysteine. *)

(** {9 Extracting Glutamine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Glutamine. *)

(** {9 Extracting Glutamic from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Glutamic. *)

(** {9 Extracting Histidine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Histidine. *)

(** {9 Extracting Isoleucine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Isoleucine. *)

(** {9 Extracting Leucine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Leucine. *)

(** {9 Extracting Lysine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Lysine. *)

(** {9 Extracting Methionine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Methionine. *)

(** {9 Extracting Phenylalanine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Phenylalanine. *)

(** {9 Extracting Serine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Serine. *)

(** {9 Extracting Threonine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Threonine. *)

(** {9 Extracting Tryptophan from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Tryptophan. *)

(** {9 Extracting Tyrosine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Tyrosine. *)

(** {9 Extracting Valine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented.} *)

(* No Extraction from doublet Valine. *)

(** {6 Querying.} *)

(** {6 Querying Proline in Molecule_aminoacid_fragmented.} *)

(* No Query from proline 0. *)

(** {6 Querying Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

val is_molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
  bool
;;

(** {9 Querying Alanine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Alanine 0. *)

(** {9 Querying Arginine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Arginine 0. *)

(** {9 Querying Asparagine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Asparagine 0. *)

(** {9 Querying Aspartic in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Aspartic 0. *)

(** {9 Querying Cysteine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Cysteine 0. *)

(** {9 Querying Glutamine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Glutamine 0. *)

(** {9 Querying Glutamic in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Glutamic 0. *)

(** {9 Querying Histidine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Histidine 0. *)

(** {9 Querying Isoleucine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Isoleucine 0. *)

(** {9 Querying Leucine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Leucine 0. *)

(** {9 Querying Lysine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Lysine 0. *)

(** {9 Querying Methionine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Methionine 0. *)

(** {9 Querying Phenylalanine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Phenylalanine 0. *)

(** {9 Querying Serine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Serine 0. *)

(** {9 Querying Threonine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Threonine 0. *)

(** {9 Querying Tryptophan in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Tryptophan 0. *)

(** {9 Querying Tyrosine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Tyrosine 0. *)

(** {9 Querying Valine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Proline to Molecule_aminoacid_fragmented.} *)

val proline : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {6 Upgrading from Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol
;;

(** {9 Upgrading from Alanine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val alanine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Arginine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val arginine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Asparagine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val asparagine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Aspartic through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val aspartic : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Cysteine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val cysteine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Glutamine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val glutamine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Glutamic through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val glutamic : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Histidine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val histidine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Isoleucine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val isoleucine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Leucine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val leucine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Lysine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val lysine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Methionine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val methionine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Phenylalanine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val phenylalanine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Serine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val serine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Threonine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val threonine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Tryptophan through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val tryptophan : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Tyrosine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val tyrosine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** {9 Upgrading from Valine through Molecule_aminoacid_regular to Molecule_aminoacid_fragmented.} *)

val valine : Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_aminoacid_fragmented 12 January 2011. *)
