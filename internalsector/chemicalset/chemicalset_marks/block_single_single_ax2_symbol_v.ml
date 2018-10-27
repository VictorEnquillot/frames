(** {3 The functionalities for a Symbol for a Block_single_single_ax2.} *)

let nam_cod = "block_single_single_ax2_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_single_ax2_symbol_t.Block_single_single_ax2e0_bent_symbol sym_sab ->
      Block_single_single_ax2e0_bent_symbol_v.name sym_sab
  | Block_single_single_ax2_symbol_t.Block_single_single_ax2e2_bent_symbol sym_sab ->
      Block_single_single_ax2e2_bent_symbol_v.name sym_sab
  | Block_single_single_ax2_symbol_t.Block_single_single_ax2e3_linear_symbol sym_sal ->
      Block_single_single_ax2e3_linear_symbol_v.name sym_sal
;;


(** {6 Upgrading} *)


let block_single_single_ax2_symbol_of_block_single_single_ax2e0_bent_symbol sym_sab = 
  Block_single_single_ax2_symbol_t.Block_single_single_ax2e0_bent_symbol sym_sab
;;

let block_single_single_ax2_symbol_of_block_single_single_ax2e2_bent_symbol sym_sab = 
  Block_single_single_ax2_symbol_t.Block_single_single_ax2e2_bent_symbol sym_sab
;;

let block_single_single_ax2_symbol_of_block_single_single_ax2e3_linear_symbol sym_sal = 
  Block_single_single_ax2_symbol_t.Block_single_single_ax2e3_linear_symbol sym_sal
;;


(** {6 Abbreviating} *)


let s_be_s = block_single_single_ax2_symbol_of_block_single_single_ax2e0_bent_symbol Block_single_single_ax2e0_bent_symbol_v.s_be_s;;

let s_hg_s = block_single_single_ax2_symbol_of_block_single_single_ax2e0_bent_symbol Block_single_single_ax2e0_bent_symbol_v.s_hg_s;;

let s_o_s = block_single_single_ax2_symbol_of_block_single_single_ax2e2_bent_symbol Block_single_single_ax2e2_bent_symbol_v.s_o_s;;

let s_s_s = block_single_single_ax2_symbol_of_block_single_single_ax2e2_bent_symbol Block_single_single_ax2e2_bent_symbol_v.s_s_s;;

let s_im1_s = block_single_single_ax2_symbol_of_block_single_single_ax2e3_linear_symbol Block_single_single_ax2e3_linear_symbol_v.s_im1_s;;

let s_xe_s = block_single_single_ax2_symbol_of_block_single_single_ax2e3_linear_symbol Block_single_single_ax2e3_linear_symbol_v.s_xe_s;;


(** {6 Making} *)


let make s = function
  | "s_be_s" -> s_be_s
  | "s_hg_s" -> s_hg_s
  | "s_o_s" -> s_o_s
  | "s_s_s" -> s_s_s
  | "s_im1_s" -> s_im1_s
  | "s_xe_s" -> s_xe_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_single_ax2e0_bent_symbol_off_block_single_single_ax2_symbol = function
  | Block_single_single_ax2_symbol_t.Block_single_single_ax2e0_bent_symbol sym_sab -> sym_sab
  | sym_ssa -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax2e0_bent_symbol_off_block_single_single_ax2_symbol"
      "Block_single_single_ax2e0_bent_symbol"
      (name sym_ssa) "check"
;;

let block_single_single_ax2e2_bent_symbol_off_block_single_single_ax2_symbol = function
  | Block_single_single_ax2_symbol_t.Block_single_single_ax2e2_bent_symbol sym_sab -> sym_sab
  | sym_ssa -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax2e2_bent_symbol_off_block_single_single_ax2_symbol"
      "Block_single_single_ax2e2_bent_symbol"
      (name sym_ssa) "check"
;;

let block_single_single_ax2e3_linear_symbol_off_block_single_single_ax2_symbol = function
  | Block_single_single_ax2_symbol_t.Block_single_single_ax2e3_linear_symbol sym_sal -> sym_sal
  | sym_ssa -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax2e3_linear_symbol_off_block_single_single_ax2_symbol"
      "Block_single_single_ax2e3_linear_symbol"
      (name sym_ssa) "check"
;;


(** {6 Querying} *)


let is_block_single_single_ax2e0_bent_symbol_off_block_single_single_ax2_symbol = function
  | Block_single_single_ax2_symbol_t.Block_single_single_ax2e0_bent_symbol _ -> true
  | _ -> false
;;

let is_block_single_single_ax2e2_bent_symbol_off_block_single_single_ax2_symbol = function
  | Block_single_single_ax2_symbol_t.Block_single_single_ax2e2_bent_symbol _ -> true
  | _ -> false
;;

let is_block_single_single_ax2e3_linear_symbol_off_block_single_single_ax2_symbol = function
  | Block_single_single_ax2_symbol_t.Block_single_single_ax2e3_linear_symbol _ -> true
  | _ -> false
;;


(** created by ./generator block_single_single_ax2 implementation symbol at 15:5 13 Mar 2012. *)



