(** {3 The functionalities for a Symbol for a Block_none_triple_ax2.} *)

let nam_cod = "block_none_triple_ax2_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_triple_ax2_symbol_t.Block_none_triple_ax2e0_linear_symbol sym_tal ->
      Block_none_triple_ax2e0_linear_symbol_v.name sym_tal
;;


(** {6 Upgrading} *)


let block_none_triple_ax2_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal = 
  Block_none_triple_ax2_symbol_t.Block_none_triple_ax2e0_linear_symbol sym_tal
;;


(** {6 Abbreviating} *)


let z_ch_t = block_none_triple_ax2_symbol_of_block_none_triple_ax2e0_linear_symbol Block_none_triple_ax2e0_linear_symbol_v.z_ch_t;;


(** {6 Making} *)


let make s = function
  | "z_ch_t" -> z_ch_t
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_triple_ax2e0_linear_symbol_off_block_none_triple_ax2_symbol = function
  | Block_none_triple_ax2_symbol_t.Block_none_triple_ax2e0_linear_symbol sym_tal -> sym_tal
;;


(** {6 Querying} *)


let is_block_none_triple_ax2e0_linear_symbol_off_block_none_triple_ax2_symbol = function
  | Block_none_triple_ax2_symbol_t.Block_none_triple_ax2e0_linear_symbol _ -> true
;;


(** created by ./generator block_none_triple_ax2 implementation symbol at 15:5 13 Mar 2012. *)



