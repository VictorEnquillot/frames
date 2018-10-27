(** {3 The functionalities for a Mark for a Block_none_none_ax3.} *)

let nam_cod = "block_none_none_ax3_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_nna =
  Mark_v.name Block_none_none_ax3_symbol_v.name mark_nna
;;


(** {6 Upgrading} *)


let block_none_none_ax3_mark_of_block_none_none_ax3e0_trigonalplanar_mark mark_nat = 
  Mark_v.map_left Block_none_none_ax3_symbol_v.block_none_none_ax3_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol mark_nat
;;

let block_none_none_ax3_mark_of_block_none_none_ax3e1_trigonalpyramidal_mark mark_nat = 
  Mark_v.map_left Block_none_none_ax3_symbol_v.block_none_none_ax3_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol mark_nat
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_nna soi_nna =
  Mark_v.make sym_nna soi_nna
;;


(** {6 Extracting} *)


let block_none_none_ax3e0_trigonalplanar_mark_off_block_none_none_ax3_mark mark_nna = 
  Mark_v.map_left Block_none_none_ax3_symbol_v.block_none_none_ax3e0_trigonalplanar_symbol_off_block_none_none_ax3_symbol mark_nna
;;

let block_none_none_ax3e1_trigonalpyramidal_mark_off_block_none_none_ax3_mark mark_nna = 
  Mark_v.map_left Block_none_none_ax3_symbol_v.block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_none_none_ax3_symbol mark_nna
;;


(** {6 Querying} *)


let is_block_none_none_ax3e0_trigonalplanar_mark_off_block_none_none_ax3_mark mark_nna =
  Mark_v.map_left Block_none_none_ax3_symbol_v.is_block_none_none_ax3e0_trigonalplanar_symbol_off_block_none_none_ax3_symbol mark_nna
;;

let is_block_none_none_ax3e1_trigonalpyramidal_mark_off_block_none_none_ax3_mark mark_nna =
  Mark_v.map_left Block_none_none_ax3_symbol_v.is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_none_none_ax3_symbol mark_nna
;;


(** created by ./generator block_none_none_ax3 implementation mark at 15:12 13 Mar 2012. *)



