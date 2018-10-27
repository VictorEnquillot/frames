(** {3 The functionalities for a Symbol for a Block_none_none_ax2e2_bent.} *)

let nam_cod = "block_none_none_ax2e2_bent_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_ax2e2_bent_symbol_t.Z_of2_z -> "z_of2_z"
  | Block_none_none_ax2e2_bent_symbol_t.Z_oh2_z -> "z_oh2_z"
  | Block_none_none_ax2e2_bent_symbol_t.Z_sh2_z -> "z_sh2_z"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_of2_z = Block_none_none_ax2e2_bent_symbol_t.Z_of2_z;;

let z_oh2_z = Block_none_none_ax2e2_bent_symbol_t.Z_oh2_z;;

let z_sh2_z = Block_none_none_ax2e2_bent_symbol_t.Z_sh2_z;;


(** {6 Making} *)


let make s = function
  | "z_of2_z" -> z_of2_z
  | "z_oh2_z" -> z_oh2_z
  | "z_sh2_z" -> z_sh2_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_ax2e2_bent implementation symbol at 15:3 13 Mar 2012. *)



