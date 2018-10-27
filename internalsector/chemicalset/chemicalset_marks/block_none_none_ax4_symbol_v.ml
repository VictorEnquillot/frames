(** {3 The functionalities for a Symbol for a Block_none_none_ax4.} *)

let nam_cod = "block_none_none_ax4_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_ax4_symbol_t.Block_none_none_ax4e1_tetrahedral_symbol sym_nat ->
      Block_none_none_ax4e1_tetrahedral_symbol_v.name sym_nat
;;


(** {6 Upgrading} *)


let block_none_none_ax4_symbol_of_block_none_none_ax4e1_tetrahedral_symbol sym_nat = 
  Block_none_none_ax4_symbol_t.Block_none_none_ax4e1_tetrahedral_symbol sym_nat
;;


(** {6 Abbreviating} *)


let z_ch4_z = block_none_none_ax4_symbol_of_block_none_none_ax4e1_tetrahedral_symbol Block_none_none_ax4e1_tetrahedral_symbol_v.z_ch4_z;;

let z_nh4p1_z = block_none_none_ax4_symbol_of_block_none_none_ax4e1_tetrahedral_symbol Block_none_none_ax4e1_tetrahedral_symbol_v.z_nh4p1_z;;


(** {6 Making} *)


let make s = function
  | "z_ch4_z" -> z_ch4_z
  | "z_nh4p1_z" -> z_nh4p1_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_none_ax4e1_tetrahedral_symbol_off_block_none_none_ax4_symbol = function
  | Block_none_none_ax4_symbol_t.Block_none_none_ax4e1_tetrahedral_symbol sym_nat -> sym_nat
;;


(** {6 Querying} *)


let is_block_none_none_ax4e1_tetrahedral_symbol_off_block_none_none_ax4_symbol = function
  | Block_none_none_ax4_symbol_t.Block_none_none_ax4e1_tetrahedral_symbol _ -> true
;;


(** created by ./generator block_none_none_ax4 implementation symbol at 15:3 13 Mar 2012. *)



