(** {3 The functionalities for a Mark for a Block_single_single_ax4.} *)

let nam_cod = "block_single_single_ax4_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_ssa =
  Mark_v.name Block_single_single_ax4_symbol_v.name mark_ssa
;;


(** {6 Upgrading} *)


let block_single_single_ax4_mark_of_block_single_single_ax4e0_tetrahedral_mark mark_sat = 
  Mark_v.map_left Block_single_single_ax4_symbol_v.block_single_single_ax4_symbol_of_block_single_single_ax4e0_tetrahedral_symbol mark_sat
;;

let block_single_single_ax4_mark_of_block_single_single_ax4e1_seesaw_mark mark_sas = 
  Mark_v.map_left Block_single_single_ax4_symbol_v.block_single_single_ax4_symbol_of_block_single_single_ax4e1_seesaw_symbol mark_sas
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_ssa soi_ssa =
  Mark_v.make sym_ssa soi_ssa
;;


(** {6 Extracting} *)


let block_single_single_ax4e0_tetrahedral_mark_off_block_single_single_ax4_mark mark_ssa = 
  Mark_v.map_left Block_single_single_ax4_symbol_v.block_single_single_ax4e0_tetrahedral_symbol_off_block_single_single_ax4_symbol mark_ssa
;;

let block_single_single_ax4e1_seesaw_mark_off_block_single_single_ax4_mark mark_ssa = 
  Mark_v.map_left Block_single_single_ax4_symbol_v.block_single_single_ax4e1_seesaw_symbol_off_block_single_single_ax4_symbol mark_ssa
;;


(** {6 Querying} *)


let is_block_single_single_ax4e0_tetrahedral_mark_off_block_single_single_ax4_mark mark_ssa =
  Mark_v.map_left Block_single_single_ax4_symbol_v.is_block_single_single_ax4e0_tetrahedral_symbol_off_block_single_single_ax4_symbol mark_ssa
;;

let is_block_single_single_ax4e1_seesaw_mark_off_block_single_single_ax4_mark mark_ssa =
  Mark_v.map_left Block_single_single_ax4_symbol_v.is_block_single_single_ax4e1_seesaw_symbol_off_block_single_single_ax4_symbol mark_ssa
;;


(** created by ./generator block_single_single_ax4 implementation mark at 15:13 13 Mar 2012. *)



