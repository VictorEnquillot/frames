(** {3 The functionalities for a Symbol for a Block_none_single_ax1.} *)

let nam_cod = "block_none_single_ax1_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_single_ax1_symbol_t.Block_none_single_ax1en_diatomic_symbol sym_sad ->
      Block_none_single_ax1en_diatomic_symbol_v.name sym_sad
;;


(** {6 Upgrading} *)


let block_none_single_ax1_symbol_of_block_none_single_ax1en_diatomic_symbol sym_sad = 
  Block_none_single_ax1_symbol_t.Block_none_single_ax1en_diatomic_symbol sym_sad
;;


(** {6 Abbreviating} *)


let z_h_s = block_none_single_ax1_symbol_of_block_none_single_ax1en_diatomic_symbol Block_none_single_ax1en_diatomic_symbol_v.z_h_s;;

let z_f_s = block_none_single_ax1_symbol_of_block_none_single_ax1en_diatomic_symbol Block_none_single_ax1en_diatomic_symbol_v.z_f_s;;

let z_s_s = block_none_single_ax1_symbol_of_block_none_single_ax1en_diatomic_symbol Block_none_single_ax1en_diatomic_symbol_v.z_s_s;;


(** {6 Making} *)


let make s = function
  | "z_h_s" -> z_h_s
  | "z_f_s" -> z_f_s
  | "z_s_s" -> z_s_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_single_ax1en_diatomic_symbol_off_block_none_single_ax1_symbol = function
  | Block_none_single_ax1_symbol_t.Block_none_single_ax1en_diatomic_symbol sym_sad -> sym_sad
;;


(** {6 Querying} *)


let is_block_none_single_ax1en_diatomic_symbol_off_block_none_single_ax1_symbol = function
  | Block_none_single_ax1_symbol_t.Block_none_single_ax1en_diatomic_symbol _ -> true
;;


(** created by ./generator block_none_single_ax1 implementation symbol at 15:4 13 Mar 2012. *)



