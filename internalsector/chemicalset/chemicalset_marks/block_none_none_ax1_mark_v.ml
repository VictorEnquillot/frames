(** {3 The functionalities for a Mark for a Block_none_none_ax1.} *)

let nam_cod = "block_none_none_ax1_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_nna =
  Mark_v.name Block_none_none_ax1_symbol_v.name mark_nna
;;


(** {6 Upgrading} *)


let block_none_none_ax1_mark_of_block_none_none_ax1en_diatomic_mark mark_nad = 
  Mark_v.map_left Block_none_none_ax1_symbol_v.block_none_none_ax1_symbol_of_block_none_none_ax1en_diatomic_symbol mark_nad
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_nna soi_nna =
  Mark_v.make sym_nna soi_nna
;;


(** {6 Extracting} *)


let block_none_none_ax1en_diatomic_mark_off_block_none_none_ax1_mark mark_nna = 
  Mark_v.map_left Block_none_none_ax1_symbol_v.block_none_none_ax1en_diatomic_symbol_off_block_none_none_ax1_symbol mark_nna
;;


(** {6 Querying} *)


let is_block_none_none_ax1en_diatomic_mark_off_block_none_none_ax1_mark mark_nna =
  Mark_v.map_left Block_none_none_ax1_symbol_v.is_block_none_none_ax1en_diatomic_symbol_off_block_none_none_ax1_symbol mark_nna
;;


(** created by ./generator block_none_none_ax1 implementation mark at 15:12 13 Mar 2012. *)



