(** {3 The functionalities for a Symbol for a Block_onetied_triforktied.} *)

let nam_cod = "block_onetied_triforktied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_onetied_triforktied_symbol_t.Block_single_singlesinglesingle_symbol sym_bss ->
      Block_single_singlesinglesingle_symbol_v.name sym_bss
;;


(** {6 Upgrading} *)


let block_onetied_triforktied_symbol_of_block_single_singlesinglesingle_symbol sym_bss = 
  Block_onetied_triforktied_symbol_t.Block_single_singlesinglesingle_symbol sym_bss
;;

let block_onetied_triforktied_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa = 
  let sym_bss = Block_single_singlesinglesingle_symbol_v.block_single_singlesinglesingle_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa in
    block_onetied_triforktied_symbol_of_block_single_singlesinglesingle_symbol sym_bss
;;

let block_onetied_triforktied_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_bss = Block_single_singlesinglesingle_symbol_v.block_single_singlesinglesingle_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat in
    block_onetied_triforktied_symbol_of_block_single_singlesinglesingle_symbol sym_bss
;;


(** {6 Abbreviating} *)


let s_c_sss = block_onetied_triforktied_symbol_of_block_single_singlesinglesingle_symbol Block_single_singlesinglesingle_symbol_v.s_c_sss;;

let s_nhp1_sss = block_onetied_triforktied_symbol_of_block_single_singlesinglesingle_symbol Block_single_singlesinglesingle_symbol_v.s_nhp1_sss;;


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


let block_single_singlesinglesingle_symbol_off_block_onetied_triforktied_symbol = function
  | Block_onetied_triforktied_symbol_t.Block_single_singlesinglesingle_symbol sym_bss -> sym_bss
;;

let block_single_singlesinglesingle_ax4_symbol_off_block_onetied_triforktied_symbol sym_b1t = 
  let sym_bss = block_single_singlesinglesingle_symbol_off_block_onetied_triforktied_symbol sym_b1t in 
    Block_single_singlesinglesingle_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_block_single_singlesinglesingle_symbol sym_bss
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_triforktied_symbol sym_b1t = 
  let sym_bss = block_single_singlesinglesingle_symbol_off_block_onetied_triforktied_symbol sym_b1t in 
    Block_single_singlesinglesingle_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_single_singlesinglesingle_symbol sym_bss
;;


(** {6 Querying} *)


let is_block_single_singlesinglesingle_symbol_off_block_onetied_triforktied_symbol = function
  | Block_onetied_triforktied_symbol_t.Block_single_singlesinglesingle_symbol _ -> true
;;

let is_block_single_singlesinglesingle_ax4_symbol_off_block_onetied_triforktied_symbol sym_b1t =
  if not (is_block_single_singlesinglesingle_symbol_off_block_onetied_triforktied_symbol sym_b1t)
  then false
  else
    begin
     let sym_bss = block_single_singlesinglesingle_symbol_off_block_onetied_triforktied_symbol sym_b1t in 
     Block_single_singlesinglesingle_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_block_single_singlesinglesingle_symbol sym_bss
    end
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_triforktied_symbol sym_b1t =
  if not (is_block_single_singlesinglesingle_symbol_off_block_onetied_triforktied_symbol sym_b1t)
  then false
  else
    begin
     let sym_bss = block_single_singlesinglesingle_symbol_off_block_onetied_triforktied_symbol sym_b1t in 
     Block_single_singlesinglesingle_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_single_singlesinglesingle_symbol sym_bss
    end
;;


(** created by ./generator block_onetied_triforktied implementation symbol at 15:3 13 Mar 2012. *)



