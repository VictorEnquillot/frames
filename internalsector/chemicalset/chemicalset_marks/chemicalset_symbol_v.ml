(** {3 The functionalities for a Symbol for a Chemicalset.} *)

let nam_cod = "chemicalset_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Chemicalset_symbol_t.Atom_symbol sym_atm ->
      Atom_symbol_v.name sym_atm
  | Chemicalset_symbol_t.Block_symbol sym_blk ->
      Block_symbol_v.name sym_blk
  | Chemicalset_symbol_t.Bond_symbol sym_bod ->
      Bond_symbol_v.name sym_bod
  | Chemicalset_symbol_t.Bridge_symbol sym_bre ->
      Bridge_symbol_v.name sym_bre
  | Chemicalset_symbol_t.Chain_symbol sym_chn ->
      Chain_symbol_v.name sym_chn
  | Chemicalset_symbol_t.Cluster_symbol sym_clr ->
      Cluster_symbol_v.name sym_clr
  | Chemicalset_symbol_t.Coffer_symbol sym_cor ->
      Coffer_symbol_v.name sym_cor
  | Chemicalset_symbol_t.Cterminal_subunit -> "cterminal_subunit"
  | Chemicalset_symbol_t.Fragment_symbol sym_frt ->
      Fragment_symbol_v.name sym_frt
  | Chemicalset_symbol_t.Grouping_symbol sym_grg ->
      Grouping_symbol_v.name sym_grg
  | Chemicalset_symbol_t.Mendeleev_symbol sym_mev ->
      Mendeleev_symbol_v.name sym_mev
  | Chemicalset_symbol_t.Molecule_symbol sym_moe ->
      Molecule_symbol_v.name sym_moe
  | Chemicalset_symbol_t.Polypeptide_subunit_symbol sym_pos ->
      Polypeptide_subunit_symbol_v.name sym_pos
  | Chemicalset_symbol_t.Segment_symbol sym_set ->
      Segment_symbol_v.name sym_set
;;


(** {6 Upgrading} *)


let chemicalset_symbol_of_atom_symbol sym_atm = 
  Chemicalset_symbol_t.Atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_core_symbol sym_atc = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_core_symbol sym_atc in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_core_fourtied_symbol sym_ac4 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_core_fourtied_symbol sym_ac4 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_core_fivetied_symbol sym_ac5 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_core_fivetied_symbol sym_ac5 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_core_sixtied_symbol sym_ac6 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_core_sixtied_symbol sym_ac6 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_onetied_symbol sym_at1 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_onetied_symbol sym_at1 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_onetied_conjugated_symbol sym_a1c = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_onetied_conjugated_symbol sym_a1c in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_onetied_double_symbol sym_a1d = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_onetied_double_symbol sym_a1d in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_onetied_single_symbol sym_a1s = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_onetied_single_symbol sym_a1s in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_onetied_triple_symbol sym_a1t = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_onetied_triple_symbol sym_a1t in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_symbol sym_at0 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_block_symbol sym_blk = 
  Chemicalset_symbol_t.Block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerotied_symbol sym_bl0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerotied_symbol sym_bl0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerotied_zerotied_symbol sym_b00 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerotied_zerotied_symbol sym_b00 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax0_symbol sym_nna = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax0_symbol sym_nna in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_symbol sym_at0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax1_symbol sym_nna = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax1_symbol sym_nna in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax1en_diatomic_symbol sym_nad = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax1en_diatomic_symbol sym_nad in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax2_symbol sym_nna = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax2_symbol sym_nna in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax2e0_linear_symbol sym_nal = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax2e0_linear_symbol sym_nal in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax2e1_bent_symbol sym_nab = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax2e1_bent_symbol sym_nab in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax2e2_bent_symbol sym_nab = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax2e2_bent_symbol sym_nab in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax3_symbol sym_nna = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax3_symbol sym_nna in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol sym_nat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol sym_nat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax4_symbol sym_nna = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax4_symbol sym_nna in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_none_ax4e1_tetrahedral_symbol sym_nat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_none_ax4e1_tetrahedral_symbol sym_nat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerotied_onetied_symbol sym_b01 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerotied_onetied_symbol sym_b01 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_single_symbol sym_bns = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_single_symbol sym_bns in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_single_ax1_symbol sym_nsa = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_single_ax1_symbol sym_nsa in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_single_ax3_symbol sym_nsa = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_single_ax3_symbol sym_nsa in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_single_ax4_symbol sym_nsa = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_single_ax4_symbol sym_nsa in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_conjugated_symbol sym_bnc = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_conjugated_symbol sym_bnc in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_double_symbol sym_bnd = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_double_symbol sym_bnd in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_triple_symbol sym_bnt = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_triple_symbol sym_bnt in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_triple_ax2_symbol sym_nta = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_triple_ax2_symbol sym_nta in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onetied_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onetied_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onetied_onetied_symbol sym_b11 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onetied_onetied_symbol sym_b11 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_symbol sym_bss = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_symbol sym_bss in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax2_symbol sym_ssa = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax2_symbol sym_ssa in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax3_symbol sym_ssa = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax3_symbol sym_ssa in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax4_symbol sym_ssa = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax4_symbol sym_ssa in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_conjugated_symbol sym_bsc = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_conjugated_symbol sym_bsc in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_double_symbol sym_bsd = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_double_symbol sym_bsd in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_double_ax3_symbol sym_sda = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_double_ax3_symbol sym_sda in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_triple_symbol sym_bst = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_triple_symbol sym_bst in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_triple_ax2_symbol sym_sta = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_triple_ax2_symbol sym_sta in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onetied_forktied_symbol sym_b1f = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onetied_forktied_symbol sym_b1f in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onetied_biforktied_symbol sym_b1b = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onetied_biforktied_symbol sym_b1b in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_singlesingle_symbol sym_bss = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_singlesingle_symbol sym_bss in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_singledouble_symbol sym_bss = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_singledouble_symbol sym_bss in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onetied_triforktied_symbol sym_b1t = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onetied_triforktied_symbol sym_b1t in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_singlesinglesingle_symbol sym_bss = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_singlesinglesingle_symbol sym_bss in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_bond_symbol sym_bod = 
  Chemicalset_symbol_t.Bond_symbol sym_bod
;;

let chemicalset_symbol_of_bridge_symbol sym_bre = 
  Chemicalset_symbol_t.Bridge_symbol sym_bre
;;

let chemicalset_symbol_of_chain_symbol sym_chn = 
  Chemicalset_symbol_t.Chain_symbol sym_chn
;;

let chemicalset_symbol_of_cluster_symbol sym_clr = 
  Chemicalset_symbol_t.Cluster_symbol sym_clr
;;

let chemicalset_symbol_of_coffer_symbol sym_cor = 
  Chemicalset_symbol_t.Coffer_symbol sym_cor
;;

let chemicalset_symbol_of_fragment_symbol sym_frt = 
  Chemicalset_symbol_t.Fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_closed_symbol sym_frc = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_closed_symbol sym_frc in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerotied_zerotied_symbol sym_b00 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerotied_zerotied_symbol sym_b00 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax0_symbol sym_nna = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax0_symbol sym_nna in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_symbol sym_at0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax1_symbol sym_nna = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax1_symbol sym_nna in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax1en_diatomic_symbol sym_nad = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax1en_diatomic_symbol sym_nad in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax2_symbol sym_nna = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax2_symbol sym_nna in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax2e0_linear_symbol sym_nal = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax2e0_linear_symbol sym_nal in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax2e1_bent_symbol sym_nab = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax2e1_bent_symbol sym_nab in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax2e2_bent_symbol sym_nab = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax2e2_bent_symbol sym_nab in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax3_symbol sym_nna = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax3_symbol sym_nna in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol sym_nat = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol sym_nat in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax4_symbol sym_nna = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax4_symbol sym_nna in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_none_none_ax4e1_tetrahedral_symbol sym_nat = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_none_none_ax4e1_tetrahedral_symbol sym_nat in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_zerotied_zerotied_symbol sym_f00 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_zerotied_zerotied_symbol sym_f00 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_head_symbol sym_frh = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_head_symbol sym_frh in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_head_forked_symbol sym_fhf = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_head_forked_symbol sym_fhf in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_head_biforked_symbol sym_fhb = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_head_biforked_symbol sym_fhb in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_head_triforked_symbol sym_fht = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_head_triforked_symbol sym_fht in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_head_halfbridged_symbol sym_fhh = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_head_halfbridged_symbol sym_fhh in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_buried_symbol sym_frb = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_buried_symbol sym_frb in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_onetied_forktied_symbol sym_b1f = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_onetied_forktied_symbol sym_b1f in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_onetied_biforktied_symbol sym_b1b = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_onetied_biforktied_symbol sym_b1b in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_single_singlesingle_symbol sym_bss = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_single_singlesingle_symbol sym_bss in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_single_singledouble_symbol sym_bss = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_single_singledouble_symbol sym_bss in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_onetied_triforktied_symbol sym_b1t = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_onetied_triforktied_symbol sym_b1t in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_single_singlesinglesingle_symbol sym_bss = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_single_singlesinglesingle_symbol sym_bss in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_leaf_symbol sym_frl = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_leaf_symbol sym_frl in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_onetied_zerotied_symbol sym_f10 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_onetied_zerotied_symbol sym_f10 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_grouping_symbol sym_grg = 
  Chemicalset_symbol_t.Grouping_symbol sym_grg
;;

let chemicalset_symbol_of_fragment_leaf_symbol sym_frl = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_fragment_leaf_symbol sym_frl in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_fragment_onetied_zerotied_symbol sym_f10 = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_fragment_onetied_zerotied_symbol sym_f10 in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_fragment_leaf_halfbridgetailed_symbol sym_flh in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_polypeptide_sidegroup_symbol sym_pos = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_polypeptide_sidegroup_symbol sym_pos in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_mendeleev_symbol sym_mev = 
  Chemicalset_symbol_t.Mendeleev_symbol sym_mev
;;

let chemicalset_symbol_of_molecule_symbol sym_moe = 
  Chemicalset_symbol_t.Molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_bridged_symbol sym_mob = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_bridged_symbol sym_mob in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_dendrimer_symbol sym_mod = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_dendrimer_symbol sym_mod in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_forked_symbol sym_mof = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_forked_symbol sym_mof in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_symbol sym_mol = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_symbol sym_mol in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_monoatomic_symbol sym_mlm = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_monoatomic_symbol sym_mlm in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_symbol sym_at0 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_diatomic_symbol sym_mld = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_diatomic_symbol sym_mld in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_triatomic_symbol sym_mlt = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_triatomic_symbol sym_mlt in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_tetratomic_symbol sym_mlq = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_tetratomic_symbol sym_mlq in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_pentatomic_symbol sym_mlc = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_pentatomic_symbol sym_mlc in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_overpentatomic_symbol sym_mlo = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_overpentatomic_symbol sym_mlo in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_polymer_symbol sym_mop = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_polymer_symbol sym_mop in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_polypeptide_symbol sym_pde = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_polypeptide_symbol sym_pde in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_polypeptide_subunit_symbol sym_pos = 
  Chemicalset_symbol_t.Polypeptide_subunit_symbol sym_pos
;;

let chemicalset_symbol_of_segment_symbol sym_set = 
  Chemicalset_symbol_t.Segment_symbol sym_set
;;

let chemicalset_symbol_of_segment_head_symbol sym_seh = 
  let sym_set = Segment_symbol_v.segment_symbol_of_segment_head_symbol sym_seh in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_zerotied_onetied_symbol sym_b01 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_zerotied_onetied_symbol sym_b01 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_single_symbol sym_bns = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_single_symbol sym_bns in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_single_ax1_symbol sym_nsa = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_single_ax1_symbol sym_nsa in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_single_ax3_symbol sym_nsa = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_single_ax3_symbol sym_nsa in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_single_ax4_symbol sym_nsa = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_single_ax4_symbol sym_nsa in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_conjugated_symbol sym_bnc = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_conjugated_symbol sym_bnc in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_double_symbol sym_bnd = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_double_symbol sym_bnd in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_triple_symbol sym_bnt = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_triple_symbol sym_bnt in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_triple_ax2_symbol sym_nta = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_triple_ax2_symbol sym_nta in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_segment_zerotied_onetied_symbol sym_s01 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_segment_zerotied_onetied_symbol sym_s01 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_segment_buried_symbol sym_seb = 
  let sym_set = Segment_symbol_v.segment_symbol_of_segment_buried_symbol sym_seb in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_onetied_onetied_symbol sym_b11 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_onetied_onetied_symbol sym_b11 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_symbol sym_bss = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_symbol sym_bss in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax2_symbol sym_ssa = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax2_symbol sym_ssa in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax3_symbol sym_ssa = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax3_symbol sym_ssa in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax4_symbol sym_ssa = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax4_symbol sym_ssa in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_conjugated_symbol sym_bsc = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_conjugated_symbol sym_bsc in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol sym_cat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_double_symbol sym_bsd = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_double_symbol sym_bsd in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_double_ax3_symbol sym_sda = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_double_ax3_symbol sym_sda in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_triple_symbol sym_bst = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_triple_symbol sym_bst in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_triple_ax2_symbol sym_sta = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_triple_ax2_symbol sym_sta in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_segment_onetied_onetied_symbol sym_s11 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_segment_onetied_onetied_symbol sym_s11 in
    chemicalset_symbol_of_segment_symbol sym_set
;;


(** {6 Abbreviating} *)


let atom_twotied = chemicalset_symbol_of_atom_symbol Atom_symbol_v.atom_twotied;;

let atom_threetied = chemicalset_symbol_of_atom_symbol Atom_symbol_v.atom_threetied;;

let c_ssss = chemicalset_symbol_of_atom_symbol Atom_symbol_v.c_ssss;;

let n_ssss = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_ssss;;

let s_ssss = chemicalset_symbol_of_atom_symbol Atom_symbol_v.s_ssss;;

let xe_ssss = chemicalset_symbol_of_atom_symbol Atom_symbol_v.xe_ssss;;

let cl_sssss = chemicalset_symbol_of_atom_symbol Atom_symbol_v.cl_sssss;;

let s_6s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.s_6s;;

let o_c = chemicalset_symbol_of_atom_symbol Atom_symbol_v.o_c;;

let o_d = chemicalset_symbol_of_atom_symbol Atom_symbol_v.o_d;;

let h_s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.h_s;;

let f_s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.f_s;;

let s_s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.s_s;;

let c_t = chemicalset_symbol_of_atom_symbol Atom_symbol_v.c_t;;

let n_t = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_t;;

let o_t = chemicalset_symbol_of_atom_symbol Atom_symbol_v.o_t;;

let s_t = chemicalset_symbol_of_atom_symbol Atom_symbol_v.s_t;;

let fm1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.fm1;;

let hm1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.hm1;;

let clm1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.clm1;;

let brm1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.brm1;;

let im1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.im1;;

let om2 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.om2;;

let sm2 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.sm2;;

let hp1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.hp1;;

let kp1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.kp1;;

let lip1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.lip1;;

let nap1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.nap1;;

let nip1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.nip1;;

let cup1 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.cup1;;

let mgp2 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.mgp2;;

let cap2 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.cap2;;

let fep2 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.fep2;;

let znp2 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.znp2;;

let cup2 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.cup2;;

let fep3 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.fep3;;

let nip3 = chemicalset_symbol_of_atom_symbol Atom_symbol_v.nip3;;

let ar = chemicalset_symbol_of_atom_symbol Atom_symbol_v.ar;;

let he = chemicalset_symbol_of_atom_symbol Atom_symbol_v.he;;

let kr = chemicalset_symbol_of_atom_symbol Atom_symbol_v.kr;;

let ne = chemicalset_symbol_of_atom_symbol Atom_symbol_v.ne;;

let xe = chemicalset_symbol_of_atom_symbol Atom_symbol_v.xe;;

let hb_s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.hb_s;;

let hb_c = chemicalset_symbol_of_atom_symbol Atom_symbol_v.hb_c;;

let hb_d = chemicalset_symbol_of_atom_symbol Atom_symbol_v.hb_d;;

let hb_t = chemicalset_symbol_of_atom_symbol Atom_symbol_v.hb_t;;

let z_co_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_co_z;;

let z_cs_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_cs_z;;

let z_fh_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_fh_z;;

let z_no_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_no_z;;

let z_ohm1_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_ohm1_z;;

let z_becl2_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_becl2_z;;

let z_co2_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_co2_z;;

let z_hgcl2_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_hgcl2_z;;

let z_ccl2_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_ccl2_z;;

let z_no2m1_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_no2m1_z;;

let z_o3_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_o3_z;;

let z_so2_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_so2_z;;

let z_of2_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_of2_z;;

let z_oh2_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_oh2_z;;

let z_sh2_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_sh2_z;;

let z_coh2_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_coh2_z;;

let z_cho2m1_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_cho2m1_z;;

let z_nh3_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_nh3_z;;

let z_ch4_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_ch4_z;;

let z_nh4p1_z = chemicalset_symbol_of_block_symbol Block_symbol_v.z_nh4p1_z;;

let z_h_s = chemicalset_symbol_of_block_symbol Block_symbol_v.z_h_s;;

let z_f_s = chemicalset_symbol_of_block_symbol Block_symbol_v.z_f_s;;

let z_s_s = chemicalset_symbol_of_block_symbol Block_symbol_v.z_s_s;;

let z_coh_s = chemicalset_symbol_of_block_symbol Block_symbol_v.z_coh_s;;

let z_co2m1_s = chemicalset_symbol_of_block_symbol Block_symbol_v.z_co2m1_s;;

let z_no2_s = chemicalset_symbol_of_block_symbol Block_symbol_v.z_no2_s;;

let z_nh2_s = chemicalset_symbol_of_block_symbol Block_symbol_v.z_nh2_s;;

let z_ch3_s = chemicalset_symbol_of_block_symbol Block_symbol_v.z_ch3_s;;

let z_nh3p1_s = chemicalset_symbol_of_block_symbol Block_symbol_v.z_nh3p1_s;;

let z_nh2_c = chemicalset_symbol_of_block_symbol Block_symbol_v.z_nh2_c;;

let z_ch2_d = chemicalset_symbol_of_block_symbol Block_symbol_v.z_ch2_d;;

let z_co_d = chemicalset_symbol_of_block_symbol Block_symbol_v.z_co_d;;

let z_nh_d = chemicalset_symbol_of_block_symbol Block_symbol_v.z_nh_d;;

let z_nh2p1_d = chemicalset_symbol_of_block_symbol Block_symbol_v.z_nh2p1_d;;

let z_ch_t = chemicalset_symbol_of_block_symbol Block_symbol_v.z_ch_t;;

let block_none_halfbridge = chemicalset_symbol_of_block_symbol Block_symbol_v.block_none_halfbridge;;

let block_zerotied_forktied = chemicalset_symbol_of_block_symbol Block_symbol_v.block_zerotied_forktied;;

let block_onetied_zerotied = chemicalset_symbol_of_block_symbol Block_symbol_v.block_onetied_zerotied;;

let s_be_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_be_s;;

let s_hg_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_hg_s;;

let s_o_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_o_s;;

let s_s_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_s_s;;

let s_im1_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_im1_s;;

let s_xe_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_xe_s;;

let s_bf_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_bf_s;;

let s_nh_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_nh_s;;

let s_pcl_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_pcl_s;;

let s_clf_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_clf_s;;

let s_brf_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_brf_s;;

let s_ch2_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_ch2_s;;

let s_nh2p1_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_nh2p1_s;;

let s_sf2_s = chemicalset_symbol_of_block_symbol Block_symbol_v.s_sf2_s;;

let s_co_c = chemicalset_symbol_of_block_symbol Block_symbol_v.s_co_c;;

let s_nh_c = chemicalset_symbol_of_block_symbol Block_symbol_v.s_nh_c;;

let s_ch_d = chemicalset_symbol_of_block_symbol Block_symbol_v.s_ch_d;;

let s_n_d = chemicalset_symbol_of_block_symbol Block_symbol_v.s_n_d;;

let s_nhp1_d = chemicalset_symbol_of_block_symbol Block_symbol_v.s_nhp1_d;;

let s_c_t = chemicalset_symbol_of_block_symbol Block_symbol_v.s_c_t;;

let s_np1_t = chemicalset_symbol_of_block_symbol Block_symbol_v.s_np1_t;;

let s_n_ss = chemicalset_symbol_of_block_symbol Block_symbol_v.s_n_ss;;

let s_c_sd = chemicalset_symbol_of_block_symbol Block_symbol_v.s_c_sd;;

let s_c_sss = chemicalset_symbol_of_block_symbol Block_symbol_v.s_c_sss;;

let s_nhp1_sss = chemicalset_symbol_of_block_symbol Block_symbol_v.s_nhp1_sss;;

let bond_covalent = chemicalset_symbol_of_bond_symbol Bond_symbol_v.bond_covalent;;

let bond_hydrogen = chemicalset_symbol_of_bond_symbol Bond_symbol_v.bond_hydrogen;;

let bond_ionic = chemicalset_symbol_of_bond_symbol Bond_symbol_v.bond_ionic;;

let blank = chemicalset_symbol_of_chain_symbol Chain_symbol_v.blank;;

let a = chemicalset_symbol_of_chain_symbol Chain_symbol_v.a;;

let b = chemicalset_symbol_of_chain_symbol Chain_symbol_v.b;;

let c = chemicalset_symbol_of_chain_symbol Chain_symbol_v.c;;

let d = chemicalset_symbol_of_chain_symbol Chain_symbol_v.d;;

let e = chemicalset_symbol_of_chain_symbol Chain_symbol_v.e;;

let f = chemicalset_symbol_of_chain_symbol Chain_symbol_v.f;;

let g = chemicalset_symbol_of_chain_symbol Chain_symbol_v.g;;

let h = chemicalset_symbol_of_chain_symbol Chain_symbol_v.h;;

let cluster_fromid s = chemicalset_symbol_of_cluster_symbol (Cluster_symbol_v.cluster_fromid s);;

let protein_fromid s = chemicalset_symbol_of_cluster_symbol (Cluster_symbol_v.protein_fromid s);;

let coffer_fromid s = chemicalset_symbol_of_coffer_symbol (Coffer_symbol_v.coffer_fromid s);;

let cterminal_subunit = Chemicalset_symbol_t.Cterminal_subunit;;

let z_ch3_s_co2m1_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_s_co2m1_z;;

let z_ch3_s_co_s_oh_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_s_co_s_oh_z;;

let z_ch3_s_oh_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_s_oh_z;;

let z_ch3_s_ch2_s_ch3_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_s_ch2_s_ch3_z;;

let z_ch3_s_ch2_sr2_ch3_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_s_ch2_sr2_ch3_z;;

let z_ch3_sr2_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_sr2_z;;

let z_ch2_s_ch2_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch2_s_ch2_z;;

let z_ch2_d_ch2_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch2_d_ch2_z;;

let z_coh_s_oh_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_coh_s_oh_z;;

let z_ch_t_ch_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch_t_ch_z;;

let z_zo2_s_zo_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_zo2_s_zo_z;;

let z_oh_s_co_s_ch2_s_nh2_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_oh_s_co_s_ch2_s_nh2_z;;

let z_co2m1_s_ch2_s_nh3p1_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_co2m1_s_ch2_s_nh3p1_z;;

let fragment_zerotied_zerotied_fromid s = chemicalset_symbol_of_fragment_symbol (Fragment_symbol_v.fragment_zerotied_zerotied_fromid s);;

let fragment_closed_leftextended_fromid s = chemicalset_symbol_of_fragment_symbol (Fragment_symbol_v.fragment_closed_leftextended_fromid s);;

let z_ch3_s_ch_ss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_s_ch_ss;;

let z_ch3_s_ch2_s_ch_ss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_s_ch2_s_ch_ss;;

let z_ch3_s_ch2_sr2_ch_ss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_s_ch2_sr2_ch_ss;;

let z_ch3_s_co_c_nh_s_ch_ss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_s_co_c_nh_s_ch_ss;;

let z_co2m1_s_ch_ss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_co2m1_s_ch_ss;;

let z_nh2_s_ch_ss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_nh2_s_ch_ss;;

let z_nh3p1_s_ch_ss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_nh3p1_s_ch_ss;;

let z_nh_d_c_ss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_nh_d_c_ss;;

let z_oh_s_co_s_ch_ss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_oh_s_co_s_ch_ss;;

let z_nh2_s_c_sd = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_nh2_s_c_sd;;

let z_oh_s_c_cc = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_oh_s_c_cc;;

let z_ch3_s_c_sss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_ch3_s_c_sss;;

let z_nh2_s_c_sss = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.z_nh2_s_c_sss;;

let hb_s_nh_s_ch2_sr3_s_ch_s = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.hb_s_nh_s_ch2_sr3_s_ch_s;;

let fragment_head_rightextended_fromid = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_head_rightextended_fromid;;

let fragment_buried_biforked = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_buried_biforked;;

let fragment_buried_triforked = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_buried_triforked;;

let fragment_buried_fromid = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_buried_fromid;;

let fragment_buried_leftextended_fromid s = chemicalset_symbol_of_fragment_symbol (Fragment_symbol_v.fragment_buried_leftextended_fromid s);;

let s_ch_d_cd_ch2_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch_d_cd_ch2_z;;

let s_ch_s_ch3_ch_s_ch3_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch_s_ch3_ch_s_ch3_z;;

let s_ch_d_nh_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch_d_nh_z;;

let s_ch_d_nh_cco_s_ch3_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch_d_nh_cco_s_ch3_z;;

let s_ch2_s_ch2_s_s_s_ch3_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch2_s_ch2_s_s_s_ch3_z;;

let s_ch2_s_ch3_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch2_s_ch3_z;;

let s_ch2r2_s_ch3_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch2r2_s_ch3_z;;

let s_ch2r3_s_ch3_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch2r3_s_ch3_z;;

let s_ch2r4_s_ch3_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch2r4_s_ch3_z;;

let s_ch2r5_s_ch3_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch2r5_s_ch3_z;;

let s_ch2_s_oh_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch2_s_oh_z;;

let s_ch2_cco_cnh2_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch2_cco_cnh2_z;;

let s_ch2_d_co_s_oh_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch2_d_co_s_oh_z;;

let s_ch2_s_coo_z = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_ch2_s_coo_z;;

let fragment_leaf_fromid s = chemicalset_symbol_of_fragment_symbol (Fragment_symbol_v.fragment_leaf_fromid s);;

let fragment_leaf_leftextended_fromid s = chemicalset_symbol_of_fragment_symbol (Fragment_symbol_v.fragment_leaf_leftextended_fromid s);;

let c_ch_cr5_hb_c = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.c_ch_cr5_hb_c;;

let empty = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.empty;;

let fragment_tree = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.fragment_tree;;

let sidegroup_alanine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_alanine;;

let sidegroup_arginine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_arginine;;

let sidegroup_asparagine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_asparagine;;

let sidegroup_aspartic = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_aspartic;;

let sidegroup_cysteine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_cysteine;;

let sidegroup_glutamine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_glutamine;;

let sidegroup_glutamic = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_glutamic;;

let sidegroup_histidine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_histidine;;

let sidegroup_isoleucine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_isoleucine;;

let sidegroup_leucine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_leucine;;

let sidegroup_lysine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_lysine;;

let sidegroup_methionine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_methionine;;

let sidegroup_phenylalanine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_phenylalanine;;

let sidegroup_serine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_serine;;

let sidegroup_threonine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_threonine;;

let sidegroup_tryptophan = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_tryptophan;;

let sidegroup_tyrosine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_tyrosine;;

let sidegroup_valine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.sidegroup_valine;;

let grouping_fromid s = chemicalset_symbol_of_grouping_symbol (Grouping_symbol_v.grouping_fromid s);;

let skipped = chemicalset_symbol_of_mendeleev_symbol Mendeleev_symbol_v.skipped;;

let benzene = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.benzene;;

let phenol = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.phenol;;

let pyrrole = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.pyrrole;;

let molecule_bridged_fromid s = chemicalset_symbol_of_molecule_symbol (Molecule_symbol_v.molecule_bridged_fromid s);;

let molecule_dendrimer_fromid s = chemicalset_symbol_of_molecule_symbol (Molecule_symbol_v.molecule_dendrimer_fromid s);;

let guanidine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.guanidine;;

let molecule_forked_fromid s = chemicalset_symbol_of_molecule_symbol (Molecule_symbol_v.molecule_forked_fromid s);;

let carbonmonoxide = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.carbonmonoxide;;

let dihydrogen = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.dihydrogen;;

let dinitrogen = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.dinitrogen;;

let dioxygen = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.dioxygen;;

let hydrogenchloride = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.hydrogenchloride;;

let hydrogenfluoride = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.hydrogenfluoride;;

let hydrogensulfide = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.hydrogensulfide;;

let water = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.water;;

let ammonia = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.ammonia;;

let methane = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.methane;;

let propane = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.propane;;

let butane = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.butane;;

let nitromethane = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.nitromethane;;

let polypeptide_fromid s = chemicalset_symbol_of_molecule_symbol (Molecule_symbol_v.polypeptide_fromid s);;

let nucleicacid_fromid s = chemicalset_symbol_of_molecule_symbol (Molecule_symbol_v.nucleicacid_fromid s);;

let molecule_polymer_fromid s = chemicalset_symbol_of_molecule_symbol (Molecule_symbol_v.molecule_polymer_fromid s);;

let polypeptide_subunit_proline s = chemicalset_symbol_of_polypeptide_subunit_symbol (Polypeptide_subunit_symbol_v.polypeptide_subunit_proline s);;

let polypeptide_subunit_regular_leftextended = chemicalset_symbol_of_polypeptide_subunit_symbol Polypeptide_subunit_symbol_v.polypeptide_subunit_regular_leftextended;;

let z_nh2_s_ch2_s = chemicalset_symbol_of_segment_symbol Segment_symbol_v.z_nh2_s_ch2_s;;

let z_nh3p1_s_ch2_s = chemicalset_symbol_of_segment_symbol Segment_symbol_v.z_nh3p1_s_ch2_s;;

let z_oh_s_co_s = chemicalset_symbol_of_segment_symbol Segment_symbol_v.z_oh_s_co_s;;

let segment_rightextended_fromid = chemicalset_symbol_of_segment_symbol Segment_symbol_v.segment_rightextended_fromid;;

let s_co_c_nh_s_ch2_s = chemicalset_symbol_of_segment_symbol Segment_symbol_v.s_co_c_nh_s_ch2_s;;

let segment_leftextended_fromid = chemicalset_symbol_of_segment_symbol Segment_symbol_v.segment_leftextended_fromid;;

let segment_polymer_fromid = chemicalset_symbol_of_segment_symbol Segment_symbol_v.segment_polymer_fromid;;


(** {6 Making} *)


let make s = function
  | "atom_twotied" -> atom_twotied
  | "atom_threetied" -> atom_threetied
  | "c_ssss" -> c_ssss
  | "n_ssss" -> n_ssss
  | "s_ssss" -> s_ssss
  | "xe_ssss" -> xe_ssss
  | "cl_sssss" -> cl_sssss
  | "s_6s" -> s_6s
  | "o_c" -> o_c
  | "o_d" -> o_d
  | "h_s" -> h_s
  | "f_s" -> f_s
  | "s_s" -> s_s
  | "c_t" -> c_t
  | "n_t" -> n_t
  | "o_t" -> o_t
  | "s_t" -> s_t
  | "fm1" -> fm1
  | "hm1" -> hm1
  | "clm1" -> clm1
  | "brm1" -> brm1
  | "im1" -> im1
  | "om2" -> om2
  | "sm2" -> sm2
  | "hp1" -> hp1
  | "kp1" -> kp1
  | "lip1" -> lip1
  | "nap1" -> nap1
  | "nip1" -> nip1
  | "cup1" -> cup1
  | "mgp2" -> mgp2
  | "cap2" -> cap2
  | "fep2" -> fep2
  | "znp2" -> znp2
  | "cup2" -> cup2
  | "fep3" -> fep3
  | "nip3" -> nip3
  | "ar" -> ar
  | "he" -> he
  | "kr" -> kr
  | "ne" -> ne
  | "xe" -> xe
  | "hb_s" -> hb_s
  | "hb_c" -> hb_c
  | "hb_d" -> hb_d
  | "hb_t" -> hb_t
  | "z_co_z" -> z_co_z
  | "z_cs_z" -> z_cs_z
  | "z_fh_z" -> z_fh_z
  | "z_no_z" -> z_no_z
  | "z_ohm1_z" -> z_ohm1_z
  | "z_becl2_z" -> z_becl2_z
  | "z_co2_z" -> z_co2_z
  | "z_hgcl2_z" -> z_hgcl2_z
  | "z_ccl2_z" -> z_ccl2_z
  | "z_no2m1_z" -> z_no2m1_z
  | "z_o3_z" -> z_o3_z
  | "z_so2_z" -> z_so2_z
  | "z_of2_z" -> z_of2_z
  | "z_oh2_z" -> z_oh2_z
  | "z_sh2_z" -> z_sh2_z
  | "z_coh2_z" -> z_coh2_z
  | "z_cho2m1_z" -> z_cho2m1_z
  | "z_nh3_z" -> z_nh3_z
  | "z_ch4_z" -> z_ch4_z
  | "z_nh4p1_z" -> z_nh4p1_z
  | "z_h_s" -> z_h_s
  | "z_f_s" -> z_f_s
  | "z_s_s" -> z_s_s
  | "z_coh_s" -> z_coh_s
  | "z_co2m1_s" -> z_co2m1_s
  | "z_no2_s" -> z_no2_s
  | "z_nh2_s" -> z_nh2_s
  | "z_ch3_s" -> z_ch3_s
  | "z_nh3p1_s" -> z_nh3p1_s
  | "z_nh2_c" -> z_nh2_c
  | "z_ch2_d" -> z_ch2_d
  | "z_co_d" -> z_co_d
  | "z_nh_d" -> z_nh_d
  | "z_nh2p1_d" -> z_nh2p1_d
  | "z_ch_t" -> z_ch_t
  | "block_none_halfbridge" -> block_none_halfbridge
  | "block_zerotied_forktied" -> block_zerotied_forktied
  | "block_onetied_zerotied" -> block_onetied_zerotied
  | "s_be_s" -> s_be_s
  | "s_hg_s" -> s_hg_s
  | "s_o_s" -> s_o_s
  | "s_s_s" -> s_s_s
  | "s_im1_s" -> s_im1_s
  | "s_xe_s" -> s_xe_s
  | "s_bf_s" -> s_bf_s
  | "s_nh_s" -> s_nh_s
  | "s_pcl_s" -> s_pcl_s
  | "s_clf_s" -> s_clf_s
  | "s_brf_s" -> s_brf_s
  | "s_ch2_s" -> s_ch2_s
  | "s_nh2p1_s" -> s_nh2p1_s
  | "s_sf2_s" -> s_sf2_s
  | "s_co_c" -> s_co_c
  | "s_nh_c" -> s_nh_c
  | "s_ch_d" -> s_ch_d
  | "s_n_d" -> s_n_d
  | "s_nhp1_d" -> s_nhp1_d
  | "s_c_t" -> s_c_t
  | "s_np1_t" -> s_np1_t
  | "s_n_ss" -> s_n_ss
  | "s_c_sd" -> s_c_sd
  | "s_c_sss" -> s_c_sss
  | "s_nhp1_sss" -> s_nhp1_sss
  | "bond_covalent" -> bond_covalent
  | "bond_hydrogen" -> bond_hydrogen
  | "bond_ionic" -> bond_ionic
  | "blank" -> blank
  | "a" -> a
  | "b" -> b
  | "c" -> c
  | "d" -> d
  | "e" -> e
  | "f" -> f
  | "g" -> g
  | "h" -> h
  | "cluster_fromid" -> cluster_fromid s
  | "protein_fromid" -> protein_fromid s
  | "coffer_fromid" -> coffer_fromid s
  | "cterminal_subunit" -> cterminal_subunit
  | "z_ch3_s_co2m1_z" -> z_ch3_s_co2m1_z
  | "z_ch3_s_co_s_oh_z" -> z_ch3_s_co_s_oh_z
  | "z_ch3_s_oh_z" -> z_ch3_s_oh_z
  | "z_ch3_s_ch2_s_ch3_z" -> z_ch3_s_ch2_s_ch3_z
  | "z_ch3_s_ch2_sr2_ch3_z" -> z_ch3_s_ch2_sr2_ch3_z
  | "z_ch3_sr2_z" -> z_ch3_sr2_z
  | "z_ch2_s_ch2_z" -> z_ch2_s_ch2_z
  | "z_ch2_d_ch2_z" -> z_ch2_d_ch2_z
  | "z_coh_s_oh_z" -> z_coh_s_oh_z
  | "z_ch_t_ch_z" -> z_ch_t_ch_z
  | "z_zo2_s_zo_z" -> z_zo2_s_zo_z
  | "z_oh_s_co_s_ch2_s_nh2_z" -> z_oh_s_co_s_ch2_s_nh2_z
  | "z_co2m1_s_ch2_s_nh3p1_z" -> z_co2m1_s_ch2_s_nh3p1_z
  | "fragment_zerotied_zerotied_fromid" -> fragment_zerotied_zerotied_fromid s
  | "fragment_closed_leftextended_fromid" -> fragment_closed_leftextended_fromid s
  | "z_ch3_s_ch_ss" -> z_ch3_s_ch_ss
  | "z_ch3_s_ch2_s_ch_ss" -> z_ch3_s_ch2_s_ch_ss
  | "z_ch3_s_ch2_sr2_ch_ss" -> z_ch3_s_ch2_sr2_ch_ss
  | "z_ch3_s_co_c_nh_s_ch_ss" -> z_ch3_s_co_c_nh_s_ch_ss
  | "z_co2m1_s_ch_ss" -> z_co2m1_s_ch_ss
  | "z_nh2_s_ch_ss" -> z_nh2_s_ch_ss
  | "z_nh3p1_s_ch_ss" -> z_nh3p1_s_ch_ss
  | "z_nh_d_c_ss" -> z_nh_d_c_ss
  | "z_oh_s_co_s_ch_ss" -> z_oh_s_co_s_ch_ss
  | "z_nh2_s_c_sd" -> z_nh2_s_c_sd
  | "z_oh_s_c_cc" -> z_oh_s_c_cc
  | "z_ch3_s_c_sss" -> z_ch3_s_c_sss
  | "z_nh2_s_c_sss" -> z_nh2_s_c_sss
  | "hb_s_nh_s_ch2_sr3_s_ch_s" -> hb_s_nh_s_ch2_sr3_s_ch_s
  | "fragment_head_rightextended_fromid" -> fragment_head_rightextended_fromid
  | "fragment_buried_biforked" -> fragment_buried_biforked
  | "fragment_buried_triforked" -> fragment_buried_triforked
  | "fragment_buried_fromid" -> fragment_buried_fromid
  | "fragment_buried_leftextended_fromid" -> fragment_buried_leftextended_fromid s
  | "s_ch_d_cd_ch2_z" -> s_ch_d_cd_ch2_z
  | "s_ch_s_ch3_ch_s_ch3_z" -> s_ch_s_ch3_ch_s_ch3_z
  | "s_ch_d_nh_z" -> s_ch_d_nh_z
  | "s_ch_d_nh_cco_s_ch3_z" -> s_ch_d_nh_cco_s_ch3_z
  | "s_ch2_s_ch2_s_s_s_ch3_z" -> s_ch2_s_ch2_s_s_s_ch3_z
  | "s_ch2_s_ch3_z" -> s_ch2_s_ch3_z
  | "s_ch2r2_s_ch3_z" -> s_ch2r2_s_ch3_z
  | "s_ch2r3_s_ch3_z" -> s_ch2r3_s_ch3_z
  | "s_ch2r4_s_ch3_z" -> s_ch2r4_s_ch3_z
  | "s_ch2r5_s_ch3_z" -> s_ch2r5_s_ch3_z
  | "s_ch2_s_oh_z" -> s_ch2_s_oh_z
  | "s_ch2_cco_cnh2_z" -> s_ch2_cco_cnh2_z
  | "s_ch2_d_co_s_oh_z" -> s_ch2_d_co_s_oh_z
  | "s_ch2_s_coo_z" -> s_ch2_s_coo_z
  | "fragment_leaf_fromid" -> fragment_leaf_fromid s
  | "fragment_leaf_leftextended_fromid" -> fragment_leaf_leftextended_fromid s
  | "c_ch_cr5_hb_c" -> c_ch_cr5_hb_c
  | "empty" -> empty
  | "fragment_tree" -> fragment_tree
  | "sidegroup_alanine" -> sidegroup_alanine
  | "sidegroup_arginine" -> sidegroup_arginine
  | "sidegroup_asparagine" -> sidegroup_asparagine
  | "sidegroup_aspartic" -> sidegroup_aspartic
  | "sidegroup_cysteine" -> sidegroup_cysteine
  | "sidegroup_glutamine" -> sidegroup_glutamine
  | "sidegroup_glutamic" -> sidegroup_glutamic
  | "sidegroup_histidine" -> sidegroup_histidine
  | "sidegroup_isoleucine" -> sidegroup_isoleucine
  | "sidegroup_leucine" -> sidegroup_leucine
  | "sidegroup_lysine" -> sidegroup_lysine
  | "sidegroup_methionine" -> sidegroup_methionine
  | "sidegroup_phenylalanine" -> sidegroup_phenylalanine
  | "sidegroup_serine" -> sidegroup_serine
  | "sidegroup_threonine" -> sidegroup_threonine
  | "sidegroup_tryptophan" -> sidegroup_tryptophan
  | "sidegroup_tyrosine" -> sidegroup_tyrosine
  | "sidegroup_valine" -> sidegroup_valine
  | "grouping_fromid" -> grouping_fromid s
  | "skipped" -> skipped
  | "benzene" -> benzene
  | "phenol" -> phenol
  | "pyrrole" -> pyrrole
  | "molecule_bridged_fromid" -> molecule_bridged_fromid s
  | "molecule_dendrimer_fromid" -> molecule_dendrimer_fromid s
  | "guanidine" -> guanidine
  | "molecule_forked_fromid" -> molecule_forked_fromid s
  | "carbonmonoxide" -> carbonmonoxide
  | "dihydrogen" -> dihydrogen
  | "dinitrogen" -> dinitrogen
  | "dioxygen" -> dioxygen
  | "hydrogenchloride" -> hydrogenchloride
  | "hydrogenfluoride" -> hydrogenfluoride
  | "hydrogensulfide" -> hydrogensulfide
  | "water" -> water
  | "ammonia" -> ammonia
  | "methane" -> methane
  | "propane" -> propane
  | "butane" -> butane
  | "nitromethane" -> nitromethane
  | "polypeptide_fromid" -> polypeptide_fromid s
  | "nucleicacid_fromid" -> nucleicacid_fromid s
  | "molecule_polymer_fromid" -> molecule_polymer_fromid s
  | "polypeptide_subunit_proline" -> polypeptide_subunit_proline s
  | "polypeptide_subunit_regular_leftextended" -> polypeptide_subunit_regular_leftextended
  | "z_nh2_s_ch2_s" -> z_nh2_s_ch2_s
  | "z_nh3p1_s_ch2_s" -> z_nh3p1_s_ch2_s
  | "z_oh_s_co_s" -> z_oh_s_co_s
  | "segment_rightextended_fromid" -> segment_rightextended_fromid
  | "s_co_c_nh_s_ch2_s" -> s_co_c_nh_s_ch2_s
  | "segment_leftextended_fromid" -> segment_leftextended_fromid
  | "segment_polymer_fromid" -> segment_polymer_fromid
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let atom_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Atom_symbol sym_atm -> sym_atm
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "atom_symbol_off_chemicalset_symbol"
      "Atom_symbol"
      (name sym_cht) "check"
;;

let atom_core_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_core_symbol_off_atom_symbol sym_atm
;;

let atom_core_fourtied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_core_fourtied_symbol_off_atom_symbol sym_atm
;;

let atom_core_fivetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_core_fivetied_symbol_off_atom_symbol sym_atm
;;

let atom_core_sixtied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_core_sixtied_symbol_off_atom_symbol sym_atm
;;

let atom_onetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_onetied_symbol_off_atom_symbol sym_atm
;;

let atom_onetied_conjugated_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_onetied_conjugated_symbol_off_atom_symbol sym_atm
;;

let atom_onetied_double_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_onetied_double_symbol_off_atom_symbol sym_atm
;;

let atom_onetied_single_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_onetied_single_symbol_off_atom_symbol sym_atm
;;

let atom_onetied_triple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_onetied_triple_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_anion_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_anion_minusone_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_anion_minustwo_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_cation_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_cation_plusone_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_cation_plustwo_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_cation_plusthree_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_raregas_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_halfbridge_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_halfbridge_symbol_off_atom_symbol sym_atm
;;

let block_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Block_symbol sym_blk -> sym_blk
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "block_symbol_off_chemicalset_symbol"
      "Block_symbol"
      (name sym_cht) "check"
;;

let block_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerotied_symbol_off_block_symbol sym_blk
;;

let block_zerotied_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerotied_zerotied_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax0_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax0_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_anion_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_anion_minusone_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_anion_minustwo_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_cation_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_cation_plusone_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_cation_plustwo_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_cation_plusthree_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_raregas_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_halfbridge_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_halfbridge_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax1_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax1_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax1en_diatomic_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax2_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax2_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax2e0_linear_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax2e1_bent_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax2e2_bent_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax3_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax3_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax4_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax4_symbol_off_block_symbol sym_blk
;;

let block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_none_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk
;;

let block_zerotied_onetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerotied_onetied_symbol_off_block_symbol sym_blk
;;

let block_none_single_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_single_symbol_off_block_symbol sym_blk
;;

let block_none_single_ax1_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_single_ax1_symbol_off_block_symbol sym_blk
;;

let block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_single_ax1en_diatomic_symbol_off_block_symbol sym_blk
;;

let block_none_single_ax3_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_single_ax3_symbol_off_block_symbol sym_blk
;;

let block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
;;

let block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk
;;

let block_none_single_ax4_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_single_ax4_symbol_off_block_symbol sym_blk
;;

let block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk
;;

let block_none_conjugated_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_conjugated_symbol_off_block_symbol sym_blk
;;

let block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
;;

let block_none_double_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_double_symbol_off_block_symbol sym_blk
;;

let block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
;;

let block_none_triple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_triple_symbol_off_block_symbol sym_blk
;;

let block_none_triple_ax2_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_triple_ax2_symbol_off_block_symbol sym_blk
;;

let block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_none_triple_ax2e0_linear_symbol_off_block_symbol sym_blk
;;

let block_onetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onetied_symbol_off_block_symbol sym_blk
;;

let block_onetied_onetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onetied_onetied_symbol_off_block_symbol sym_blk
;;

let block_single_single_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax2_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax2_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax2e0_bent_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax2e2_bent_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax2e3_linear_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax3_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax3_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax4_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax4_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_block_symbol sym_blk
;;

let block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_block_symbol sym_blk
;;

let block_single_conjugated_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_conjugated_symbol_off_block_symbol sym_blk
;;

let block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
;;

let block_single_double_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_double_symbol_off_block_symbol sym_blk
;;

let block_single_double_ax3_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_double_ax3_symbol_off_block_symbol sym_blk
;;

let block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
;;

let block_single_triple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_triple_symbol_off_block_symbol sym_blk
;;

let block_single_triple_ax2_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_triple_ax2_symbol_off_block_symbol sym_blk
;;

let block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_triple_ax2e0_linear_symbol_off_block_symbol sym_blk
;;

let block_onetied_forktied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onetied_forktied_symbol_off_block_symbol sym_blk
;;

let block_onetied_biforktied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onetied_biforktied_symbol_off_block_symbol sym_blk
;;

let block_single_singlesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_singlesingle_symbol_off_block_symbol sym_blk
;;

let block_single_singlesingle_ax3_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_singlesingle_ax3_symbol_off_block_symbol sym_blk
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk
;;

let block_single_singledouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_singledouble_symbol_off_block_symbol sym_blk
;;

let block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
;;

let block_onetied_triforktied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onetied_triforktied_symbol_off_block_symbol sym_blk
;;

let block_single_singlesinglesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_singlesinglesingle_symbol_off_block_symbol sym_blk
;;

let block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_block_symbol sym_blk
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk
;;

let bond_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Bond_symbol sym_bod -> sym_bod
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "bond_symbol_off_chemicalset_symbol"
      "Bond_symbol"
      (name sym_cht) "check"
;;

let bridge_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Bridge_symbol sym_bre -> sym_bre
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "bridge_symbol_off_chemicalset_symbol"
      "Bridge_symbol"
      (name sym_cht) "check"
;;

let chain_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Chain_symbol sym_chn -> sym_chn
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "chain_symbol_off_chemicalset_symbol"
      "Chain_symbol"
      (name sym_cht) "check"
;;

let cluster_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Cluster_symbol sym_clr -> sym_clr
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "cluster_symbol_off_chemicalset_symbol"
      "Cluster_symbol"
      (name sym_cht) "check"
;;

let coffer_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Coffer_symbol sym_cor -> sym_cor
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "coffer_symbol_off_chemicalset_symbol"
      "Coffer_symbol"
      (name sym_cht) "check"
;;

let fragment_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Fragment_symbol sym_frt -> sym_frt
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "fragment_symbol_off_chemicalset_symbol"
      "Fragment_symbol"
      (name sym_cht) "check"
;;

let fragment_closed_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_closed_symbol_off_fragment_symbol sym_frt
;;

let block_zerotied_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerotied_zerotied_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax0_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax0_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_anion_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_anion_minusone_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_anion_minustwo_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_cation_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_cation_plusone_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_cation_plustwo_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_cation_plusthree_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_raregas_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_halfbridge_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_halfbridge_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax1_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax1_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax1en_diatomic_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax2_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax2_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax2e0_linear_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax2e1_bent_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax2e2_bent_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax3_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax3_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax4_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax4_symbol_off_fragment_symbol sym_frt
;;

let block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_none_none_ax4e1_tetrahedral_symbol_off_fragment_symbol sym_frt
;;

let fragment_zerotied_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_zerotied_zerotied_symbol_off_fragment_symbol sym_frt
;;

let fragment_head_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_head_symbol_off_fragment_symbol sym_frt
;;

let fragment_head_forked_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_head_forked_symbol_off_fragment_symbol sym_frt
;;

let fragment_head_biforked_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_head_biforked_symbol_off_fragment_symbol sym_frt
;;

let fragment_head_triforked_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_head_triforked_symbol_off_fragment_symbol sym_frt
;;

let fragment_head_halfbridged_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_head_halfbridged_symbol_off_fragment_symbol sym_frt
;;

let fragment_buried_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_buried_symbol_off_fragment_symbol sym_frt
;;

let block_onetied_forktied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_onetied_forktied_symbol_off_fragment_symbol sym_frt
;;

let block_onetied_biforktied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_onetied_biforktied_symbol_off_fragment_symbol sym_frt
;;

let block_single_singlesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_single_singlesingle_symbol_off_fragment_symbol sym_frt
;;

let block_single_singlesingle_ax3_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_single_singlesingle_ax3_symbol_off_fragment_symbol sym_frt
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol sym_frt
;;

let block_single_singledouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_single_singledouble_symbol_off_fragment_symbol sym_frt
;;

let block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_symbol sym_frt
;;

let block_onetied_triforktied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_onetied_triforktied_symbol_off_fragment_symbol sym_frt
;;

let block_single_singlesinglesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_single_singlesinglesingle_symbol_off_fragment_symbol sym_frt
;;

let block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_fragment_symbol sym_frt
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_symbol sym_frt
;;

let fragment_leaf_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_leaf_symbol_off_fragment_symbol sym_frt
;;

let fragment_onetied_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_onetied_zerotied_symbol_off_fragment_symbol sym_frt
;;

let fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_fragment_symbol sym_frt
;;

let grouping_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Grouping_symbol sym_grg -> sym_grg
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "grouping_symbol_off_chemicalset_symbol"
      "Grouping_symbol"
      (name sym_cht) "check"
;;

let fragment_leaf_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.fragment_leaf_symbol_off_grouping_symbol sym_grg
;;

let fragment_onetied_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.fragment_onetied_zerotied_symbol_off_grouping_symbol sym_grg
;;

let fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_grouping_symbol sym_grg
;;

let polypeptide_sidegroup_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.polypeptide_sidegroup_symbol_off_grouping_symbol sym_grg
;;

let mendeleev_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Mendeleev_symbol sym_mev -> sym_mev
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "mendeleev_symbol_off_chemicalset_symbol"
      "Mendeleev_symbol"
      (name sym_cht) "check"
;;

let molecule_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Molecule_symbol sym_moe -> sym_moe
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "molecule_symbol_off_chemicalset_symbol"
      "Molecule_symbol"
      (name sym_cht) "check"
;;

let molecule_bridged_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_bridged_symbol_off_molecule_symbol sym_moe
;;

let molecule_dendrimer_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_dendrimer_symbol_off_molecule_symbol sym_moe
;;

let molecule_forked_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_forked_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_monoatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_monoatomic_symbol_off_molecule_symbol sym_moe
;;

let block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_anion_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_anion_minusone_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_anion_minustwo_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_cation_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_cation_plusone_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_cation_plustwo_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_cation_plusthree_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_raregas_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_halfbridge_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_halfbridge_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_diatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_diatomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_triatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_triatomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_tetratomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_tetratomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_pentatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_pentatomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_overpentatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_overpentatomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_polymer_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_polymer_symbol_off_molecule_symbol sym_moe
;;

let polypeptide_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.polypeptide_symbol_off_molecule_symbol sym_moe
;;

let polypeptide_subunit_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Polypeptide_subunit_symbol sym_pos -> sym_pos
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "polypeptide_subunit_symbol_off_chemicalset_symbol"
      "Polypeptide_subunit_symbol"
      (name sym_cht) "check"
;;

let segment_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Segment_symbol sym_set -> sym_set
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "segment_symbol_off_chemicalset_symbol"
      "Segment_symbol"
      (name sym_cht) "check"
;;

let segment_head_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.segment_head_symbol_off_segment_symbol sym_set
;;

let block_zerotied_onetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_zerotied_onetied_symbol_off_segment_symbol sym_set
;;

let block_none_single_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_single_symbol_off_segment_symbol sym_set
;;

let block_none_single_ax1_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_single_ax1_symbol_off_segment_symbol sym_set
;;

let block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_single_ax1en_diatomic_symbol_off_segment_symbol sym_set
;;

let block_none_single_ax3_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_single_ax3_symbol_off_segment_symbol sym_set
;;

let block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
;;

let block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol sym_set
;;

let block_none_single_ax4_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_single_ax4_symbol_off_segment_symbol sym_set
;;

let block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_segment_symbol sym_set
;;

let block_none_conjugated_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_conjugated_symbol_off_segment_symbol sym_set
;;

let block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
;;

let block_none_double_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_double_symbol_off_segment_symbol sym_set
;;

let block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
;;

let block_none_triple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_triple_symbol_off_segment_symbol sym_set
;;

let block_none_triple_ax2_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_triple_ax2_symbol_off_segment_symbol sym_set
;;

let block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_none_triple_ax2e0_linear_symbol_off_segment_symbol sym_set
;;

let segment_zerotied_onetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.segment_zerotied_onetied_symbol_off_segment_symbol sym_set
;;

let segment_buried_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.segment_buried_symbol_off_segment_symbol sym_set
;;

let block_onetied_onetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_onetied_onetied_symbol_off_segment_symbol sym_set
;;

let block_single_single_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax2_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax2_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax2e0_bent_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax2e2_bent_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax2e3_linear_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax3_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax3_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax4_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax4_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_segment_symbol sym_set
;;

let block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_segment_symbol sym_set
;;

let block_single_conjugated_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_conjugated_symbol_off_segment_symbol sym_set
;;

let block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
;;

let block_single_double_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_double_symbol_off_segment_symbol sym_set
;;

let block_single_double_ax3_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_double_ax3_symbol_off_segment_symbol sym_set
;;

let block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
;;

let block_single_triple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_triple_symbol_off_segment_symbol sym_set
;;

let block_single_triple_ax2_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_triple_ax2_symbol_off_segment_symbol sym_set
;;

let block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_single_triple_ax2e0_linear_symbol_off_segment_symbol sym_set
;;

let segment_onetied_onetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.segment_onetied_onetied_symbol_off_segment_symbol sym_set
;;


(** {6 Querying} *)


let is_atom_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Atom_symbol _ -> true
  | _ -> false
;;

let is_atom_core_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_core_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_core_fourtied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_core_fourtied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_core_fivetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_core_fivetied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_core_sixtied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_core_sixtied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_onetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_onetied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_onetied_conjugated_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_onetied_conjugated_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_onetied_double_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_onetied_double_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_onetied_single_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_onetied_single_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_onetied_triple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_onetied_triple_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_anion_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_cation_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_raregas_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_halfbridge_symbol_off_atom_symbol sym_atm
    end
;;

let is_block_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Block_symbol _ -> true
  | _ -> false
;;

let is_block_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerotied_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zerotied_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerotied_zerotied_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax0_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax0_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_anion_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_cation_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_raregas_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_halfbridge_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax1_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax1_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax2_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax2_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax3_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax3_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax4_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax4_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_none_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zerotied_onetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerotied_onetied_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_single_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_single_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_single_ax1_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_single_ax1_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_single_ax3_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_single_ax3_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_single_ax4_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_single_ax4_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_conjugated_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_conjugated_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_double_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_double_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_triple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_triple_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_triple_ax2_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_triple_ax2_symbol_off_block_symbol sym_blk
    end
;;

let is_block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onetied_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onetied_onetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onetied_onetied_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax2_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax2_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax3_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax3_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax4_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax4_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_conjugated_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_conjugated_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_double_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_double_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_double_ax3_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_double_ax3_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_triple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_triple_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_triple_ax2_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_triple_ax2_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onetied_forktied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onetied_forktied_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onetied_biforktied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onetied_biforktied_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_singlesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_singlesingle_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_singlesingle_ax3_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_singlesingle_ax3_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_singledouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_singledouble_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onetied_triforktied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onetied_triforktied_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_singlesinglesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_singlesinglesingle_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_block_symbol sym_blk
    end
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_symbol sym_blk
    end
;;

let is_bond_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Bond_symbol _ -> true
  | _ -> false
;;

let is_bridge_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Bridge_symbol _ -> true
  | _ -> false
;;

let is_chain_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Chain_symbol _ -> true
  | _ -> false
;;

let is_cluster_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Cluster_symbol _ -> true
  | _ -> false
;;

let is_coffer_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Coffer_symbol _ -> true
  | _ -> false
;;

let is_fragment_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Fragment_symbol _ -> true
  | _ -> false
;;

let is_fragment_closed_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_closed_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerotied_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerotied_zerotied_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax0_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax0_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_anion_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_cation_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_raregas_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_halfbridge_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax1_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax1_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax2_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax2_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax3_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax3_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax4_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax4_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_none_none_ax4e1_tetrahedral_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_zerotied_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_zerotied_zerotied_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_head_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_head_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_head_forked_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_head_forked_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_head_biforked_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_head_biforked_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_head_triforked_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_head_triforked_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_head_halfbridged_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_head_halfbridged_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_buried_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_buried_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_onetied_forktied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_onetied_forktied_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_onetied_biforktied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_onetied_biforktied_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_single_singlesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_single_singlesingle_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_single_singlesingle_ax3_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_single_singlesingle_ax3_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_single_singledouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_single_singledouble_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_onetied_triforktied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_onetied_triforktied_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_single_singlesinglesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_single_singlesinglesingle_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_leaf_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_leaf_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_onetied_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_onetied_zerotied_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_fragment_symbol sym_frt
    end
;;

let is_grouping_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Grouping_symbol _ -> true
  | _ -> false
;;

let is_fragment_leaf_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_fragment_leaf_symbol_off_grouping_symbol sym_grg
    end
;;

let is_fragment_onetied_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_fragment_onetied_zerotied_symbol_off_grouping_symbol sym_grg
    end
;;

let is_fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_grouping_symbol sym_grg
    end
;;

let is_polypeptide_sidegroup_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_polypeptide_sidegroup_symbol_off_grouping_symbol sym_grg
    end
;;

let is_mendeleev_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Mendeleev_symbol _ -> true
  | _ -> false
;;

let is_molecule_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Molecule_symbol _ -> true
  | _ -> false
;;

let is_molecule_bridged_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_bridged_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_dendrimer_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_dendrimer_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_forked_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_forked_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_monoatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_monoatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_anion_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_cation_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_raregas_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_halfbridge_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_diatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_diatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_triatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_triatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_tetratomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_tetratomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_pentatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_pentatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_overpentatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_overpentatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_polymer_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_polymer_symbol_off_molecule_symbol sym_moe
    end
;;

let is_polypeptide_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_polypeptide_symbol_off_molecule_symbol sym_moe
    end
;;

let is_polypeptide_subunit_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Polypeptide_subunit_symbol _ -> true
  | _ -> false
;;

let is_segment_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Segment_symbol _ -> true
  | _ -> false
;;

let is_segment_head_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_segment_head_symbol_off_segment_symbol sym_set
    end
;;

let is_block_zerotied_onetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_zerotied_onetied_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_single_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_single_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_single_ax1_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_single_ax1_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_single_ax3_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_single_ax3_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_single_ax4_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_single_ax4_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_conjugated_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_conjugated_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_double_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_double_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_triple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_triple_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_triple_ax2_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_triple_ax2_symbol_off_segment_symbol sym_set
    end
;;

let is_block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_segment_symbol sym_set
    end
;;

let is_segment_zerotied_onetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_segment_zerotied_onetied_symbol_off_segment_symbol sym_set
    end
;;

let is_segment_buried_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_segment_buried_symbol_off_segment_symbol sym_set
    end
;;

let is_block_onetied_onetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_onetied_onetied_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax2_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax2_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax3_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax3_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax4_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax4_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_conjugated_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_conjugated_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_double_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_double_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_double_ax3_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_double_ax3_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_triple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_triple_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_triple_ax2_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_triple_ax2_symbol_off_segment_symbol sym_set
    end
;;

let is_block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_segment_symbol sym_set
    end
;;

let is_segment_onetied_onetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_segment_onetied_onetied_symbol_off_segment_symbol sym_set
    end
;;


(** created by ./generator chemicalset implementation symbol at 15:1 13 Mar 2012. *)



