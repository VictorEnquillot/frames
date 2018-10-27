(** {3 The functionalities for a Mark for a Block_single_double_ax3.} *)

let nam_cod = "block_single_double_ax3_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_sda =
  Mark_v.name Block_single_double_ax3_symbol_v.name mark_sda
;;


(** {6 Upgrading} *)


let block_single_double_ax3_mark_of_block_single_double_ax3e0_trigonalplanar_mark mark_dat = 
  Mark_v.map_left Block_single_double_ax3_symbol_v.block_single_double_ax3_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol mark_dat
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_sda soi_sda =
  Mark_v.make sym_sda soi_sda
;;


(** {6 Extracting} *)


let block_single_double_ax3e0_trigonalplanar_mark_off_block_single_double_ax3_mark mark_sda = 
  Mark_v.map_left Block_single_double_ax3_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_block_single_double_ax3_symbol mark_sda
;;


(** {6 Querying} *)


let is_block_single_double_ax3e0_trigonalplanar_mark_off_block_single_double_ax3_mark mark_sda =
  Mark_v.map_left Block_single_double_ax3_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_single_double_ax3_symbol mark_sda
;;


(** created by ./generator block_single_double_ax3 implementation mark at 15:13 13 Mar 2012. *)



