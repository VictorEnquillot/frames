(** {3 The functionalities for a Mark for a Block_none_conjugated.} *)

let nam_cod = "block_none_conjugated_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_bnc =
  Mark_v.name Block_none_conjugated_symbol_v.name mark_bnc
;;


(** {6 Upgrading} *)


let block_none_conjugated_mark_of_block_none_conjugated_ax3e0_trigonalplanar_mark mark_cat = 
  Mark_v.map_left Block_none_conjugated_symbol_v.block_none_conjugated_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol mark_cat
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_bnc soi_bnc =
  Mark_v.make sym_bnc soi_bnc
;;


(** {6 Extracting} *)


let block_none_conjugated_ax3e0_trigonalplanar_mark_off_block_none_conjugated_mark mark_bnc = 
  Mark_v.map_left Block_none_conjugated_symbol_v.block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_none_conjugated_symbol mark_bnc
;;


(** {6 Querying} *)


let is_block_none_conjugated_ax3e0_trigonalplanar_mark_off_block_none_conjugated_mark mark_bnc =
  Mark_v.map_left Block_none_conjugated_symbol_v.is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_none_conjugated_symbol mark_bnc
;;


(** created by ./generator block_none_conjugated implementation mark at 15:12 13 Mar 2012. *)



