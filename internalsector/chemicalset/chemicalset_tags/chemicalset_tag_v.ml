(** {3 The functionalities for a Tag for a Chemicalset.} *)

let nam_cod = "chemicalset_tag_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name tag_cht =
  Tag_v.name Chemicalset_symbol_v.name tag_cht
;;


(** {6 Upgrading} *)


let chemicalset_tag_of_atom_tag tag_atm = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_symbol tag_atm
;;

let chemicalset_tag_of_atom_core_tag tag_atc = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_core_symbol tag_atc
;;

let chemicalset_tag_of_atom_core_fourtied_tag tag_ac4 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_core_fourtied_symbol tag_ac4
;;

let chemicalset_tag_of_atom_core_fivetied_tag tag_ac5 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_core_fivetied_symbol tag_ac5
;;

let chemicalset_tag_of_atom_core_sixtied_tag tag_ac6 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_core_sixtied_symbol tag_ac6
;;

let chemicalset_tag_of_atom_onetied_tag tag_at1 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_onetied_symbol tag_at1
;;

let chemicalset_tag_of_atom_onetied_conjugated_tag tag_a1c = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_onetied_conjugated_symbol tag_a1c
;;

let chemicalset_tag_of_atom_onetied_double_tag tag_a1d = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_onetied_double_symbol tag_a1d
;;

let chemicalset_tag_of_atom_onetied_single_tag tag_a1s = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_onetied_single_symbol tag_a1s
;;

let chemicalset_tag_of_atom_onetied_triple_tag tag_a1t = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_onetied_triple_symbol tag_a1t
;;

let chemicalset_tag_of_atom_zerotied_tag tag_at0 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_symbol tag_at0
;;

let chemicalset_tag_of_atom_zerotied_anion_tag tag_a0a = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_symbol tag_a0a
;;

let chemicalset_tag_of_atom_zerotied_anion_minusone_tag tag_0a1 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol tag_0a1
;;

let chemicalset_tag_of_atom_zerotied_anion_minustwo_tag tag_0a2 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol tag_0a2
;;

let chemicalset_tag_of_atom_zerotied_cation_tag tag_a0c = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_symbol tag_a0c
;;

let chemicalset_tag_of_atom_zerotied_cation_plusone_tag tag_0c1 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol tag_0c1
;;

let chemicalset_tag_of_atom_zerotied_cation_plustwo_tag tag_0c2 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol tag_0c2
;;

let chemicalset_tag_of_atom_zerotied_cation_plusthree_tag tag_0c3 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol tag_0c3
;;

let chemicalset_tag_of_atom_zerotied_raregas_tag tag_a0r = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_raregas_symbol tag_a0r
;;

let chemicalset_tag_of_atom_zerotied_halfbridge_tag tag_a0h = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_halfbridge_symbol tag_a0h
;;

let chemicalset_tag_of_block_tag tag_blk = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_symbol tag_blk
;;

let chemicalset_tag_of_block_zerotied_tag tag_bl0 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_zerotied_symbol tag_bl0
;;

let chemicalset_tag_of_block_zerotied_zerotied_tag tag_b00 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_zerotied_zerotied_symbol tag_b00
;;

let chemicalset_tag_of_block_none_none_ax0_tag tag_nna = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax0_symbol tag_nna
;;

let chemicalset_tag_of_block_none_none_ax0e0_monoatomic_tag tag_nam = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax0e0_monoatomic_symbol tag_nam
;;

let chemicalset_tag_of_atom_zerotied_tag tag_at0 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_symbol tag_at0
;;

let chemicalset_tag_of_atom_zerotied_anion_tag tag_a0a = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_symbol tag_a0a
;;

let chemicalset_tag_of_atom_zerotied_anion_minusone_tag tag_0a1 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol tag_0a1
;;

let chemicalset_tag_of_atom_zerotied_anion_minustwo_tag tag_0a2 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol tag_0a2
;;

let chemicalset_tag_of_atom_zerotied_cation_tag tag_a0c = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_symbol tag_a0c
;;

let chemicalset_tag_of_atom_zerotied_cation_plusone_tag tag_0c1 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol tag_0c1
;;

let chemicalset_tag_of_atom_zerotied_cation_plustwo_tag tag_0c2 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol tag_0c2
;;

let chemicalset_tag_of_atom_zerotied_cation_plusthree_tag tag_0c3 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol tag_0c3
;;

let chemicalset_tag_of_atom_zerotied_raregas_tag tag_a0r = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_raregas_symbol tag_a0r
;;

let chemicalset_tag_of_atom_zerotied_halfbridge_tag tag_a0h = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_halfbridge_symbol tag_a0h
;;

let chemicalset_tag_of_block_none_none_ax1_tag tag_nna = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax1_symbol tag_nna
;;

let chemicalset_tag_of_block_none_none_ax1en_diatomic_tag tag_nad = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax1en_diatomic_symbol tag_nad
;;

let chemicalset_tag_of_block_none_none_ax2_tag tag_nna = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2_symbol tag_nna
;;

let chemicalset_tag_of_block_none_none_ax2e0_linear_tag tag_nal = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e0_linear_symbol tag_nal
;;

let chemicalset_tag_of_block_none_none_ax2e1_bent_tag tag_nab = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e1_bent_symbol tag_nab
;;

let chemicalset_tag_of_block_none_none_ax2e2_bent_tag tag_nab = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e2_bent_symbol tag_nab
;;

let chemicalset_tag_of_block_none_none_ax3_tag tag_nna = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3_symbol tag_nna
;;

let chemicalset_tag_of_block_none_none_ax3e0_trigonalplanar_tag tag_nat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol tag_nat
;;

let chemicalset_tag_of_block_none_none_ax3e1_trigonalpyramidal_tag tag_nat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol tag_nat
;;

let chemicalset_tag_of_block_none_none_ax4_tag tag_nna = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax4_symbol tag_nna
;;

let chemicalset_tag_of_block_none_none_ax4e1_tetrahedral_tag tag_nat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax4e1_tetrahedral_symbol tag_nat
;;

let chemicalset_tag_of_block_zerotied_onetied_tag tag_b01 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_zerotied_onetied_symbol tag_b01
;;

let chemicalset_tag_of_block_none_single_tag tag_bns = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_symbol tag_bns
;;

let chemicalset_tag_of_block_none_single_ax1_tag tag_nsa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax1_symbol tag_nsa
;;

let chemicalset_tag_of_block_none_single_ax1en_diatomic_tag tag_sad = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax1en_diatomic_symbol tag_sad
;;

let chemicalset_tag_of_block_none_single_ax3_tag tag_nsa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3_symbol tag_nsa
;;

let chemicalset_tag_of_block_none_single_ax3e0_trigonalplanar_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol tag_sat
;;

let chemicalset_tag_of_block_none_single_ax3e1_trigonalpyramidal_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol tag_sat
;;

let chemicalset_tag_of_block_none_single_ax4_tag tag_nsa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax4_symbol tag_nsa
;;

let chemicalset_tag_of_block_none_single_ax4e1_tetrahedral_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax4e1_tetrahedral_symbol tag_sat
;;

let chemicalset_tag_of_block_none_conjugated_tag tag_bnc = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_conjugated_symbol tag_bnc
;;

let chemicalset_tag_of_block_none_conjugated_ax3e0_trigonalplanar_tag tag_cat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol tag_cat
;;

let chemicalset_tag_of_block_none_double_tag tag_bnd = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_double_symbol tag_bnd
;;

let chemicalset_tag_of_block_none_double_ax3e0_trigonalplanar_tag tag_dat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol tag_dat
;;

let chemicalset_tag_of_block_none_triple_tag tag_bnt = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_symbol tag_bnt
;;

let chemicalset_tag_of_block_none_triple_ax2_tag tag_nta = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_ax2_symbol tag_nta
;;

let chemicalset_tag_of_block_none_triple_ax2e0_linear_tag tag_tal = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_ax2e0_linear_symbol tag_tal
;;

let chemicalset_tag_of_block_onetied_tag tag_bl1 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_symbol tag_bl1
;;

let chemicalset_tag_of_block_onetied_onetied_tag tag_b11 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_onetied_symbol tag_b11
;;

let chemicalset_tag_of_block_single_single_tag tag_bss = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_symbol tag_bss
;;

let chemicalset_tag_of_block_single_single_ax2_tag tag_ssa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2_symbol tag_ssa
;;

let chemicalset_tag_of_block_single_single_ax2e0_bent_tag tag_sab = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e0_bent_symbol tag_sab
;;

let chemicalset_tag_of_block_single_single_ax2e2_bent_tag tag_sab = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e2_bent_symbol tag_sab
;;

let chemicalset_tag_of_block_single_single_ax2e3_linear_tag tag_sal = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e3_linear_symbol tag_sal
;;

let chemicalset_tag_of_block_single_single_ax3_tag tag_ssa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3_symbol tag_ssa
;;

let chemicalset_tag_of_block_single_single_ax3e0_trigonalplanar_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol tag_sat
;;

let chemicalset_tag_of_block_single_single_ax3e1_trigonalpyramidal_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol tag_sat
;;

let chemicalset_tag_of_block_single_single_ax3e2_tshaped_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e2_tshaped_symbol tag_sat
;;

let chemicalset_tag_of_block_single_single_ax4_tag tag_ssa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4_symbol tag_ssa
;;

let chemicalset_tag_of_block_single_single_ax4e0_tetrahedral_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4e0_tetrahedral_symbol tag_sat
;;

let chemicalset_tag_of_block_single_single_ax4e1_seesaw_tag tag_sas = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4e1_seesaw_symbol tag_sas
;;

let chemicalset_tag_of_block_single_conjugated_tag tag_bsc = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_conjugated_symbol tag_bsc
;;

let chemicalset_tag_of_block_single_conjugated_ax3e0_trigonalplanar_tag tag_cat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol tag_cat
;;

let chemicalset_tag_of_block_single_double_tag tag_bsd = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_symbol tag_bsd
;;

let chemicalset_tag_of_block_single_double_ax3_tag tag_sda = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_ax3_symbol tag_sda
;;

let chemicalset_tag_of_block_single_double_ax3e0_trigonalplanar_tag tag_dat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol tag_dat
;;

let chemicalset_tag_of_block_single_triple_tag tag_bst = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_symbol tag_bst
;;

let chemicalset_tag_of_block_single_triple_ax2_tag tag_sta = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_ax2_symbol tag_sta
;;

let chemicalset_tag_of_block_single_triple_ax2e0_linear_tag tag_tal = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_ax2e0_linear_symbol tag_tal
;;

let chemicalset_tag_of_block_onetied_forktied_tag tag_b1f = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_forktied_symbol tag_b1f
;;

let chemicalset_tag_of_block_onetied_biforktied_tag tag_b1b = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_biforktied_symbol tag_b1b
;;

let chemicalset_tag_of_block_single_singlesingle_tag tag_bss = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_symbol tag_bss
;;

let chemicalset_tag_of_block_single_singlesingle_ax3_tag tag_ssa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_ax3_symbol tag_ssa
;;

let chemicalset_tag_of_block_single_singlesingle_ax3e1_trigonalpyramidal_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol tag_sat
;;

let chemicalset_tag_of_block_single_singledouble_tag tag_bss = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singledouble_symbol tag_bss
;;

let chemicalset_tag_of_block_single_singledouble_ax3e0_trigonalplanar_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol tag_sat
;;

let chemicalset_tag_of_block_onetied_triforktied_tag tag_b1t = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_triforktied_symbol tag_b1t
;;

let chemicalset_tag_of_block_single_singlesinglesingle_tag tag_bss = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_symbol tag_bss
;;

let chemicalset_tag_of_block_single_singlesinglesingle_ax4_tag tag_ssa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_ax4_symbol tag_ssa
;;

let chemicalset_tag_of_block_single_singlesinglesingle_ax4e1_tetrahedral_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol tag_sat
;;

let chemicalset_tag_of_bond_tag tag_bod = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_bond_symbol tag_bod
;;

let chemicalset_tag_of_bridge_tag tag_bre = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_bridge_symbol tag_bre
;;

let chemicalset_tag_of_chain_tag tag_chn = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_chain_symbol tag_chn
;;

let chemicalset_tag_of_cluster_tag tag_clr = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_cluster_symbol tag_clr
;;

let chemicalset_tag_of_coffer_tag tag_cor = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_coffer_symbol tag_cor
;;

let chemicalset_tag_of_fragment_tag tag_frt = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_symbol tag_frt
;;

let chemicalset_tag_of_fragment_closed_tag tag_frc = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_closed_symbol tag_frc
;;

let chemicalset_tag_of_block_zerotied_zerotied_tag tag_b00 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_zerotied_zerotied_symbol tag_b00
;;

let chemicalset_tag_of_block_none_none_ax0_tag tag_nna = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax0_symbol tag_nna
;;

let chemicalset_tag_of_block_none_none_ax0e0_monoatomic_tag tag_nam = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax0e0_monoatomic_symbol tag_nam
;;

let chemicalset_tag_of_atom_zerotied_tag tag_at0 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_symbol tag_at0
;;

let chemicalset_tag_of_atom_zerotied_anion_tag tag_a0a = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_symbol tag_a0a
;;

let chemicalset_tag_of_atom_zerotied_anion_minusone_tag tag_0a1 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol tag_0a1
;;

let chemicalset_tag_of_atom_zerotied_anion_minustwo_tag tag_0a2 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol tag_0a2
;;

let chemicalset_tag_of_atom_zerotied_cation_tag tag_a0c = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_symbol tag_a0c
;;

let chemicalset_tag_of_atom_zerotied_cation_plusone_tag tag_0c1 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol tag_0c1
;;

let chemicalset_tag_of_atom_zerotied_cation_plustwo_tag tag_0c2 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol tag_0c2
;;

let chemicalset_tag_of_atom_zerotied_cation_plusthree_tag tag_0c3 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol tag_0c3
;;

let chemicalset_tag_of_atom_zerotied_raregas_tag tag_a0r = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_raregas_symbol tag_a0r
;;

let chemicalset_tag_of_atom_zerotied_halfbridge_tag tag_a0h = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_halfbridge_symbol tag_a0h
;;

let chemicalset_tag_of_block_none_none_ax1_tag tag_nna = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax1_symbol tag_nna
;;

let chemicalset_tag_of_block_none_none_ax1en_diatomic_tag tag_nad = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax1en_diatomic_symbol tag_nad
;;

let chemicalset_tag_of_block_none_none_ax2_tag tag_nna = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2_symbol tag_nna
;;

let chemicalset_tag_of_block_none_none_ax2e0_linear_tag tag_nal = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e0_linear_symbol tag_nal
;;

let chemicalset_tag_of_block_none_none_ax2e1_bent_tag tag_nab = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e1_bent_symbol tag_nab
;;

let chemicalset_tag_of_block_none_none_ax2e2_bent_tag tag_nab = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax2e2_bent_symbol tag_nab
;;

let chemicalset_tag_of_block_none_none_ax3_tag tag_nna = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3_symbol tag_nna
;;

let chemicalset_tag_of_block_none_none_ax3e0_trigonalplanar_tag tag_nat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol tag_nat
;;

let chemicalset_tag_of_block_none_none_ax3e1_trigonalpyramidal_tag tag_nat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol tag_nat
;;

let chemicalset_tag_of_block_none_none_ax4_tag tag_nna = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax4_symbol tag_nna
;;

let chemicalset_tag_of_block_none_none_ax4e1_tetrahedral_tag tag_nat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax4e1_tetrahedral_symbol tag_nat
;;

let chemicalset_tag_of_fragment_zerotied_zerotied_tag tag_f00 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_zerotied_zerotied_symbol tag_f00
;;

let chemicalset_tag_of_fragment_head_tag tag_frh = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_head_symbol tag_frh
;;

let chemicalset_tag_of_fragment_head_forked_tag tag_fhf = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_head_forked_symbol tag_fhf
;;

let chemicalset_tag_of_fragment_head_biforked_tag tag_fhb = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_head_biforked_symbol tag_fhb
;;

let chemicalset_tag_of_fragment_head_triforked_tag tag_fht = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_head_triforked_symbol tag_fht
;;

let chemicalset_tag_of_fragment_head_halfbridged_tag tag_fhh = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_head_halfbridged_symbol tag_fhh
;;

let chemicalset_tag_of_fragment_buried_tag tag_frb = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_buried_symbol tag_frb
;;

let chemicalset_tag_of_block_onetied_forktied_tag tag_b1f = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_forktied_symbol tag_b1f
;;

let chemicalset_tag_of_block_onetied_biforktied_tag tag_b1b = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_biforktied_symbol tag_b1b
;;

let chemicalset_tag_of_block_single_singlesingle_tag tag_bss = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_symbol tag_bss
;;

let chemicalset_tag_of_block_single_singlesingle_ax3_tag tag_ssa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_ax3_symbol tag_ssa
;;

let chemicalset_tag_of_block_single_singlesingle_ax3e1_trigonalpyramidal_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol tag_sat
;;

let chemicalset_tag_of_block_single_singledouble_tag tag_bss = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singledouble_symbol tag_bss
;;

let chemicalset_tag_of_block_single_singledouble_ax3e0_trigonalplanar_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol tag_sat
;;

let chemicalset_tag_of_block_onetied_triforktied_tag tag_b1t = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_triforktied_symbol tag_b1t
;;

let chemicalset_tag_of_block_single_singlesinglesingle_tag tag_bss = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_symbol tag_bss
;;

let chemicalset_tag_of_block_single_singlesinglesingle_ax4_tag tag_ssa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_ax4_symbol tag_ssa
;;

let chemicalset_tag_of_block_single_singlesinglesingle_ax4e1_tetrahedral_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol tag_sat
;;

let chemicalset_tag_of_fragment_leaf_tag tag_frl = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_leaf_symbol tag_frl
;;

let chemicalset_tag_of_fragment_onetied_zerotied_tag tag_f10 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_onetied_zerotied_symbol tag_f10
;;

let chemicalset_tag_of_fragment_leaf_halfbridgetailed_tag tag_flh = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_leaf_halfbridgetailed_symbol tag_flh
;;

let chemicalset_tag_of_grouping_tag tag_grg = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_grouping_symbol tag_grg
;;

let chemicalset_tag_of_fragment_leaf_tag tag_frl = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_leaf_symbol tag_frl
;;

let chemicalset_tag_of_fragment_onetied_zerotied_tag tag_f10 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_onetied_zerotied_symbol tag_f10
;;

let chemicalset_tag_of_fragment_leaf_halfbridgetailed_tag tag_flh = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_fragment_leaf_halfbridgetailed_symbol tag_flh
;;

let chemicalset_tag_of_polypeptide_sidegroup_tag tag_pos = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_polypeptide_sidegroup_symbol tag_pos
;;

let chemicalset_tag_of_mendeleev_tag tag_mev = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_mendeleev_symbol tag_mev
;;

let chemicalset_tag_of_molecule_tag tag_moe = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_symbol tag_moe
;;

let chemicalset_tag_of_molecule_bridged_tag tag_mob = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_bridged_symbol tag_mob
;;

let chemicalset_tag_of_molecule_dendrimer_tag tag_mod = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_dendrimer_symbol tag_mod
;;

let chemicalset_tag_of_molecule_forked_tag tag_mof = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_forked_symbol tag_mof
;;

let chemicalset_tag_of_molecule_linear_tag tag_mol = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_symbol tag_mol
;;

let chemicalset_tag_of_molecule_linear_monoatomic_tag tag_mlm = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_monoatomic_symbol tag_mlm
;;

let chemicalset_tag_of_block_none_none_ax0e0_monoatomic_tag tag_nam = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_none_ax0e0_monoatomic_symbol tag_nam
;;

let chemicalset_tag_of_atom_zerotied_tag tag_at0 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_symbol tag_at0
;;

let chemicalset_tag_of_atom_zerotied_anion_tag tag_a0a = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_symbol tag_a0a
;;

let chemicalset_tag_of_atom_zerotied_anion_minusone_tag tag_0a1 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol tag_0a1
;;

let chemicalset_tag_of_atom_zerotied_anion_minustwo_tag tag_0a2 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol tag_0a2
;;

let chemicalset_tag_of_atom_zerotied_cation_tag tag_a0c = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_symbol tag_a0c
;;

let chemicalset_tag_of_atom_zerotied_cation_plusone_tag tag_0c1 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol tag_0c1
;;

let chemicalset_tag_of_atom_zerotied_cation_plustwo_tag tag_0c2 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol tag_0c2
;;

let chemicalset_tag_of_atom_zerotied_cation_plusthree_tag tag_0c3 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol tag_0c3
;;

let chemicalset_tag_of_atom_zerotied_raregas_tag tag_a0r = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_raregas_symbol tag_a0r
;;

let chemicalset_tag_of_atom_zerotied_halfbridge_tag tag_a0h = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_atom_zerotied_halfbridge_symbol tag_a0h
;;

let chemicalset_tag_of_molecule_linear_diatomic_tag tag_mld = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_diatomic_symbol tag_mld
;;

let chemicalset_tag_of_molecule_linear_triatomic_tag tag_mlt = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_triatomic_symbol tag_mlt
;;

let chemicalset_tag_of_molecule_linear_tetratomic_tag tag_mlq = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_tetratomic_symbol tag_mlq
;;

let chemicalset_tag_of_molecule_linear_pentatomic_tag tag_mlc = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_pentatomic_symbol tag_mlc
;;

let chemicalset_tag_of_molecule_linear_overpentatomic_tag tag_mlo = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_linear_overpentatomic_symbol tag_mlo
;;

let chemicalset_tag_of_molecule_polymer_tag tag_mop = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_molecule_polymer_symbol tag_mop
;;

let chemicalset_tag_of_polypeptide_tag tag_pde = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_polypeptide_symbol tag_pde
;;

let chemicalset_tag_of_polypeptide_subunit_tag tag_pos = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_polypeptide_subunit_symbol tag_pos
;;

let chemicalset_tag_of_segment_tag tag_set = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_segment_symbol tag_set
;;

let chemicalset_tag_of_segment_head_tag tag_seh = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_segment_head_symbol tag_seh
;;

let chemicalset_tag_of_block_zerotied_onetied_tag tag_b01 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_zerotied_onetied_symbol tag_b01
;;

let chemicalset_tag_of_block_none_single_tag tag_bns = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_symbol tag_bns
;;

let chemicalset_tag_of_block_none_single_ax1_tag tag_nsa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax1_symbol tag_nsa
;;

let chemicalset_tag_of_block_none_single_ax1en_diatomic_tag tag_sad = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax1en_diatomic_symbol tag_sad
;;

let chemicalset_tag_of_block_none_single_ax3_tag tag_nsa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3_symbol tag_nsa
;;

let chemicalset_tag_of_block_none_single_ax3e0_trigonalplanar_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol tag_sat
;;

let chemicalset_tag_of_block_none_single_ax3e1_trigonalpyramidal_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol tag_sat
;;

let chemicalset_tag_of_block_none_single_ax4_tag tag_nsa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax4_symbol tag_nsa
;;

let chemicalset_tag_of_block_none_single_ax4e1_tetrahedral_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_single_ax4e1_tetrahedral_symbol tag_sat
;;

let chemicalset_tag_of_block_none_conjugated_tag tag_bnc = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_conjugated_symbol tag_bnc
;;

let chemicalset_tag_of_block_none_conjugated_ax3e0_trigonalplanar_tag tag_cat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol tag_cat
;;

let chemicalset_tag_of_block_none_double_tag tag_bnd = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_double_symbol tag_bnd
;;

let chemicalset_tag_of_block_none_double_ax3e0_trigonalplanar_tag tag_dat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol tag_dat
;;

let chemicalset_tag_of_block_none_triple_tag tag_bnt = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_symbol tag_bnt
;;

let chemicalset_tag_of_block_none_triple_ax2_tag tag_nta = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_ax2_symbol tag_nta
;;

let chemicalset_tag_of_block_none_triple_ax2e0_linear_tag tag_tal = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_none_triple_ax2e0_linear_symbol tag_tal
;;

let chemicalset_tag_of_segment_zerotied_onetied_tag tag_s01 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_segment_zerotied_onetied_symbol tag_s01
;;

let chemicalset_tag_of_segment_buried_tag tag_seb = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_segment_buried_symbol tag_seb
;;

let chemicalset_tag_of_block_onetied_onetied_tag tag_b11 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_onetied_onetied_symbol tag_b11
;;

let chemicalset_tag_of_block_single_single_tag tag_bss = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_symbol tag_bss
;;

let chemicalset_tag_of_block_single_single_ax2_tag tag_ssa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2_symbol tag_ssa
;;

let chemicalset_tag_of_block_single_single_ax2e0_bent_tag tag_sab = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e0_bent_symbol tag_sab
;;

let chemicalset_tag_of_block_single_single_ax2e2_bent_tag tag_sab = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e2_bent_symbol tag_sab
;;

let chemicalset_tag_of_block_single_single_ax2e3_linear_tag tag_sal = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax2e3_linear_symbol tag_sal
;;

let chemicalset_tag_of_block_single_single_ax3_tag tag_ssa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3_symbol tag_ssa
;;

let chemicalset_tag_of_block_single_single_ax3e0_trigonalplanar_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol tag_sat
;;

let chemicalset_tag_of_block_single_single_ax3e1_trigonalpyramidal_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol tag_sat
;;

let chemicalset_tag_of_block_single_single_ax3e2_tshaped_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax3e2_tshaped_symbol tag_sat
;;

let chemicalset_tag_of_block_single_single_ax4_tag tag_ssa = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4_symbol tag_ssa
;;

let chemicalset_tag_of_block_single_single_ax4e0_tetrahedral_tag tag_sat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4e0_tetrahedral_symbol tag_sat
;;

let chemicalset_tag_of_block_single_single_ax4e1_seesaw_tag tag_sas = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_single_ax4e1_seesaw_symbol tag_sas
;;

let chemicalset_tag_of_block_single_conjugated_tag tag_bsc = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_conjugated_symbol tag_bsc
;;

let chemicalset_tag_of_block_single_conjugated_ax3e0_trigonalplanar_tag tag_cat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol tag_cat
;;

let chemicalset_tag_of_block_single_double_tag tag_bsd = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_symbol tag_bsd
;;

let chemicalset_tag_of_block_single_double_ax3_tag tag_sda = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_ax3_symbol tag_sda
;;

let chemicalset_tag_of_block_single_double_ax3e0_trigonalplanar_tag tag_dat = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol tag_dat
;;

let chemicalset_tag_of_block_single_triple_tag tag_bst = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_symbol tag_bst
;;

let chemicalset_tag_of_block_single_triple_ax2_tag tag_sta = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_ax2_symbol tag_sta
;;

let chemicalset_tag_of_block_single_triple_ax2e0_linear_tag tag_tal = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_block_single_triple_ax2e0_linear_symbol tag_tal
;;

let chemicalset_tag_of_segment_onetied_onetied_tag tag_s11 = 
  Tag_v.map_left Chemicalset_symbol_v.chemicalset_symbol_of_segment_onetied_onetied_symbol tag_s11
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_cht soi_cht =
  Tag_v.make sym_cht soi_cht
;;


(** {6 Extracting} *)


let atom_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_symbol_off_chemicalset_symbol tag_cht
;;

let atom_core_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_core_symbol_off_chemicalset_symbol tag_cht
;;

let atom_core_fourtied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_core_fourtied_symbol_off_chemicalset_symbol tag_cht
;;

let atom_core_fivetied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_core_fivetied_symbol_off_chemicalset_symbol tag_cht
;;

let atom_core_sixtied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_core_sixtied_symbol_off_chemicalset_symbol tag_cht
;;

let atom_onetied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let atom_onetied_conjugated_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_onetied_conjugated_symbol_off_chemicalset_symbol tag_cht
;;

let atom_onetied_double_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_onetied_double_symbol_off_chemicalset_symbol tag_cht
;;

let atom_onetied_single_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_onetied_single_symbol_off_chemicalset_symbol tag_cht
;;

let atom_onetied_triple_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_onetied_triple_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_minusone_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_minustwo_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plusone_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plustwo_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plusthree_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_raregas_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_raregas_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_halfbridge_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_halfbridge_symbol_off_chemicalset_symbol tag_cht
;;

let block_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_symbol_off_chemicalset_symbol tag_cht
;;

let block_zerotied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let block_zerotied_zerotied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_zerotied_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax0_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax0_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax0e0_monoatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_minusone_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_minustwo_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plusone_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plustwo_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plusthree_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_raregas_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_raregas_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_halfbridge_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_halfbridge_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax1_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax1_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax1en_diatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax2_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax2e0_linear_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax2e1_bent_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax2e2_bent_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax3_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax4_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let block_zerotied_onetied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_zerotied_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax1_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax1_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax1en_diatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax3_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax4_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_conjugated_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_conjugated_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_conjugated_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_double_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_double_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_double_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_triple_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_triple_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_triple_ax2_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_triple_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_triple_ax2e0_linear_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let block_onetied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let block_onetied_onetied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_onetied_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax2_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax2e0_bent_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax2e2_bent_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax2e3_linear_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax3_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax3e2_tshaped_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax4_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax4e0_tetrahedral_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax4e1_seesaw_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_conjugated_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_conjugated_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_conjugated_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_double_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_double_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_double_ax3_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_double_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_double_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_triple_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_triple_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_triple_ax2_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_triple_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_triple_ax2e0_linear_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let block_onetied_forktied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_onetied_forktied_symbol_off_chemicalset_symbol tag_cht
;;

let block_onetied_biforktied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_onetied_biforktied_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesingle_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesingle_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesingle_ax3_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesingle_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singledouble_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singledouble_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singledouble_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_onetied_triforktied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_onetied_triforktied_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesinglesingle_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesinglesingle_ax4_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let bond_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.bond_symbol_off_chemicalset_symbol tag_cht
;;

let bridge_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.bridge_symbol_off_chemicalset_symbol tag_cht
;;

let chain_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.chain_symbol_off_chemicalset_symbol tag_cht
;;

let cluster_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.cluster_symbol_off_chemicalset_symbol tag_cht
;;

let coffer_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.coffer_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_closed_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_closed_symbol_off_chemicalset_symbol tag_cht
;;

let block_zerotied_zerotied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_zerotied_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax0_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax0_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax0e0_monoatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_minusone_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_minustwo_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plusone_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plustwo_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plusthree_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_raregas_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_raregas_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_halfbridge_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_halfbridge_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax1_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax1_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax1en_diatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax2_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax2e0_linear_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax2e1_bent_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax2e2_bent_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax3_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax4_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_zerotied_zerotied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_zerotied_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_head_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_head_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_head_forked_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_head_forked_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_head_biforked_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_head_biforked_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_head_triforked_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_head_triforked_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_head_halfbridged_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_head_halfbridged_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_buried_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_buried_symbol_off_chemicalset_symbol tag_cht
;;

let block_onetied_forktied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_onetied_forktied_symbol_off_chemicalset_symbol tag_cht
;;

let block_onetied_biforktied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_onetied_biforktied_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesingle_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesingle_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesingle_ax3_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesingle_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singledouble_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singledouble_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singledouble_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_onetied_triforktied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_onetied_triforktied_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesinglesingle_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesinglesingle_ax4_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_leaf_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_leaf_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_onetied_zerotied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_onetied_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_leaf_halfbridgetailed_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol tag_cht
;;

let grouping_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.grouping_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_leaf_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_leaf_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_onetied_zerotied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_onetied_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let fragment_leaf_halfbridgetailed_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol tag_cht
;;

let polypeptide_sidegroup_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.polypeptide_sidegroup_symbol_off_chemicalset_symbol tag_cht
;;

let mendeleev_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.mendeleev_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_bridged_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_bridged_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_dendrimer_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_dendrimer_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_forked_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_forked_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_linear_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_linear_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_linear_monoatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_linear_monoatomic_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_none_ax0e0_monoatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_minusone_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_anion_minustwo_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plusone_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plustwo_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_cation_plusthree_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_raregas_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_raregas_symbol_off_chemicalset_symbol tag_cht
;;

let atom_zerotied_halfbridge_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.atom_zerotied_halfbridge_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_linear_diatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_linear_diatomic_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_linear_triatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_linear_triatomic_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_linear_tetratomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_linear_tetratomic_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_linear_pentatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_linear_pentatomic_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_linear_overpentatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_linear_overpentatomic_symbol_off_chemicalset_symbol tag_cht
;;

let molecule_polymer_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.molecule_polymer_symbol_off_chemicalset_symbol tag_cht
;;

let polypeptide_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.polypeptide_symbol_off_chemicalset_symbol tag_cht
;;

let polypeptide_subunit_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.polypeptide_subunit_symbol_off_chemicalset_symbol tag_cht
;;

let segment_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.segment_symbol_off_chemicalset_symbol tag_cht
;;

let segment_head_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.segment_head_symbol_off_chemicalset_symbol tag_cht
;;

let block_zerotied_onetied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_zerotied_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax1_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax1_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax1en_diatomic_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax3_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax4_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_single_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_conjugated_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_conjugated_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_conjugated_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_double_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_double_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_double_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_triple_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_triple_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_triple_ax2_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_triple_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let block_none_triple_ax2e0_linear_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let segment_zerotied_onetied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.segment_zerotied_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let segment_buried_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.segment_buried_symbol_off_chemicalset_symbol tag_cht
;;

let block_onetied_onetied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_onetied_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax2_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax2e0_bent_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax2e2_bent_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax2e3_linear_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax3_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax3e2_tshaped_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax4_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax4e0_tetrahedral_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_single_ax4e1_seesaw_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_conjugated_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_conjugated_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_conjugated_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_double_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_double_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_double_ax3_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_double_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_double_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_triple_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_triple_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_triple_ax2_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_triple_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let block_single_triple_ax2e0_linear_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let segment_onetied_onetied_tag_off_chemicalset_tag tag_cht = 
  Tag_v.map_left Chemicalset_symbol_v.segment_onetied_onetied_symbol_off_chemicalset_symbol tag_cht
;;


(** {6 Querying} *)


let is_atom_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_core_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_core_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_core_fourtied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_core_fourtied_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_core_fivetied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_core_fivetied_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_core_sixtied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_core_sixtied_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_onetied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_onetied_conjugated_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_onetied_conjugated_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_onetied_double_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_onetied_double_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_onetied_single_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_onetied_single_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_onetied_triple_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_onetied_triple_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_minusone_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_minustwo_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plusone_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plustwo_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plusthree_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_raregas_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_raregas_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_halfbridge_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_zerotied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_zerotied_zerotied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_zerotied_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax0_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax0_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax0e0_monoatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_minusone_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_minustwo_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plusone_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plustwo_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plusthree_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_raregas_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_raregas_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_halfbridge_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax1_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax1_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax1en_diatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax2_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax2e0_linear_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax2e1_bent_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax2e2_bent_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax3_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax4_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_zerotied_onetied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_zerotied_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax1_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax1_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax1en_diatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax3_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax4_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_conjugated_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_conjugated_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_double_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_double_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_double_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_triple_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_triple_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_triple_ax2_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_triple_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_triple_ax2e0_linear_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_onetied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_onetied_onetied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_onetied_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax2_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax2e0_bent_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax2e2_bent_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax2e3_linear_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax3_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax3e2_tshaped_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax4_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax4e0_tetrahedral_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax4e1_seesaw_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_conjugated_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_conjugated_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_double_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_double_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_double_ax3_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_double_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_double_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_triple_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_triple_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_triple_ax2_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_triple_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_triple_ax2e0_linear_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_onetied_forktied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_onetied_forktied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_onetied_biforktied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_onetied_biforktied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesingle_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesingle_ax3_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singledouble_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singledouble_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_onetied_triforktied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_onetied_triforktied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesinglesingle_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesinglesingle_ax4_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let is_bond_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_bond_symbol_off_chemicalset_symbol tag_cht
;;

let is_bridge_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_bridge_symbol_off_chemicalset_symbol tag_cht
;;

let is_chain_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_chain_symbol_off_chemicalset_symbol tag_cht
;;

let is_cluster_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_cluster_symbol_off_chemicalset_symbol tag_cht
;;

let is_coffer_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_coffer_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_closed_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_closed_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_zerotied_zerotied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_zerotied_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax0_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax0_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax0e0_monoatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_minusone_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_minustwo_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plusone_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plustwo_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plusthree_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_raregas_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_raregas_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_halfbridge_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax1_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax1_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax1en_diatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax2_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax2e0_linear_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax2e1_bent_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax2e2_bent_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax3_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax4_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_zerotied_zerotied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_zerotied_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_head_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_head_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_head_forked_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_head_forked_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_head_biforked_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_head_biforked_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_head_triforked_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_head_triforked_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_head_halfbridged_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_head_halfbridged_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_buried_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_buried_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_onetied_forktied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_onetied_forktied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_onetied_biforktied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_onetied_biforktied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesingle_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesingle_ax3_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singledouble_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singledouble_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_onetied_triforktied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_onetied_triforktied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesinglesingle_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesinglesingle_ax4_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_leaf_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_leaf_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_onetied_zerotied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_onetied_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_leaf_halfbridgetailed_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol tag_cht
;;

let is_grouping_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_grouping_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_leaf_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_leaf_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_onetied_zerotied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_onetied_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let is_fragment_leaf_halfbridgetailed_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_chemicalset_symbol tag_cht
;;

let is_polypeptide_sidegroup_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_polypeptide_sidegroup_symbol_off_chemicalset_symbol tag_cht
;;

let is_mendeleev_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_mendeleev_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_bridged_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_bridged_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_dendrimer_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_dendrimer_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_forked_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_forked_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_linear_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_linear_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_linear_monoatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_linear_monoatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_none_ax0e0_monoatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_minusone_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_anion_minustwo_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plusone_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plustwo_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_cation_plusthree_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_raregas_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_raregas_symbol_off_chemicalset_symbol tag_cht
;;

let is_atom_zerotied_halfbridge_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_atom_zerotied_halfbridge_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_linear_diatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_linear_diatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_linear_triatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_linear_triatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_linear_tetratomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_linear_tetratomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_linear_pentatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_linear_pentatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_linear_overpentatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_linear_overpentatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_molecule_polymer_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_molecule_polymer_symbol_off_chemicalset_symbol tag_cht
;;

let is_polypeptide_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_polypeptide_symbol_off_chemicalset_symbol tag_cht
;;

let is_polypeptide_subunit_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_polypeptide_subunit_symbol_off_chemicalset_symbol tag_cht
;;

let is_segment_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_segment_symbol_off_chemicalset_symbol tag_cht
;;

let is_segment_head_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_segment_head_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_zerotied_onetied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_zerotied_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax1_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax1_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax1en_diatomic_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax3_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax4_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_single_ax4e1_tetrahedral_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_conjugated_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_conjugated_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_double_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_double_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_double_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_triple_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_triple_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_triple_ax2_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_triple_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_none_triple_ax2e0_linear_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let is_segment_zerotied_onetied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_segment_zerotied_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let is_segment_buried_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_segment_buried_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_onetied_onetied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_onetied_onetied_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax2_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax2e0_bent_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax2e2_bent_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax2e3_linear_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax3_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax3e1_trigonalpyramidal_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax3e2_tshaped_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax4_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax4e0_tetrahedral_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_single_ax4e1_seesaw_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_conjugated_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_conjugated_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_double_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_double_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_double_ax3_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_double_ax3_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_double_ax3e0_trigonalplanar_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_triple_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_triple_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_triple_ax2_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_triple_ax2_symbol_off_chemicalset_symbol tag_cht
;;

let is_block_single_triple_ax2e0_linear_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_chemicalset_symbol tag_cht
;;

let is_segment_onetied_onetied_tag_off_chemicalset_tag tag_cht =
  Tag_v.map_left Chemicalset_symbol_v.is_segment_onetied_onetied_symbol_off_chemicalset_symbol tag_cht
;;


(** created by ./generator chemicalset implementation tag at 15:11 13 Mar 2012. *)



