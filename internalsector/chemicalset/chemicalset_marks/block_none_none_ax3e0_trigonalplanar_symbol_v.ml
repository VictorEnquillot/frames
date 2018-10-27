(** {3 The functionalities for a Symbol for a Block_none_none_ax3e0_trigonalplanar.} *)

let nam_cod = "block_none_none_ax3e0_trigonalplanar_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_ax3e0_trigonalplanar_symbol_t.Z_coh2_z -> "z_coh2_z"
  | Block_none_none_ax3e0_trigonalplanar_symbol_t.Z_cho2m1_z -> "z_cho2m1_z"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_coh2_z = Block_none_none_ax3e0_trigonalplanar_symbol_t.Z_coh2_z;;

let z_cho2m1_z = Block_none_none_ax3e0_trigonalplanar_symbol_t.Z_cho2m1_z;;


(** {6 Making} *)


let make s = function
  | "z_coh2_z" -> z_coh2_z
  | "z_cho2m1_z" -> z_cho2m1_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_ax3e0_trigonalplanar implementation symbol at 15:3 13 Mar 2012. *)



