(** {3 The functionalities for a Mark for a Chemicalset.} *)

let nam_cod = "chemicalset_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_cht =
  Mark_v.name Chemicalset_symbol_v.name mark_cht
;;


(** {6 Upgrading} *)


let chemicalset_mark_of_atom_mark mark_atm = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_symbol mark_atm
;;

let chemicalset_mark_of_atom_core_mark mark_atc = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_core_symbol mark_atc
;;

let chemicalset_mark_of_atom_core_fourtied_mark mark_ac4 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_core_fourtied_symbol mark_ac4
;;

let chemicalset_mark_of_atom_core_fivetied_mark mark_ac5 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_core_fivetied_symbol mark_ac5
;;

let chemicalset_mark_of_atom_core_sixtied_mark mark_ac6 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_core_sixtied_symbol mark_ac6
;;

let chemicalset_mark_of_atom_onetied_mark mark_at1 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_onetied_symbol mark_at1
;;

let chemicalset_mark_of_atom_onetied_conjugated_mark mark_a1c = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_onetied_conjugated_symbol mark_a1c
;;

let chemicalset_mark_of_atom_onetied_double_mark mark_a1d = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_onetied_double_symbol mark_a1d
;;

let chemicalset_mark_of_atom_onetied_single_mark mark_a1s = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_onetied_single_symbol mark_a1s
;;

let chemicalset_mark_of_atom_onetied_triple_mark mark_a1t = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_onetied_triple_symbol mark_a1t
;;

let chemicalset_mark_of_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_symbol mark_at0
;;

let chemicalset_mark_of_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_symbol mark_a0a
;;

let chemicalset_mark_of_atom_zerotied_anion_minusone_mark mark_0a1 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol mark_0a1
;;

let chemicalset_mark_of_atom_zerotied_anion_minustwo_mark mark_0a2 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol mark_0a2
;;

let chemicalset_mark_of_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_symbol mark_a0c
;;

let chemicalset_mark_of_atom_zerotied_cation_plusone_mark mark_0c1 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol mark_0c1
;;

let chemicalset_mark_of_atom_zerotied_cation_plustwo_mark mark_0c2 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol mark_0c2
;;

let chemicalset_mark_of_atom_zerotied_cation_plusthree_mark mark_0c3 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol mark_0c3
;;

let chemicalset_mark_of_atom_zerotied_raregas_mark mark_a0r = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_raregas_symbol mark_a0r
;;

let chemicalset_mark_of_atom_zerotied_halfbridge_mark mark_a0h = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_halfbridge_symbol mark_a0h
;;

let chemicalset_mark_of_block_mark mark_blk = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_symbol mark_blk
;;

let chemicalset_mark_of_block_zerotied_mark mark_bl0 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_zerotied_symbol mark_bl0
;;

let chemicalset_mark_of_block_zerotied_zerotied_mark mark_b00 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_zerotied_zerotied_symbol mark_b00
;;

let chemicalset_mark_of_block_none_none_ax0_mark mark_nna = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax0_symbol mark_nna
;;

let chemicalset_mark_of_block_none_none_ax0e0_monoatomic_mark mark_nam = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax0e0_monoatomic_symbol mark_nam
;;

let chemicalset_mark_of_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_symbol mark_at0
;;

let chemicalset_mark_of_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_symbol mark_a0a
;;

let chemicalset_mark_of_atom_zerotied_anion_minusone_mark mark_0a1 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol mark_0a1
;;

let chemicalset_mark_of_atom_zerotied_anion_minustwo_mark mark_0a2 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol mark_0a2
;;

let chemicalset_mark_of_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_symbol mark_a0c
;;

let chemicalset_mark_of_atom_zerotied_cation_plusone_mark mark_0c1 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol mark_0c1
;;

let chemicalset_mark_of_atom_zerotied_cation_plustwo_mark mark_0c2 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol mark_0c2
;;

let chemicalset_mark_of_atom_zerotied_cation_plusthree_mark mark_0c3 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol mark_0c3
;;

let chemicalset_mark_of_atom_zerotied_raregas_mark mark_a0r = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_raregas_symbol mark_a0r
;;

let chemicalset_mark_of_atom_zerotied_halfbridge_mark mark_a0h = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_halfbridge_symbol mark_a0h
;;

let chemicalset_mark_of_block_none_none_ax1_mark mark_nna = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax1_symbol mark_nna
;;

let chemicalset_mark_of_block_none_none_ax1en_diatomic_mark mark_nad = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax1en_diatomic_symbol mark_nad
;;

let chemicalset_mark_of_block_none_none_ax2_mark mark_nna = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2_symbol mark_nna
;;

let chemicalset_mark_of_block_none_none_ax2e0_linear_mark mark_nal = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e0_linear_symbol mark_nal
;;

let chemicalset_mark_of_block_none_none_ax2e1_bent_mark mark_nab = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e1_bent_symbol mark_nab
;;

let chemicalset_mark_of_block_none_none_ax2e2_bent_mark mark_nab = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e2_bent_symbol mark_nab
;;

let chemicalset_mark_of_block_none_none_ax3_mark mark_nna = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3_symbol mark_nna
;;

let chemicalset_mark_of_block_none_none_ax3e0_trigonalplanar_mark mark_nat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol mark_nat
;;

let chemicalset_mark_of_block_none_none_ax3e1_trigonalpyramidal_mark mark_nat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol mark_nat
;;

let chemicalset_mark_of_block_none_none_ax4_mark mark_nna = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax4_symbol mark_nna
;;

let chemicalset_mark_of_block_none_none_ax4e1_tetrahedral_mark mark_nat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax4e1_tetrahedral_symbol mark_nat
;;

let chemicalset_mark_of_block_zerotied_onetied_mark mark_b01 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_zerotied_onetied_symbol mark_b01
;;

let chemicalset_mark_of_block_none_single_mark mark_bns = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_symbol mark_bns
;;

let chemicalset_mark_of_block_none_single_ax1_mark mark_nsa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax1_symbol mark_nsa
;;

let chemicalset_mark_of_block_none_single_ax1en_diatomic_mark mark_sad = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax1en_diatomic_symbol mark_sad
;;

let chemicalset_mark_of_block_none_single_ax3_mark mark_nsa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3_symbol mark_nsa
;;

let chemicalset_mark_of_block_none_single_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol mark_sat
;;

let chemicalset_mark_of_block_none_single_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let chemicalset_mark_of_block_none_single_ax4_mark mark_nsa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax4_symbol mark_nsa
;;

let chemicalset_mark_of_block_none_single_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax4e1_tetrahedral_symbol mark_sat
;;

let chemicalset_mark_of_block_none_conjugated_mark mark_bnc = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_conjugated_symbol mark_bnc
;;

let chemicalset_mark_of_block_none_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;

let chemicalset_mark_of_block_none_double_mark mark_bnd = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_double_symbol mark_bnd
;;

let chemicalset_mark_of_block_none_double_ax3e0_trigonalplanar_mark mark_dat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol mark_dat
;;

let chemicalset_mark_of_block_none_triple_mark mark_bnt = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_symbol mark_bnt
;;

let chemicalset_mark_of_block_none_triple_ax2_mark mark_nta = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_ax2_symbol mark_nta
;;

let chemicalset_mark_of_block_none_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_ax2e0_linear_symbol mark_tal
;;

let chemicalset_mark_of_block_onetied_mark mark_bl1 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_symbol mark_bl1
;;

let chemicalset_mark_of_block_onetied_onetied_mark mark_b11 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_onetied_symbol mark_b11
;;

let chemicalset_mark_of_block_single_single_mark mark_bss = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_symbol mark_bss
;;

let chemicalset_mark_of_block_single_single_ax2_mark mark_ssa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2_symbol mark_ssa
;;

let chemicalset_mark_of_block_single_single_ax2e0_bent_mark mark_sab = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e0_bent_symbol mark_sab
;;

let chemicalset_mark_of_block_single_single_ax2e2_bent_mark mark_sab = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e2_bent_symbol mark_sab
;;

let chemicalset_mark_of_block_single_single_ax2e3_linear_mark mark_sal = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e3_linear_symbol mark_sal
;;

let chemicalset_mark_of_block_single_single_ax3_mark mark_ssa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3_symbol mark_ssa
;;

let chemicalset_mark_of_block_single_single_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol mark_sat
;;

let chemicalset_mark_of_block_single_single_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let chemicalset_mark_of_block_single_single_ax3e2_tshaped_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e2_tshaped_symbol mark_sat
;;

let chemicalset_mark_of_block_single_single_ax4_mark mark_ssa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4_symbol mark_ssa
;;

let chemicalset_mark_of_block_single_single_ax4e0_tetrahedral_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4e0_tetrahedral_symbol mark_sat
;;

let chemicalset_mark_of_block_single_single_ax4e1_seesaw_mark mark_sas = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4e1_seesaw_symbol mark_sas
;;

let chemicalset_mark_of_block_single_conjugated_mark mark_bsc = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_conjugated_symbol mark_bsc
;;

let chemicalset_mark_of_block_single_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;

let chemicalset_mark_of_block_single_double_mark mark_bsd = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_symbol mark_bsd
;;

let chemicalset_mark_of_block_single_double_ax3_mark mark_sda = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_ax3_symbol mark_sda
;;

let chemicalset_mark_of_block_single_double_ax3e0_trigonalplanar_mark mark_dat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol mark_dat
;;

let chemicalset_mark_of_block_single_triple_mark mark_bst = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_symbol mark_bst
;;

let chemicalset_mark_of_block_single_triple_ax2_mark mark_sta = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_ax2_symbol mark_sta
;;

let chemicalset_mark_of_block_single_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_ax2e0_linear_symbol mark_tal
;;

let chemicalset_mark_of_block_onetied_forktied_mark mark_b1f = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_forktied_symbol mark_b1f
;;

let chemicalset_mark_of_block_onetied_biforktied_mark mark_b1b = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_biforktied_symbol mark_b1b
;;

let chemicalset_mark_of_block_single_singlesingle_mark mark_bss = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_symbol mark_bss
;;

let chemicalset_mark_of_block_single_singlesingle_ax3_mark mark_ssa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_ax3_symbol mark_ssa
;;

let chemicalset_mark_of_block_single_singlesingle_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let chemicalset_mark_of_block_single_singledouble_mark mark_bss = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singledouble_symbol mark_bss
;;

let chemicalset_mark_of_block_single_singledouble_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol mark_sat
;;

let chemicalset_mark_of_block_onetied_triforktied_mark mark_b1t = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_triforktied_symbol mark_b1t
;;

let chemicalset_mark_of_block_single_singlesinglesingle_mark mark_bss = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_symbol mark_bss
;;

let chemicalset_mark_of_block_single_singlesinglesingle_ax4_mark mark_ssa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_ax4_symbol mark_ssa
;;

let chemicalset_mark_of_block_single_singlesinglesingle_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol mark_sat
;;

let chemicalset_mark_of_bond_mark mark_bod = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_bond_symbol mark_bod
;;

let chemicalset_mark_of_bridge_mark mark_bre = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_bridge_symbol mark_bre
;;

let chemicalset_mark_of_chain_mark mark_chn = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_chain_symbol mark_chn
;;

let chemicalset_mark_of_cluster_mark mark_clr = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_cluster_symbol mark_clr
;;

let chemicalset_mark_of_coffer_mark mark_cor = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_coffer_symbol mark_cor
;;

let chemicalset_mark_of_fragment_mark mark_frt = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_symbol mark_frt
;;

let chemicalset_mark_of_fragment_closed_mark mark_frc = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_closed_symbol mark_frc
;;

let chemicalset_mark_of_block_zerotied_zerotied_mark mark_b00 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_zerotied_zerotied_symbol mark_b00
;;

let chemicalset_mark_of_block_none_none_ax0_mark mark_nna = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax0_symbol mark_nna
;;

let chemicalset_mark_of_block_none_none_ax0e0_monoatomic_mark mark_nam = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax0e0_monoatomic_symbol mark_nam
;;

let chemicalset_mark_of_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_symbol mark_at0
;;

let chemicalset_mark_of_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_symbol mark_a0a
;;

let chemicalset_mark_of_atom_zerotied_anion_minusone_mark mark_0a1 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol mark_0a1
;;

let chemicalset_mark_of_atom_zerotied_anion_minustwo_mark mark_0a2 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol mark_0a2
;;

let chemicalset_mark_of_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_symbol mark_a0c
;;

let chemicalset_mark_of_atom_zerotied_cation_plusone_mark mark_0c1 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol mark_0c1
;;

let chemicalset_mark_of_atom_zerotied_cation_plustwo_mark mark_0c2 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol mark_0c2
;;

let chemicalset_mark_of_atom_zerotied_cation_plusthree_mark mark_0c3 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol mark_0c3
;;

let chemicalset_mark_of_atom_zerotied_raregas_mark mark_a0r = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_raregas_symbol mark_a0r
;;

let chemicalset_mark_of_atom_zerotied_halfbridge_mark mark_a0h = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_halfbridge_symbol mark_a0h
;;

let chemicalset_mark_of_block_none_none_ax1_mark mark_nna = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax1_symbol mark_nna
;;

let chemicalset_mark_of_block_none_none_ax1en_diatomic_mark mark_nad = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax1en_diatomic_symbol mark_nad
;;

let chemicalset_mark_of_block_none_none_ax2_mark mark_nna = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2_symbol mark_nna
;;

let chemicalset_mark_of_block_none_none_ax2e0_linear_mark mark_nal = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e0_linear_symbol mark_nal
;;

let chemicalset_mark_of_block_none_none_ax2e1_bent_mark mark_nab = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e1_bent_symbol mark_nab
;;

let chemicalset_mark_of_block_none_none_ax2e2_bent_mark mark_nab = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e2_bent_symbol mark_nab
;;

let chemicalset_mark_of_block_none_none_ax3_mark mark_nna = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3_symbol mark_nna
;;

let chemicalset_mark_of_block_none_none_ax3e0_trigonalplanar_mark mark_nat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol mark_nat
;;

let chemicalset_mark_of_block_none_none_ax3e1_trigonalpyramidal_mark mark_nat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol mark_nat
;;

let chemicalset_mark_of_block_none_none_ax4_mark mark_nna = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax4_symbol mark_nna
;;

let chemicalset_mark_of_block_none_none_ax4e1_tetrahedral_mark mark_nat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax4e1_tetrahedral_symbol mark_nat
;;

let chemicalset_mark_of_fragment_zerotied_zerotied_mark mark_f00 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_zerotied_zerotied_symbol mark_f00
;;

let chemicalset_mark_of_fragment_head_mark mark_frh = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_head_symbol mark_frh
;;

let chemicalset_mark_of_fragment_head_forked_mark mark_fhf = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_head_forked_symbol mark_fhf
;;

let chemicalset_mark_of_fragment_head_biforked_mark mark_fhb = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_head_biforked_symbol mark_fhb
;;

let chemicalset_mark_of_fragment_head_triforked_mark mark_fht = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_head_triforked_symbol mark_fht
;;

let chemicalset_mark_of_fragment_head_halfbridged_mark mark_fhh = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_head_halfbridged_symbol mark_fhh
;;

let chemicalset_mark_of_fragment_buried_mark mark_frb = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_buried_symbol mark_frb
;;

let chemicalset_mark_of_block_onetied_forktied_mark mark_b1f = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_forktied_symbol mark_b1f
;;

let chemicalset_mark_of_block_onetied_biforktied_mark mark_b1b = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_biforktied_symbol mark_b1b
;;

let chemicalset_mark_of_block_single_singlesingle_mark mark_bss = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_symbol mark_bss
;;

let chemicalset_mark_of_block_single_singlesingle_ax3_mark mark_ssa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_ax3_symbol mark_ssa
;;

let chemicalset_mark_of_block_single_singlesingle_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let chemicalset_mark_of_block_single_singledouble_mark mark_bss = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singledouble_symbol mark_bss
;;

let chemicalset_mark_of_block_single_singledouble_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol mark_sat
;;

let chemicalset_mark_of_block_onetied_triforktied_mark mark_b1t = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_triforktied_symbol mark_b1t
;;

let chemicalset_mark_of_block_single_singlesinglesingle_mark mark_bss = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_symbol mark_bss
;;

let chemicalset_mark_of_block_single_singlesinglesingle_ax4_mark mark_ssa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_ax4_symbol mark_ssa
;;

let chemicalset_mark_of_block_single_singlesinglesingle_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol mark_sat
;;

let chemicalset_mark_of_fragment_leaf_mark mark_frl = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_leaf_symbol mark_frl
;;

let chemicalset_mark_of_fragment_onetied_zerotied_mark mark_f10 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_onetied_zerotied_symbol mark_f10
;;

let chemicalset_mark_of_fragment_leaf_halfbridgetailed_mark mark_flh = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_leaf_halfbridgetailed_symbol mark_flh
;;

let chemicalset_mark_of_grouping_mark mark_grg = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_grouping_symbol mark_grg
;;

let chemicalset_mark_of_fragment_leaf_mark mark_frl = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_leaf_symbol mark_frl
;;

let chemicalset_mark_of_fragment_onetied_zerotied_mark mark_f10 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_onetied_zerotied_symbol mark_f10
;;

let chemicalset_mark_of_fragment_leaf_halfbridgetailed_mark mark_flh = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_leaf_halfbridgetailed_symbol mark_flh
;;

let chemicalset_mark_of_polypeptide_sidegroup_mark mark_pos = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_polypeptide_sidegroup_symbol mark_pos
;;

let chemicalset_mark_of_mendeleev_mark mark_mev = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_mendeleev_symbol mark_mev
;;

let chemicalset_mark_of_molecule_mark mark_moe = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_symbol mark_moe
;;

let chemicalset_mark_of_molecule_bridged_mark mark_mob = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_bridged_symbol mark_mob
;;

let chemicalset_mark_of_molecule_dendrimer_mark mark_mod = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_dendrimer_symbol mark_mod
;;

let chemicalset_mark_of_molecule_forked_mark mark_mof = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_forked_symbol mark_mof
;;

let chemicalset_mark_of_molecule_linear_mark mark_mol = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_symbol mark_mol
;;

let chemicalset_mark_of_molecule_linear_monoatomic_mark mark_mlm = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_monoatomic_symbol mark_mlm
;;

let chemicalset_mark_of_block_none_none_ax0e0_monoatomic_mark mark_nam = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax0e0_monoatomic_symbol mark_nam
;;

let chemicalset_mark_of_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_symbol mark_at0
;;

let chemicalset_mark_of_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_symbol mark_a0a
;;

let chemicalset_mark_of_atom_zerotied_anion_minusone_mark mark_0a1 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol mark_0a1
;;

let chemicalset_mark_of_atom_zerotied_anion_minustwo_mark mark_0a2 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol mark_0a2
;;

let chemicalset_mark_of_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_symbol mark_a0c
;;

let chemicalset_mark_of_atom_zerotied_cation_plusone_mark mark_0c1 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol mark_0c1
;;

let chemicalset_mark_of_atom_zerotied_cation_plustwo_mark mark_0c2 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol mark_0c2
;;

let chemicalset_mark_of_atom_zerotied_cation_plusthree_mark mark_0c3 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol mark_0c3
;;

let chemicalset_mark_of_atom_zerotied_raregas_mark mark_a0r = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_raregas_symbol mark_a0r
;;

let chemicalset_mark_of_atom_zerotied_halfbridge_mark mark_a0h = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_halfbridge_symbol mark_a0h
;;

let chemicalset_mark_of_molecule_linear_diatomic_mark mark_mld = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_diatomic_symbol mark_mld
;;

let chemicalset_mark_of_molecule_linear_triatomic_mark mark_mlt = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_triatomic_symbol mark_mlt
;;

let chemicalset_mark_of_molecule_linear_tetratomic_mark mark_mlq = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_tetratomic_symbol mark_mlq
;;

let chemicalset_mark_of_molecule_linear_pentatomic_mark mark_mlc = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_pentatomic_symbol mark_mlc
;;

let chemicalset_mark_of_molecule_linear_overpentatomic_mark mark_mlo = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_overpentatomic_symbol mark_mlo
;;

let chemicalset_mark_of_molecule_polymer_mark mark_mop = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_polymer_symbol mark_mop
;;

let chemicalset_mark_of_polypeptide_mark mark_pde = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_polypeptide_symbol mark_pde
;;

let chemicalset_mark_of_polypeptide_subunit_mark mark_pos = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_polypeptide_subunit_symbol mark_pos
;;

let chemicalset_mark_of_segment_mark mark_set = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_segment_symbol mark_set
;;

let chemicalset_mark_of_segment_head_mark mark_seh = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_segment_head_symbol mark_seh
;;

let chemicalset_mark_of_block_zerotied_onetied_mark mark_b01 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_zerotied_onetied_symbol mark_b01
;;

let chemicalset_mark_of_block_none_single_mark mark_bns = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_symbol mark_bns
;;

let chemicalset_mark_of_block_none_single_ax1_mark mark_nsa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax1_symbol mark_nsa
;;

let chemicalset_mark_of_block_none_single_ax1en_diatomic_mark mark_sad = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax1en_diatomic_symbol mark_sad
;;

let chemicalset_mark_of_block_none_single_ax3_mark mark_nsa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3_symbol mark_nsa
;;

let chemicalset_mark_of_block_none_single_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol mark_sat
;;

let chemicalset_mark_of_block_none_single_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let chemicalset_mark_of_block_none_single_ax4_mark mark_nsa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax4_symbol mark_nsa
;;

let chemicalset_mark_of_block_none_single_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax4e1_tetrahedral_symbol mark_sat
;;

let chemicalset_mark_of_block_none_conjugated_mark mark_bnc = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_conjugated_symbol mark_bnc
;;

let chemicalset_mark_of_block_none_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;

let chemicalset_mark_of_block_none_double_mark mark_bnd = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_double_symbol mark_bnd
;;

let chemicalset_mark_of_block_none_double_ax3e0_trigonalplanar_mark mark_dat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol mark_dat
;;

let chemicalset_mark_of_block_none_triple_mark mark_bnt = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_symbol mark_bnt
;;

let chemicalset_mark_of_block_none_triple_ax2_mark mark_nta = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_ax2_symbol mark_nta
;;

let chemicalset_mark_of_block_none_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_ax2e0_linear_symbol mark_tal
;;

let chemicalset_mark_of_segment_zerotied_onetied_mark mark_s01 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_segment_zerotied_onetied_symbol mark_s01
;;

let chemicalset_mark_of_segment_buried_mark mark_seb = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_segment_buried_symbol mark_seb
;;

let chemicalset_mark_of_block_onetied_onetied_mark mark_b11 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_onetied_symbol mark_b11
;;

let chemicalset_mark_of_block_single_single_mark mark_bss = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_symbol mark_bss
;;

let chemicalset_mark_of_block_single_single_ax2_mark mark_ssa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2_symbol mark_ssa
;;

let chemicalset_mark_of_block_single_single_ax2e0_bent_mark mark_sab = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e0_bent_symbol mark_sab
;;

let chemicalset_mark_of_block_single_single_ax2e2_bent_mark mark_sab = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e2_bent_symbol mark_sab
;;

let chemicalset_mark_of_block_single_single_ax2e3_linear_mark mark_sal = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e3_linear_symbol mark_sal
;;

let chemicalset_mark_of_block_single_single_ax3_mark mark_ssa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3_symbol mark_ssa
;;

let chemicalset_mark_of_block_single_single_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol mark_sat
;;

let chemicalset_mark_of_block_single_single_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let chemicalset_mark_of_block_single_single_ax3e2_tshaped_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e2_tshaped_symbol mark_sat
;;

let chemicalset_mark_of_block_single_single_ax4_mark mark_ssa = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4_symbol mark_ssa
;;

let chemicalset_mark_of_block_single_single_ax4e0_tetrahedral_mark mark_sat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4e0_tetrahedral_symbol mark_sat
;;

let chemicalset_mark_of_block_single_single_ax4e1_seesaw_mark mark_sas = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4e1_seesaw_symbol mark_sas
;;

let chemicalset_mark_of_block_single_conjugated_mark mark_bsc = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_conjugated_symbol mark_bsc
;;

let chemicalset_mark_of_block_single_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;

let chemicalset_mark_of_block_single_double_mark mark_bsd = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_symbol mark_bsd
;;

let chemicalset_mark_of_block_single_double_ax3_mark mark_sda = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_ax3_symbol mark_sda
;;

let chemicalset_mark_of_block_single_double_ax3e0_trigonalplanar_mark mark_dat = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol mark_dat
;;

let chemicalset_mark_of_block_single_triple_mark mark_bst = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_symbol mark_bst
;;

let chemicalset_mark_of_block_single_triple_ax2_mark mark_sta = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_ax2_symbol mark_sta
;;

let chemicalset_mark_of_block_single_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_ax2e0_linear_symbol mark_tal
;;

let chemicalset_mark_of_segment_onetied_onetied_mark mark_s11 = 
  Mark_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_segment_onetied_onetied_symbol mark_s11
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_cht soi_cht =
  Mark_v.make sym_cht soi_cht
;;


(** {6 Extracting} *)


let atom_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_symbol_off_chemicalset_symbol mark_cht
;;

let atom_core_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_core_symbol_off_chemicalset_symbol mark_cht
;;

let atom_core_fourtied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_core_fourtied_symbol_off_chemicalset_symbol mark_cht
;;

let atom_core_fivetied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_core_fivetied_symbol_off_chemicalset_symbol mark_cht
;;

let atom_core_sixtied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_core_sixtied_symbol_off_chemicalset_symbol mark_cht
;;

let atom_onetied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let atom_onetied_conjugated_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_onetied_conjugated_symbol_off_chemicalset_symbol mark_cht
;;

let atom_onetied_double_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_onetied_double_symbol_off_chemicalset_symbol mark_cht
;;

let atom_onetied_single_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_onetied_single_symbol_off_chemicalset_symbol mark_cht
;;

let atom_onetied_triple_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_onetied_triple_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_minusone_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_minustwo_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plusone_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plustwo_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plusthree_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_raregas_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_raregas_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_halfbridge_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_halfbridge_symbol_off_chemicalset_symbol mark_cht
;;

let block_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_symbol_off_chemicalset_symbol mark_cht
;;

let block_zerotied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let block_zerotied_zerotied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_zerotied_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax0_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax0_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax0e0_monoatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_minusone_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_minustwo_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plusone_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plustwo_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plusthree_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_raregas_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_raregas_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_halfbridge_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_halfbridge_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax1_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax1_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax1en_diatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax2_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax2e0_linear_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax2e1_bent_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax2e2_bent_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax3_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax4_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let block_zerotied_onetied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_zerotied_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax1_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax1_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax1en_diatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax3_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax4_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_conjugated_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_conjugated_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_conjugated_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_double_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_double_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_double_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_triple_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_triple_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_triple_ax2_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_triple_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_triple_ax2e0_linear_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let block_onetied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let block_onetied_onetied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_onetied_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax2_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax2e0_bent_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax2e2_bent_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax2e3_linear_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax3_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax3e2_tshaped_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax4_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax4e0_tetrahedral_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax4e1_seesaw_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_conjugated_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_conjugated_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_conjugated_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_double_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_double_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_double_ax3_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_double_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_double_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_triple_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_triple_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_triple_ax2_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_triple_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_triple_ax2e0_linear_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let block_onetied_forktied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_onetied_forktied_symbol_off_chemicalset_symbol mark_cht
;;

let block_onetied_biforktied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_onetied_biforktied_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesingle_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesingle_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesingle_ax3_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesingle_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singledouble_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singledouble_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singledouble_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_onetied_triforktied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_onetied_triforktied_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesinglesingle_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesinglesingle_ax4_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let bond_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.bond_symbol_off_chemicalset_symbol mark_cht
;;

let bridge_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.bridge_symbol_off_chemicalset_symbol mark_cht
;;

let chain_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.chain_symbol_off_chemicalset_symbol mark_cht
;;

let cluster_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.cluster_symbol_off_chemicalset_symbol mark_cht
;;

let coffer_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.coffer_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_closed_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_closed_symbol_off_chemicalset_symbol mark_cht
;;

let block_zerotied_zerotied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_zerotied_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax0_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax0_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax0e0_monoatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_minusone_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_minustwo_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plusone_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plustwo_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plusthree_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_raregas_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_raregas_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_halfbridge_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_halfbridge_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax1_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax1_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax1en_diatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax2_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax2e0_linear_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax2e1_bent_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax2e2_bent_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax3_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax4_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_zerotied_zerotied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_zerotied_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_head_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_head_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_head_forked_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_head_forked_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_head_biforked_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_head_biforked_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_head_triforked_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_head_triforked_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_head_halfbridged_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_head_halfbridged_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_buried_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_buried_symbol_off_chemicalset_symbol mark_cht
;;

let block_onetied_forktied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_onetied_forktied_symbol_off_chemicalset_symbol mark_cht
;;

let block_onetied_biforktied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_onetied_biforktied_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesingle_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesingle_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesingle_ax3_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesingle_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singledouble_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singledouble_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singledouble_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_onetied_triforktied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_onetied_triforktied_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesinglesingle_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesinglesingle_ax4_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_leaf_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_leaf_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_onetied_zerotied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_onetied_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_leaf_halfbridgetailed_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol mark_cht
;;

let grouping_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.grouping_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_leaf_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_leaf_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_onetied_zerotied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_onetied_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let fragment_leaf_halfbridgetailed_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol mark_cht
;;

let polypeptide_sidegroup_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.polypeptide_sidegroup_symbol_off_chemicalset_symbol mark_cht
;;

let mendeleev_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.mendeleev_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_bridged_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_bridged_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_dendrimer_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_dendrimer_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_forked_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_forked_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_linear_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_linear_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_linear_monoatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_linear_monoatomic_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_none_ax0e0_monoatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_minusone_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_anion_minustwo_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plusone_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plustwo_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_cation_plusthree_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_raregas_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_raregas_symbol_off_chemicalset_symbol mark_cht
;;

let atom_zerotied_halfbridge_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.atom_zerotied_halfbridge_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_linear_diatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_linear_diatomic_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_linear_triatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_linear_triatomic_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_linear_tetratomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_linear_tetratomic_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_linear_pentatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_linear_pentatomic_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_linear_overpentatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_linear_overpentatomic_symbol_off_chemicalset_symbol mark_cht
;;

let molecule_polymer_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.molecule_polymer_symbol_off_chemicalset_symbol mark_cht
;;

let polypeptide_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.polypeptide_symbol_off_chemicalset_symbol mark_cht
;;

let polypeptide_subunit_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.polypeptide_subunit_symbol_off_chemicalset_symbol mark_cht
;;

let segment_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.segment_symbol_off_chemicalset_symbol mark_cht
;;

let segment_head_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.segment_head_symbol_off_chemicalset_symbol mark_cht
;;

let block_zerotied_onetied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_zerotied_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax1_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax1_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax1en_diatomic_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax3_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax4_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_single_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_conjugated_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_conjugated_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_conjugated_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_double_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_double_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_double_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_triple_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_triple_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_triple_ax2_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_triple_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let block_none_triple_ax2e0_linear_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let segment_zerotied_onetied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.segment_zerotied_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let segment_buried_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.segment_buried_symbol_off_chemicalset_symbol mark_cht
;;

let block_onetied_onetied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_onetied_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax2_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax2e0_bent_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax2e2_bent_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax2e3_linear_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax3_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax3e2_tshaped_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax4_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax4e0_tetrahedral_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_single_ax4e1_seesaw_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_conjugated_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_conjugated_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_conjugated_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_double_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_double_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_double_ax3_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_double_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_double_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_triple_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_triple_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_triple_ax2_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_triple_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let block_single_triple_ax2e0_linear_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let segment_onetied_onetied_mark_off_chemicalset_mark mark_cht = 
  Mark_v.map_left Chemicalset_symbol_v.segment_onetied_onetied_symbol_off_chemicalset_symbol mark_cht
;;


(** {6 Querying} *)


let is_atom_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_core_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_core_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_core_fourtied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_core_fourtied_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_core_fivetied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_core_fivetied_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_core_sixtied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_core_sixtied_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_onetied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_onetied_conjugated_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_onetied_conjugated_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_onetied_double_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_onetied_double_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_onetied_single_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_onetied_single_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_onetied_triple_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_onetied_triple_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_minusone_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_minustwo_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plusone_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plustwo_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plusthree_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_raregas_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_raregas_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_halfbridge_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_zerotied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_zerotied_zerotied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_zerotied_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax0_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax0_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax0e0_monoatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_minusone_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_minustwo_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plusone_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plustwo_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plusthree_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_raregas_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_raregas_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_halfbridge_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax1_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax1_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax1en_diatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax2_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax2e0_linear_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax2e1_bent_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax2e2_bent_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax3_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax4_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_zerotied_onetied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_zerotied_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax1_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax1_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax1en_diatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax3_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax4_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_conjugated_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_conjugated_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_double_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_double_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_double_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_triple_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_triple_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_triple_ax2_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_triple_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_triple_ax2e0_linear_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_onetied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_onetied_onetied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_onetied_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax2_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax2e0_bent_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax2e2_bent_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax2e3_linear_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax3_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax3e2_tshaped_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax4_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax4e0_tetrahedral_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax4e1_seesaw_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_conjugated_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_conjugated_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_double_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_double_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_double_ax3_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_double_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_double_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_triple_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_triple_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_triple_ax2_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_triple_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_triple_ax2e0_linear_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_onetied_forktied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_onetied_forktied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_onetied_biforktied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_onetied_biforktied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesingle_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesingle_ax3_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singledouble_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singledouble_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_onetied_triforktied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_onetied_triforktied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesinglesingle_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesinglesingle_ax4_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let is_bond_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_bond_symbol_off_chemicalset_symbol mark_cht
;;

let is_bridge_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_bridge_symbol_off_chemicalset_symbol mark_cht
;;

let is_chain_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_chain_symbol_off_chemicalset_symbol mark_cht
;;

let is_cluster_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_cluster_symbol_off_chemicalset_symbol mark_cht
;;

let is_coffer_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_coffer_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_closed_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_closed_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_zerotied_zerotied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_zerotied_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax0_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax0_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax0e0_monoatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_minusone_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_minustwo_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plusone_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plustwo_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plusthree_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_raregas_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_raregas_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_halfbridge_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax1_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax1_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax1en_diatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax2_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax2e0_linear_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax2e1_bent_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax2e2_bent_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax3_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax4_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_zerotied_zerotied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_zerotied_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_head_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_head_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_head_forked_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_head_forked_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_head_biforked_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_head_biforked_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_head_triforked_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_head_triforked_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_head_halfbridged_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_head_halfbridged_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_buried_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_buried_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_onetied_forktied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_onetied_forktied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_onetied_biforktied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_onetied_biforktied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesingle_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesingle_ax3_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singledouble_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singledouble_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_onetied_triforktied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_onetied_triforktied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesinglesingle_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesinglesingle_ax4_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_leaf_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_leaf_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_onetied_zerotied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_onetied_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_leaf_halfbridgetailed_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol mark_cht
;;

let is_grouping_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_grouping_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_leaf_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_leaf_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_onetied_zerotied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_onetied_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let is_fragment_leaf_halfbridgetailed_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol mark_cht
;;

let is_polypeptide_sidegroup_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_polypeptide_sidegroup_symbol_off_chemicalset_symbol mark_cht
;;

let is_mendeleev_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_mendeleev_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_bridged_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_bridged_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_dendrimer_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_dendrimer_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_forked_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_forked_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_linear_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_linear_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_linear_monoatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_linear_monoatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_none_ax0e0_monoatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_minusone_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_anion_minustwo_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plusone_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plustwo_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_cation_plusthree_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_raregas_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_raregas_symbol_off_chemicalset_symbol mark_cht
;;

let is_atom_zerotied_halfbridge_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_linear_diatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_linear_diatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_linear_triatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_linear_triatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_linear_tetratomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_linear_tetratomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_linear_pentatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_linear_pentatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_linear_overpentatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_linear_overpentatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_molecule_polymer_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_molecule_polymer_symbol_off_chemicalset_symbol mark_cht
;;

let is_polypeptide_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_polypeptide_symbol_off_chemicalset_symbol mark_cht
;;

let is_polypeptide_subunit_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_polypeptide_subunit_symbol_off_chemicalset_symbol mark_cht
;;

let is_segment_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_segment_symbol_off_chemicalset_symbol mark_cht
;;

let is_segment_head_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_segment_head_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_zerotied_onetied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_zerotied_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax1_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax1_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax1en_diatomic_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax3_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax4_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_single_ax4e1_tetrahedral_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_conjugated_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_conjugated_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_double_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_double_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_double_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_triple_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_triple_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_triple_ax2_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_triple_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_none_triple_ax2e0_linear_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let is_segment_zerotied_onetied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_segment_zerotied_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let is_segment_buried_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_segment_buried_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_onetied_onetied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_onetied_onetied_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax2_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax2e0_bent_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax2e2_bent_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax2e3_linear_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax3_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax3e1_trigonalpyramidal_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax3e2_tshaped_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax4_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax4e0_tetrahedral_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_single_ax4e1_seesaw_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_conjugated_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_conjugated_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_double_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_double_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_double_ax3_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_double_ax3_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_double_ax3e0_trigonalplanar_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_triple_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_triple_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_triple_ax2_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_triple_ax2_symbol_off_chemicalset_symbol mark_cht
;;

let is_block_single_triple_ax2e0_linear_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol mark_cht
;;

let is_segment_onetied_onetied_mark_off_chemicalset_mark mark_cht =
  Mark_v.map_left Chemicalset_symbol_v.is_segment_onetied_onetied_symbol_off_chemicalset_symbol mark_cht
;;


(** created by ./generator chemicalset implementation mark at 15:11 13 Mar 2012. *)



