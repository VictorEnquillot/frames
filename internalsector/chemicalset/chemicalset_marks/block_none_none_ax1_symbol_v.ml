(** {3 The functionalities for a Symbol for a Block_none_none_ax1.} *)

let nam_cod = "block_none_none_ax1_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_ax1_symbol_t.Block_none_none_ax1en_diatomic_symbol sym_nad ->
      Block_none_none_ax1en_diatomic_symbol_v.name sym_nad
;;


(** {6 Upgrading} *)


let block_none_none_ax1_symbol_of_block_none_none_ax1en_diatomic_symbol sym_nad = 
  Block_none_none_ax1_symbol_t.Block_none_none_ax1en_diatomic_symbol sym_nad
;;


(** {6 Abbreviating} *)


let z_co_z = block_none_none_ax1_symbol_of_block_none_none_ax1en_diatomic_symbol Block_none_none_ax1en_diatomic_symbol_v.z_co_z;;

let z_cs_z = block_none_none_ax1_symbol_of_block_none_none_ax1en_diatomic_symbol Block_none_none_ax1en_diatomic_symbol_v.z_cs_z;;

let z_fh_z = block_none_none_ax1_symbol_of_block_none_none_ax1en_diatomic_symbol Block_none_none_ax1en_diatomic_symbol_v.z_fh_z;;

let z_no_z = block_none_none_ax1_symbol_of_block_none_none_ax1en_diatomic_symbol Block_none_none_ax1en_diatomic_symbol_v.z_no_z;;

let z_ohm1_z = block_none_none_ax1_symbol_of_block_none_none_ax1en_diatomic_symbol Block_none_none_ax1en_diatomic_symbol_v.z_ohm1_z;;


(** {6 Making} *)


let make s = function
  | "z_co_z" -> z_co_z
  | "z_cs_z" -> z_cs_z
  | "z_fh_z" -> z_fh_z
  | "z_no_z" -> z_no_z
  | "z_ohm1_z" -> z_ohm1_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_none_ax1en_diatomic_symbol_off_block_none_none_ax1_symbol = function
  | Block_none_none_ax1_symbol_t.Block_none_none_ax1en_diatomic_symbol sym_nad -> sym_nad
;;


(** {6 Querying} *)


let is_block_none_none_ax1en_diatomic_symbol_off_block_none_none_ax1_symbol = function
  | Block_none_none_ax1_symbol_t.Block_none_none_ax1en_diatomic_symbol _ -> true
;;


(** created by ./generator block_none_none_ax1 implementation symbol at 15:3 13 Mar 2012. *)



