(** {3 The functionalities for a Symbol for a Block_none_single_ax3.} *)

let nam_cod = "block_none_single_ax3_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_single_ax3_symbol_t.Block_none_single_ax3e0_trigonalplanar_symbol sym_sat ->
      Block_none_single_ax3e0_trigonalplanar_symbol_v.name sym_sat
  | Block_none_single_ax3_symbol_t.Block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat ->
      Block_none_single_ax3e1_trigonalpyramidal_symbol_v.name sym_sat
;;


(** {6 Upgrading} *)


let block_none_single_ax3_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol sym_sat = 
  Block_none_single_ax3_symbol_t.Block_none_single_ax3e0_trigonalplanar_symbol sym_sat
;;

let block_none_single_ax3_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat = 
  Block_none_single_ax3_symbol_t.Block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat
;;


(** {6 Abbreviating} *)


let z_coh_s = block_none_single_ax3_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol Block_none_single_ax3e0_trigonalplanar_symbol_v.z_coh_s;;

let z_co2m1_s = block_none_single_ax3_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol Block_none_single_ax3e0_trigonalplanar_symbol_v.z_co2m1_s;;

let z_no2_s = block_none_single_ax3_symbol_of_block_none_single_ax3e0_trigonalplanar_symbol Block_none_single_ax3e0_trigonalplanar_symbol_v.z_no2_s;;

let z_nh2_s = block_none_single_ax3_symbol_of_block_none_single_ax3e1_trigonalpyramidal_symbol Block_none_single_ax3e1_trigonalpyramidal_symbol_v.z_nh2_s;;


(** {6 Making} *)


let make s = function
  | "z_coh_s" -> z_coh_s
  | "z_co2m1_s" -> z_co2m1_s
  | "z_no2_s" -> z_no2_s
  | "z_nh2_s" -> z_nh2_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_ax3_symbol = function
  | Block_none_single_ax3_symbol_t.Block_none_single_ax3e0_trigonalplanar_symbol sym_sat -> sym_sat
  | sym_nsa -> Error_messages_v.print_fatal_error
      nam_cod "block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_ax3_symbol"
      "Block_none_single_ax3e0_trigonalplanar_symbol"
      (name sym_nsa) "check"
;;

let block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_ax3_symbol = function
  | Block_none_single_ax3_symbol_t.Block_none_single_ax3e1_trigonalpyramidal_symbol sym_sat -> sym_sat
  | sym_nsa -> Error_messages_v.print_fatal_error
      nam_cod "block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_ax3_symbol"
      "Block_none_single_ax3e1_trigonalpyramidal_symbol"
      (name sym_nsa) "check"
;;


(** {6 Querying} *)


let is_block_none_single_ax3e0_trigonalplanar_symbol_off_block_none_single_ax3_symbol = function
  | Block_none_single_ax3_symbol_t.Block_none_single_ax3e0_trigonalplanar_symbol _ -> true
  | _ -> false
;;

let is_block_none_single_ax3e1_trigonalpyramidal_symbol_off_block_none_single_ax3_symbol = function
  | Block_none_single_ax3_symbol_t.Block_none_single_ax3e1_trigonalpyramidal_symbol _ -> true
  | _ -> false
;;


(** created by ./generator block_none_single_ax3 implementation symbol at 15:4 13 Mar 2012. *)



