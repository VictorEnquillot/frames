(** {3 A Symbol for a Molecule.} *)


let name :
  Molecule_symbol_t.molecule_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_symbol_t.molecule_symbol ->
    unit
;;


(** {6 Extracting.} *)

val molecule_symbol_off_molecule_aminoacid_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mas_v
;;

val molecule_symbol_off_molecule_aminoacid_segmented_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mass_v
;;

val molecule_symbol_off_molecule_aminoacid_fragmented_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mafs_v
;;

val molecule_symbol_off_molecule_aminoacid_regular_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mars_v
;;

val molecule_symbol_off_molecule_bridged_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mbs_v
;;

val molecule_symbol_off_molecule_dendrimer_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mds_v
;;

val molecule_symbol_off_molecule_forked_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mfs_v
;;

val molecule_symbol_off_molecule_forked_oneforked_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mf1s_v
;;

val molecule_symbol_off_molecule_forked_twoforked_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mf2s_v
;;

val molecule_symbol_off_molecule_forked_threeforked_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mf3s_v
;;

val molecule_symbol_off_molecule_forked_moreforked_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mfms_v
;;

val molecule_symbol_off_molecule_linear_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mls_v
;;

val molecule_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mlms_v
;;

val molecule_symbol_off_atom_zerotied_symbol :
  Molecule_symbol_t.molecule_symbol ->
    A0s_v
;;

val molecule_symbol_off_atom_zerotied_raregas_symbol :
  Molecule_symbol_t.molecule_symbol ->
    A0rs_v
;;

val molecule_symbol_off_atom_zerotied_anion_symbol :
  Molecule_symbol_t.molecule_symbol ->
    A0as_v
;;

val molecule_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Molecule_symbol_t.molecule_symbol ->
    A0am1s_v
;;

val molecule_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Molecule_symbol_t.molecule_symbol ->
    A0am2s_v
;;

val molecule_symbol_off_atom_zerotied_cation_symbol :
  Molecule_symbol_t.molecule_symbol ->
    A0cs_v
;;

val molecule_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Molecule_symbol_t.molecule_symbol ->
    A0cp1s_v
;;

val molecule_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Molecule_symbol_t.molecule_symbol ->
    A0cp2s_v
;;

val molecule_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Molecule_symbol_t.molecule_symbol ->
    A0cp3s_v
;;

val molecule_symbol_off_halfbridge_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Has_v
;;

val molecule_symbol_off_molecule_linear_diatomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mlds_v
;;

val molecule_symbol_off_molecule_linear_triatomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mlts_v
;;

val molecule_symbol_off_molecule_linear_tetratomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mlqs_v
;;

val molecule_symbol_off_molecule_linear_pentatomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mlcs_v
;;

val molecule_symbol_off_molecule_linear_polyatomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mlps_v
;;

val molecule_symbol_off_molecule_polymer_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Mps_v
;;

val molecule_symbol_off_polypeptide_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Pds_v
;;

val molecule_symbol_off_polypeptide_regular_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Prs_v
;;

val molecule_symbol_off_polyproline_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Pps_v
;;

val molecule_symbol_off_polyglycine_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Pgs_v
;;

val molecule_symbol_off_nucleicacid_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Nus_v
;;


(** {6 Querying.} *)

val is_molecule_symbol_off_molecule_aminoacid_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_aminoacid_segmented_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_aminoacid_fragmented_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_aminoacid_regular_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_bridged_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_dendrimer_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_forked_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_forked_oneforked_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_forked_twoforked_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_forked_threeforked_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_forked_moreforked_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_linear_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_atom_zerotied_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_atom_zerotied_raregas_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_atom_zerotied_anion_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_atom_zerotied_cation_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_halfbridge_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_linear_diatomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_linear_triatomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_linear_tetratomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_linear_pentatomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_linear_polyatomic_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_molecule_polymer_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_polypeptide_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_polypeptide_regular_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_polyproline_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_polyglycine_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;

val is_molecule_symbol_off_nucleicacid_symbol :
  Molecule_symbol_t.molecule_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val molecule_symbol_of_molecule_aminoacid_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    Mos_v
;;

val molecule_symbol_of_molecule_aminoacid_segmented_symbol :
  Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol ->
    Mos_v
;;

val glycine : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_aminoacid_fragmented_symbol :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    Mos_v
;;

val proline : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Mos_v
;;

val Alanine : Molecule_symbol_t.molecule_symbol;;

val Arginine : Molecule_symbol_t.molecule_symbol;;

val Asparagine : Molecule_symbol_t.molecule_symbol;;

val Aspartic : Molecule_symbol_t.molecule_symbol;;

val Cysteine : Molecule_symbol_t.molecule_symbol;;

val Glutamine : Molecule_symbol_t.molecule_symbol;;

val Glutamic : Molecule_symbol_t.molecule_symbol;;

val Histidine : Molecule_symbol_t.molecule_symbol;;

val Isoleucine : Molecule_symbol_t.molecule_symbol;;

val Leucine : Molecule_symbol_t.molecule_symbol;;

val Lysine : Molecule_symbol_t.molecule_symbol;;

val Methionine : Molecule_symbol_t.molecule_symbol;;

val Phenylalanine : Molecule_symbol_t.molecule_symbol;;

val Serine : Molecule_symbol_t.molecule_symbol;;

val Threonine : Molecule_symbol_t.molecule_symbol;;

val Tryptophan : Molecule_symbol_t.molecule_symbol;;

val Tyrosine : Molecule_symbol_t.molecule_symbol;;

val Valine : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_bridged_symbol :
  Molecule_bridged_symbol_t.molecule_bridged_symbol ->
    Mos_v
;;

val Fake_b : Molecule_symbol_t.molecule_symbol;;

val Benzene : Molecule_symbol_t.molecule_symbol;;

val Phenol : Molecule_symbol_t.molecule_symbol;;

val Pyrrole : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_dendrimer_symbol :
  Molecule_dendrimer_symbol_t.molecule_dendrimer_symbol ->
    Mos_v
;;

val Fake_d2 : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Mos_v
;;

val molecule_symbol_of_molecule_forked_oneforked_symbol :
  Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol ->
    Mos_v
;;

val Guanidine : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_forked_twoforked_symbol :
  Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol ->
    Mos_v
;;

val Fake_2 : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_forked_threeforked_symbol :
  Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol ->
    Mos_v
;;

val Fake_3 : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_forked_moreforked_symbol :
  Molecule_forked_moreforked_symbol_t.molecule_forked_moreforked_symbol ->
    Mos_v
;;

val Fake_4 : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Mos_v
;;

val molecule_symbol_of_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Mos_v
;;

val molecule_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Mos_v
;;

val molecule_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Mos_v
;;

val ar : Molecule_symbol_t.molecule_symbol;;

val he : Molecule_symbol_t.molecule_symbol;;

val kr : Molecule_symbol_t.molecule_symbol;;

val ne : Molecule_symbol_t.molecule_symbol;;

val xe : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Mos_v
;;

val molecule_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    Mos_v
;;

val f_1m : Molecule_symbol_t.molecule_symbol;;

val h_1m : Molecule_symbol_t.molecule_symbol;;

val cl_1m : Molecule_symbol_t.molecule_symbol;;

val br_1m : Molecule_symbol_t.molecule_symbol;;

val i_1m : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    Mos_v
;;

val o_2m : Molecule_symbol_t.molecule_symbol;;

val s_2m : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Mos_v
;;

val molecule_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    Mos_v
;;

val h_1p : Molecule_symbol_t.molecule_symbol;;

val k_1p : Molecule_symbol_t.molecule_symbol;;

val li_1p : Molecule_symbol_t.molecule_symbol;;

val na_1p : Molecule_symbol_t.molecule_symbol;;

val ni_1p : Molecule_symbol_t.molecule_symbol;;

val cu_1p : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    Mos_v
;;

val mg_2p : Molecule_symbol_t.molecule_symbol;;

val ca_2p : Molecule_symbol_t.molecule_symbol;;

val fe_2p : Molecule_symbol_t.molecule_symbol;;

val zn_2p : Molecule_symbol_t.molecule_symbol;;

val cu_2p : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    Mos_v
;;

val fe_3p : Molecule_symbol_t.molecule_symbol;;

val ni_3p : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Mos_v
;;

val Hbc : Molecule_symbol_t.molecule_symbol;;

val Hbd : Molecule_symbol_t.molecule_symbol;;

val Hbs : Molecule_symbol_t.molecule_symbol;;

val Hbt : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_linear_diatomic_symbol :
  Molecule_linear_diatomic_symbol_t.molecule_linear_diatomic_symbol ->
    Mos_v
;;

val carbonmonoxide : Molecule_symbol_t.molecule_symbol;;

val dihydrogen : Molecule_symbol_t.molecule_symbol;;

val dinitrogen : Molecule_symbol_t.molecule_symbol;;

val dioxygen : Molecule_symbol_t.molecule_symbol;;

val hydrogenchloride : Molecule_symbol_t.molecule_symbol;;

val hydrogenfluoride : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_linear_triatomic_symbol :
  Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol ->
    Mos_v
;;

val hydrogensulfide : Molecule_symbol_t.molecule_symbol;;

val water : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_linear_tetratomic_symbol :
  Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol ->
    Mos_v
;;

val ammonia : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_linear_pentatomic_symbol :
  Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol ->
    Mos_v
;;

val methane : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_linear_polyatomic_symbol :
  Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol ->
    Mos_v
;;

val ethane : Molecule_symbol_t.molecule_symbol;;

val propane : Molecule_symbol_t.molecule_symbol;;

val butane : Molecule_symbol_t.molecule_symbol;;

val molecule_nucleoside : Molecule_symbol_t.molecule_symbol;;

val molecule_symbol_of_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Mos_v
;;

val molecule_symbol_of_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Mos_v
;;

val molecule_symbol_of_polypeptide_regular_symbol :
  Polypeptide_regular_symbol_t.polypeptide_regular_symbol ->
    Mos_v
;;

val Acg : Molecule_symbol_t.molecule_symbol;;

val Adh : Molecule_symbol_t.molecule_symbol;;

val Agagag : Molecule_symbol_t.molecule_symbol;;

val Agc : Molecule_symbol_t.molecule_symbol;;

val Agg : Molecule_symbol_t.molecule_symbol;;

val Agp : Molecule_symbol_t.molecule_symbol;;

val Gac : Molecule_symbol_t.molecule_symbol;;

val Gap : Molecule_symbol_t.molecule_symbol;;

val Ggg : Molecule_symbol_t.molecule_symbol;;

val Ggacgg : Molecule_symbol_t.molecule_symbol;;

val Ggaggg : Molecule_symbol_t.molecule_symbol;;

val Gagaga : Molecule_symbol_t.molecule_symbol;;

val Mhb : Molecule_symbol_t.molecule_symbol;;

val Pac : Molecule_symbol_t.molecule_symbol;;

val Pag : Molecule_symbol_t.molecule_symbol;;

val Pgk : Molecule_symbol_t.molecule_symbol;;

val Pti : Molecule_symbol_t.molecule_symbol;;

val Sac : Molecule_symbol_t.molecule_symbol;;

val Tab : Molecule_symbol_t.molecule_symbol;;

val Try : Molecule_symbol_t.molecule_symbol;;


val molecule_symbol_of_polyproline_symbol :
  Polyproline_symbol_t.polyproline_symbol ->
    Mos_v
;;

val molecule_symbol_of_polyglycine_symbol :
  Polyglycine_symbol_t.polyglycine_symbol ->
    Mos_v
;;

val molecule_symbol_of_nucleicacid_symbol :
  Nucleicacid_symbol_t.nucleicacid_symbol ->
    Mos_v
;;

val Dna : Molecule_symbol_t.molecule_symbol;;

val Rna : Molecule_symbol_t.molecule_symbol;;



(** created by ./generator molecule v symbol at 9:28 26 Apr 2011. *)



