(** {3 A Symbol for a Molecule_polymer.} *)

(** {6 Displaying.} *)

val name :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Polypeptide from Molecule_polymer.} *)

val polypeptide_symbol_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Polypeptide_symbol_t.polypeptide_symbol
;;

(** {9 Extracting Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

val polypeptide_regular_symbol_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Polypeptide_regular_symbol_t.polypeptide_regular_symbol
;;

(** {12 Extracting Acg from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Acg 0. *)

(** {12 Extracting Adh from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Adh 0. *)

(** {12 Extracting Agagag from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Agagag 0. *)

(** {12 Extracting Agc from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Agc 0. *)

(** {12 Extracting Agg from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Agg 0. *)

(** {12 Extracting Agp from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Agp 0. *)

(** {12 Extracting Gac from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Gac 0. *)

(** {12 Extracting Gap from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Gap 0. *)

(** {12 Extracting Ggg from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Ggg 0. *)

(** {12 Extracting Ggacgg from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Ggacgg 0. *)

(** {12 Extracting Ggaggg from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Ggaggg 0. *)

(** {12 Extracting Gagaga from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Gagaga 0. *)

(** {12 Extracting Mhb from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Mhb 0. *)

(** {12 Extracting Pac from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Pac 0. *)

(** {12 Extracting Pag from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Pag 0. *)

(** {12 Extracting Pgk from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Pgk 0. *)

(** {12 Extracting Pti from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Pti 0. *)

(** {12 Extracting Sac from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Sac 0. *)

(** {12 Extracting Tab from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Tab 0. *)

(** {12 Extracting Try from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Try 0. *)

(** {12 Extracting String from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

val polypeptide_regular_string_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    string
;;

(** {9 Extracting Polyproline from Polypeptide from Molecule_polymer.} *)

val polyproline_symbol_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Polyproline_symbol_t.polyproline_symbol
;;

(** {12 Extracting Doublet_string_ordinal from Polyproline from Polypeptide from Molecule_polymer.} *)

(* No Extraction from doublet_string_ordinal d. *)

(** {9 Extracting Polyglycine from Polypeptide from Molecule_polymer.} *)

val polyglycine_symbol_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Polyglycine_symbol_t.polyglycine_symbol
;;

(** {12 Extracting Doublet_string_ordinal from Polyglycine from Polypeptide from Molecule_polymer.} *)

(* No Extraction from doublet_string_ordinal d. *)

(** {6 Extracting Nucleicacid from Molecule_polymer.} *)

val nucleicacid_symbol_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Nucleicacid_symbol_t.nucleicacid_symbol
;;

(** {9 Extracting Dna from Nucleicacid from Molecule_polymer.} *)

(* No Extraction from doublet Dna. *)

(** {9 Extracting Rna from Nucleicacid from Molecule_polymer.} *)

(* No Extraction from doublet Rna. *)

(** {6 Querying.} *)

(** {6 Querying Polypeptide in Molecule_polymer.} *)

val is_polypeptide_symbol_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
  bool
;;

(** {9 Querying Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

val is_polypeptide_regular_symbol_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
  bool
;;

(** {12 Querying Acg in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Acg 0. *)

(** {12 Querying Adh in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Adh 0. *)

(** {12 Querying Agagag in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Agagag 0. *)

(** {12 Querying Agc in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Agc 0. *)

(** {12 Querying Agg in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Agg 0. *)

(** {12 Querying Agp in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Agp 0. *)

(** {12 Querying Gac in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Gac 0. *)

(** {12 Querying Gap in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Gap 0. *)

(** {12 Querying Ggg in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Ggg 0. *)

(** {12 Querying Ggacgg in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Ggacgg 0. *)

(** {12 Querying Ggaggg in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Ggaggg 0. *)

(** {12 Querying Gagaga in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Gagaga 0. *)

(** {12 Querying Mhb in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Mhb 0. *)

(** {12 Querying Pac in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Pac 0. *)

(** {12 Querying Pag in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Pag 0. *)

(** {12 Querying Pgk in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Pgk 0. *)

(** {12 Querying Pti in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Pti 0. *)

(** {12 Querying Sac in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Sac 0. *)

(** {12 Querying Tab in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Tab 0. *)

(** {12 Querying Try in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Try 0. *)

(** {12 Querying String in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

val is_polypeptide_regular_string_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
  bool

(** {9 Querying Polyproline in Polypeptide in Molecule_polymer.} *)

val is_polyproline_symbol_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
  bool
;;

(** {12 Querying Doublet_string_ordinal in Polyproline in Polypeptide in Molecule_polymer.} *)

(* No Query from doublet_string_ordinal d. *)

(** {9 Querying Polyglycine in Polypeptide in Molecule_polymer.} *)

val is_polyglycine_symbol_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
  bool
;;

(** {12 Querying Doublet_string_ordinal in Polyglycine in Polypeptide in Molecule_polymer.} *)

(* No Query from doublet_string_ordinal d. *)

(** {6 Querying Nucleicacid in Molecule_polymer.} *)

val is_nucleicacid_symbol_off_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
  bool
;;

(** {9 Querying Dna in Nucleicacid in Molecule_polymer.} *)

(* No Query from Dna 0. *)

(** {9 Querying Rna in Nucleicacid in Molecule_polymer.} *)

(* No Query from Rna 0. *)

(** {6 Upgrading from Polypeptide to Molecule_polymer.} *)

val molecule_polymer_symbol_of_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Molecule_polymer_symbol_t.molecule_polymer_symbol
;;

(** {9 Upgrading from Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val molecule_polymer_symbol_of_polypeptide_regular_symbol :
  Polypeptide_regular_symbol_t.polypeptide_regular_symbol ->
    Molecule_polymer_symbol_t.molecule_polymer_symbol
;;

(** {12 Upgrading from Acg through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val acg : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Adh through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val adh : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Agagag through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val agagag : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Agc through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val agc : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Agg through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val agg : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Agp through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val agp : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Gac through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val gac : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Gap through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val gap : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Ggg through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val ggg : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Ggacgg through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val ggacgg : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Ggaggg through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val ggaggg : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Gagaga through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val gagaga : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Mhb through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val mhb : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Pac through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val pac : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Pag through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val pag : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Pgk through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val pgk : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Pti through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val pti : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Sac through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val sac : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Tab through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val tab : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from Try through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val tr_ : Molecule_polymer_symbol_t.molecule_polymer_symbol;;
(** {12 Upgrading from String through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

val molecule_polymer_symbol_of_polypeptide_regular_string :
  string ->
    Molecule_polymer_symbol_t.molecule_polymer_symbol
;;

(** {9 Upgrading from Polyproline through Polypeptide to Molecule_polymer.} *)

val molecule_polymer_symbol_of_polyproline_symbol :
  Polyproline_symbol_t.polyproline_symbol ->
    Molecule_polymer_symbol_t.molecule_polymer_symbol
;;

(** {12 Upgrading from Doublet_string_ordinal through Polyproline through Polypeptide to Molecule_polymer.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** {9 Upgrading from Polyglycine through Polypeptide to Molecule_polymer.} *)

val molecule_polymer_symbol_of_polyglycine_symbol :
  Polyglycine_symbol_t.polyglycine_symbol ->
    Molecule_polymer_symbol_t.molecule_polymer_symbol
;;

(** {12 Upgrading from Doublet_string_ordinal through Polyglycine through Polypeptide to Molecule_polymer.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** {6 Upgrading from Nucleicacid to Molecule_polymer.} *)

val molecule_polymer_symbol_of_nucleicacid_symbol :
  Nucleicacid_symbol_t.nucleicacid_symbol ->
    Molecule_polymer_symbol_t.molecule_polymer_symbol
;;

(** {9 Upgrading from Dna through Nucleicacid to Molecule_polymer.} *)

val dna : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

(** {9 Upgrading from Rna through Nucleicacid to Molecule_polymer.} *)

val rna : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_polymer 12 January 2011. *)

