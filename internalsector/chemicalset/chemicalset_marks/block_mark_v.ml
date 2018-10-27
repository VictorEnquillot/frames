(** {3 The functionalities for a Mark for a Block.} *)

let nam_cod = "block_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_blk =
  Mark_v.name Block_symbol_v.name mark_blk
;;


(** {6 Upgrading} *)


let block_mark_of_block_zerotied_mark mark_bl0 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_zerotied_symbol mark_bl0
;;

let block_mark_of_block_zerotied_zerotied_mark mark_b00 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_zerotied_zerotied_symbol mark_b00
;;

let block_mark_of_block_none_none_ax0_mark mark_nna = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax0_symbol mark_nna
;;

let block_mark_of_block_none_none_ax0e0_monoatomic_mark mark_nam = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax0e0_monoatomic_symbol mark_nam
;;

let block_mark_of_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_atom_zerotied_symbol mark_at0
;;

let block_mark_of_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_atom_zerotied_anion_symbol mark_a0a
;;

let block_mark_of_atom_zerotied_anion_minusone_mark mark_0a1 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_atom_zerotied_anion_minusone_symbol mark_0a1
;;

let block_mark_of_atom_zerotied_anion_minustwo_mark mark_0a2 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_atom_zerotied_anion_minustwo_symbol mark_0a2
;;

let block_mark_of_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_atom_zerotied_cation_symbol mark_a0c
;;

let block_mark_of_atom_zerotied_cation_plusone_mark mark_0c1 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_atom_zerotied_cation_plusone_symbol mark_0c1
;;

let block_mark_of_atom_zerotied_cation_plustwo_mark mark_0c2 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_atom_zerotied_cation_plustwo_symbol mark_0c2
;;

let block_mark_of_atom_zerotied_cation_plusthree_mark mark_0c3 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_atom_zerotied_cation_plusthree_symbol mark_0c3
;;

let block_mark_of_atom_zerotied_raregas_mark mark_a0r = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_atom_zerotied_raregas_symbol mark_a0r
;;

let block_mark_of_atom_zerotied_halfbridge_mark mark_a0h = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_atom_zerotied_halfbridge_symbol mark_a0h
;;

let block_mark_of_block_none_none_ax1_mark mark_nna = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax1_symbol mark_nna
;;

let block_mark_of_block_none_none_ax1en_diatomic_mark mark_nad = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax1en_diatomic_symbol mark_nad
;;

let block_mark_of_block_none_none_ax2_mark mark_nna = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax2_symbol mark_nna
;;

let block_mark_of_block_none_none_ax2e0_linear_mark mark_nal = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax2e0_linear_symbol mark_nal
;;

let block_mark_of_block_none_none_ax2e1_bent_mark mark_nab = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax2e1_bent_symbol mark_nab
;;

let block_mark_of_block_none_none_ax2e2_bent_mark mark_nab = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax2e2_bent_symbol mark_nab
;;

let block_mark_of_block_none_none_ax3_mark mark_nna = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax3_symbol mark_nna
;;

let block_mark_of_block_none_none_ax3e0_trigonalplanar_mark mark_nat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol mark_nat
;;

let block_mark_of_block_none_none_ax3e1_trigonalpyramidal_mark mark_nat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol mark_nat
;;

let block_mark_of_block_none_none_ax4_mark mark_nna = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax4_symbol mark_nna
;;

let block_mark_of_block_none_none_ax4e1_tetrahedral_mark mark_nat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_none_ax4e1_tetrahedral_symbol mark_nat
;;

let block_mark_of_block_zerotied_onetied_mark mark_b01 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_zerotied_onetied_symbol mark_b01
;;

let block_mark_of_block_none_single_mark mark_bns = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_single_symbol mark_bns
;;

let block_mark_of_block_none_single_ax1_mark mark_nsa = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_single_ax1_symbol mark_nsa
;;

let block_mark_of_block_none_single_ax1en_diatomic_mark mark_sad = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_single_ax1en_diatomic_symbol mark_sad
;;

let block_mark_of_block_none_single_ax3_mark mark_nsa = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_single_ax3_symbol mark_nsa
;;

let block_mark_of_block_none_single_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol mark_sat
;;

let block_mark_of_block_none_single_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let block_mark_of_block_none_single_ax4_mark mark_nsa = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_single_ax4_symbol mark_nsa
;;

let block_mark_of_block_none_single_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_single_ax4e1_tetrahedral_symbol mark_sat
;;

let block_mark_of_block_none_conjugated_mark mark_bnc = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_conjugated_symbol mark_bnc
;;

let block_mark_of_block_none_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;

let block_mark_of_block_none_double_mark mark_bnd = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_double_symbol mark_bnd
;;

let block_mark_of_block_none_double_ax3e0_trigonalplanar_mark mark_dat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol mark_dat
;;

let block_mark_of_block_none_triple_mark mark_bnt = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_triple_symbol mark_bnt
;;

let block_mark_of_block_none_triple_ax2_mark mark_nta = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_triple_ax2_symbol mark_nta
;;

let block_mark_of_block_none_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_none_triple_ax2e0_linear_symbol mark_tal
;;

let block_mark_of_block_onetied_mark mark_bl1 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_onetied_symbol mark_bl1
;;

let block_mark_of_block_onetied_onetied_mark mark_b11 = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_onetied_onetied_symbol mark_b11
;;

let block_mark_of_block_single_single_mark mark_bss = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_symbol mark_bss
;;

let block_mark_of_block_single_single_ax2_mark mark_ssa = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax2_symbol mark_ssa
;;

let block_mark_of_block_single_single_ax2e0_bent_mark mark_sab = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax2e0_bent_symbol mark_sab
;;

let block_mark_of_block_single_single_ax2e2_bent_mark mark_sab = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax2e2_bent_symbol mark_sab
;;

let block_mark_of_block_single_single_ax2e3_linear_mark mark_sal = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax2e3_linear_symbol mark_sal
;;

let block_mark_of_block_single_single_ax3_mark mark_ssa = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax3_symbol mark_ssa
;;

let block_mark_of_block_single_single_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol mark_sat
;;

let block_mark_of_block_single_single_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let block_mark_of_block_single_single_ax3e2_tshaped_mark mark_sat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax3e2_tshaped_symbol mark_sat
;;

let block_mark_of_block_single_single_ax4_mark mark_ssa = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax4_symbol mark_ssa
;;

let block_mark_of_block_single_single_ax4e0_tetrahedral_mark mark_sat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax4e0_tetrahedral_symbol mark_sat
;;

let block_mark_of_block_single_single_ax4e1_seesaw_mark mark_sas = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_single_ax4e1_seesaw_symbol mark_sas
;;

let block_mark_of_block_single_conjugated_mark mark_bsc = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_conjugated_symbol mark_bsc
;;

let block_mark_of_block_single_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;

let block_mark_of_block_single_double_mark mark_bsd = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_double_symbol mark_bsd
;;

let block_mark_of_block_single_double_ax3_mark mark_sda = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_double_ax3_symbol mark_sda
;;

let block_mark_of_block_single_double_ax3e0_trigonalplanar_mark mark_dat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol mark_dat
;;

let block_mark_of_block_single_triple_mark mark_bst = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_triple_symbol mark_bst
;;

let block_mark_of_block_single_triple_ax2_mark mark_sta = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_triple_ax2_symbol mark_sta
;;

let block_mark_of_block_single_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_triple_ax2e0_linear_symbol mark_tal
;;

let block_mark_of_block_onetied_forktied_mark mark_b1f = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_onetied_forktied_symbol mark_b1f
;;

let block_mark_of_block_onetied_biforktied_mark mark_b1b = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_onetied_biforktied_symbol mark_b1b
;;

let block_mark_of_block_single_singlesingle_mark mark_bss = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_singlesingle_symbol mark_bss
;;

let block_mark_of_block_single_singlesingle_ax3_mark mark_ssa = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_singlesingle_ax3_symbol mark_ssa
;;

let block_mark_of_block_single_singlesingle_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let block_mark_of_block_single_singledouble_mark mark_bss = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_singledouble_symbol mark_bss
;;

let block_mark_of_block_single_singledouble_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol mark_sat
;;

let block_mark_of_block_onetied_triforktied_mark mark_b1t = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_onetied_triforktied_symbol mark_b1t
;;

let block_mark_of_block_single_singlesinglesingle_mark mark_bss = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_singlesinglesingle_symbol mark_bss
;;

let block_mark_of_block_single_singlesinglesingle_ax4_mark mark_ssa = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_singlesinglesingle_ax4_symbol mark_ssa
;;

let block_mark_of_block_single_singlesinglesingle_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Block_symbol_v.block_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol mark_sat
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_blk soi_blk =
  Mark_v.make sym_blk soi_blk
;;


(** {6 Extracting} *)


let block_zerotied_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_zerotied_symbol_off_block_symbol mark_blk
;;

let block_zerotied_zerotied_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_zerotied_zerotied_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax0_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax0_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax0e0_monoatomic_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_block_symbol mark_blk
;;

let atom_zerotied_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.atom_zerotied_symbol_off_block_symbol mark_blk
;;

let atom_zerotied_anion_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.atom_zerotied_anion_symbol_off_block_symbol mark_blk
;;

let atom_zerotied_anion_minusone_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.atom_zerotied_anion_minusone_symbol_off_block_symbol mark_blk
;;

let atom_zerotied_anion_minustwo_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.atom_zerotied_anion_minustwo_symbol_off_block_symbol mark_blk
;;

let atom_zerotied_cation_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.atom_zerotied_cation_symbol_off_block_symbol mark_blk
;;

let atom_zerotied_cation_plusone_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.atom_zerotied_cation_plusone_symbol_off_block_symbol mark_blk
;;

let atom_zerotied_cation_plustwo_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.atom_zerotied_cation_plustwo_symbol_off_block_symbol mark_blk
;;

let atom_zerotied_cation_plusthree_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.atom_zerotied_cation_plusthree_symbol_off_block_symbol mark_blk
;;

let atom_zerotied_raregas_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.atom_zerotied_raregas_symbol_off_block_symbol mark_blk
;;

let atom_zerotied_halfbridge_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.atom_zerotied_halfbridge_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax1_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax1_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax1en_diatomic_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax1en_diatomic_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax2_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax2_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax2e0_linear_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax2e0_linear_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax2e1_bent_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax2e1_bent_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax2e2_bent_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax2e2_bent_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax3_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax3_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax3e0_trigonalplanar_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax3e1_trigonalpyramidal_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax4_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax4_symbol_off_block_symbol mark_blk
;;

let block_none_none_ax4e1_tetrahedral_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_none_ax4e1_tetrahedral_symbol_off_block_symbol mark_blk
;;

let block_zerotied_onetied_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_zerotied_onetied_symbol_off_block_symbol mark_blk
;;

let block_none_single_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_single_symbol_off_block_symbol mark_blk
;;

let block_none_single_ax1_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_single_ax1_symbol_off_block_symbol mark_blk
;;

let block_none_single_ax1en_diatomic_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_single_ax1en_diatomic_symbol_off_block_symbol mark_blk
;;

let block_none_single_ax3_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_single_ax3_symbol_off_block_symbol mark_blk
;;

let block_none_single_ax3e0_trigonalplanar_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let block_none_single_ax3e1_trigonalpyramidal_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol mark_blk
;;

let block_none_single_ax4_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_single_ax4_symbol_off_block_symbol mark_blk
;;

let block_none_single_ax4e1_tetrahedral_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_block_symbol mark_blk
;;

let block_none_conjugated_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_conjugated_symbol_off_block_symbol mark_blk
;;

let block_none_conjugated_ax3e0_trigonalplanar_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let block_none_double_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_double_symbol_off_block_symbol mark_blk
;;

let block_none_double_ax3e0_trigonalplanar_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let block_none_triple_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_triple_symbol_off_block_symbol mark_blk
;;

let block_none_triple_ax2_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_triple_ax2_symbol_off_block_symbol mark_blk
;;

let block_none_triple_ax2e0_linear_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_none_triple_ax2e0_linear_symbol_off_block_symbol mark_blk
;;

let block_onetied_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_onetied_symbol_off_block_symbol mark_blk
;;

let block_onetied_onetied_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_onetied_onetied_symbol_off_block_symbol mark_blk
;;

let block_single_single_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax2_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax2_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax2e0_bent_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax2e0_bent_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax2e2_bent_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax2e2_bent_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax2e3_linear_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax2e3_linear_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax3_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax3_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax3e0_trigonalplanar_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax3e1_trigonalpyramidal_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax3e2_tshaped_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax4_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax4_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax4e0_tetrahedral_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_block_symbol mark_blk
;;

let block_single_single_ax4e1_seesaw_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_block_symbol mark_blk
;;

let block_single_conjugated_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_conjugated_symbol_off_block_symbol mark_blk
;;

let block_single_conjugated_ax3e0_trigonalplanar_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let block_single_double_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_double_symbol_off_block_symbol mark_blk
;;

let block_single_double_ax3_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_double_ax3_symbol_off_block_symbol mark_blk
;;

let block_single_double_ax3e0_trigonalplanar_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let block_single_triple_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_triple_symbol_off_block_symbol mark_blk
;;

let block_single_triple_ax2_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_triple_ax2_symbol_off_block_symbol mark_blk
;;

let block_single_triple_ax2e0_linear_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_triple_ax2e0_linear_symbol_off_block_symbol mark_blk
;;

let block_onetied_forktied_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_onetied_forktied_symbol_off_block_symbol mark_blk
;;

let block_onetied_biforktied_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_onetied_biforktied_symbol_off_block_symbol mark_blk
;;

let block_single_singlesingle_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_singlesingle_symbol_off_block_symbol mark_blk
;;

let block_single_singlesingle_ax3_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_singlesingle_ax3_symbol_off_block_symbol mark_blk
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_symbol mark_blk
;;

let block_single_singledouble_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_singledouble_symbol_off_block_symbol mark_blk
;;

let block_single_singledouble_ax3e0_trigonalplanar_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let block_onetied_triforktied_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_onetied_triforktied_symbol_off_block_symbol mark_blk
;;

let block_single_singlesinglesingle_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_singlesinglesingle_symbol_off_block_symbol mark_blk
;;

let block_single_singlesinglesingle_ax4_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_block_symbol mark_blk
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_mark_off_block_mark mark_blk = 
  Mark_v.map_left Block_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_symbol mark_blk
;;


(** {6 Querying} *)


let is_block_zerotied_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_zerotied_symbol_off_block_symbol mark_blk
;;

let is_block_zerotied_zerotied_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_zerotied_zerotied_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax0_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax0_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax0e0_monoatomic_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_block_symbol mark_blk
;;

let is_atom_zerotied_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_atom_zerotied_symbol_off_block_symbol mark_blk
;;

let is_atom_zerotied_anion_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_atom_zerotied_anion_symbol_off_block_symbol mark_blk
;;

let is_atom_zerotied_anion_minusone_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_block_symbol mark_blk
;;

let is_atom_zerotied_anion_minustwo_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_block_symbol mark_blk
;;

let is_atom_zerotied_cation_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_atom_zerotied_cation_symbol_off_block_symbol mark_blk
;;

let is_atom_zerotied_cation_plusone_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_block_symbol mark_blk
;;

let is_atom_zerotied_cation_plustwo_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_block_symbol mark_blk
;;

let is_atom_zerotied_cation_plusthree_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_block_symbol mark_blk
;;

let is_atom_zerotied_raregas_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_atom_zerotied_raregas_symbol_off_block_symbol mark_blk
;;

let is_atom_zerotied_halfbridge_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_atom_zerotied_halfbridge_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax1_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax1_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax1en_diatomic_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax2_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax2_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax2e0_linear_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax2e1_bent_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax2e2_bent_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax3_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax3_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax3e0_trigonalplanar_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax3e1_trigonalpyramidal_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax4_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax4_symbol_off_block_symbol mark_blk
;;

let is_block_none_none_ax4e1_tetrahedral_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_none_ax4e1_tetrahedral_symbol_off_block_symbol mark_blk
;;

let is_block_zerotied_onetied_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_zerotied_onetied_symbol_off_block_symbol mark_blk
;;

let is_block_none_single_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_single_symbol_off_block_symbol mark_blk
;;

let is_block_none_single_ax1_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_single_ax1_symbol_off_block_symbol mark_blk
;;

let is_block_none_single_ax1en_diatomic_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_block_symbol mark_blk
;;

let is_block_none_single_ax3_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_single_ax3_symbol_off_block_symbol mark_blk
;;

let is_block_none_single_ax3e0_trigonalplanar_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let is_block_none_single_ax3e1_trigonalpyramidal_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol mark_blk
;;

let is_block_none_single_ax4_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_single_ax4_symbol_off_block_symbol mark_blk
;;

let is_block_none_single_ax4e1_tetrahedral_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_block_symbol mark_blk
;;

let is_block_none_conjugated_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_conjugated_symbol_off_block_symbol mark_blk
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let is_block_none_double_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_double_symbol_off_block_symbol mark_blk
;;

let is_block_none_double_ax3e0_trigonalplanar_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let is_block_none_triple_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_triple_symbol_off_block_symbol mark_blk
;;

let is_block_none_triple_ax2_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_triple_ax2_symbol_off_block_symbol mark_blk
;;

let is_block_none_triple_ax2e0_linear_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_block_symbol mark_blk
;;

let is_block_onetied_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_onetied_symbol_off_block_symbol mark_blk
;;

let is_block_onetied_onetied_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_onetied_onetied_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax2_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax2_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax2e0_bent_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax2e2_bent_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax2e3_linear_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax3_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax3_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax3e0_trigonalplanar_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax3e1_trigonalpyramidal_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax3e2_tshaped_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax4_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax4_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax4e0_tetrahedral_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_block_symbol mark_blk
;;

let is_block_single_single_ax4e1_seesaw_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_block_symbol mark_blk
;;

let is_block_single_conjugated_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_conjugated_symbol_off_block_symbol mark_blk
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let is_block_single_double_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_double_symbol_off_block_symbol mark_blk
;;

let is_block_single_double_ax3_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_double_ax3_symbol_off_block_symbol mark_blk
;;

let is_block_single_double_ax3e0_trigonalplanar_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let is_block_single_triple_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_triple_symbol_off_block_symbol mark_blk
;;

let is_block_single_triple_ax2_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_triple_ax2_symbol_off_block_symbol mark_blk
;;

let is_block_single_triple_ax2e0_linear_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_block_symbol mark_blk
;;

let is_block_onetied_forktied_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_onetied_forktied_symbol_off_block_symbol mark_blk
;;

let is_block_onetied_biforktied_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_onetied_biforktied_symbol_off_block_symbol mark_blk
;;

let is_block_single_singlesingle_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_singlesingle_symbol_off_block_symbol mark_blk
;;

let is_block_single_singlesingle_ax3_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_singlesingle_ax3_symbol_off_block_symbol mark_blk
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_symbol mark_blk
;;

let is_block_single_singledouble_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_singledouble_symbol_off_block_symbol mark_blk
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_symbol mark_blk
;;

let is_block_onetied_triforktied_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_onetied_triforktied_symbol_off_block_symbol mark_blk
;;

let is_block_single_singlesinglesingle_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_singlesinglesingle_symbol_off_block_symbol mark_blk
;;

let is_block_single_singlesinglesingle_ax4_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_block_symbol mark_blk
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_mark_off_block_mark mark_blk =
  Mark_v.map_left Block_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_symbol mark_blk
;;


(** created by ./generator block implementation mark at 15:11 13 Mar 2012. *)



