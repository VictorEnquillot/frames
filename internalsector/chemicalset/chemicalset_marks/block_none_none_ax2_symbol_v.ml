(** {3 The functionalities for a Symbol for a Block_none_none_ax2.} *)

let nam_cod = "block_none_none_ax2_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_ax2_symbol_t.Block_none_none_ax2e0_linear_symbol sym_nal ->
      Block_none_none_ax2e0_linear_symbol_v.name sym_nal
  | Block_none_none_ax2_symbol_t.Block_none_none_ax2e1_bent_symbol sym_nab ->
      Block_none_none_ax2e1_bent_symbol_v.name sym_nab
  | Block_none_none_ax2_symbol_t.Block_none_none_ax2e2_bent_symbol sym_nab ->
      Block_none_none_ax2e2_bent_symbol_v.name sym_nab
;;


(** {6 Upgrading} *)


let block_none_none_ax2_symbol_of_block_none_none_ax2e0_linear_symbol sym_nal = 
  Block_none_none_ax2_symbol_t.Block_none_none_ax2e0_linear_symbol sym_nal
;;

let block_none_none_ax2_symbol_of_block_none_none_ax2e1_bent_symbol sym_nab = 
  Block_none_none_ax2_symbol_t.Block_none_none_ax2e1_bent_symbol sym_nab
;;

let block_none_none_ax2_symbol_of_block_none_none_ax2e2_bent_symbol sym_nab = 
  Block_none_none_ax2_symbol_t.Block_none_none_ax2e2_bent_symbol sym_nab
;;


(** {6 Abbreviating} *)


let z_becl2_z = block_none_none_ax2_symbol_of_block_none_none_ax2e0_linear_symbol Block_none_none_ax2e0_linear_symbol_v.z_becl2_z;;

let z_co2_z = block_none_none_ax2_symbol_of_block_none_none_ax2e0_linear_symbol Block_none_none_ax2e0_linear_symbol_v.z_co2_z;;

let z_hgcl2_z = block_none_none_ax2_symbol_of_block_none_none_ax2e0_linear_symbol Block_none_none_ax2e0_linear_symbol_v.z_hgcl2_z;;

let z_ccl2_z = block_none_none_ax2_symbol_of_block_none_none_ax2e1_bent_symbol Block_none_none_ax2e1_bent_symbol_v.z_ccl2_z;;

let z_no2m1_z = block_none_none_ax2_symbol_of_block_none_none_ax2e1_bent_symbol Block_none_none_ax2e1_bent_symbol_v.z_no2m1_z;;

let z_o3_z = block_none_none_ax2_symbol_of_block_none_none_ax2e1_bent_symbol Block_none_none_ax2e1_bent_symbol_v.z_o3_z;;

let z_so2_z = block_none_none_ax2_symbol_of_block_none_none_ax2e1_bent_symbol Block_none_none_ax2e1_bent_symbol_v.z_so2_z;;

let z_of2_z = block_none_none_ax2_symbol_of_block_none_none_ax2e2_bent_symbol Block_none_none_ax2e2_bent_symbol_v.z_of2_z;;

let z_oh2_z = block_none_none_ax2_symbol_of_block_none_none_ax2e2_bent_symbol Block_none_none_ax2e2_bent_symbol_v.z_oh2_z;;

let z_sh2_z = block_none_none_ax2_symbol_of_block_none_none_ax2e2_bent_symbol Block_none_none_ax2e2_bent_symbol_v.z_sh2_z;;


(** {6 Making} *)


let make s = function
  | "z_becl2_z" -> z_becl2_z
  | "z_co2_z" -> z_co2_z
  | "z_hgcl2_z" -> z_hgcl2_z
  | "z_ccl2_z" -> z_ccl2_z
  | "z_no2m1_z" -> z_no2m1_z
  | "z_o3_z" -> z_o3_z
  | "z_so2_z" -> z_so2_z
  | "z_of2_z" -> z_of2_z
  | "z_oh2_z" -> z_oh2_z
  | "z_sh2_z" -> z_sh2_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_none_ax2e0_linear_symbol_off_block_none_none_ax2_symbol = function
  | Block_none_none_ax2_symbol_t.Block_none_none_ax2e0_linear_symbol sym_nal -> sym_nal
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "block_none_none_ax2e0_linear_symbol_off_block_none_none_ax2_symbol"
      "Block_none_none_ax2e0_linear_symbol"
      (name sym_nna) "check"
;;

let block_none_none_ax2e1_bent_symbol_off_block_none_none_ax2_symbol = function
  | Block_none_none_ax2_symbol_t.Block_none_none_ax2e1_bent_symbol sym_nab -> sym_nab
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "block_none_none_ax2e1_bent_symbol_off_block_none_none_ax2_symbol"
      "Block_none_none_ax2e1_bent_symbol"
      (name sym_nna) "check"
;;

let block_none_none_ax2e2_bent_symbol_off_block_none_none_ax2_symbol = function
  | Block_none_none_ax2_symbol_t.Block_none_none_ax2e2_bent_symbol sym_nab -> sym_nab
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "block_none_none_ax2e2_bent_symbol_off_block_none_none_ax2_symbol"
      "Block_none_none_ax2e2_bent_symbol"
      (name sym_nna) "check"
;;


(** {6 Querying} *)


let is_block_none_none_ax2e0_linear_symbol_off_block_none_none_ax2_symbol = function
  | Block_none_none_ax2_symbol_t.Block_none_none_ax2e0_linear_symbol _ -> true
  | _ -> false
;;

let is_block_none_none_ax2e1_bent_symbol_off_block_none_none_ax2_symbol = function
  | Block_none_none_ax2_symbol_t.Block_none_none_ax2e1_bent_symbol _ -> true
  | _ -> false
;;

let is_block_none_none_ax2e2_bent_symbol_off_block_none_none_ax2_symbol = function
  | Block_none_none_ax2_symbol_t.Block_none_none_ax2e2_bent_symbol _ -> true
  | _ -> false
;;


(** created by ./generator block_none_none_ax2 implementation symbol at 15:3 13 Mar 2012. *)



