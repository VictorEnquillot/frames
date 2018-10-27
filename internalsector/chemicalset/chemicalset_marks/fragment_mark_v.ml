(** {3 The functionalities for a Mark for a Fragment.} *)

let nam_cod = "fragment_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_frt =
  Mark_v.name Fragment_symbol_v.name mark_frt
;;


(** {6 Upgrading} *)


let fragment_mark_of_fragment_closed_mark mark_frc = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_closed_symbol mark_frc
;;

let fragment_mark_of_block_zerotied_zerotied_mark mark_b00 = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_zerotied_zerotied_symbol mark_b00
;;

let fragment_mark_of_block_none_none_ax0_mark mark_nna = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax0_symbol mark_nna
;;

let fragment_mark_of_block_none_none_ax0e0_monoatomic_mark mark_nam = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax0e0_monoatomic_symbol mark_nam
;;

let fragment_mark_of_atom_zerotied_mark mark_at0 = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_atom_zerotied_symbol mark_at0
;;

let fragment_mark_of_atom_zerotied_anion_mark mark_a0a = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_atom_zerotied_anion_symbol mark_a0a
;;

let fragment_mark_of_atom_zerotied_anion_minusone_mark mark_0a1 = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_atom_zerotied_anion_minusone_symbol mark_0a1
;;

let fragment_mark_of_atom_zerotied_anion_minustwo_mark mark_0a2 = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_atom_zerotied_anion_minustwo_symbol mark_0a2
;;

let fragment_mark_of_atom_zerotied_cation_mark mark_a0c = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_symbol mark_a0c
;;

let fragment_mark_of_atom_zerotied_cation_plusone_mark mark_0c1 = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_plusone_symbol mark_0c1
;;

let fragment_mark_of_atom_zerotied_cation_plustwo_mark mark_0c2 = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_plustwo_symbol mark_0c2
;;

let fragment_mark_of_atom_zerotied_cation_plusthree_mark mark_0c3 = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_plusthree_symbol mark_0c3
;;

let fragment_mark_of_atom_zerotied_raregas_mark mark_a0r = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_atom_zerotied_raregas_symbol mark_a0r
;;

let fragment_mark_of_atom_zerotied_halfbridge_mark mark_a0h = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_atom_zerotied_halfbridge_symbol mark_a0h
;;

let fragment_mark_of_block_none_none_ax1_mark mark_nna = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax1_symbol mark_nna
;;

let fragment_mark_of_block_none_none_ax1en_diatomic_mark mark_nad = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax1en_diatomic_symbol mark_nad
;;

let fragment_mark_of_block_none_none_ax2_mark mark_nna = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax2_symbol mark_nna
;;

let fragment_mark_of_block_none_none_ax2e0_linear_mark mark_nal = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax2e0_linear_symbol mark_nal
;;

let fragment_mark_of_block_none_none_ax2e1_bent_mark mark_nab = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax2e1_bent_symbol mark_nab
;;

let fragment_mark_of_block_none_none_ax2e2_bent_mark mark_nab = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax2e2_bent_symbol mark_nab
;;

let fragment_mark_of_block_none_none_ax3_mark mark_nna = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax3_symbol mark_nna
;;

let fragment_mark_of_block_none_none_ax3e0_trigonalplanar_mark mark_nat = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol mark_nat
;;

let fragment_mark_of_block_none_none_ax3e1_trigonalpyramidal_mark mark_nat = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol mark_nat
;;

let fragment_mark_of_block_none_none_ax4_mark mark_nna = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax4_symbol mark_nna
;;

let fragment_mark_of_block_none_none_ax4e1_tetrahedral_mark mark_nat = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_none_none_ax4e1_tetrahedral_symbol mark_nat
;;

let fragment_mark_of_fragment_zerotied_zerotied_mark mark_f00 = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_zerotied_zerotied_symbol mark_f00
;;

let fragment_mark_of_fragment_head_mark mark_frh = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_head_symbol mark_frh
;;

let fragment_mark_of_fragment_head_forked_mark mark_fhf = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_head_forked_symbol mark_fhf
;;

let fragment_mark_of_fragment_head_biforked_mark mark_fhb = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_head_biforked_symbol mark_fhb
;;

let fragment_mark_of_fragment_head_triforked_mark mark_fht = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_head_triforked_symbol mark_fht
;;

let fragment_mark_of_fragment_head_halfbridged_mark mark_fhh = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_head_halfbridged_symbol mark_fhh
;;

let fragment_mark_of_fragment_buried_mark mark_frb = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_buried_symbol mark_frb
;;

let fragment_mark_of_block_onetied_forktied_mark mark_b1f = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_onetied_forktied_symbol mark_b1f
;;

let fragment_mark_of_block_onetied_biforktied_mark mark_b1b = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_onetied_biforktied_symbol mark_b1b
;;

let fragment_mark_of_block_single_singlesingle_mark mark_bss = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_single_singlesingle_symbol mark_bss
;;

let fragment_mark_of_block_single_singlesingle_ax3_mark mark_ssa = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_single_singlesingle_ax3_symbol mark_ssa
;;

let fragment_mark_of_block_single_singlesingle_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let fragment_mark_of_block_single_singledouble_mark mark_bss = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_single_singledouble_symbol mark_bss
;;

let fragment_mark_of_block_single_singledouble_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol mark_sat
;;

let fragment_mark_of_block_onetied_triforktied_mark mark_b1t = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_onetied_triforktied_symbol mark_b1t
;;

let fragment_mark_of_block_single_singlesinglesingle_mark mark_bss = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_single_singlesinglesingle_symbol mark_bss
;;

let fragment_mark_of_block_single_singlesinglesingle_ax4_mark mark_ssa = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_single_singlesinglesingle_ax4_symbol mark_ssa
;;

let fragment_mark_of_block_single_singlesinglesingle_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol mark_sat
;;

let fragment_mark_of_fragment_leaf_mark mark_frl = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_leaf_symbol mark_frl
;;

let fragment_mark_of_fragment_onetied_zerotied_mark mark_f10 = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_onetied_zerotied_symbol mark_f10
;;

let fragment_mark_of_fragment_leaf_halfbridgetailed_mark mark_flh = 
  Mark_v.map_left Fragment_symbol_v.fragment_symbol_of_fragment_leaf_halfbridgetailed_symbol mark_flh
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_frt soi_frt =
  Mark_v.make sym_frt soi_frt
;;


(** {6 Extracting} *)


let fragment_closed_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_closed_symbol_off_fragment_symbol mark_frt
;;

let block_zerotied_zerotied_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_zerotied_zerotied_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax0_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax0_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax0e0_monoatomic_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_fragment_symbol mark_frt
;;

let atom_zerotied_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.atom_zerotied_symbol_off_fragment_symbol mark_frt
;;

let atom_zerotied_anion_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.atom_zerotied_anion_symbol_off_fragment_symbol mark_frt
;;

let atom_zerotied_anion_minusone_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.atom_zerotied_anion_minusone_symbol_off_fragment_symbol mark_frt
;;

let atom_zerotied_anion_minustwo_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.atom_zerotied_anion_minustwo_symbol_off_fragment_symbol mark_frt
;;

let atom_zerotied_cation_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.atom_zerotied_cation_symbol_off_fragment_symbol mark_frt
;;

let atom_zerotied_cation_plusone_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.atom_zerotied_cation_plusone_symbol_off_fragment_symbol mark_frt
;;

let atom_zerotied_cation_plustwo_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.atom_zerotied_cation_plustwo_symbol_off_fragment_symbol mark_frt
;;

let atom_zerotied_cation_plusthree_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.atom_zerotied_cation_plusthree_symbol_off_fragment_symbol mark_frt
;;

let atom_zerotied_raregas_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.atom_zerotied_raregas_symbol_off_fragment_symbol mark_frt
;;

let atom_zerotied_halfbridge_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.atom_zerotied_halfbridge_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax1_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax1_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax1en_diatomic_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax1en_diatomic_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax2_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax2_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax2e0_linear_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax2e0_linear_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax2e1_bent_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax2e1_bent_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax2e2_bent_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax2e2_bent_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax3_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax3_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax3e0_trigonalplanar_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax3e1_trigonalpyramidal_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax4_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax4_symbol_off_fragment_symbol mark_frt
;;

let block_none_none_ax4e1_tetrahedral_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_none_none_ax4e1_tetrahedral_symbol_off_fragment_symbol mark_frt
;;

let fragment_zerotied_zerotied_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_zerotied_zerotied_symbol_off_fragment_symbol mark_frt
;;

let fragment_head_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_head_symbol_off_fragment_symbol mark_frt
;;

let fragment_head_forked_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_head_forked_symbol_off_fragment_symbol mark_frt
;;

let fragment_head_biforked_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_head_biforked_symbol_off_fragment_symbol mark_frt
;;

let fragment_head_triforked_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_head_triforked_symbol_off_fragment_symbol mark_frt
;;

let fragment_head_halfbridged_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_head_halfbridged_symbol_off_fragment_symbol mark_frt
;;

let fragment_buried_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_buried_symbol_off_fragment_symbol mark_frt
;;

let block_onetied_forktied_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_onetied_forktied_symbol_off_fragment_symbol mark_frt
;;

let block_onetied_biforktied_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_onetied_biforktied_symbol_off_fragment_symbol mark_frt
;;

let block_single_singlesingle_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_single_singlesingle_symbol_off_fragment_symbol mark_frt
;;

let block_single_singlesingle_ax3_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_single_singlesingle_ax3_symbol_off_fragment_symbol mark_frt
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol mark_frt
;;

let block_single_singledouble_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_single_singledouble_symbol_off_fragment_symbol mark_frt
;;

let block_single_singledouble_ax3e0_trigonalplanar_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_symbol mark_frt
;;

let block_onetied_triforktied_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_onetied_triforktied_symbol_off_fragment_symbol mark_frt
;;

let block_single_singlesinglesingle_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_single_singlesinglesingle_symbol_off_fragment_symbol mark_frt
;;

let block_single_singlesinglesingle_ax4_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_fragment_symbol mark_frt
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_symbol mark_frt
;;

let fragment_leaf_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_leaf_symbol_off_fragment_symbol mark_frt
;;

let fragment_onetied_zerotied_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_onetied_zerotied_symbol_off_fragment_symbol mark_frt
;;

let fragment_leaf_halfbridgetailed_mark_off_fragment_mark mark_frt = 
  Mark_v.map_left Fragment_symbol_v.fragment_leaf_halfbridgetailed_symbol_off_fragment_symbol mark_frt
;;


(** {6 Querying} *)


let is_fragment_closed_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_closed_symbol_off_fragment_symbol mark_frt
;;

let is_block_zerotied_zerotied_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_zerotied_zerotied_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax0_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax0_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax0e0_monoatomic_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_fragment_symbol mark_frt
;;

let is_atom_zerotied_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_atom_zerotied_symbol_off_fragment_symbol mark_frt
;;

let is_atom_zerotied_anion_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_atom_zerotied_anion_symbol_off_fragment_symbol mark_frt
;;

let is_atom_zerotied_anion_minusone_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_fragment_symbol mark_frt
;;

let is_atom_zerotied_anion_minustwo_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_fragment_symbol mark_frt
;;

let is_atom_zerotied_cation_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_atom_zerotied_cation_symbol_off_fragment_symbol mark_frt
;;

let is_atom_zerotied_cation_plusone_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_fragment_symbol mark_frt
;;

let is_atom_zerotied_cation_plustwo_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_fragment_symbol mark_frt
;;

let is_atom_zerotied_cation_plusthree_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_fragment_symbol mark_frt
;;

let is_atom_zerotied_raregas_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_atom_zerotied_raregas_symbol_off_fragment_symbol mark_frt
;;

let is_atom_zerotied_halfbridge_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_atom_zerotied_halfbridge_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax1_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax1_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax1en_diatomic_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax2_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax2_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax2e0_linear_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax2e1_bent_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax2e2_bent_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax3_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax3_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax3e0_trigonalplanar_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax3e1_trigonalpyramidal_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax4_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax4_symbol_off_fragment_symbol mark_frt
;;

let is_block_none_none_ax4e1_tetrahedral_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_none_none_ax4e1_tetrahedral_symbol_off_fragment_symbol mark_frt
;;

let is_fragment_zerotied_zerotied_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_zerotied_zerotied_symbol_off_fragment_symbol mark_frt
;;

let is_fragment_head_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_head_symbol_off_fragment_symbol mark_frt
;;

let is_fragment_head_forked_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_head_forked_symbol_off_fragment_symbol mark_frt
;;

let is_fragment_head_biforked_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_head_biforked_symbol_off_fragment_symbol mark_frt
;;

let is_fragment_head_triforked_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_head_triforked_symbol_off_fragment_symbol mark_frt
;;

let is_fragment_head_halfbridged_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_head_halfbridged_symbol_off_fragment_symbol mark_frt
;;

let is_fragment_buried_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_buried_symbol_off_fragment_symbol mark_frt
;;

let is_block_onetied_forktied_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_onetied_forktied_symbol_off_fragment_symbol mark_frt
;;

let is_block_onetied_biforktied_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_onetied_biforktied_symbol_off_fragment_symbol mark_frt
;;

let is_block_single_singlesingle_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_single_singlesingle_symbol_off_fragment_symbol mark_frt
;;

let is_block_single_singlesingle_ax3_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_single_singlesingle_ax3_symbol_off_fragment_symbol mark_frt
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_symbol mark_frt
;;

let is_block_single_singledouble_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_single_singledouble_symbol_off_fragment_symbol mark_frt
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_symbol mark_frt
;;

let is_block_onetied_triforktied_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_onetied_triforktied_symbol_off_fragment_symbol mark_frt
;;

let is_block_single_singlesinglesingle_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_single_singlesinglesingle_symbol_off_fragment_symbol mark_frt
;;

let is_block_single_singlesinglesingle_ax4_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_fragment_symbol mark_frt
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_symbol mark_frt
;;

let is_fragment_leaf_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_leaf_symbol_off_fragment_symbol mark_frt
;;

let is_fragment_onetied_zerotied_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_onetied_zerotied_symbol_off_fragment_symbol mark_frt
;;

let is_fragment_leaf_halfbridgetailed_mark_off_fragment_mark mark_frt =
  Mark_v.map_left Fragment_symbol_v.is_fragment_leaf_halfbridgetailed_symbol_off_fragment_symbol mark_frt
;;


(** created by ./generator fragment implementation mark at 15:12 13 Mar 2012. *)



