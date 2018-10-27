(** {3 The functionalities for a Symbol for a Block_single_singlesinglesingle_ax4.} *)

let nam_cod = "block_single_singlesinglesingle_ax4_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_singlesinglesingle_ax4_symbol_t.Block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat ->
      Block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_v.name sym_sat
;;


(** {6 Upgrading} *)


let block_single_singlesinglesingle_ax4_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  Block_single_singlesinglesingle_ax4_symbol_t.Block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat
;;


(** {6 Abbreviating} *)


let s_c_sss = block_single_singlesinglesingle_ax4_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol Block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_v.s_c_sss;;

let s_nhp1_sss = block_single_singlesinglesingle_ax4_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol Block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_v.s_nhp1_sss;;


(** {6 Making} *)


let make s = function
  | "s_c_sss" -> s_c_sss
  | "s_nhp1_sss" -> s_nhp1_sss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_single_singlesinglesingle_ax4_symbol = function
  | Block_single_singlesinglesingle_ax4_symbol_t.Block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat -> sym_sat
;;


(** {6 Querying} *)


let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_single_singlesinglesingle_ax4_symbol = function
  | Block_single_singlesinglesingle_ax4_symbol_t.Block_single_singlesinglesingle_ax4e1_tetrahedral_symbol _ -> true
;;


(** created by ./generator block_single_singlesinglesingle_ax4 implementation symbol at 15:3 13 Mar 2012. *)



