(** {3 The functionalities for a Mark for a Segment.} *)

let nam_cod = "segment_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_set =
  Mark_v.name Segment_symbol_v.name mark_set
;;


(** {6 Upgrading} *)


let segment_mark_of_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_segment_head_symbol mark_seh
;;

let segment_mark_of_block_zerotied_onetied_mark mark_b01 = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_zerotied_onetied_symbol mark_b01
;;

let segment_mark_of_block_none_single_mark mark_bns = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_single_symbol mark_bns
;;

let segment_mark_of_block_none_single_ax1_mark mark_nsa = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_single_ax1_symbol mark_nsa
;;

let segment_mark_of_block_none_single_ax1en_diatomic_mark mark_sad = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_single_ax1en_diatomic_symbol mark_sad
;;

let segment_mark_of_block_none_single_ax3_mark mark_nsa = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_single_ax3_symbol mark_nsa
;;

let segment_mark_of_block_none_single_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol mark_sat
;;

let segment_mark_of_block_none_single_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let segment_mark_of_block_none_single_ax4_mark mark_nsa = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_single_ax4_symbol mark_nsa
;;

let segment_mark_of_block_none_single_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_single_ax4e1_tetrahedral_symbol mark_sat
;;

let segment_mark_of_block_none_conjugated_mark mark_bnc = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_conjugated_symbol mark_bnc
;;

let segment_mark_of_block_none_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;

let segment_mark_of_block_none_double_mark mark_bnd = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_double_symbol mark_bnd
;;

let segment_mark_of_block_none_double_ax3e0_trigonalplanar_mark mark_dat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol mark_dat
;;

let segment_mark_of_block_none_triple_mark mark_bnt = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_triple_symbol mark_bnt
;;

let segment_mark_of_block_none_triple_ax2_mark mark_nta = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_triple_ax2_symbol mark_nta
;;

let segment_mark_of_block_none_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_none_triple_ax2e0_linear_symbol mark_tal
;;

let segment_mark_of_segment_zerotied_onetied_mark mark_s01 = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_segment_zerotied_onetied_symbol mark_s01
;;

let segment_mark_of_segment_buried_mark mark_seb = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_segment_buried_symbol mark_seb
;;

let segment_mark_of_block_onetied_onetied_mark mark_b11 = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_onetied_onetied_symbol mark_b11
;;

let segment_mark_of_block_single_single_mark mark_bss = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_symbol mark_bss
;;

let segment_mark_of_block_single_single_ax2_mark mark_ssa = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax2_symbol mark_ssa
;;

let segment_mark_of_block_single_single_ax2e0_bent_mark mark_sab = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax2e0_bent_symbol mark_sab
;;

let segment_mark_of_block_single_single_ax2e2_bent_mark mark_sab = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax2e2_bent_symbol mark_sab
;;

let segment_mark_of_block_single_single_ax2e3_linear_mark mark_sal = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax2e3_linear_symbol mark_sal
;;

let segment_mark_of_block_single_single_ax3_mark mark_ssa = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax3_symbol mark_ssa
;;

let segment_mark_of_block_single_single_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol mark_sat
;;

let segment_mark_of_block_single_single_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let segment_mark_of_block_single_single_ax3e2_tshaped_mark mark_sat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax3e2_tshaped_symbol mark_sat
;;

let segment_mark_of_block_single_single_ax4_mark mark_ssa = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax4_symbol mark_ssa
;;

let segment_mark_of_block_single_single_ax4e0_tetrahedral_mark mark_sat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax4e0_tetrahedral_symbol mark_sat
;;

let segment_mark_of_block_single_single_ax4e1_seesaw_mark mark_sas = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_single_ax4e1_seesaw_symbol mark_sas
;;

let segment_mark_of_block_single_conjugated_mark mark_bsc = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_conjugated_symbol mark_bsc
;;

let segment_mark_of_block_single_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;

let segment_mark_of_block_single_double_mark mark_bsd = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_double_symbol mark_bsd
;;

let segment_mark_of_block_single_double_ax3_mark mark_sda = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_double_ax3_symbol mark_sda
;;

let segment_mark_of_block_single_double_ax3e0_trigonalplanar_mark mark_dat = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol mark_dat
;;

let segment_mark_of_block_single_triple_mark mark_bst = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_triple_symbol mark_bst
;;

let segment_mark_of_block_single_triple_ax2_mark mark_sta = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_triple_ax2_symbol mark_sta
;;

let segment_mark_of_block_single_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_block_single_triple_ax2e0_linear_symbol mark_tal
;;

let segment_mark_of_segment_onetied_onetied_mark mark_s11 = 
  Mark_v.map_left Segment_symbol_v.segment_symbol_of_segment_onetied_onetied_symbol mark_s11
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_set soi_set =
  Mark_v.make sym_set soi_set
;;


(** {6 Extracting} *)


let segment_head_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.segment_head_symbol_off_segment_symbol mark_set
;;

let block_zerotied_onetied_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_zerotied_onetied_symbol_off_segment_symbol mark_set
;;

let block_none_single_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_single_symbol_off_segment_symbol mark_set
;;

let block_none_single_ax1_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_single_ax1_symbol_off_segment_symbol mark_set
;;

let block_none_single_ax1en_diatomic_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_single_ax1en_diatomic_symbol_off_segment_symbol mark_set
;;

let block_none_single_ax3_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_single_ax3_symbol_off_segment_symbol mark_set
;;

let block_none_single_ax3e0_trigonalplanar_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let block_none_single_ax3e1_trigonalpyramidal_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol mark_set
;;

let block_none_single_ax4_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_single_ax4_symbol_off_segment_symbol mark_set
;;

let block_none_single_ax4e1_tetrahedral_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_segment_symbol mark_set
;;

let block_none_conjugated_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_conjugated_symbol_off_segment_symbol mark_set
;;

let block_none_conjugated_ax3e0_trigonalplanar_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let block_none_double_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_double_symbol_off_segment_symbol mark_set
;;

let block_none_double_ax3e0_trigonalplanar_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let block_none_triple_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_triple_symbol_off_segment_symbol mark_set
;;

let block_none_triple_ax2_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_triple_ax2_symbol_off_segment_symbol mark_set
;;

let block_none_triple_ax2e0_linear_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_none_triple_ax2e0_linear_symbol_off_segment_symbol mark_set
;;

let segment_zerotied_onetied_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.segment_zerotied_onetied_symbol_off_segment_symbol mark_set
;;

let segment_buried_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.segment_buried_symbol_off_segment_symbol mark_set
;;

let block_onetied_onetied_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_onetied_onetied_symbol_off_segment_symbol mark_set
;;

let block_single_single_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax2_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax2_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax2e0_bent_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax2e0_bent_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax2e2_bent_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax2e2_bent_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax2e3_linear_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax2e3_linear_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax3_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax3_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax3e0_trigonalplanar_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax3e1_trigonalpyramidal_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax3e2_tshaped_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax3e2_tshaped_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax4_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax4_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax4e0_tetrahedral_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_segment_symbol mark_set
;;

let block_single_single_ax4e1_seesaw_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_segment_symbol mark_set
;;

let block_single_conjugated_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_conjugated_symbol_off_segment_symbol mark_set
;;

let block_single_conjugated_ax3e0_trigonalplanar_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let block_single_double_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_double_symbol_off_segment_symbol mark_set
;;

let block_single_double_ax3_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_double_ax3_symbol_off_segment_symbol mark_set
;;

let block_single_double_ax3e0_trigonalplanar_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let block_single_triple_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_triple_symbol_off_segment_symbol mark_set
;;

let block_single_triple_ax2_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_triple_ax2_symbol_off_segment_symbol mark_set
;;

let block_single_triple_ax2e0_linear_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.block_single_triple_ax2e0_linear_symbol_off_segment_symbol mark_set
;;

let segment_onetied_onetied_mark_off_segment_mark mark_set = 
  Mark_v.map_left Segment_symbol_v.segment_onetied_onetied_symbol_off_segment_symbol mark_set
;;


(** {6 Querying} *)


let is_segment_head_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_segment_head_symbol_off_segment_symbol mark_set
;;

let is_block_zerotied_onetied_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_zerotied_onetied_symbol_off_segment_symbol mark_set
;;

let is_block_none_single_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_single_symbol_off_segment_symbol mark_set
;;

let is_block_none_single_ax1_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_single_ax1_symbol_off_segment_symbol mark_set
;;

let is_block_none_single_ax1en_diatomic_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_segment_symbol mark_set
;;

let is_block_none_single_ax3_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_single_ax3_symbol_off_segment_symbol mark_set
;;

let is_block_none_single_ax3e0_trigonalplanar_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let is_block_none_single_ax3e1_trigonalpyramidal_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol mark_set
;;

let is_block_none_single_ax4_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_single_ax4_symbol_off_segment_symbol mark_set
;;

let is_block_none_single_ax4e1_tetrahedral_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_segment_symbol mark_set
;;

let is_block_none_conjugated_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_conjugated_symbol_off_segment_symbol mark_set
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let is_block_none_double_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_double_symbol_off_segment_symbol mark_set
;;

let is_block_none_double_ax3e0_trigonalplanar_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let is_block_none_triple_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_triple_symbol_off_segment_symbol mark_set
;;

let is_block_none_triple_ax2_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_triple_ax2_symbol_off_segment_symbol mark_set
;;

let is_block_none_triple_ax2e0_linear_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_segment_symbol mark_set
;;

let is_segment_zerotied_onetied_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_segment_zerotied_onetied_symbol_off_segment_symbol mark_set
;;

let is_segment_buried_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_segment_buried_symbol_off_segment_symbol mark_set
;;

let is_block_onetied_onetied_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_onetied_onetied_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax2_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax2_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax2e0_bent_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax2e2_bent_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax2e3_linear_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax3_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax3_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax3e0_trigonalplanar_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax3e1_trigonalpyramidal_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax3e2_tshaped_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax3e2_tshaped_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax4_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax4_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax4e0_tetrahedral_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_segment_symbol mark_set
;;

let is_block_single_single_ax4e1_seesaw_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_segment_symbol mark_set
;;

let is_block_single_conjugated_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_conjugated_symbol_off_segment_symbol mark_set
;;

let is_block_single_conjugated_ax3e0_trigonalplanar_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let is_block_single_double_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_double_symbol_off_segment_symbol mark_set
;;

let is_block_single_double_ax3_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_double_ax3_symbol_off_segment_symbol mark_set
;;

let is_block_single_double_ax3e0_trigonalplanar_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_segment_symbol mark_set
;;

let is_block_single_triple_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_triple_symbol_off_segment_symbol mark_set
;;

let is_block_single_triple_ax2_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_triple_ax2_symbol_off_segment_symbol mark_set
;;

let is_block_single_triple_ax2e0_linear_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_segment_symbol mark_set
;;

let is_segment_onetied_onetied_mark_off_segment_mark mark_set =
  Mark_v.map_left Segment_symbol_v.is_segment_onetied_onetied_symbol_off_segment_symbol mark_set
;;


(** created by ./generator segment implementation mark at 15:12 13 Mar 2012. *)



