(** {3 The functionalities for a Mark for a Block_none_none_ax2.} *)

let nam_cod = "block_none_none_ax2_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_nna =
  Mark_v.name Block_none_none_ax2_symbol_v.name mark_nna
;;


(** {6 Upgrading} *)


let block_none_none_ax2_mark_of_block_none_none_ax2e0_linear_mark mark_nal = 
  Mark_v.map_left Block_none_none_ax2_symbol_v.block_none_none_ax2_symbol_of_block_none_none_ax2e0_linear_symbol mark_nal
;;

let block_none_none_ax2_mark_of_block_none_none_ax2e1_bent_mark mark_nab = 
  Mark_v.map_left Block_none_none_ax2_symbol_v.block_none_none_ax2_symbol_of_block_none_none_ax2e1_bent_symbol mark_nab
;;

let block_none_none_ax2_mark_of_block_none_none_ax2e2_bent_mark mark_nab = 
  Mark_v.map_left Block_none_none_ax2_symbol_v.block_none_none_ax2_symbol_of_block_none_none_ax2e2_bent_symbol mark_nab
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_nna soi_nna =
  Mark_v.make sym_nna soi_nna
;;


(** {6 Extracting} *)


let block_none_none_ax2e0_linear_mark_off_block_none_none_ax2_mark mark_nna = 
  Mark_v.map_left Block_none_none_ax2_symbol_v.block_none_none_ax2e0_linear_symbol_off_block_none_none_ax2_symbol mark_nna
;;

let block_none_none_ax2e1_bent_mark_off_block_none_none_ax2_mark mark_nna = 
  Mark_v.map_left Block_none_none_ax2_symbol_v.block_none_none_ax2e1_bent_symbol_off_block_none_none_ax2_symbol mark_nna
;;

let block_none_none_ax2e2_bent_mark_off_block_none_none_ax2_mark mark_nna = 
  Mark_v.map_left Block_none_none_ax2_symbol_v.block_none_none_ax2e2_bent_symbol_off_block_none_none_ax2_symbol mark_nna
;;


(** {6 Querying} *)


let is_block_none_none_ax2e0_linear_mark_off_block_none_none_ax2_mark mark_nna =
  Mark_v.map_left Block_none_none_ax2_symbol_v.is_block_none_none_ax2e0_linear_symbol_off_block_none_none_ax2_symbol mark_nna
;;

let is_block_none_none_ax2e1_bent_mark_off_block_none_none_ax2_mark mark_nna =
  Mark_v.map_left Block_none_none_ax2_symbol_v.is_block_none_none_ax2e1_bent_symbol_off_block_none_none_ax2_symbol mark_nna
;;

let is_block_none_none_ax2e2_bent_mark_off_block_none_none_ax2_mark mark_nna =
  Mark_v.map_left Block_none_none_ax2_symbol_v.is_block_none_none_ax2e2_bent_symbol_off_block_none_none_ax2_symbol mark_nna
;;


(** created by ./generator block_none_none_ax2 implementation mark at 15:12 13 Mar 2012. *)



