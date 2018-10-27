(** {3 The functionalities for a Symbol for a Block_none_none_ax4e1_tetrahedral.} *)

let nam_cod = "block_none_none_ax4e1_tetrahedral_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_ax4e1_tetrahedral_symbol_t.Z_ch4_z -> "z_ch4_z"
  | Block_none_none_ax4e1_tetrahedral_symbol_t.Z_nh4p1_z -> "z_nh4p1_z"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_ch4_z = Block_none_none_ax4e1_tetrahedral_symbol_t.Z_ch4_z;;

let z_nh4p1_z = Block_none_none_ax4e1_tetrahedral_symbol_t.Z_nh4p1_z;;


(** {6 Making} *)


let make s = function
  | "z_ch4_z" -> z_ch4_z
  | "z_nh4p1_z" -> z_nh4p1_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_ax4e1_tetrahedral implementation symbol at 15:3 13 Mar 2012. *)



