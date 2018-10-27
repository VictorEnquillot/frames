(** {3 The functionalities for a Symbol for a Block_none_single_ax4.} *)

let nam_cod = "block_none_single_ax4_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_single_ax4_symbol_t.Block_none_single_ax4e1_tetrahedral_symbol sym_sat ->
      Block_none_single_ax4e1_tetrahedral_symbol_v.name sym_sat
;;


(** {6 Upgrading} *)


let block_none_single_ax4_symbol_of_block_none_single_ax4e1_tetrahedral_symbol sym_sat = 
  Block_none_single_ax4_symbol_t.Block_none_single_ax4e1_tetrahedral_symbol sym_sat
;;


(** {6 Abbreviating} *)


let z_ch3_s = block_none_single_ax4_symbol_of_block_none_single_ax4e1_tetrahedral_symbol Block_none_single_ax4e1_tetrahedral_symbol_v.z_ch3_s;;

let z_nh3p1_s = block_none_single_ax4_symbol_of_block_none_single_ax4e1_tetrahedral_symbol Block_none_single_ax4e1_tetrahedral_symbol_v.z_nh3p1_s;;


(** {6 Making} *)


let make s = function
  | "z_ch3_s" -> z_ch3_s
  | "z_nh3p1_s" -> z_nh3p1_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_ax4_symbol = function
  | Block_none_single_ax4_symbol_t.Block_none_single_ax4e1_tetrahedral_symbol sym_sat -> sym_sat
;;


(** {6 Querying} *)


let is_block_none_single_ax4e1_tetrahedral_symbol_off_block_none_single_ax4_symbol = function
  | Block_none_single_ax4_symbol_t.Block_none_single_ax4e1_tetrahedral_symbol _ -> true
;;


(** created by ./generator block_none_single_ax4 implementation symbol at 15:4 13 Mar 2012. *)



