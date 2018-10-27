(** {3 The functionalities for a Symbol for a Block_none_conjugated.} *)

let nam_cod = "block_none_conjugated_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_conjugated_symbol_t.Block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat ->
      Block_none_conjugated_ax3e0_trigonalplanar_symbol_v.name sym_cat
;;


(** {6 Upgrading} *)


let block_none_conjugated_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat = 
  Block_none_conjugated_symbol_t.Block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat
;;


(** {6 Abbreviating} *)


let z_nh2_c = block_none_conjugated_symbol_of_block_none_conjugated_ax3e0_trigonalplanar_symbol Block_none_conjugated_ax3e0_trigonalplanar_symbol_v.z_nh2_c;;


(** {6 Making} *)


let make s = function
  | "z_nh2_c" -> z_nh2_c
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_none_conjugated_symbol = function
  | Block_none_conjugated_symbol_t.Block_none_conjugated_ax3e0_trigonalplanar_symbol sym_cat -> sym_cat
;;


(** {6 Querying} *)


let is_block_none_conjugated_ax3e0_trigonalplanar_symbol_off_block_none_conjugated_symbol = function
  | Block_none_conjugated_symbol_t.Block_none_conjugated_ax3e0_trigonalplanar_symbol _ -> true
;;


(** created by ./generator block_none_conjugated implementation symbol at 15:5 13 Mar 2012. *)



