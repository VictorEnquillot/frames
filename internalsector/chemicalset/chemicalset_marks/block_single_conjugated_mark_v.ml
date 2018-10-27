(** {3 The functionalities for a Mark for a Block_single_conjugated.} *)

let nam_cod = "block_single_conjugated_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_bsc =
  Mark_v.name Block_single_conjugated_symbol_v.name mark_bsc
;;


(** {6 Upgrading} *)


let block_single_conjugated_mark_of_block_single_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Block_single_conjugated_symbol_v.block_single_conjugated_symbol_of_block_single_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_bsc soi_bsc =
  Mark_v.make sym_bsc soi_bsc
;;


(** {6 Extracting} *)


let block_single_conjugated_ax3e0_trigonalplanar_mark_off_block_single_conjugated_mark mark_bsc = 
  Mark_v.map_left Block_single_conjugated_symbol_v.block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_single_conjugated_symbol mark_bsc
;;


(** {6 Querying} *)


let is_block_single_conjugated_ax3e0_trigonalplanar_mark_off_block_single_conjugated_mark mark_bsc =
  Mark_v.map_left Block_single_conjugated_symbol_v.is_block_single_conjugated_ax3e0_trigonalplanar_symbol_off_block_single_conjugated_symbol mark_bsc
;;


(** created by ./generator block_single_conjugated implementation mark at 15:13 13 Mar 2012. *)



