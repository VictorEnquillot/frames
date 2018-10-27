(** {3 The functionalities for a Mark for a Block_none_single.} *)

let nam_cod = "block_none_single_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_bns =
  Mark_v.name Block_none_single_symbol_v.name mark_bns
;;


(** {6 Upgrading} *)


let block_none_single_mark_of_block_none_single_ax1_mark mark_nsa = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax1_symbol mark_nsa
;;

let block_none_single_mark_of_block_none_single_ax1en_diatomic_mark mark_sad = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax1en_diatomic_symbol mark_sad
;;

let block_none_single_mark_of_block_none_single_ax3_mark mark_nsa = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax3_symbol mark_nsa
;;

let block_none_single_mark_of_block_none_single_ax3e0_trigonalplanar_mark mark_sat = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol mark_sat
;;

let block_none_single_mark_of_block_none_single_ax3e1_trigonalpyramidal_mark mark_sat = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol mark_sat
;;

let block_none_single_mark_of_block_none_single_ax4_mark mark_nsa = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax4_symbol mark_nsa
;;

let block_none_single_mark_of_block_none_single_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_symbol_of_block_none_single_ax4e1_tetrahedral_symbol mark_sat
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_bns soi_bns =
  Mark_v.make sym_bns soi_bns
;;


(** {6 Extracting} *)


let block_none_single_ax1_mark_off_block_none_single_mark mark_bns = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_ax1_symbol_off_block_none_single_symbol mark_bns
;;

let block_none_single_ax1en_diatomic_mark_off_block_none_single_mark mark_bns = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_ax1en_diatomic_symbol_off_block_none_single_symbol mark_bns
;;

let block_none_single_ax3_mark_off_block_none_single_mark mark_bns = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_ax3_symbol_off_block_none_single_symbol mark_bns
;;

let block_none_single_ax3e0_trigonalplanar_mark_off_block_none_single_mark mark_bns = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_symbol mark_bns
;;

let block_none_single_ax3e1_trigonalpyramidal_mark_off_block_none_single_mark mark_bns = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_symbol mark_bns
;;

let block_none_single_ax4_mark_off_block_none_single_mark mark_bns = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_ax4_symbol_off_block_none_single_symbol mark_bns
;;

let block_none_single_ax4e1_tetrahedral_mark_off_block_none_single_mark mark_bns = 
  Mark_v.map_left Block_none_single_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_symbol mark_bns
;;


(** {6 Querying} *)


let is_block_none_single_ax1_mark_off_block_none_single_mark mark_bns =
  Mark_v.map_left Block_none_single_symbol_v.is_block_none_single_ax1_symbol_off_block_none_single_symbol mark_bns
;;

let is_block_none_single_ax1en_diatomic_mark_off_block_none_single_mark mark_bns =
  Mark_v.map_left Block_none_single_symbol_v.is_block_none_single_ax1en_diatomic_symbol_off_block_none_single_symbol mark_bns
;;

let is_block_none_single_ax3_mark_off_block_none_single_mark mark_bns =
  Mark_v.map_left Block_none_single_symbol_v.is_block_none_single_ax3_symbol_off_block_none_single_symbol mark_bns
;;

let is_block_none_single_ax3e0_trigonalplanar_mark_off_block_none_single_mark mark_bns =
  Mark_v.map_left Block_none_single_symbol_v.is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_symbol mark_bns
;;

let is_block_none_single_ax3e1_trigonalpyramidal_mark_off_block_none_single_mark mark_bns =
  Mark_v.map_left Block_none_single_symbol_v.is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_symbol mark_bns
;;

let is_block_none_single_ax4_mark_off_block_none_single_mark mark_bns =
  Mark_v.map_left Block_none_single_symbol_v.is_block_none_single_ax4_symbol_off_block_none_single_symbol mark_bns
;;

let is_block_none_single_ax4e1_tetrahedral_mark_off_block_none_single_mark mark_bns =
  Mark_v.map_left Block_none_single_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_symbol mark_bns
;;


(** created by ./generator block_none_single implementation mark at 15:12 13 Mar 2012. *)



