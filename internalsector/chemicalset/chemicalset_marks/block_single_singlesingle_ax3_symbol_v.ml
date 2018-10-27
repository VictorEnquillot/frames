(** {3 The functionalities for a Symbol for a Block_single_singlesingle_ax3.} *)

let nam_cod = "block_single_singlesingle_ax3_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_singlesingle_ax3_symbol_t.Block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat ->
      Block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_v.name sym_sat
;;


(** {6 Upgrading} *)


let block_single_singlesingle_ax3_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  Block_single_singlesingle_ax3_symbol_t.Block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat
;;


(** {6 Abbreviating} *)


let s_n_ss = block_single_singlesingle_ax3_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol Block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_v.s_n_ss;;


(** {6 Making} *)


let make s = function
  | "s_n_ss" -> s_n_ss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_single_singlesingle_ax3_symbol = function
  | Block_single_singlesingle_ax3_symbol_t.Block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat -> sym_sat
;;


(** {6 Querying} *)


let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_single_singlesingle_ax3_symbol = function
  | Block_single_singlesingle_ax3_symbol_t.Block_single_singlesingle_ax3e1_trigonalpyramidal_symbol _ -> true
;;


(** created by ./generator block_single_singlesingle_ax3 implementation symbol at 15:3 13 Mar 2012. *)



