(** {3 The functionalities for a Symbol for a Block_single_singlesinglesingle.} *)

let nam_cod = "block_single_singlesinglesingle_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_singlesinglesingle_symbol_t.Block_single_singlesinglesingle_ax4_symbol sym_ssa ->
      Block_single_singlesinglesingle_ax4_symbol_v.name sym_ssa
;;


(** {6 Upgrading} *)


let block_single_singlesinglesingle_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa = 
  Block_single_singlesinglesingle_symbol_t.Block_single_singlesinglesingle_ax4_symbol sym_ssa
;;

let block_single_singlesinglesingle_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_ssa = Block_single_singlesinglesingle_ax4_symbol_v.block_single_singlesinglesingle_ax4_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat in
    block_single_singlesinglesingle_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa
;;


(** {6 Abbreviating} *)


let s_c_sss = block_single_singlesinglesingle_symbol_of_block_single_singlesinglesingle_ax4_symbol Block_single_singlesinglesingle_ax4_symbol_v.s_c_sss;;

let s_nhp1_sss = block_single_singlesinglesingle_symbol_of_block_single_singlesinglesingle_ax4_symbol Block_single_singlesinglesingle_ax4_symbol_v.s_nhp1_sss;;


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


let block_single_singlesinglesingle_ax4_symbol_off_block_single_singlesinglesingle_symbol = function
  | Block_single_singlesinglesingle_symbol_t.Block_single_singlesinglesingle_ax4_symbol sym_ssa -> sym_ssa
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_single_singlesinglesingle_symbol sym_bss = 
  let sym_ssa = block_single_singlesinglesingle_ax4_symbol_off_block_single_singlesinglesingle_symbol sym_bss in 
    Block_single_singlesinglesingle_ax4_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_single_singlesinglesingle_ax4_symbol sym_ssa
;;


(** {6 Querying} *)


let is_block_single_singlesinglesingle_ax4_symbol_off_block_single_singlesinglesingle_symbol = function
  | Block_single_singlesinglesingle_symbol_t.Block_single_singlesinglesingle_ax4_symbol _ -> true
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_single_singlesinglesingle_symbol sym_bss =
  if not (is_block_single_singlesinglesingle_ax4_symbol_off_block_single_singlesinglesingle_symbol sym_bss)
  then false
  else
    begin
     let sym_ssa = block_single_singlesinglesingle_ax4_symbol_off_block_single_singlesinglesingle_symbol sym_bss in 
     Block_single_singlesinglesingle_ax4_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_single_singlesinglesingle_ax4_symbol sym_ssa
    end
;;


(** created by ./generator block_single_singlesinglesingle implementation symbol at 15:3 13 Mar 2012. *)



