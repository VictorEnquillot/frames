(** {3 A Symbol for a Molecule.} *)

(** {6 Displaying.} *)

val name :
  Molecule_symbol_t.molecule_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_symbol_t.molecule_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_aminoacid from Molecule.} *)

val molecule_aminoacid_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;

(** {9 Extracting Molecule_aminoacid_segmented from Molecule_aminoacid from Molecule.} *)

val molecule_aminoacid_segmented_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol
;;

(** {12 Extracting Glycine from Molecule_aminoacid_segmented from Molecule_aminoacid from Molecule.} *)

(* No Extraction from glycine 0. *)

(** {9 Extracting Molecule_aminoacid_fragmented from Molecule_aminoacid from Molecule.} *)

val molecule_aminoacid_fragmented_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol
;;

(** {12 Extracting Proline from Molecule_aminoacid_fragmented from Molecule_aminoacid from Molecule.} *)

(* No Extraction from proline 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid from Molecule.} *)

val molecule_aminoacid_regular_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {6 Extracting Molecule_bridged from Molecule.} *)

val molecule_bridged_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_bridged_symbol_t.molecule_bridged_symbol
;;

(** {9 Extracting Fake_b from Molecule_bridged from Molecule.} *)

(* No Extraction from doublet Fake_b. *)

(** {9 Extracting Benzene from Molecule_bridged from Molecule.} *)

(* No Extraction from doublet Benzene. *)

(** {9 Extracting Phenol from Molecule_bridged from Molecule.} *)

(* No Extraction from doublet Phenol. *)

(** {9 Extracting Pyrrole from Molecule_bridged from Molecule.} *)

(* No Extraction from doublet Pyrrole. *)

(** {6 Extracting Molecule_dendrimer from Molecule.} *)

val molecule_dendrimer_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_dendrimer_symbol_t.molecule_dendrimer_symbol
;;

(** {9 Extracting Fake_d2 from Molecule_dendrimer from Molecule.} *)

(* No Extraction from doublet Fake_d2. *)

(** {6 Extracting Molecule_forked from Molecule.} *)

val molecule_forked_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_forked_symbol_t.molecule_forked_symbol
;;

(** {9 Extracting Molecule_forked_oneforked from Molecule_forked from Molecule.} *)

val molecule_forked_oneforked_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol
;;

(** {12 Extracting Guanidine from Molecule_forked_oneforked from Molecule_forked from Molecule.} *)

(* No Extraction from Guanidine 0. *)

(** {9 Extracting Molecule_forked_twoforked from Molecule_forked from Molecule.} *)

val molecule_forked_twoforked_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol
;;

(** {12 Extracting Fake_2 from Molecule_forked_twoforked from Molecule_forked from Molecule.} *)

(* No Extraction from Fake_2 0. *)

(** {9 Extracting Molecule_forked_threeforked from Molecule_forked from Molecule.} *)

val molecule_forked_threeforked_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol
;;

(** {12 Extracting Fake_3 from Molecule_forked_threeforked from Molecule_forked from Molecule.} *)

(* No Extraction from Fake_3 0. *)

(** {9 Extracting Molecule_forked_moreforked from Molecule_forked from Molecule.} *)

val molecule_forked_moreforked_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_forked_moreforked_symbol_t.molecule_forked_moreforked_symbol
;;

(** {12 Extracting Fake_4 from Molecule_forked_moreforked from Molecule_forked from Molecule.} *)

(* No Extraction from Fake_4 0. *)

(** {6 Extracting Molecule_linear from Molecule.} *)

val molecule_linear_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {9 Extracting Molecule_linear_monoatomic from Molecule_linear from Molecule.} *)

val molecule_linear_monoatomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {12 Extracting Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear from Molecule.} *)

val atom_zerotied_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {9 Extracting Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

val molecule_linear_diatomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_linear_diatomic_symbol_t.molecule_linear_diatomic_symbol
;;

(** {12 Extracting Carbonmonoxide from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Carbonmonoxide 0. *)

(** {12 Extracting Dihydrogen from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Dihydrogen 0. *)

(** {12 Extracting Dinitrogen from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Dinitrogen 0. *)

(** {12 Extracting Dioxygen from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Dioxygen 0. *)

(** {12 Extracting Hydrogenchloride from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Hydrogenchloride 0. *)

(** {12 Extracting Hydrogenfluoride from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Hydrogenfluoride 0. *)

(** {9 Extracting Molecule_linear_triatomic from Molecule_linear from Molecule.} *)

val molecule_linear_triatomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol
;;

(** {12 Extracting Hydrogensulfide from Molecule_linear_triatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Hydrogensulfide 0. *)

(** {12 Extracting Water from Molecule_linear_triatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Water 0. *)

(** {9 Extracting Molecule_linear_tetratomic from Molecule_linear from Molecule.} *)

val molecule_linear_tetratomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol
;;

(** {12 Extracting Ammonia from Molecule_linear_tetratomic from Molecule_linear from Molecule.} *)

(* No Extraction from Ammonia 0. *)

(** {9 Extracting Molecule_linear_pentatomic from Molecule_linear from Molecule.} *)

val molecule_linear_pentatomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol
;;

(** {12 Extracting Methane from Molecule_linear_pentatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Methane 0. *)

(** {9 Extracting Molecule_linear_polyatomic from Molecule_linear from Molecule.} *)

val molecule_linear_polyatomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol
;;

(** {12 Extracting Glycine from Molecule_linear_polyatomic from Molecule_linear from Molecule.} *)

(* No Extraction from glycine 0. *)

(** {6 Extracting Molecule_nucleoside from Molecule.} *)

(* No Extraction from doublet molecule_nucleoside. *)

(** {6 Extracting Molecule_polymer from Molecule.} *)

val molecule_polymer_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Molecule_polymer_symbol_t.molecule_polymer_symbol
;;

(** {9 Extracting Polypeptide from Molecule_polymer from Molecule.} *)

val polypeptide_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Polypeptide_symbol_t.polypeptide_symbol
;;

(** {12 Extracting Polypeptide_regular from Polypeptide from Molecule_polymer from Molecule.} *)

val polypeptide_regular_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Polypeptide_regular_symbol_t.polypeptide_regular_symbol
;;

(** {12 Extracting Polyproline from Polypeptide from Molecule_polymer from Molecule.} *)

val polyproline_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Polyproline_symbol_t.polyproline_symbol
;;

(** {12 Extracting Polyglycine from Polypeptide from Molecule_polymer from Molecule.} *)

val polyglycine_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Polyglycine_symbol_t.polyglycine_symbol
;;

(** {9 Extracting Nucleicacid from Molecule_polymer from Molecule.} *)

val nucleicacid_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Nucleicacid_symbol_t.nucleicacid_symbol
;;

(** {12 Extracting Dna from Nucleicacid from Molecule_polymer from Molecule.} *)

(* No Extraction from Dna 0. *)

(** {12 Extracting Rna from Nucleicacid from Molecule_polymer from Molecule.} *)

(* No Extraction from Rna 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid in Molecule.} *)

val is_molecule_aminoacid_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_segmented in Molecule_aminoacid in Molecule.} *)

val is_molecule_aminoacid_segmented_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Glycine in Molecule_aminoacid_segmented in Molecule_aminoacid in Molecule.} *)

(* No Query from glycine 0. *)

(** {9 Querying Molecule_aminoacid_fragmented in Molecule_aminoacid in Molecule.} *)

val is_molecule_aminoacid_fragmented_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Proline in Molecule_aminoacid_fragmented in Molecule_aminoacid in Molecule.} *)

(* No Query from proline 0. *)

(** {12 Querying Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid in Molecule.} *)

val is_molecule_aminoacid_regular_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {6 Querying Molecule_bridged in Molecule.} *)

val is_molecule_bridged_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {9 Querying Fake_b in Molecule_bridged in Molecule.} *)

(* No Query from Fake_b 0. *)

(** {9 Querying Benzene in Molecule_bridged in Molecule.} *)

(* No Query from Benzene 0. *)

(** {9 Querying Phenol in Molecule_bridged in Molecule.} *)

(* No Query from Phenol 0. *)

(** {9 Querying Pyrrole in Molecule_bridged in Molecule.} *)

(* No Query from Pyrrole 0. *)

(** {6 Querying Molecule_dendrimer in Molecule.} *)

val is_molecule_dendrimer_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {9 Querying Fake_d2 in Molecule_dendrimer in Molecule.} *)

(* No Query from Fake_d2 0. *)

(** {6 Querying Molecule_forked in Molecule.} *)

val is_molecule_forked_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {9 Querying Molecule_forked_oneforked in Molecule_forked in Molecule.} *)

val is_molecule_forked_oneforked_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Guanidine in Molecule_forked_oneforked in Molecule_forked in Molecule.} *)

(* No Query from Guanidine 0. *)

(** {9 Querying Molecule_forked_twoforked in Molecule_forked in Molecule.} *)

val is_molecule_forked_twoforked_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Fake_2 in Molecule_forked_twoforked in Molecule_forked in Molecule.} *)

(* No Query from Fake_2 0. *)

(** {9 Querying Molecule_forked_threeforked in Molecule_forked in Molecule.} *)

val is_molecule_forked_threeforked_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Fake_3 in Molecule_forked_threeforked in Molecule_forked in Molecule.} *)

(* No Query from Fake_3 0. *)

(** {9 Querying Molecule_forked_moreforked in Molecule_forked in Molecule.} *)

val is_molecule_forked_moreforked_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Fake_4 in Molecule_forked_moreforked in Molecule_forked in Molecule.} *)

(* No Query from Fake_4 0. *)

(** {6 Querying Molecule_linear in Molecule.} *)

val is_molecule_linear_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {9 Querying Molecule_linear_monoatomic in Molecule_linear in Molecule.} *)

val is_molecule_linear_monoatomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear in Molecule.} *)

val is_atom_zerotied_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {9 Querying Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

val is_molecule_linear_diatomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Carbonmonoxide in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Carbonmonoxide 0. *)

(** {12 Querying Dihydrogen in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Dihydrogen 0. *)

(** {12 Querying Dinitrogen in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Dinitrogen 0. *)

(** {12 Querying Dioxygen in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Dioxygen 0. *)

(** {12 Querying Hydrogenchloride in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Hydrogenchloride 0. *)

(** {12 Querying Hydrogenfluoride in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Hydrogenfluoride 0. *)

(** {9 Querying Molecule_linear_triatomic in Molecule_linear in Molecule.} *)

val is_molecule_linear_triatomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Hydrogensulfide in Molecule_linear_triatomic in Molecule_linear in Molecule.} *)

(* No Query from Hydrogensulfide 0. *)

(** {12 Querying Water in Molecule_linear_triatomic in Molecule_linear in Molecule.} *)

(* No Query from Water 0. *)

(** {9 Querying Molecule_linear_tetratomic in Molecule_linear in Molecule.} *)

val is_molecule_linear_tetratomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Ammonia in Molecule_linear_tetratomic in Molecule_linear in Molecule.} *)

(* No Query from Ammonia 0. *)

(** {9 Querying Molecule_linear_pentatomic in Molecule_linear in Molecule.} *)

val is_molecule_linear_pentatomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Methane in Molecule_linear_pentatomic in Molecule_linear in Molecule.} *)

(* No Query from Methane 0. *)

(** {9 Querying Molecule_linear_polyatomic in Molecule_linear in Molecule.} *)

val is_molecule_linear_polyatomic_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Glycine in Molecule_linear_polyatomic in Molecule_linear in Molecule.} *)

(* No Query from glycine 0. *)

(** {6 Querying Molecule_nucleoside in Molecule.} *)

(* No Query from molecule_nucleoside 0. *)

(** {6 Querying Molecule_polymer in Molecule.} *)

val is_molecule_polymer_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {9 Querying Polypeptide in Molecule_polymer in Molecule.} *)

val is_polypeptide_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Polypeptide_regular in Polypeptide in Molecule_polymer in Molecule.} *)

val is_polypeptide_regular_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Polyproline in Polypeptide in Molecule_polymer in Molecule.} *)

val is_polyproline_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Polyglycine in Polypeptide in Molecule_polymer in Molecule.} *)

val is_polyglycine_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {9 Querying Nucleicacid in Molecule_polymer in Molecule.} *)

val is_nucleicacid_symbol_off_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
  bool
;;

(** {12 Querying Dna in Nucleicacid in Molecule_polymer in Molecule.} *)

(* No Query from Dna 0. *)

(** {12 Querying Rna in Nucleicacid in Molecule_polymer in Molecule.} *)

(* No Query from Rna 0. *)

(** {6 Upgrading from Molecule_aminoacid to Molecule.} *)

val molecule_symbol_of_molecule_aminoacid_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_segmented through Molecule_aminoacid to Molecule.} *)

val molecule_symbol_of_molecule_aminoacid_segmented_symbol :
  Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Glycine through Molecule_aminoacid_segmented through Molecule_aminoacid to Molecule.} *)

val glycine : Molecule_symbol_t.molecule_symbol;;
(** {9 Upgrading from Molecule_aminoacid_fragmented through Molecule_aminoacid to Molecule.} *)

val molecule_symbol_of_molecule_aminoacid_fragmented_symbol :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Proline through Molecule_aminoacid_fragmented through Molecule_aminoacid to Molecule.} *)

val proline : Molecule_symbol_t.molecule_symbol;;
(** {12 Upgrading from Molecule_aminoacid_regular through Molecule_aminoacid_fragmented through Molecule_aminoacid to Molecule.} *)

val molecule_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {6 Upgrading from Molecule_bridged to Molecule.} *)

val molecule_symbol_of_molecule_bridged_symbol :
  Molecule_bridged_symbol_t.molecule_bridged_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {9 Upgrading from Fake_b through Molecule_bridged to Molecule.} *)

val fake_b : Molecule_symbol_t.molecule_symbol;;

(** {9 Upgrading from Benzene through Molecule_bridged to Molecule.} *)

val benzene : Molecule_symbol_t.molecule_symbol;;

(** {9 Upgrading from Phenol through Molecule_bridged to Molecule.} *)

val phenol : Molecule_symbol_t.molecule_symbol;;

(** {9 Upgrading from Pyrrole through Molecule_bridged to Molecule.} *)

val pyrrole : Molecule_symbol_t.molecule_symbol;;

(** {6 Upgrading from Molecule_dendrimer to Molecule.} *)

val molecule_symbol_of_molecule_dendrimer_symbol :
  Molecule_dendrimer_symbol_t.molecule_dendrimer_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {9 Upgrading from Fake_d2 through Molecule_dendrimer to Molecule.} *)

val fake_d2 : Molecule_symbol_t.molecule_symbol;;

(** {6 Upgrading from Molecule_forked to Molecule.} *)

val molecule_symbol_of_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {9 Upgrading from Molecule_forked_oneforked through Molecule_forked to Molecule.} *)

val molecule_symbol_of_molecule_forked_oneforked_symbol :
  Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Guanidine through Molecule_forked_oneforked through Molecule_forked to Molecule.} *)

val guanidine : Molecule_symbol_t.molecule_symbol;;
(** {9 Upgrading from Molecule_forked_twoforked through Molecule_forked to Molecule.} *)

val molecule_symbol_of_molecule_forked_twoforked_symbol :
  Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Fake_2 through Molecule_forked_twoforked through Molecule_forked to Molecule.} *)

val fake_2 : Molecule_symbol_t.molecule_symbol;;
(** {9 Upgrading from Molecule_forked_threeforked through Molecule_forked to Molecule.} *)

val molecule_symbol_of_molecule_forked_threeforked_symbol :
  Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Fake_3 through Molecule_forked_threeforked through Molecule_forked to Molecule.} *)

val fake_3 : Molecule_symbol_t.molecule_symbol;;
(** {9 Upgrading from Molecule_forked_moreforked through Molecule_forked to Molecule.} *)

val molecule_symbol_of_molecule_forked_moreforked_symbol :
  Molecule_forked_moreforked_symbol_t.molecule_forked_moreforked_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Fake_4 through Molecule_forked_moreforked through Molecule_forked to Molecule.} *)

val fake_4 : Molecule_symbol_t.molecule_symbol;;
(** {6 Upgrading from Molecule_linear to Molecule.} *)

val molecule_symbol_of_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {9 Upgrading from Molecule_linear_monoatomic through Molecule_linear to Molecule.} *)

val molecule_symbol_of_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Atom_zerotied through Molecule_linear_monoatomic through Molecule_linear to Molecule.} *)

val molecule_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {9 Upgrading from Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

val molecule_symbol_of_molecule_linear_diatomic_symbol :
  Molecule_linear_diatomic_symbol_t.molecule_linear_diatomic_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Carbonmonoxide through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

val carbonmonoxide : Molecule_symbol_t.molecule_symbol;;
(** {12 Upgrading from Dihydrogen through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

val dihydrogen : Molecule_symbol_t.molecule_symbol;;
(** {12 Upgrading from Dinitrogen through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

val dinitrogen : Molecule_symbol_t.molecule_symbol;;
(** {12 Upgrading from Dioxygen through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

val dioxygen : Molecule_symbol_t.molecule_symbol;;
(** {12 Upgrading from Hydrogenchloride through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

val hydrogenchloride : Molecule_symbol_t.molecule_symbol;;
(** {12 Upgrading from Hydrogenfluoride through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

val hydrogenfluoride : Molecule_symbol_t.molecule_symbol;;
(** {9 Upgrading from Molecule_linear_triatomic through Molecule_linear to Molecule.} *)

val molecule_symbol_of_molecule_linear_triatomic_symbol :
  Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Hydrogensulfide through Molecule_linear_triatomic through Molecule_linear to Molecule.} *)

val hydrogensulfide : Molecule_symbol_t.molecule_symbol;;
(** {12 Upgrading from Water through Molecule_linear_triatomic through Molecule_linear to Molecule.} *)

val water : Molecule_symbol_t.molecule_symbol;;
(** {9 Upgrading from Molecule_linear_tetratomic through Molecule_linear to Molecule.} *)

val molecule_symbol_of_molecule_linear_tetratomic_symbol :
  Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Ammonia through Molecule_linear_tetratomic through Molecule_linear to Molecule.} *)

val ammonia : Molecule_symbol_t.molecule_symbol;;
(** {9 Upgrading from Molecule_linear_pentatomic through Molecule_linear to Molecule.} *)

val molecule_symbol_of_molecule_linear_pentatomic_symbol :
  Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Methane through Molecule_linear_pentatomic through Molecule_linear to Molecule.} *)

val methane : Molecule_symbol_t.molecule_symbol;;
(** {9 Upgrading from Molecule_linear_polyatomic through Molecule_linear to Molecule.} *)

val molecule_symbol_of_molecule_linear_polyatomic_symbol :
  Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Glycine through Molecule_linear_polyatomic through Molecule_linear to Molecule.} *)

val glycine : Molecule_symbol_t.molecule_symbol;;
(** {6 Upgrading from Molecule_nucleoside to Molecule.} *)

val molecule_nucleoside : Molecule_symbol_t.molecule_symbol;;

(** {6 Upgrading from Molecule_polymer to Molecule.} *)

val molecule_symbol_of_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {9 Upgrading from Polypeptide through Molecule_polymer to Molecule.} *)

val molecule_symbol_of_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Polypeptide_regular through Polypeptide through Molecule_polymer to Molecule.} *)

val molecule_symbol_of_polypeptide_regular_symbol :
  Polypeptide_regular_symbol_t.polypeptide_regular_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Polyproline through Polypeptide through Molecule_polymer to Molecule.} *)

val molecule_symbol_of_polyproline_symbol :
  Polyproline_symbol_t.polyproline_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Polyglycine through Polypeptide through Molecule_polymer to Molecule.} *)

val molecule_symbol_of_polyglycine_symbol :
  Polyglycine_symbol_t.polyglycine_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {9 Upgrading from Nucleicacid through Molecule_polymer to Molecule.} *)

val molecule_symbol_of_nucleicacid_symbol :
  Nucleicacid_symbol_t.nucleicacid_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {12 Upgrading from Dna through Nucleicacid through Molecule_polymer to Molecule.} *)

val dna : Molecule_symbol_t.molecule_symbol;;
(** {12 Upgrading from Rna through Nucleicacid through Molecule_polymer to Molecule.} *)

val rna : Molecule_symbol_t.molecule_symbol;;
(** created by ./do_entitysum_symbol_v_mli.sh molecule 13 January 2011. *)

