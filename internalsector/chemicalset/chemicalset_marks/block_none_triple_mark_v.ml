(** {3 The functionalities for a Mark for a Block_none_triple.} *)

let nam_cod = "block_none_triple_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_bnt =
  Mark_v.name Block_none_triple_symbol_v.name mark_bnt
;;


(** {6 Upgrading} *)


let block_none_triple_mark_of_block_none_triple_ax2_mark mark_nta = 
  Mark_v.map_left Block_none_triple_symbol_v.block_none_triple_symbol_of_block_none_triple_ax2_symbol mark_nta
;;

let block_none_triple_mark_of_block_none_triple_ax2e0_linear_mark mark_tal = 
  Mark_v.map_left Block_none_triple_symbol_v.block_none_triple_symbol_of_block_none_triple_ax2e0_linear_symbol mark_tal
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_bnt soi_bnt =
  Mark_v.make sym_bnt soi_bnt
;;


(** {6 Extracting} *)


let block_none_triple_ax2_mark_off_block_none_triple_mark mark_bnt = 
  Mark_v.map_left Block_none_triple_symbol_v.block_none_triple_ax2_symbol_off_block_none_triple_symbol mark_bnt
;;

let block_none_triple_ax2e0_linear_mark_off_block_none_triple_mark mark_bnt = 
  Mark_v.map_left Block_none_triple_symbol_v.block_none_triple_ax2e0_linear_symbol_off_block_none_triple_symbol mark_bnt
;;


(** {6 Querying} *)


let is_block_none_triple_ax2_mark_off_block_none_triple_mark mark_bnt =
  Mark_v.map_left Block_none_triple_symbol_v.is_block_none_triple_ax2_symbol_off_block_none_triple_symbol mark_bnt
;;

let is_block_none_triple_ax2e0_linear_mark_off_block_none_triple_mark mark_bnt =
  Mark_v.map_left Block_none_triple_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_block_none_triple_symbol mark_bnt
;;


(** created by ./generator block_none_triple implementation mark at 15:12 13 Mar 2012. *)



