(** {3 The functionalities for a Symbol for a Block_single_single_ax3.} *)

let nam_cod = "block_single_single_ax3_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_single_ax3_symbol_t.Block_single_single_ax3e0_trigonalplanar_symbol sym_sat ->
      Block_single_single_ax3e0_trigonalplanar_symbol_v.name sym_sat
  | Block_single_single_ax3_symbol_t.Block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat ->
      Block_single_single_ax3e1_trigonalpyramidal_symbol_v.name sym_sat
  | Block_single_single_ax3_symbol_t.Block_single_single_ax3e2_tshaped_symbol sym_sat ->
      Block_single_single_ax3e2_tshaped_symbol_v.name sym_sat
;;


(** {6 Upgrading} *)


let block_single_single_ax3_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol sym_sat = 
  Block_single_single_ax3_symbol_t.Block_single_single_ax3e0_trigonalplanar_symbol sym_sat
;;

let block_single_single_ax3_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  Block_single_single_ax3_symbol_t.Block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat
;;

let block_single_single_ax3_symbol_of_block_single_single_ax3e2_tshaped_symbol sym_sat = 
  Block_single_single_ax3_symbol_t.Block_single_single_ax3e2_tshaped_symbol sym_sat
;;


(** {6 Abbreviating} *)


let s_bf_s = block_single_single_ax3_symbol_of_block_single_single_ax3e0_trigonalplanar_symbol Block_single_single_ax3e0_trigonalplanar_symbol_v.s_bf_s;;

let s_nh_s = block_single_single_ax3_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol Block_single_single_ax3e1_trigonalpyramidal_symbol_v.s_nh_s;;

let s_pcl_s = block_single_single_ax3_symbol_of_block_single_single_ax3e1_trigonalpyramidal_symbol Block_single_single_ax3e1_trigonalpyramidal_symbol_v.s_pcl_s;;

let s_clf_s = block_single_single_ax3_symbol_of_block_single_single_ax3e2_tshaped_symbol Block_single_single_ax3e2_tshaped_symbol_v.s_clf_s;;

let s_brf_s = block_single_single_ax3_symbol_of_block_single_single_ax3e2_tshaped_symbol Block_single_single_ax3e2_tshaped_symbol_v.s_brf_s;;


(** {6 Making} *)


let make s = function
  | "s_bf_s" -> s_bf_s
  | "s_nh_s" -> s_nh_s
  | "s_pcl_s" -> s_pcl_s
  | "s_clf_s" -> s_clf_s
  | "s_brf_s" -> s_brf_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_single_ax3e0_trigonalplanar_symbol_off_block_single_single_ax3_symbol = function
  | Block_single_single_ax3_symbol_t.Block_single_single_ax3e0_trigonalplanar_symbol sym_sat -> sym_sat
  | sym_ssa -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax3e0_trigonalplanar_symbol_off_block_single_single_ax3_symbol"
      "Block_single_single_ax3e0_trigonalplanar_symbol"
      (name sym_ssa) "check"
;;

let block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_single_single_ax3_symbol = function
  | Block_single_single_ax3_symbol_t.Block_single_single_ax3e1_trigonalpyramidal_symbol sym_sat -> sym_sat
  | sym_ssa -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_single_single_ax3_symbol"
      "Block_single_single_ax3e1_trigonalpyramidal_symbol"
      (name sym_ssa) "check"
;;

let block_single_single_ax3e2_tshaped_symbol_off_block_single_single_ax3_symbol = function
  | Block_single_single_ax3_symbol_t.Block_single_single_ax3e2_tshaped_symbol sym_sat -> sym_sat
  | sym_ssa -> Error_messages_v.print_fatal_error
      nam_cod "block_single_single_ax3e2_tshaped_symbol_off_block_single_single_ax3_symbol"
      "Block_single_single_ax3e2_tshaped_symbol"
      (name sym_ssa) "check"
;;


(** {6 Querying} *)


let is_block_single_single_ax3e0_trigonalplanar_symbol_off_block_single_single_ax3_symbol = function
  | Block_single_single_ax3_symbol_t.Block_single_single_ax3e0_trigonalplanar_symbol _ -> true
  | _ -> false
;;

let is_block_single_single_ax3e1_trigonalpyramidal_symbol_off_block_single_single_ax3_symbol = function
  | Block_single_single_ax3_symbol_t.Block_single_single_ax3e1_trigonalpyramidal_symbol _ -> true
  | _ -> false
;;

let is_block_single_single_ax3e2_tshaped_symbol_off_block_single_single_ax3_symbol = function
  | Block_single_single_ax3_symbol_t.Block_single_single_ax3e2_tshaped_symbol _ -> true
  | _ -> false
;;


(** created by ./generator block_single_single_ax3 implementation symbol at 15:5 13 Mar 2012. *)



