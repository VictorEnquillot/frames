(** {3 The functionalities for a Mark for a Block_single_single_ax2.} *)

let nam_cod = "block_single_single_ax2_mark_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name mark_ssa =
  Mark_v.name Block_single_single_ax2_symbol_v.name mark_ssa
;;


(** {6 Upgrading} *)


let block_single_single_ax2_mark_of_block_single_single_ax2e0_bent_mark mark_sab = 
  Mark_v.map_left Block_single_single_ax2_symbol_v.block_single_single_ax2_symbol_of_block_single_single_ax2e0_bent_symbol mark_sab
;;

let block_single_single_ax2_mark_of_block_single_single_ax2e2_bent_mark mark_sab = 
  Mark_v.map_left Block_single_single_ax2_symbol_v.block_single_single_ax2_symbol_of_block_single_single_ax2e2_bent_symbol mark_sab
;;

let block_single_single_ax2_mark_of_block_single_single_ax2e3_linear_mark mark_sal = 
  Mark_v.map_left Block_single_single_ax2_symbol_v.block_single_single_ax2_symbol_of_block_single_single_ax2e3_linear_symbol mark_sal
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_ssa soi_ssa =
  Mark_v.make sym_ssa soi_ssa
;;


(** {6 Extracting} *)


let block_single_single_ax2e0_bent_mark_off_block_single_single_ax2_mark mark_ssa = 
  Mark_v.map_left Block_single_single_ax2_symbol_v.block_single_single_ax2e0_bent_symbol_off_block_single_single_ax2_symbol mark_ssa
;;

let block_single_single_ax2e2_bent_mark_off_block_single_single_ax2_mark mark_ssa = 
  Mark_v.map_left Block_single_single_ax2_symbol_v.block_single_single_ax2e2_bent_symbol_off_block_single_single_ax2_symbol mark_ssa
;;

let block_single_single_ax2e3_linear_mark_off_block_single_single_ax2_mark mark_ssa = 
  Mark_v.map_left Block_single_single_ax2_symbol_v.block_single_single_ax2e3_linear_symbol_off_block_single_single_ax2_symbol mark_ssa
;;


(** {6 Querying} *)


let is_block_single_single_ax2e0_bent_mark_off_block_single_single_ax2_mark mark_ssa =
  Mark_v.map_left Block_single_single_ax2_symbol_v.is_block_single_single_ax2e0_bent_symbol_off_block_single_single_ax2_symbol mark_ssa
;;

let is_block_single_single_ax2e2_bent_mark_off_block_single_single_ax2_mark mark_ssa =
  Mark_v.map_left Block_single_single_ax2_symbol_v.is_block_single_single_ax2e2_bent_symbol_off_block_single_single_ax2_symbol mark_ssa
;;

let is_block_single_single_ax2e3_linear_mark_off_block_single_single_ax2_mark mark_ssa =
  Mark_v.map_left Block_single_single_ax2_symbol_v.is_block_single_single_ax2e3_linear_symbol_off_block_single_single_ax2_symbol mark_ssa
;;


(** created by ./generator block_single_single_ax2 implementation mark at 15:13 13 Mar 2012. *)



