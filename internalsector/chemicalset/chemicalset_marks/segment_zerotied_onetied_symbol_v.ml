(** {3 The functionalities for a Symbol for a Segment_zerotied_onetied.} *)

let nam_cod = "segment_zerotied_onetied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Segment_zerotied_onetied_symbol_t.Z_nh2_s_ch2_s -> "z_nh2_s_ch2_s"
  | Segment_zerotied_onetied_symbol_t.Z_nh3p1_s_ch2_s -> "z_nh3p1_s_ch2_s"
  | Segment_zerotied_onetied_symbol_t.Z_oh_s_co_s -> "z_oh_s_co_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_nh2_s_ch2_s = Segment_zerotied_onetied_symbol_t.Z_nh2_s_ch2_s;;

let z_nh3p1_s_ch2_s = Segment_zerotied_onetied_symbol_t.Z_nh3p1_s_ch2_s;;

let z_oh_s_co_s = Segment_zerotied_onetied_symbol_t.Z_oh_s_co_s;;


(** {6 Making} *)


let make s = function
  | "z_nh2_s_ch2_s" -> z_nh2_s_ch2_s
  | "z_nh3p1_s_ch2_s" -> z_nh3p1_s_ch2_s
  | "z_oh_s_co_s" -> z_oh_s_co_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator segment_zerotied_onetied implementation symbol at 15:5 13 Mar 2012. *)



