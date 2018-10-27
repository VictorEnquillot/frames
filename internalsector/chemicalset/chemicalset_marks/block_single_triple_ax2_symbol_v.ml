(** {3 The functionalities for a Symbol for a Block_single_triple_ax2.} *)

let nam_cod = "block_single_triple_ax2_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_triple_ax2_symbol_t.Block_single_triple_ax2e0_linear_symbol sym_tal ->
      Block_single_triple_ax2e0_linear_symbol_v.name sym_tal
;;


(** {6 Upgrading} *)


let block_single_triple_ax2_symbol_of_block_single_triple_ax2e0_linear_symbol sym_tal = 
  Block_single_triple_ax2_symbol_t.Block_single_triple_ax2e0_linear_symbol sym_tal
;;


(** {6 Abbreviating} *)


let s_c_t = block_single_triple_ax2_symbol_of_block_single_triple_ax2e0_linear_symbol Block_single_triple_ax2e0_linear_symbol_v.s_c_t;;

let s_np1_t = block_single_triple_ax2_symbol_of_block_single_triple_ax2e0_linear_symbol Block_single_triple_ax2e0_linear_symbol_v.s_np1_t;;


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


let block_single_triple_ax2e0_linear_symbol_off_block_single_triple_ax2_symbol = function
  | Block_single_triple_ax2_symbol_t.Block_single_triple_ax2e0_linear_symbol sym_tal -> sym_tal
;;


(** {6 Querying} *)


let is_block_single_triple_ax2e0_linear_symbol_off_block_single_triple_ax2_symbol = function
  | Block_single_triple_ax2_symbol_t.Block_single_triple_ax2e0_linear_symbol _ -> true
;;


(** created by ./generator block_single_triple_ax2 implementation symbol at 15:5 13 Mar 2012. *)



