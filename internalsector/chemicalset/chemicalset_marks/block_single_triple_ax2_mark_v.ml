(** {3 The functionalities for a Mark for a Block_single_triple_ax2.} *)

let nam_cod = "block_single_triple_ax2_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_sta =
  Mark_v.name Block_single_triple_ax2_symbol_v.name mark_sta
;;


(** {6 Upgrading} *)


let block_single_triple_ax2_mark_of_block_single_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Block_single_triple_ax2_symbol_v.block_single_triple_ax2_symbol_of_block_single_triple_ax2e0_linear_symbol mark_tal
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_sta soi_sta =
  Mark_v.make sym_sta soi_sta
;;


(** {6 Extracting} *)


let block_single_triple_ax2e0_linear_mark_off_block_single_triple_ax2_mark mark_sta = 
  Mark_v.map_left Block_single_triple_ax2_symbol_v.block_single_triple_ax2e0_linear_symbol_off_block_single_triple_ax2_symbol mark_sta
;;


(** {6 Querying} *)


let is_block_single_triple_ax2e0_linear_mark_off_block_single_triple_ax2_mark mark_sta =
  Mark_v.map_left Block_single_triple_ax2_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_block_single_triple_ax2_symbol mark_sta
;;


(** created by ./generator block_single_triple_ax2 implementation mark at 15:13 13 Mar 2012. *)



