(** {3 The functionalities for a Symbol for a Block_single_triple.} *)

let nam_cod = "block_single_triple_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_triple_symbol_t.Block_single_triple_ax2_symbol sym_sta ->
      Block_single_triple_ax2_symbol_v.name sym_sta
;;


(** {6 Upgrading} *)


let block_single_triple_symbol_of_block_single_triple_ax2_symbol sym_sta = 
  Block_single_triple_symbol_t.Block_single_triple_ax2_symbol sym_sta
;;

let block_single_triple_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal = 
  let sym_sta = Block_single_triple_ax2_symbol_v.block_single_triple_ax2_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal in
    block_single_triple_symbol_of_block_single_triple_ax2_symbol sym_sta
;;


(** {6 Abbreviating} *)


let s_c_t = block_single_triple_symbol_of_block_single_triple_ax2_symbol Block_single_triple_ax2_symbol_v.s_c_t;;

let s_np1_t = block_single_triple_symbol_of_block_single_triple_ax2_symbol Block_single_triple_ax2_symbol_v.s_np1_t;;


(** {6 Making} *)


let make s = function
  | "s_c_t" -> s_c_t
  | "s_np1_t" -> s_np1_t
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_triple_ax2_symbol_off_block_single_triple_symbol = function
  | Block_single_triple_symbol_t.Block_single_triple_ax2_symbol sym_sta -> sym_sta
;;

let block_single_triple_ax2e0_linear_symbol_off_block_single_triple_symbol sym_bst = 
  let sym_sta = block_single_triple_ax2_symbol_off_block_single_triple_symbol sym_bst in 
    Block_single_triple_ax2_symbol_v.block_single_triple_ax2e0_linear_symbol_off_block_single_triple_ax2_symbol sym_sta
;;


(** {6 Querying} *)


let is_block_single_triple_ax2_symbol_off_block_single_triple_symbol = function
  | Block_single_triple_symbol_t.Block_single_triple_ax2_symbol _ -> true
;;

let is_block_single_triple_ax2e0_linear_symbol_off_block_single_triple_symbol sym_bst =
  if not (is_block_single_triple_ax2_symbol_off_block_single_triple_symbol sym_bst)
  then false
  else
    begin
     let sym_sta = block_single_triple_ax2_symbol_off_block_single_triple_symbol sym_bst in 
     Block_single_triple_ax2_symbol_v.is_block_single_triple_ax2e0_linear_symbol_off_block_single_triple_ax2_symbol sym_sta
    end
;;


(** created by ./generator block_single_triple implementation symbol at 15:5 13 Mar 2012. *)



