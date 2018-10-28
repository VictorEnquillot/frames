(** {3 The functionalities for a Mark for a Segment_head.} *)

let nam_cod = "segment_head_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_seh =
  Mark_v.name Segment_head_symbol_v.name mark_seh
;;


(** {6 Upgrading} *)


let segment_head_mark_of_block_zerotied_onetied_mark mark_b01 = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_zerotied_onetied_symbol mark_b01
;;

let segment_head_mark_of_block_none_single_mark mark_bns = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_single_symbol mark_bns
;;

let segment_head_mark_of_block_none_single_ax1_mark mark_nsa = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax1_symbol mark_nsa
;;

let segment_head_mark_of_block_none_single_ax1en_diatomic_mark mark_sad = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax1en_diatomic_symbol mark_sad
;;

let segment_head_mark_of_block_none_single_ax3_mark mark_nsa = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax3_symbol mark_nsa
;;

let segment_head_mark_of_block_none_single_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol mark_sat
;;

let segment_head_mark_of_block_none_single_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let segment_head_mark_of_block_none_single_ax4_mark mark_nsa = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax4_symbol mark_nsa
;;

let segment_head_mark_of_block_none_single_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_single_ax4e1_tetrahedral_symbol mark_sat
;;

let segment_head_mark_of_block_none_conjugated_mark mark_bnc = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_conjugated_symbol mark_bnc
;;

let segment_head_mark_of_block_none_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;

let segment_head_mark_of_block_none_double_mark mark_bnd = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_double_symbol mark_bnd
;;

let segment_head_mark_of_block_none_double_ax3e0_trigonalplanar_mark mark_dat = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol mark_dat
;;

let segment_head_mark_of_block_none_triple_mark mark_bnt = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_triple_symbol mark_bnt
;;

let segment_head_mark_of_block_none_triple_ax2_mark mark_nta = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_triple_ax2_symbol mark_nta
;;

let segment_head_mark_of_block_none_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_block_none_triple_ax2e0_linear_symbol mark_tal
;;

let segment_head_mark_of_segment_zerotied_onetied_mark mark_s01 = 
  Mark_v.map_left Segment_head_symbol_v.segment_head_symbol_of_segment_zerotied_onetied_symbol mark_s01
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_seh soi_seh =
  Mark_v.make sym_seh soi_seh
;;


(** {6 Extracting} *)


let block_zerotied_onetied_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_zerotied_onetied_symbol_off_segment_head_symbol mark_seh
;;

let block_none_single_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_single_symbol_off_segment_head_symbol mark_seh
;;

let block_none_single_ax1_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_single_ax1_symbol_off_segment_head_symbol mark_seh
;;

let block_none_single_ax1en_diatomic_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_single_ax1en_diatomic_symbol_off_segment_head_symbol mark_seh
;;

let block_none_single_ax3_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_single_ax3_symbol_off_segment_head_symbol mark_seh
;;

let block_none_single_ax3e0_trigonalplanar_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_segment_head_symbol mark_seh
;;

let block_none_single_ax3e1_trigonalpyramidal_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_head_symbol mark_seh
;;

let block_none_single_ax4_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_single_ax4_symbol_off_segment_head_symbol mark_seh
;;

let block_none_single_ax4e1_tetrahedral_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_segment_head_symbol mark_seh
;;

let block_none_conjugated_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_conjugated_symbol_off_segment_head_symbol mark_seh
;;

let block_none_conjugated_ax3e0_trigonalplanar_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_head_symbol mark_seh
;;

let block_none_double_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_double_symbol_off_segment_head_symbol mark_seh
;;

let block_none_double_ax3e0_trigonalplanar_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_double_ax3e0_trigonalplanar_symbol_off_segment_head_symbol mark_seh
;;

let block_none_triple_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_triple_symbol_off_segment_head_symbol mark_seh
;;

let block_none_triple_ax2_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_triple_ax2_symbol_off_segment_head_symbol mark_seh
;;

let block_none_triple_ax2e0_linear_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.block_none_triple_ax2e0_linear_symbol_off_segment_head_symbol mark_seh
;;

let segment_zerotied_onetied_mark_off_segment_head_mark mark_seh = 
  Mark_v.map_left Segment_head_symbol_v.segment_zerotied_onetied_symbol_off_segment_head_symbol mark_seh
;;


(** {6 Querying} *)


let is_block_zerotied_onetied_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_zerotied_onetied_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_single_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_single_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_single_ax1_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_single_ax1_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_single_ax1en_diatomic_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_single_ax3_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_single_ax3_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_single_ax3e0_trigonalplanar_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_single_ax3e1_trigonalpyramidal_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_single_ax4_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_single_ax4_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_single_ax4e1_tetrahedral_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_conjugated_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_conjugated_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_conjugated_ax3e0_trigonalplanar_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_double_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_double_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_double_ax3e0_trigonalplanar_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_double_ax3e0_trigonalplanar_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_triple_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_triple_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_triple_ax2_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_triple_ax2_symbol_off_segment_head_symbol mark_seh
;;

let is_block_none_triple_ax2e0_linear_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_segment_head_symbol mark_seh
;;

let is_segment_zerotied_onetied_mark_off_segment_head_mark mark_seh =
  Mark_v.map_left Segment_head_symbol_v.is_segment_zerotied_onetied_symbol_off_segment_head_symbol mark_seh
;;


(** created by ./generator segment_head implementation mark at 15:12 13 Mar 2012. *)


