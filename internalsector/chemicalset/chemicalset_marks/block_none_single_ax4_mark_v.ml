(** {3 The functionalities for a Mark for a Block_none_single_ax4.} *)

let nam_cod = "block_none_single_ax4_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_nsa =
  Mark_v.name Block_none_single_ax4_symbol_v.name mark_nsa
;;


(** {6 Upgrading} *)


let block_none_single_ax4_mark_of_block_none_single_ax4e1_tetrahedral_mark mark_sat = 
  Mark_v.map_left Block_none_single_ax4_symbol_v.block_none_single_ax4_symbol_of_block_none_single_ax4e1_tetrahedral_symbol mark_sat
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_nsa soi_nsa =
  Mark_v.make sym_nsa soi_nsa
;;


(** {6 Extracting} *)


let block_none_single_ax4e1_tetrahedral_mark_off_block_none_single_ax4_mark mark_nsa = 
  Mark_v.map_left Block_none_single_ax4_symbol_v.block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_ax4_symbol mark_nsa
;;


(** {6 Querying} *)


let is_block_none_single_ax4e1_tetrahedral_mark_off_block_none_single_ax4_mark mark_nsa =
  Mark_v.map_left Block_none_single_ax4_symbol_v.is_block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_ax4_symbol mark_nsa
;;


(** created by ./generator block_none_single_ax4 implementation mark at 15:12 13 Mar 2012. *)



