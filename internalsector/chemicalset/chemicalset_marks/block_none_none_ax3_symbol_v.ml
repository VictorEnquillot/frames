(** {3 The functionalities for a Symbol for a Block_none_none_ax3.} *)

let nam_cod = "block_none_none_ax3_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_ax3_symbol_t.Block_none_none_ax3e0_trigonalplanar_symbol sym_nat ->
      Block_none_none_ax3e0_trigonalplanar_symbol_v.name sym_nat
  | Block_none_none_ax3_symbol_t.Block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat ->
      Block_none_none_ax3e1_trigonalpyramidal_symbol_v.name sym_nat
;;


(** {6 Upgrading} *)


let block_none_none_ax3_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol sym_nat = 
  Block_none_none_ax3_symbol_t.Block_none_none_ax3e0_trigonalplanar_symbol sym_nat
;;

let block_none_none_ax3_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat = 
  Block_none_none_ax3_symbol_t.Block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat
;;


(** {6 Abbreviating} *)


let z_coh2_z = block_none_none_ax3_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol Block_none_none_ax3e0_trigonalplanar_symbol_v.z_coh2_z;;

let z_cho2m1_z = block_none_none_ax3_symbol_of_block_none_none_ax3e0_trigonalplanar_symbol Block_none_none_ax3e0_trigonalplanar_symbol_v.z_cho2m1_z;;

let z_nh3_z = block_none_none_ax3_symbol_of_block_none_none_ax3e1_trigonalpyramidal_symbol Block_none_none_ax3e1_trigonalpyramidal_symbol_v.z_nh3_z;;


(** {6 Making} *)


let make s = function
  | "z_coh2_z" -> z_coh2_z
  | "z_cho2m1_z" -> z_cho2m1_z
  | "z_nh3_z" -> z_nh3_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_none_ax3e0_trigonalplanar_symbol_off_block_none_none_ax3_symbol = function
  | Block_none_none_ax3_symbol_t.Block_none_none_ax3e0_trigonalplanar_symbol sym_nat -> sym_nat
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "block_none_none_ax3e0_trigonalplanar_symbol_off_block_none_none_ax3_symbol"
      "Block_none_none_ax3e0_trigonalplanar_symbol"
      (name sym_nna) "check"
;;

let block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_none_none_ax3_symbol = function
  | Block_none_none_ax3_symbol_t.Block_none_none_ax3e1_trigonalpyramidal_symbol sym_nat -> sym_nat
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_none_none_ax3_symbol"
      "Block_none_none_ax3e1_trigonalpyramidal_symbol"
      (name sym_nna) "check"
;;


(** {6 Querying} *)


let is_block_none_none_ax3e0_trigonalplanar_symbol_off_block_none_none_ax3_symbol = function
  | Block_none_none_ax3_symbol_t.Block_none_none_ax3e0_trigonalplanar_symbol _ -> true
  | _ -> false
;;

let is_block_none_none_ax3e1_trigonalpyramidal_symbol_off_block_none_none_ax3_symbol = function
  | Block_none_none_ax3_symbol_t.Block_none_none_ax3e1_trigonalpyramidal_symbol _ -> true
  | _ -> false
;;


(** created by ./generator block_none_none_ax3 implementation symbol at 15:3 13 Mar 2012. *)



