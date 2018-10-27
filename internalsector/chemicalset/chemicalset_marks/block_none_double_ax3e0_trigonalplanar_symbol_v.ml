(** {3 The functionalities for a Symbol for a Block_none_double_ax3e0_trigonalplanar.} *)

let nam_cod = "block_none_double_ax3e0_trigonalplanar_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_double_ax3e0_trigonalplanar_symbol_t.Z_ch2_d -> "z_ch2_d"
  | Block_none_double_ax3e0_trigonalplanar_symbol_t.Z_co_d -> "z_co_d"
  | Block_none_double_ax3e0_trigonalplanar_symbol_t.Z_nh_d -> "z_nh_d"
  | Block_none_double_ax3e0_trigonalplanar_symbol_t.Z_nh2p1_d -> "z_nh2p1_d"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_ch2_d = Block_none_double_ax3e0_trigonalplanar_symbol_t.Z_ch2_d;;

let z_co_d = Block_none_double_ax3e0_trigonalplanar_symbol_t.Z_co_d;;

let z_nh_d = Block_none_double_ax3e0_trigonalplanar_symbol_t.Z_nh_d;;

let z_nh2p1_d = Block_none_double_ax3e0_trigonalplanar_symbol_t.Z_nh2p1_d;;


(** {6 Making} *)


let make s = function
  | "z_ch2_d" -> z_ch2_d
  | "z_co_d" -> z_co_d
  | "z_nh_d" -> z_nh_d
  | "z_nh2p1_d" -> z_nh2p1_d
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_double_ax3e0_trigonalplanar implementation symbol at 15:5 13 Mar 2012. *)



