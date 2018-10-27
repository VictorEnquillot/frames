(** {3 The functionalities for a Symbol for a Block_single_double_ax3.} *)

let nam_cod = "block_single_double_ax3_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_double_ax3_symbol_t.Block_single_double_ax3e0_trigonalplanar_symbol sym_dat ->
      Block_single_double_ax3e0_trigonalplanar_symbol_v.name sym_dat
;;


(** {6 Upgrading} *)


let block_single_double_ax3_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat = 
  Block_single_double_ax3_symbol_t.Block_single_double_ax3e0_trigonalplanar_symbol sym_dat
;;


(** {6 Abbreviating} *)


let s_ch_d = block_single_double_ax3_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol Block_single_double_ax3e0_trigonalplanar_symbol_v.s_ch_d;;

let s_n_d = block_single_double_ax3_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol Block_single_double_ax3e0_trigonalplanar_symbol_v.s_n_d;;

let s_nhp1_d = block_single_double_ax3_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol Block_single_double_ax3e0_trigonalplanar_symbol_v.s_nhp1_d;;


(** {6 Making} *)


let make s = function
  | "s_ch_d" -> s_ch_d
  | "s_n_d" -> s_n_d
  | "s_nhp1_d" -> s_nhp1_d
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_double_ax3e0_trigonalplanar_symbol_off_block_single_double_ax3_symbol = function
  | Block_single_double_ax3_symbol_t.Block_single_double_ax3e0_trigonalplanar_symbol sym_dat -> sym_dat
;;


(** {6 Querying} *)


let is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_single_double_ax3_symbol = function
  | Block_single_double_ax3_symbol_t.Block_single_double_ax3e0_trigonalplanar_symbol _ -> true
;;


(** created by ./generator block_single_double_ax3 implementation symbol at 15:5 13 Mar 2012. *)



