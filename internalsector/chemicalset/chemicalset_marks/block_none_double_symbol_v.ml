(** {3 The functionalities for a Symbol for a Block_none_double.} *)

let nam_cod = "block_none_double_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_double_symbol_t.Block_none_double_ax3e0_trigonalplanar_symbol sym_dat ->
      Block_none_double_ax3e0_trigonalplanar_symbol_v.name sym_dat
;;


(** {6 Upgrading} *)


let block_none_double_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol sym_dat = 
  Block_none_double_symbol_t.Block_none_double_ax3e0_trigonalplanar_symbol sym_dat
;;


(** {6 Abbreviating} *)


let z_ch2_d = block_none_double_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol Block_none_double_ax3e0_trigonalplanar_symbol_v.z_ch2_d;;

let z_co_d = block_none_double_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol Block_none_double_ax3e0_trigonalplanar_symbol_v.z_co_d;;

let z_nh_d = block_none_double_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol Block_none_double_ax3e0_trigonalplanar_symbol_v.z_nh_d;;

let z_nh2p1_d = block_none_double_symbol_of_block_none_double_ax3e0_trigonalplanar_symbol Block_none_double_ax3e0_trigonalplanar_symbol_v.z_nh2p1_d;;


(** {6 Making} *)


let make s = function
  | "z_ch2_d" -> z_ch2_d
  | "z_co_d" -> z_co_d
  | "z_nh_d" -> z_nh_d
  | "z_nh2p1_d" -> z_nh2p1_d
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_double_ax3e0_trigonalplanar_symbol_off_block_none_double_symbol = function
  | Block_none_double_symbol_t.Block_none_double_ax3e0_trigonalplanar_symbol sym_dat -> sym_dat
;;


(** {6 Querying} *)


let is_block_none_double_ax3e0_trigonalplanar_symbol_off_block_none_double_symbol = function
  | Block_none_double_symbol_t.Block_none_double_ax3e0_trigonalplanar_symbol _ -> true
;;


(** created by ./generator block_none_double implementation symbol at 15:5 13 Mar 2012. *)



