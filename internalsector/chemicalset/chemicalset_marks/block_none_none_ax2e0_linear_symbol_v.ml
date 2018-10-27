(** {3 The functionalities for a Symbol for a Block_none_none_ax2e0_linear.} *)

let nam_cod = "block_none_none_ax2e0_linear_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_ax2e0_linear_symbol_t.Z_becl2_z -> "z_becl2_z"
  | Block_none_none_ax2e0_linear_symbol_t.Z_co2_z -> "z_co2_z"
  | Block_none_none_ax2e0_linear_symbol_t.Z_hgcl2_z -> "z_hgcl2_z"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_becl2_z = Block_none_none_ax2e0_linear_symbol_t.Z_becl2_z;;

let z_co2_z = Block_none_none_ax2e0_linear_symbol_t.Z_co2_z;;

let z_hgcl2_z = Block_none_none_ax2e0_linear_symbol_t.Z_hgcl2_z;;


(** {6 Making} *)


let make s = function
  | "z_becl2_z" -> z_becl2_z
  | "z_co2_z" -> z_co2_z
  | "z_hgcl2_z" -> z_hgcl2_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_ax2e0_linear implementation symbol at 15:3 13 Mar 2012. *)



