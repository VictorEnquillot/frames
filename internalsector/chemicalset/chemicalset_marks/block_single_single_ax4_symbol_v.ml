(** {3 The functionalities for a Symbol for a Block_single_single_ax4.} *)

let nam_cod = "block_single_single_ax4_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_single_ax4_symbol_t.Block_single_single_ax4e0_tetrahedral_symbol sym_sat ->
      Block_single_single_ax4e0_tetrahedral_symbol_v.name sym_sat
  | Block_single_single_ax4_symbol_t.Block_single_single_ax4e1_seesaw_symbol sym_sas ->
      Block_single_single_ax4e1_seesaw_symbol_v.name sym_sas
;;


(** {6 Upgrading} *)


let block_single_single_ax4_symbol_of_block_single_single_ax4e0_tetrahedral_symbol sym_sat = 
  Block_single_single_ax4_symbol_t.Block_single_single_ax4e0_tetrahedral_symbol sym_sat
;;

let block_single_single_ax4_symbol_of_block_single_single_ax4e1_seesaw_symbol sym_sas = 
  Block_single_single_ax4_symbol_t.Block_single_single_ax4e1_seesaw_symbol sym_sas
;;


(** {6 Abbreviating} *)


let s_ch2_s = block_single_single_ax4_symbol_of_block_single_single_ax4e0_tetrahedral_symbol Block_single_single_ax4e0_tetrahedral_symbol_v.s_ch2_s;;

let s_nh2p1_s = block_single_single_ax4_symbol_of_block_single_single_ax4e0_tetrahedral_symbol Block_single_single_ax4e0_tetrahedral_symbol_v.s_nh2p1_s;;

let s_sf2_s = block_single_single_ax4_symbol_of_block_single_single_ax4e1_seesaw_symbol Block_single_single_ax4e1_seesaw_symbol_v.s_sf2_s;;


(** {6 Making} *)


let make s = function
  | "s_ch2_s" -> s_ch2_s
  | "s_nh2p1_s" -> s_nh2p1_s
  | "s_sf2_s" -> s_sf2_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_single_ax4e0_tetrahedral_symbol_off_block_single_single_ax4_symbol = function
  | Block_single_single_ax4_symbol_t.Block_single_single_ax4e0_tetrahedral_symbol sym_sat -> sym_sat
  | sym_ssa -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax4e0_tetrahedral_symbol_off_block_single_single_ax4_symbol"
      "Block_single_single_ax4e0_tetrahedral_symbol"
      (name sym_ssa) "check"
;;

let block_single_single_ax4e1_seesaw_symbol_off_block_single_single_ax4_symbol = function
  | Block_single_single_ax4_symbol_t.Block_single_single_ax4e1_seesaw_symbol sym_sas -> sym_sas
  | sym_ssa -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax4e1_seesaw_symbol_off_block_single_single_ax4_symbol"
      "Block_single_single_ax4e1_seesaw_symbol"
      (name sym_ssa) "check"
;;


(** {6 Querying} *)


let is_block_single_single_ax4e0_tetrahedral_symbol_off_block_single_single_ax4_symbol = function
  | Block_single_single_ax4_symbol_t.Block_single_single_ax4e0_tetrahedral_symbol _ -> true
  | _ -> false
;;

let is_block_single_single_ax4e1_seesaw_symbol_off_block_single_single_ax4_symbol = function
  | Block_single_single_ax4_symbol_t.Block_single_single_ax4e1_seesaw_symbol _ -> true
  | _ -> false
;;


(** created by ./generator block_single_single_ax4 implementation symbol at 15:5 13 Mar 2012. *)



