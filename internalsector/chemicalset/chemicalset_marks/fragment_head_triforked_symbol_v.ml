(** {3 The functionalities for a Symbol for a Fragment_head_triforked.} *)

let nam_cod = "fragment_head_triforked_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_head_triforked_symbol_t.Z_ch3_s_c_sss -> "z_ch3_s_c_sss"
  | Fragment_head_triforked_symbol_t.Z_nh2_s_c_sss -> "z_nh2_s_c_sss"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_ch3_s_c_sss = Fragment_head_triforked_symbol_t.Z_ch3_s_c_sss;;

let z_nh2_s_c_sss = Fragment_head_triforked_symbol_t.Z_nh2_s_c_sss;;


(** {6 Making} *)


let make s = function
  | "z_ch3_s_c_sss" -> z_ch3_s_c_sss
  | "z_nh2_s_c_sss" -> z_nh2_s_c_sss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator fragment_head_triforked implementation symbol at 15:3 13 Mar 2012. *)



