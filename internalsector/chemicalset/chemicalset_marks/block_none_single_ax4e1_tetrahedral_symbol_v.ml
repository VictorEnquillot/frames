(** {3 The functionalities for a Symbol for a Block_none_single_ax4e1_tetrahedral.} *)

let nam_cod = "block_none_single_ax4e1_tetrahedral_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_single_ax4e1_tetrahedral_symbol_t.Z_ch3_s -> "z_ch3_s"
  | Block_none_single_ax4e1_tetrahedral_symbol_t.Z_nh3p1_s -> "z_nh3p1_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_ch3_s = Block_none_single_ax4e1_tetrahedral_symbol_t.Z_ch3_s;;

let z_nh3p1_s = Block_none_single_ax4e1_tetrahedral_symbol_t.Z_nh3p1_s;;


(** {6 Making} *)


let make s = function
  | "z_ch3_s" -> z_ch3_s
  | "z_nh3p1_s" -> z_nh3p1_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_single_ax4e1_tetrahedral implementation symbol at 15:4 13 Mar 2012. *)



