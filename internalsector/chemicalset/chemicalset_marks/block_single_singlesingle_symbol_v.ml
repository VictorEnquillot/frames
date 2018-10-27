(** {3 The functionalities for a Symbol for a Block_single_singlesingle.} *)

let nam_cod = "block_single_singlesingle_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_singlesingle_symbol_t.Block_single_singlesingle_ax3_symbol sym_ssa ->
      Block_single_singlesingle_ax3_symbol_v.name sym_ssa
;;


(** {6 Upgrading} *)


let block_single_singlesingle_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa = 
  Block_single_singlesingle_symbol_t.Block_single_singlesingle_ax3_symbol sym_ssa
;;

let block_single_singlesingle_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_ssa = Block_single_singlesingle_ax3_symbol_v.block_single_singlesingle_ax3_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_single_singlesingle_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa
;;


(** {6 Abbreviating} *)


let s_n_ss = block_single_singlesingle_symbol_of_block_single_singlesingle_ax3_symbol Block_single_singlesingle_ax3_symbol_v.s_n_ss;;


(** {6 Making} *)


let make s = function
  | "s_n_ss" -> s_n_ss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_singlesingle_ax3_symbol_off_block_single_singlesingle_symbol = function
  | Block_single_singlesingle_symbol_t.Block_single_singlesingle_ax3_symbol sym_ssa -> sym_ssa
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_single_singlesingle_symbol sym_bss = 
  let sym_ssa = block_single_singlesingle_ax3_symbol_off_block_single_singlesingle_symbol sym_bss in 
    Block_single_singlesingle_ax3_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_single_singlesingle_ax3_symbol sym_ssa
;;


(** {6 Querying} *)


let is_block_single_singlesingle_ax3_symbol_off_block_single_singlesingle_symbol = function
  | Block_single_singlesingle_symbol_t.Block_single_singlesingle_ax3_symbol _ -> true
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_single_singlesingle_symbol sym_bss =
  if not (is_block_single_singlesingle_ax3_symbol_off_block_single_singlesingle_symbol sym_bss)
  then false
  else
    begin
     let sym_ssa = block_single_singlesingle_ax3_symbol_off_block_single_singlesingle_symbol sym_bss in 
     Block_single_singlesingle_ax3_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_single_singlesingle_ax3_symbol sym_ssa
    end
;;


(** created by ./generator block_single_singlesingle implementation symbol at 15:3 13 Mar 2012. *)



