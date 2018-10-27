(** {3 The functionalities for a Symbol for a Block_none_none_ax2e1_bent.} *)

let nam_cod = "block_none_none_ax2e1_bent_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_ax2e1_bent_symbol_t.Z_ccl2_z -> "z_ccl2_z"
  | Block_none_none_ax2e1_bent_symbol_t.Z_no2m1_z -> "z_no2m1_z"
  | Block_none_none_ax2e1_bent_symbol_t.Z_o3_z -> "z_o3_z"
  | Block_none_none_ax2e1_bent_symbol_t.Z_so2_z -> "z_so2_z"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_ccl2_z = Block_none_none_ax2e1_bent_symbol_t.Z_ccl2_z;;

let z_no2m1_z = Block_none_none_ax2e1_bent_symbol_t.Z_no2m1_z;;

let z_o3_z = Block_none_none_ax2e1_bent_symbol_t.Z_o3_z;;

let z_so2_z = Block_none_none_ax2e1_bent_symbol_t.Z_so2_z;;


(** {6 Making} *)


let make s = function
  | "z_ccl2_z" -> z_ccl2_z
  | "z_no2m1_z" -> z_no2m1_z
  | "z_o3_z" -> z_o3_z
  | "z_so2_z" -> z_so2_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_ax2e1_bent implementation symbol at 15:3 13 Mar 2012. *)



